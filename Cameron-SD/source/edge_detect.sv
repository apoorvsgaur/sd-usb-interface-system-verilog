// $Id: $
// File name:   edge_detect.sv
// Created:     10/6/2015
// Author:      Cameron Jones
// Lab Section: 337-01
// Version:     1.0  Initial Design Entry
// Description: Checks for edges, super simple
module edge_detect(
	input wire clk,
	input wire n_rst,
	input wire d_plus,
	output wire d_edge
);
	reg d,f;
	assign d_edge = d ^ f;
	always_ff @ (negedge n_rst, posedge clk) begin
		if(~n_rst) begin
			d <=1'b1;
			f<= 1'b1;
		end else begin
			d<= d_plus;
			f<= d;
		end
	end


endmodule