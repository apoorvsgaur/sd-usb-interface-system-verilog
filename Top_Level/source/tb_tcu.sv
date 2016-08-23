// $Id: $
// File name:   tb_tcu.sv
// Created:     12/7/2015
// Author:      Apoorv Sanjay Gaur
// Lab Section: 337-01
// Version:     1.0  Initial Design Entry
// Description: TCU Test Bench
`timescale 1ns / 10ps
module tb_tcu
();

localparam CLOCK = 10;
always
begin
	tb_clk = 0;
	#(CLOCK/2.0);
	tb_clk = 1;
	#(CLOCK/2.0);
end

reg tb_clk, tb_n_rst;

tcu DTU (
    .clk(tb_clk),
    .n_rst(), 
    input wire tx_transmit,
    input wire tx_send_good,
    input wire tx_send_bad,
    input wire load_enable,
    input wire empty,
    output wire [7:0] data,
    output wire sending,
    output wire sd_enable
)

initial
begin

    tb_data = 8'b10111011;
	tb_sending = 1;

	$stop;
end
endmodule
