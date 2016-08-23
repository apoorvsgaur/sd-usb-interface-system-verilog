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
	input wire rx_FIFO_empty,
	output reg SDCS,

	input wire [7:0] cmd_check,
	input wire [7:0] rcv_fifo,

	input wire byte_transf,
	input wire edge_detect,
	input wire shift_enable,
	output reg clear_byte,

	output reg sd_done,
	output reg sd_err,

	output reg load_enable,
	output reg w_enable,
	output reg r_enable,
	output reg r_enable_o,

	output reg [1:0] SPI_select,
	output reg rw_select,
	output reg enable,
	output reg [5:0] cmd_out,
	output wire [3:0] count_out,
	output wire [1:0] speed_o,

	output wire [31:0] addr_o);

	reg received_started;
	reg countState;
	reg [15:0] counter;
	reg [31:0] addr = 0;
	reg [15:0] size;
	reg clear = 0;
	reg clearCounter = 0;
	reg roll;
	reg [15:0] size_minus_one;
	reg byte_transfflip;
	reg nextbyte;
	reg [1:0] speed = 0;
	assign speed_o = speed;
	assign size_minus_one = size - 1;

	flex_counter #(.NUM_CNT_BITS(16)) LoadFIFO (
		.clk(clk),
		.n_rst(n_rst),
		.clear(clear),
		.count_enable(w_enable | r_enable),
		.rollover_val(size_minus_one),
		.count_out(),
		.rollover_flag(roll)
		);

		flex_counter #(.NUM_CNT_BITS(16)) Countstates (
		.clk(clk),
		.n_rst(n_rst),
		.clear(clearCounter),
		.count_enable(countState),
		.rollover_val(size_minus_one),
		.count_out(counter),
		.rollover_flag()
		);

	
	typedef enum bit [4:0] {WAIT,IDLE,READWAITBYTE,EIDLE,ADDR_LOAD,ADDR_R_EN,WRITE,OUTLOW,
		LOAD_W,LOAD_FIFO_W,LOAD_FIFO_W2,WRITECMD,WCMDWAIT,WAITWRITE,CHECKSTAT,
		DONE,READLOW,READ,CHECKREAD,WAITKILO,SENDTOKEN,SENDBYTE,READWAIT,READBYTE,CMD0,
		CMDWAIT,CMD0ADD,ADDR_ADD,CMD0WAIT,CHECKSPEED} stateType;

	stateType state;
	stateType nextstate;
	
	assign addr_o = addr;
	assign count_out = counter[3:0];

	always_ff @ (negedge n_rst, posedge clk) begin
		if(~n_rst) begin
			byte_transfflip = 1'b0;
			state <= WAIT;
		end else begin
			byte_transfflip = nextbyte;
			state <= nextstate;
		end
	end

	always_comb begin
		nextbyte = 1'b0;
		if(byte_transf)
			nextbyte = 1'b1;
		clearCounter = 1'b0;
		clear = 1'b0;
		r_enable = 1'b0;
		w_enable = 1'b0;
		sd_done = 1'b0;
		enable = 1'b1;
		sd_err = 1'b0;
		load_enable = 1'b0;
		SPI_select = 2'b00;
		SDCS = 1'b0;
		rw_select = 1'b1;
		r_enable_o = 1'b0;
		cmd_out = 0;
		countState = 1'b0;
		clear_byte = 1'b0;


		nextstate = state;
		case(state)
			WAIT: begin
				SDCS = 1'b0;
				if(shift_enable) begin
					countState = 1'b1;;
					if(counter == 8'd74)begin
						nextstate = CMDWAIT;
					end
				end
			end
			CMDWAIT: begin
				cmd_out = 0;
				SPI_select = 2'b10;
				clearCounter = 1'b1;
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
						clearCounter = 1'b1;
						nextstate = CMD0WAIT;
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
				countState = 1'b1;;
				nextstate = CMD0;
			end
			CMD0WAIT: begin
				if(edge_detect) begin
					nextstate = CHECKSPEED;
					clear_byte = 1'b1;
				end
			end
			CHECKSPEED: begin
				if(byte_transf) begin
					nextstate = IDLE;
				
				case(cmd_check)
					8'b11111100: begin
						speed = 2'b00;
					end
					8'b11111101: begin
						speed = 2'b01;
					end
					8'b11111110: begin
						speed = 2'b10;
					end
				endcase
				end
			end
			IDLE: begin
				SDCS = 1'b1;
				SPI_select = 2'b00;
				clear = 1'b1;
				clearCounter = 1'b1;
				if(sd_addr_ready) 
					nextstate = ADDR_LOAD;
				if(sd_read)
					nextstate = READWAITBYTE;
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
				r_enable_o = 1'b1;
				case(counter)
					1'b0: begin
						addr[31:24] = rcv_fifo;
					end
					1'b1: begin
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
					nextstate = ADDR_ADD;
				end else begin
					clear = 1'b1;
					nextstate = IDLE;
				end				
			end
			ADDR_ADD: begin
				r_enable_o = 1'b1;
				countState = 1'b1;;
				nextstate = ADDR_LOAD;
			end
			//------------------------------------------------------------------------------------------------
			//
			//Write Path
			//
			//------------------------------------------------------------------------------------------------

			LOAD_FIFO_W: begin
				rw_select = 1'd1;
				cmd_out = 5'b11000;
				nextstate = LOAD_FIFO_W2;
				if(rx_FIFO_empty & ~roll) begin
					nextstate = EIDLE;
				end else if(roll) begin
					SPI_select = 2'b10;
					clear = 1'b1;
					load_enable = 1'b1;
					nextstate = WRITECMD;
				end
				w_enable = 1'b1;
			end
			LOAD_FIFO_W2: begin
				rw_select = 1'd1;
				nextstate = LOAD_FIFO_W;
				r_enable_o = 1'b1;
			end

			WRITECMD: begin
				SPI_select = 2'b10;
				cmd_out = 5'b11000;
				if(byte_transf) begin
					load_enable = 1'b1;
					nextstate = WCMDWAIT; end
			end
			WCMDWAIT:begin
				load_enable = 1'b0;
				SPI_select = 2'b10;
				cmd_out = 5'b11000;
				if(counter == 4'd5) begin
					nextstate = OUTLOW;
				end
				if(byte_transf) begin
					load_enable = 1'b1;
					countState = 1'b1;;
				end
			end
			OUTLOW:begin
				if(edge_detect) begin
					clearCounter = 1'b1;
					clear_byte = 1'b1;
					nextstate = WAITWRITE;
				end
			end
			WAITWRITE: begin
				if(byte_transf) begin
					nextstate = SENDTOKEN;
				end
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
					clearCounter = 1'b1;
					load_enable = 1'b1;
					nextstate = SENDBYTE;
				end
			end

			SENDBYTE: begin//WRITE
				SPI_select = 2'b01;
				if(roll == 1'b1 && byte_transf == 1'b1) begin
					nextstate = DONE;
				end else if(counter == 9'b111111111 && byte_transf == 1'b1) begin
					nextstate = WAITKILO;
				end

				if(byte_transf) begin
					countState = 1'b1;
					r_enable = 1'b1;
					load_enable = 1'b1;
				end
			end
			WAITKILO: begin
				clearCounter = 1'b1;
				nextstate = WRITECMD;
			end
			DONE: begin
				sd_done = 1'b1;
				nextstate = IDLE;
			end
			//------------------------------------------------------------------------------------------------
			//
			//Read Path
			//
			//------------------------------------------------------------------------------------------------
			READWAITBYTE: begin
				SPI_select = 2'b10;
				clearCounter = 1'b1;
				cmd_out = 6'b010001;
				if(byte_transfflip) begin
					load_enable = 1'b1;
					nextstate = READ;
				end
			end

			READ: begin
				rw_select = 1'b0;
				load_enable = 1'b0;	
				SPI_select = 2'b10;
				cmd_out = 6'b010001;
				if(byte_transf) begin
					countState = 1'b1;
					if(counter == 5'd5) begin
						clearCounter = 1'b1;	
						nextstate = READLOW; 
					end
				end
				if(byte_transfflip)		
					load_enable = 1'b1;	
			end
			READLOW: begin
				SPI_select = 2'b01;
				if(edge_detect == 1'b1) begin
					clear_byte = 1'b1;
					clear = 1'b0;
					nextstate = CHECKREAD;
				end
			end
			CHECKREAD: begin
				if(byte_transf & (cmd_check == 8'b11111110))
					nextstate = READBYTE;
				else if (byte_transf)
					nextstate = EIDLE;
			end
			READBYTE: begin
				w_enable = 1'b0;
				rw_select = 2'b0;
				SPI_select = 2'b00;
				if(roll == 1'b1 && byte_transf == 1'b1) begin
					nextstate = DONE;
				end else if(counter == 9'b111111111 && byte_transf == 1'b1) begin
					nextstate = READWAITBYTE;
				end
				if(byte_transf) begin
					countState = 1'b1;
					w_enable = 1'b1;
				end
				
			end
			READWAIT: begin
				clearCounter = 1'b1;
				nextstate = READ;
			end

		endcase
	end
endmodule
				

