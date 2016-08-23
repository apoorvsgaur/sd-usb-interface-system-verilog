// $Id: $
// File name:   d_orig_gen.sv
// Created:     12/6/2015
// Author:      Apoorv Sanjay Gaur
// Lab Section: 337-01
// Version:     1.0  Initial Design Entry
// Description: Generating D_Orig
module usb_transmitter(
    input wire clk,
    input wire n_rst,
    input wire tx_transmit,
    input wire tx_send_good,
    input wire tx_send_bad,
    input wire empty,
    input wire [7:0] sd_data,
    output wire load_enable_sd,
    output wire d_plus,
    output wire tx_done,
    output wire tx_err,
    output wire d_minus
);

reg stop_clock, shift_enable, load_enable;
reg serial_in;
reg d_orig;
reg [7:0] data;
reg sending;
wire sd_enable; 
wire load_enable_g;
reg [15:0] crc_value;
reg crc_sync_rst;
wire stop_clock_shift_enable;
wire shift_enable_sd;
wire [7:0] tcu_data;

tcu TCU (
    .clk(clk),
    .n_rst(n_rst), 
    .tx_transmit(tx_transmit),
    .tx_send_good(tx_send_good),
    .tx_send_bad(tx_send_bad),
    .load_enable(load_enable),
    .empty(empty),
    .crc_value(crc_value),
    .data(tcu_data),
    .tx_done(tx_done),
    .tx_err(tx_err),
    .sending(sending),
    .sd_enable(sd_enable),
    .load_enable_g(load_enable_g),
    .eop(eop),
    .crc_sync_rst(crc_sync_rst)
);

timerTX SHIFT_ENABLE_GEN (
   .clk(clk),
   .n_rst(n_rst),
  // input wire d_edge,
   .sending(sending),
   .stop_clock(stop_clock),
   .shift_enable(shift_enable),
   .sd_enable(sd_enable),
   .load_enable_sd(load_enable_sd),
   .load_enable(load_enable),
   .load_enable_g(load_enable_g),
   .stop_clock_shift_enable(stop_clock_shift_enable),
   .shift_enable_sd(shift_enable_sd)
);
  always_comb begin
if(load_enable_sd) begin
  data = sd_data;
end else begin
  data = tcu_data;
end
end

flex_pts_tx SHIFT_REGISTER (
    .clk(clk),
    .n_rst(n_rst),
    .shift_enable(shift_enable),
    .load_enable(load_enable | load_enable_g),
    .parallel_in(data),
    .serial_out(serial_in),
    .stop_clock_shift_enable(stop_clock_shift_enable)
);


bit_stuffer STOP_CLOCK_GEN (
   .clk(clk),
   .n_rst(n_rst),
   .serial_in(serial_in),
   .shift_enable(shift_enable),
   .stop_clock_shift_enable(stop_clock_shift_enable),
   .d_orig(d_orig),
   .stop_clock(stop_clock)
);

encode ENCODER (
    .clk(clk),
    .n_rst(n_rst),
    .d_orig(d_orig),
    .shift_enable(shift_enable),
    //input wire eop,
    .sending(sending),
    .d_plus(d_plus),
    .d_minus(d_minus),
    .eop(eop)
);

crc_16bit_gen CRC_GENERATOR (
    .clk(clk),
    .n_rst(n_rst),
    .shift_enable_sd(shift_enable_sd),
    .serial_in(serial_in),
    .stop_clock_shift_enable(stop_clock_shift_enable),
    .crc_sync_rst(crc_sync_rst),
    .parallel_out(crc_value)
);

endmodule
