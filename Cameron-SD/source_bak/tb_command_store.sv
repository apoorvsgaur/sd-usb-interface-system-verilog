// $Id: $
// File name:   tb_command_store.sv
// Created:     12/1/2015
// Author:      Cameron Jones
// Lab Section: 337-01
// Version:     1.0  Initial Design Entry
// Description: Testbench for the command store, lets see if it works ait to
`timescale 1ns / 10ps
module tb_command_store();
	
	
	reg tb_clk, tb_n_rst;
	reg [5:0] tb_cmd_select = 6'd0;
	reg [7:0] tb_counter = 0;
	reg [31:0] tb_address = 32'd9387173;
	reg [7:0] tb_cmd;
	reg [7:0] tb_cmd2;
	tb_on_chip_sram_wrapper();
	//Define local params
	localparam CLOCK = 10;

	always
	begin
		tb_clk = 0;
		#(CLOCK/2.0);
		tb_clk = 1;
		#(CLOCK/2.0);
	end

	on_chip_sram_wrapper test ();

	command_store DUT(
	.cmd_select(tb_cmd_select),
	.counter(tb_counter),
	.address(tb_address),
	.cmd(tb_cmd),
	.cmd2(tb_cmd2)
	);

	initial begin
		#(CLOCK * 8);
		tb_counter=tb_counter+1;
		#(CLOCK * 8);
		tb_counter++;
		#(CLOCK * 8);
		tb_counter++;
		#(CLOCK * 8);
		tb_counter++;
		#(CLOCK * 8);
		tb_counter++;
		#(CLOCK * 8);
		tb_counter = 0;
		tb_cmd_select = 8'd17;
		#(CLOCK * 8);
		tb_counter++;
		#(CLOCK * 8);
		tb_counter++;
		#(CLOCK * 8);
		tb_counter++;
		#(CLOCK * 8);
		tb_counter++;
		#(CLOCK * 8);
		tb_counter++;
		#(CLOCK * 8);
		tb_counter++;




		$stop;
	end


endmodule