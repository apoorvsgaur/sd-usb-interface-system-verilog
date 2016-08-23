// $Id: $
// File name:   command_store
// Created:     12/1/2015
// Author:      Cameron Jones
// Lab Section: 337-01
// Version:     1.0  Initial Design Entry
// Description: This block will be holding all possible commands and linking addresses appropriately.
module command_store(
	input wire [5:0] cmd_select,
	input wire [3:0] counter,
	input wire [31:0] address,
	output reg [7:0] cmd

);
	reg test;

	localparam bit [7:0] cmd0 [0:5]  = {8'b01000000, 8'b00000000, 8'b00000000, 8'b00000000, 8'b00000000, 8'b10010101};
	//bit [3:0] cmd3  =
	localparam bit [7:0] cmd8 [0:5]  = {8'b01001000, 8'b00000000, 8'b00000000, 8'b00000001, 8'b10101010, 8'b00001111};
	//bit [3:0] cmd12 =
	localparam bit [7:0] cmd17 [0:1] = {8'b01010001, 8'b00000001};
	localparam bit [7:0] cmd24 [0:1] = {8'b01011001, 8'b00000001};
	localparam bit [6:0] cmd58 [0:5] = {8'b01111010, 8'b00000000, 8'b00000000, 8'b00000000, 8'b00000000, 8'b01110101};
	

	always_comb begin
		test = 1'b0;
		case(cmd_select)
			6'd0: begin
				cmd = cmd0[counter];
			end
			6'd8: begin
				cmd = cmd8[counter];
			end
			6'b010001: begin
				test = 1'b1;
				case(counter)
					3'b000: begin
						cmd = cmd17[0];	
					end
					3'b001: begin
						cmd = address[31:24];
					end
					3'b010: begin
						cmd = address[23:16];
					end
					3'b011: begin
						cmd = address[15:8];
					end
					3'b100: begin
						cmd = address[7:0];
					end
					3'b101: begin
						cmd = cmd17[1];
					end
				endcase
			end
			6'b11000: begin
				case(counter)
					3'b000: begin
						cmd = cmd24[0];	
					end
					3'b001: begin
						cmd = address[31:24];
					end
					3'b010: begin
						cmd = address[23:16];
					end
					3'b011: begin
						cmd = address[15:8];
					end
					3'b100: begin
						cmd = address[7:0];
					end
					3'b101: begin
						cmd = cmd24[1];
					end
				endcase
			end
			6'b111111: begin
				cmd = 8'b01111111;
			end

		endcase
	end

endmodule