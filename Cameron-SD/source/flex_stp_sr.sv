// $Id: $
// File name:   flex_stp_sr.sv
// Created:     9/14/2015
// Author:      Cameron Jones
// Lab Section: 337-01
// Version:     1.0  Initial Design Entry
// Description: Serial-to-Parallel Shift Register
module flex_stp_sr
#(
	parameter NUM_BITS = 4,
	parameter SHIFT_MSB = 1
)
(
	input wire n_rst,
	input wire shift_enable,
	input wire serial_in,
	input wire clk,
	output reg [NUM_BITS - 1:0] parallel_out
);

	reg [NUM_BITS - 1:0] data;
	
	always_ff @ (negedge n_rst, posedge clk)
	begin
		if(n_rst == 0)begin
			parallel_out <= '1;
		end else begin
			parallel_out <= data;
		end
	end

	always_comb
	begin
		data = parallel_out;
		if(SHIFT_MSB == 1 && shift_enable == 1)begin
			data = {parallel_out[NUM_BITS-2:0],serial_in};
		end else if(shift_enable == 1) begin
			data = {serial_in,parallel_out[NUM_BITS - 1:1]};
		end /*else begin
			parallel_out <= data;
		end*/
	end
endmodule
