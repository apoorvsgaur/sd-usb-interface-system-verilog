// $Id: $
// File name:   tb_d_orig_gen.sv
// Created:     12/6/2015
// Author:      Apoorv Sanjay Gaur
// Lab Section: 337-01
// Version:     1.0  Initial Design Entry
// Description: D Orig Generation Test Bench

`timescale 1ns / 10ps
module tb_d_orig_gen
();
	//Define local params
reg tb_clk, tb_n_rst;
reg tb_sending; //tb_stop_clock, tb_shift_enable, tb_load_enable;
reg [7:0] tb_data;
//reg tb_serial_in;
reg tb_d_plus, tb_d_minus;
//reg tb_stop_clock;
localparam CLOCK = 10;
always
begin
	tb_clk = 0;
	#(CLOCK/2.0);
	tb_clk = 1;
	#(CLOCK/2.0);
end

d_orig_gen DUT(
    .clk(tb_clk),
    .n_rst(tb_n_rst),
    .sending(tb_sending),
    .data(tb_data),
    .d_plus(tb_d_plus),
    .d_minus(tb_d_minus)
);

task send_reset;
begin
	tb_n_rst = 1;
	#(CLOCK)
	tb_n_rst = 0;
	#(CLOCK)
	tb_n_rst = 1;
	tb_sending = 0;
	tb_data = 8'b00000000; 
	#(CLOCK*8);   
end
endtask

initial
begin
    send_reset;
    tb_data = 8'b01101110;
	tb_sending = 1;

	#(50000)

	$stop;
end
endmodule