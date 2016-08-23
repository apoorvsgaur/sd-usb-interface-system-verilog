// $Id: $
// File name:   mode_select.sv
// Created:     11/30/2015
// Author:      Cameron Jones
// Lab Section: 337-01
// Version:     1.0  Initial Design Entry
// Description: Overall sd card controller
module mode_select (
	input wire clk,
	input wire n_rst,
	input wire sd_read,
	input wire sd_write,
	input wire sd_addr_ready,
	input wire sd_full,
	input wire sd_empty,
	output reg SDCS,

	input wire [7:0] cmd_check,
	input wire [7:0] rcv_fifo,

	input wire byte_transf,
	input wire edge_detect,

	output reg sd_done,
	output reg sd_err,

	output reg load_enable,
	output reg w_enable,
	output reg r_enable,
	output reg r_enable_o,
	output reg enable,
	output reg fifo_clear,

	output reg [1:0] SPI_select,
	output reg rw_select,

	output reg [5:0] cmd_out,
	output wire [3:0] count_out,

	output wire [31:0] addr_o,
	output wire [15:0] size_o   );

	reg received_started;
	reg [8:0] counter = 0;
	reg [31:0] addr = 0;
	reg [15:0] size = 0;
	reg clear = 0;
	reg roll;
	
	flex_counter #(.NUM_CNT_BITS(16)) LoadFIFO (
		.clk(clk),
		.n_rst(n_rst),
		.clear(clear),
		.count_enable(w_enable | r_enable),
		.rollover_val(size),
		.count_out(),
		.rollover_flag(roll)
		);

	
	typedef enum bit [4:0] {WAIT,IDLE,EIDLE,ADDR_LOAD,ADDR_R_EN,WRITE,OUTLOW,
		LOAD_W,LOAD_FIFO_W,LOAD_FIFO_W2,WRITECMD,WCMDWAIT,WAITWRITE,CHECKSTAT,
		DONE,READLOW,READ,CHECKREAD,WAITKILO,SENDTOKEN,SENDBYTE,READWAIT,READBYTE,CMD0,CMDWAIT,CMD0ADD} stateType;

	stateType state;
	stateType nextstate;
	
	assign addr_o = addr;
	assign size_o = size;
	assign count_out = counter[3:0];

	always_ff @ (negedge n_rst, posedge clk) begin
		if(~n_rst) begin
			state <= WAIT;
		end else begin
			state <= nextstate;
		end
	end

	always_comb begin
		clear = 1'b0;
		r_enable = 1'b0;
		w_enable = 1'b0;
		sd_done = 1'b0;
		sd_err = 1'b0;
		fifo_clear = 1'b0;
		load_enable = 1'b0;
		enable = 1'b1;
		SPI_select = 2'b00;
		SDCS = 1'b0;
		nextstate = state;
		case(state)
			WAIT: begin
				SDCS = 1'b0;
				fifo_clear = 1'b1;
				if(byte_transf) begin
					counter = counter + 1;
					if(counter == 8'd74)begin
						nextstate = CMDWAIT;
					end
				end
			end
			CMDWAIT: begin
				cmd_out = 0;
				SPI_select = 2'b10;
				counter = 0;
				nextstate = CMD0;
				load_enable = 1'b1;
			end

			CMD0: begin
				cmd_out = 0;
				SDCS = 1'b0;
				SPI_select = 2'b10;
				if(byte_transf) begin
					load_enable = 1'b1;
					if(counter  == 4'd5)begin
						counter = 0;
						nextstate = IDLE;
					end else begin
						nextstate = CMD0ADD;
					end
				end
			end
			CMD0ADD: begin
				SPI_select = 2'b10;
				cmd_out = 0;
				load_enable = 1'b1;
				SDCS = 1'b0;
				counter = counter + 1;
				nextstate = CMD0;
			end
			IDLE: begin
				SDCS = 1'b1;
				SPI_select = 2'b00;
				clear = 1'b0;
				counter = 0;
				if(sd_addr_ready) 
					nextstate = ADDR_LOAD;
				if(sd_read)
					nextstate = READ;
				if(sd_write) nextstate = LOAD_FIFO_W;
			end
			EIDLE: begin
				sd_err = 1'b1;
				nextstate = IDLE;
			end
			//------------------------------------------------------------------------------------------------
			//
			//Load address and size path
			//
			//------------------------------------------------------------------------------------------------
			ADDR_LOAD: begin
				nextstate = ADDR_R_EN;
				case(counter)
					1'b0: begin
						addr[31:24] = rcv_fifo;
					end
					1'b0: begin
						addr[23:16] = rcv_fifo;
					end
					2'd2: begin
						addr[15:8] = rcv_fifo;
					end
					2'd3: begin
						addr[7:0] = rcv_fifo;
					end
					3'd4: begin
						size[15:8] = rcv_fifo;
					end
					3'd5: begin
						size[7:0] = rcv_fifo;
					end
				endcase
			end
			ADDR_R_EN: begin
				r_enable_o = 1'b1;
				if(counter < 6) begin
					nextstate = ADDR_LOAD;
				end else begin
					clear = 1'b1;
					nextstate = IDLE;
				end
				counter = counter + 1;
			end
			//------------------------------------------------------------------------------------------------
			//
			//Write Path
			//
			//------------------------------------------------------------------------------------------------

			LOAD_FIFO_W: begin
				rw_select = 1'd1;
				nextstate = LOAD_FIFO_W2;
				if(sd_empty | ~roll) begin
					nextstate = EIDLE;
				end else if(roll) begin
					clear = 1'b1;
					nextstate = WRITECMD;
				end
				w_enable = 1'b1;
			end
			LOAD_FIFO_W2: begin
				nextstate = LOAD_FIFO_W;
				r_enable_o = 1'b1;
			end
			WRITECMD: begin
				SPI_select = 2'd2;
				cmd_out = 5'd24;
				if(byte_transf) begin
					load_enable = 1'b1;
					nextstate = WCMDWAIT; end
			end
			WCMDWAIT:begin
				load_enable = 1'b0;
				SPI_select = 2'b0;
				if(counter == 4'd5) begin
					nextstate = OUTLOW;
				end
				if(byte_transf) begin
					load_enable = 1'b1;
					counter = counter + 1;
				end
			end
			OUTLOW:begin
				if(edge_detect) begin
					nextstate = WAITWRITE;
				end
			end
			WAITWRITE: begin
				if(byte_transf)begin 
					nextstate = CHECKSTAT; end
			end 
			CHECKSTAT: begin
				if(cmd_check == 8'b11111111) begin
					nextstate = SENDTOKEN;
				end else begin
					nextstate = EIDLE;
				end
			end
			SENDTOKEN: begin
				cmd_out = 6'b111111;
				SPI_select = 2'b10;
				if(byte_transf) begin
					counter = 1'b0;
					load_enable = 1'b1;
					nextstate = SENDBYTE;
				end
			end
			SENDBYTE: begin//WRITE
				SPI_select = 2'b01;
				if(counter == size) begin
					nextstate = DONE;
				end
				if(counter == 8'd512) begin
					nextstate = WAITKILO;
				end
				counter = counter + 1;
				if(byte_transf) begin
					r_enable = 1'b1;
					load_enable = 1'b1;
				end
			end
			WAITKILO: begin
				counter = 1'b0;
				nextstate = WRITECMD;
			end
			DONE: begin
				sd_done = 1'b1;
				nextstate = IDLE;
			end
			//------------------------------------------------------------------------------------------------
			//
			//Write Path
			//
			//------------------------------------------------------------------------------------------------
			READ: begin
				fifo_clear = 1'b1;
				rw_select = 1'b0;
				SPI_select = 2'b10;
				cmd_out = 5'd17;
				if(byte_transf)
				counter = counter + 1;
				if(counter == 5'd5) begin
					load_enable = 1'b1;
					nextstate = READLOW; end
			end
			READLOW: begin
				if(edge_detect)
					clear = 1'b1;
					nextstate = CHECKREAD;
			end
			CHECKREAD: begin
				if(byte_transf & (cmd_check == 8'b01111111))
					nextstate = READBYTE;
				else
					nextstate = EIDLE;
			end
			READBYTE: begin
				w_enable = 1'b0;
				rw_select = 2'b0;
				SPI_select = 2'b00;
				if(byte_transf) begin
					counter = counter + 1;
					w_enable = 1'b1;
				end
				if(counter == size) begin
					nextstate = DONE;
				end
				if(counter == 512) begin
					nextstate = READWAIT;
				end
			end
			READWAIT: begin
				counter = 1'b0;
				nextstate = READ;
			end

		endcase
	end
endmodule
				

