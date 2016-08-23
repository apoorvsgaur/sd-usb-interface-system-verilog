// $Id: $
// File name:   tb_usb_transmitter.sv
// Created:     12/7/2015
// Author:      Apoorv Sanjay Gaur
// Lab Section: 337-01
// Version:     1.0  Initial Design Entry
// Description: USB Transmitter Test Bench

// This is a test bench to test the top-level USB_Transmitter. It sends out the two handshake packets, and initates a data transmit cycle 
`timescale 1ns / 10ps
module tb_usb_transmitter
();

reg tb_clk, tb_n_rst;
reg tb_tx_transmit;
reg tb_tx_send_good;
reg tb_tx_send_bad;
reg tb_empty;
reg tb_d_plus;
reg tb_d_minus;
reg tb_load_enable_sd;

localparam CLOCK = 10;
always
begin
	tb_clk = 0;
	#(CLOCK/2.0);
	tb_clk = 1;
	#(CLOCK/2.0);
end


usb_transmitter DTU (
    .clk(tb_clk),
    .n_rst(tb_n_rst),
    .tx_transmit(tb_tx_transmit),
    .tx_send_good(tb_tx_send_good),
    .tx_send_bad(tb_tx_send_bad),
    .load_enable_sd(tb_load_enable_sd),
    .empty(tb_empty),
    .d_plus(tb_d_plus),
    .d_minus(tb_d_minus)
);

task send_reset;
begin
    tb_tx_transmit = 0;
    tb_tx_send_good = 0;
    tb_tx_send_bad = 0;
    tb_empty = 0;
	tb_n_rst = 1;
	#(CLOCK)
	tb_n_rst = 0;
	#(CLOCK)
	tb_n_rst = 1;
	//tb_sending = 0;
	//tb_data = 8'b00000000; 
	#(CLOCK*8);   
end
endtask

initial
begin
    send_reset;
    tb_tx_send_good = 1; //Initiating the cycle of sending the good handshake packet
    #(CLOCK)
    tb_tx_send_good = 0;
    #(2000)
    tb_tx_send_bad = 1; //Initiating the cycle of sending the bad handshake packet
    #(CLOCK)
    tb_tx_send_bad = 0;
    #(2000)
    tb_tx_transmit = 1; //Initiating the cycle for data transmission from the FIFO 
    #(CLOCK)
    tb_tx_transmit = 0;
    #(2000)
    tb_empty = 1;
    #(2000)
  

	$stop;
end
endmodule