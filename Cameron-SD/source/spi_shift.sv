// $Id: $
// File name:   spi_shift.sv
// Created:     12/2/2015
// Author:      Cameron Jones
// Lab Section: 337-01
// Version:     1.0  Initial Design Entry
// Description: Combines both shift registers and the mux into one block.
module spi_shift (
	input wire clk,
	input wire n_rst,
	input wire [7:0] fifo_data,
	input wire sddi,
	input wire [1:0] line_select,
	input wire [7:0] command_in,
	input wire shift_enable,
	input wire byte_received,
	input wire load_enable,
	output wire [7:0] data_out,
	output wire sddo



);
	reg [7:0] data_in=0;

	//select to choose between fifo data, spi out, or a command
	always_comb begin
		if(line_select == 2'b10) begin
			data_in = command_in;
		end else if (line_select == 2'b01) begin
			data_in = fifo_data;
		end else begin
			data_in = data_out;
		end
	end

	
	//Shift register out SDDO
	flex_pts_sr #(.NUM_BITS(8)) shift_out (
	.clk(clk),
	.n_rst(n_rst),
	.load_enable(load_enable),
	.shift_enable(shift_enable),
	.parallel_in(data_in),
	.serial_out(sddo)
	);
	//Shift register in SDDI
	flex_stp_sr #(.NUM_BITS(8)) shift_in (
	.clk(clk),
	.n_rst(n_rst),
	.shift_enable(shift_enable),
	.serial_in(sddi),
	.parallel_out(data_out)
	);

endmodule