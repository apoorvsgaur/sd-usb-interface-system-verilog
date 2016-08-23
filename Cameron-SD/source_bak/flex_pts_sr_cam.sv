// $Id: $
// File name:   flex_pts_sr.sv
// Created:     9/14/2015
// Author:      Cameron Jones
// Lab Section: 337-01
// Version:     1.0  Initial Design Entry
// Description: Flexible Parallel to Serial Shift Register Design.
module flex_pts_sr
#(
	parameter NUM_BITS = 4,
	parameter SHIFT_MSB = 1
)
(
	input wire n_rst,
	input wire shift_enable,
	input wire load_enable,
	input wire clk,
	input wire [NUM_BITS - 1:0] parallel_in,
	output reg serial_out	
);
	reg nextout;
	reg [NUM_BITS - 1:0] temp1;
	reg [NUM_BITS - 1:0] tempNext;
	always_ff @ (negedge n_rst, posedge clk)
	begin
		if(n_rst == 0)begin
			temp1 <= '0;
		end else begin
			temp1 <= tempNext;
		end
	end

	always_comb
	begin
		tempNext = temp1;
		//----------------------------------------------------
		if(load_enable==1'b1) begin
			tempNext = parallel_in;
		end else if(SHIFT_MSB == 1'b1 && shift_enable == 1'b1) begin
			tempNext = {temp1[NUM_BITS-2:0],1'b1};
		end else if(shift_enable == 1'b1) begin
			tempNext = {1'b1,temp1[NUM_BITS-1:1]};
		end
		//----------------------------------------------------
		if(SHIFT_MSB == 1'b1)begin
			serial_out = temp1[NUM_BITS-1];
		end else  begin
			serial_out = temp1[0];
		end
		//----------------------------------------------------
	end
endmodule
