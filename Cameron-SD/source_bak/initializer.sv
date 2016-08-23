// $Id: $
// File name:   initializer.sv
// Created:     11/30/2015
// Author:      Cameron Jones
// Lab Section: 337-01
// Version:     1.0  Initial Design Entry
// Description: The initializing Process
module initializer(
		input wire clk,
		input wire n_rst,
		input wire [7:0] cmd_check,
		input wire byte_sent,
		output wire spi_enable,
		output wire ready,
		output wire SDCS,
		output wire initialized,
		output reg [7:0] cmd


	);
	typedef enum bit [6:0] {CMD0,IDLE,WAIT0, CMD8, EIDLE} stateType;
	stateType state;
	stateType nextstate;
	reg [3:0] counter = 0;
	bit [3:0] cmd0  = {8'b01000000, 8'b00000000, 8'b00000000, 8'b00000000, 8'b00000000, 8'b10010101};
	bit [3:0] cmd8  = {8'b01001000, 8'b00000000, 8'b00000000, 8'b00000001, 8'b10101010, 8'b00001111};
	bit [3:0] cmd58 = {8'b01111010, 8'b00000000, 8'b00000000, 8'b00000000, 8'b00000000, 8'b01110101};
	always_comb begin
		case(state)
		CMD0:
			cmd = cmd0[counter];
		CMD8:
			cmd = cmd8[counter];
		CMD58:
			cmd = cmd58[counter];
		endcase
	end


	always_ff @ (negedge n_rst, posedge clk) begin
		if(~n_rst) begin
			state <= IDLE;
		end else begin
			state <= nextstate;
		end
	end
	
	always_comb begin
		nextstate = state;
		case(state) 
			CMD0: begin
				if(byte_sent) begin 
					counter = counter + 1;
				end
				if(byte_sent & (counter==5)) begin
					counter = 0;
					nextstate = WAIT0;
				end
			end
			WAIT0: begin
				if(byte_received) begin
					counter = counter + 1;
				end
				if(counter == 7) begin
					if(cmd_check == 0) begin
						counter = 0;
						nextstate = CMD8;
					end else begin
						counter = 0;
						nextstate = CMD0;
					end
				end
			end
		endcase
	end




endmodule