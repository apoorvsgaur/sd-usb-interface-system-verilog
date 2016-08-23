// $Id: $
// File name:   timer.sv
// Created:     10/18/2015
// Author:      Cameron Jones
// Lab Section: 337-01
// Version:     1.0  Initial Design Entry
// Description: the timers
module timer(
	input wire clk,
	input wire n_rst,
	input wire clear_byte,
	input wire enable,
	output reg SDCLK,
	output wire shift_enable,
	output wire byte_received
);
	reg mybyte;
	reg nextbyte;
	reg [3:0] count;
	flex_counter smallCounter(	 
	.n_rst(n_rst),
	.count_enable(enable),
	.clear(),
	.clk(clk),
	.count_out(count),
	.rollover_val(4'b1000),
	.rollover_flag(shift_enable)
);	
	always_comb begin
	if(count < 4'b0100) 
		SDCLK = 1'b1;
	else
		SDCLK = 1'b0;
	end

	flex_counter bigCounter(
	.n_rst(n_rst),
	.count_enable(shift_enable),
	.clear(clear_byte | mybyte),
	.count_out(),
	.clk(clk),
	.rollover_val(4'b1000),
	.rollover_flag(byte_received)
	);
	always_ff @ (negedge n_rst , posedge clk) begin
		if(~n_rst)begin 
			mybyte = 1'b0;
		end else begin
			mybyte = nextbyte;
		end

	end

	always_comb begin
		nextbyte = 1'b0;
		if(byte_received) 
			nextbyte = 1'b1;

	end

endmodule
	