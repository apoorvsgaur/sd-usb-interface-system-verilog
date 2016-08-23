// $Id: $
// File name:   timer.sv
// Created:     10/18/2015
// Author:      Cameron Jones
// Lab Section: 337-01
// Version:     1.0  Initial Design Entry
// Description: the timers
module timerSD(
	input wire clk,
	input wire n_rst,
	input wire clear_byte,
	input wire enable,
	input wire [1:0] speed,
	output reg SDCLK,
	output wire shift_enable,
	output wire byte_received
);
	reg mybyte;
	reg nextbyte;
	reg [3:0] count;
	reg [3:0] smallCount;
	reg [3:0] half;
	flex_counter_stuff smallCounter(	 
	.n_rst(n_rst),
	.count_enable(enable),
	.clear(),
	.clk(clk),
	.count_out(count),
	.rollover_val(smallCount),
	.rollover_flag(shift_enable)
);	
	always_comb begin
	if(speed == 2'b10 && clk == 1'b1 && count == 4'b0001) begin
		SDCLK = 1'b1;
	end else if(count < half) 
		SDCLK = 1'b1;
	else
		SDCLK = 1'b0;
	end


	always_comb begin
		if(speed == 2'b00) begin
			half = 4'b0011;
			smallCount = 4'b0110;
		end else if (speed == 2'b01) begin
			smallCount = 4'b0011;
			half = 4'b0010;
		end else if (speed == 2'b10) begin
			smallCount = 4'b0010;
			half = 4'b0001;
		end
	end

	flex_counter_stuff bigCounter(
	.n_rst(n_rst),
	.count_enable(shift_enable),
	.clear(clear_byte | byte_received),
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
	