// $Id: $
// File name:   tb_timer.sv
// Created:     12/5/2015
// Author:      Apoorv Sanjay Gaur
// Lab Section: 337-01
// Version:     1.0  Initial Design Entry
// Description: Timer Test Bench

`timescale 1ns / 10ps
module tb_timer
();
	//Define local params
reg tb_clk, tb_n_rst;
reg tb_sending, tb_stop_clock, tb_shift_enable, tb_load_enable;
reg [7:0] tb_data;
reg tb_serial_in;
reg tb_d_orig;
//reg tb_stop_clock;
localparam CLOCK = 10;
always
begin
	tb_clk = 0;
	#(CLOCK/2.0);
	tb_clk = 1;
	#(CLOCK/2.0);
end




initial
begin

    tb_data = 8'b10111011;
	tb_sending = 1;

	$stop;
end
endmodule

