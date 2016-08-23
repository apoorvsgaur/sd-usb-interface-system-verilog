// $Id: $
// File name:   tb_flex_pts_sr.sv
// Created:     12/1/2015
// Author:      Apoorv Sanjay Gaur
// Lab Section: 337-01
// Version:     1.0  Initial Design Entry
// Description: Flex parallel to serial register
`timescale 1ns / 10ps
module tb_flex_pts_sr
();

	//Define local params
	localparam CLOCK = 10;
	localparam NUM_BITS = 8;
	//Declare signals
	reg tb_clk, tb_n_rst; 
    reg tb_shift_enable;
    reg tb_load_enable;
    reg [(NUM_BITS - 1) : 0] tb_parallel_in;
    reg tb_serial_out;
	//reg [7:0]tb_r_data;
	//reg tb_empty,tb_full,tb_rcving,tb_r_error;
	//reg [7:0]tb_expected; 
	//integer i;
	//Clock
	always
	begin
		tb_clk = 0;
		#(CLOCK/2.0);
		tb_clk = 1;
		#(CLOCK/2.0);
	end

	flex_pts_sr SHIFT_REGISTER (
    .clk(tb_clk),
    .n_rst(tb_n_rst),
    .shift_enable(tb_shift_enable),
    .load_enable(tb_load_enable),
    .parallel_in(tb_parallel_in),
    .serial_out(tb_serial_out)
  );

	task reset_dut;
	begin
		tb_shift_enable = 0;
		tb_n_rst = 1;
		#(CLOCK)
		tb_n_rst = 0;
		#(CLOCK)
		tb_n_rst = 1;
		#(CLOCK*8);
    end
	endtask  

    task send_load_enable;
    begin
		tb_load_enable = 1;
		#(CLOCK)
		tb_load_enable = 0;
		#(CLOCK);
    end
    endtask

    task send_byte;
    begin
		tb_shift_enable = 1;
		#(CLOCK)
		tb_shift_enable = 0;
		#(CLOCK)
		tb_shift_enable = 1;
		#(CLOCK)
		tb_shift_enable = 0;
		#(CLOCK)
		tb_shift_enable = 1;
		#(CLOCK)
		tb_shift_enable = 0;
		#(CLOCK)
		tb_shift_enable = 1;
		#(CLOCK)
		tb_shift_enable = 0;
		#(CLOCK)
		tb_shift_enable = 1;
		#(CLOCK)
		tb_shift_enable = 0;
		#(CLOCK)
		tb_shift_enable = 1;
		#(CLOCK)
		tb_shift_enable = 0;
		#(CLOCK)
		tb_shift_enable = 1;
		#(CLOCK)
		tb_shift_enable = 0;
		#(CLOCK)
		tb_shift_enable = 1;
		#(CLOCK)
		tb_shift_enable = 0;
    end
    endtask

initial
	begin
		//Toggle the n_rst
		reset_dut;
		tb_parallel_in = 8'b01010100;
		send_load_enable;
		send_byte;
        reset_dut;
		tb_parallel_in = 8'b00111100;
		send_load_enable;
		send_byte;
		reset_dut;
    $stop; 	
    end	
endmodule