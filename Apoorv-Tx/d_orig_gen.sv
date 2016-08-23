// $Id: $
// File name:   d_orig_gen.sv
// Created:     12/6/2015
// Author:      Apoorv Sanjay Gaur
// Lab Section: 337-01
// Version:     1.0  Initial Design Entry
// Description: Generating D_Orig
module d_orig_gen(
    input wire clk,
    input wire n_rst,
    input wire sending,
    input wire [7:0] data,
    output wire d_plus,
    output wire d_minus
);

//This top level was specially generated to show bit stuffing. It contains the timer, bit-stuffer, encoder and shift register

reg stop_clock, shift_enable, load_enable;
reg serial_in;
reg d_orig;
reg sd_enable, load_enable_g, load_enable_sd;
reg stop_clock_shift_enable;

timer SHIFT_ENABLE_GEN (
   .clk(clk),
   .n_rst(n_rst),
  // input wire d_edge,
   .sending(sending),
   .stop_clock(stop_clock),
   .sd_enable(sd_enable),
   .load_enable_g(load_enable_g),
   .load_enable_sd(load_enable_sd),
   .shift_enable(shift_enable),
   .load_enable(load_enable),
   .stop_clock_shift_enable(stop_clock_shift_enable)
);


flex_pts_sr SHIFT_REGISTER (
    .clk(clk),
    .n_rst(n_rst),
    .shift_enable(shift_enable),
    .load_enable(load_enable),
    .parallel_in(data),
    .serial_out(serial_in),
    .stop_clock_shift_enable(stop_clock_shift_enable)
);

bit_stuffer STOP_CLOCK_GEN (
   .clk(clk),
   .n_rst(n_rst),
   .serial_in(serial_in),
   .shift_enable(shift_enable),
   .d_orig(d_orig),
   .stop_clock(stop_clock),
   .stop_clock_shift_enable(stop_clock_shift_enable)
);

encode ENCODER (
    .clk(clk),
    .n_rst(n_rst),
    .d_orig(d_orig),
    .shift_enable(shift_enable),
    //input wire eop,
    .sending(sending),
    .d_plus(d_plus),
    .d_minus(d_minus)
);

endmodule