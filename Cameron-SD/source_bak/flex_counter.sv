// $Id: $
// File name:   flex_counter.sv
// Created:     9/19/2015
// Author:      Cameron Jones
// Lab Section: 337-01
// Version:     1.0  Initial Design Entry
// Description: Flexible Counter 
module flex_counter
#(
	parameter NUM_CNT_BITS = 4
)
(
	input wire n_rst,
	input wire count_enable,
	input wire clear,
	input wire clk,
	input wire [NUM_CNT_BITS - 1:0] rollover_val,
	output reg [NUM_CNT_BITS - 1 :0] count_out,
	output reg rollover_flag
);
	reg rollnext = 0;
	reg [NUM_CNT_BITS - 1:0] data = 0;
	always_comb begin
		if(clear == 1'b1) begin
			data = 0;
			rollnext = 1'b0;
		end else begin
			if(count_enable == 1'b1) begin
				data = count_out + 1;
				if(data == rollover_val) begin
					rollnext = 1'b1;
				end else begin
					rollnext = 1'b0;
				end
				if(count_out == rollover_val) begin
					data = 0;
				end 
			end else begin
				data = count_out;
				rollnext = rollover_flag;
			end
		end
	end
	
	always_ff @ (negedge n_rst, posedge clk)
	begin
		if(n_rst == 0)begin
			count_out <= 0;
			rollover_flag <= 0;
		end else begin
			rollover_flag <= rollnext;
			count_out <= data;
		end
	end

endmodule