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

reg stop_clock, shift_enable, load_enable;
reg serial_in;
reg d_orig;

timer SHIFT_ENABLE_GEN (
   .clk(clk),
   .n_rst(n_rst),
  // input wire d_edge,
   .sending(sending),
   .stop_clock(stop_clock),
   .shift_enable(shift_enable),
   .load_enable(load_enable)
);

flex_pts_sr SHIFT_REGISTER (
    .clk(clk),
    .n_rst(n_rst),
    .shift_enable(shift_enable),
    .load_enable(load_enable),
    .parallel_in(data),
    .serial_out(serial_in)
);

bit_stuffer STOP_CLOCK_GEN (
   .clk(clk),
   .n_rst(n_rst),
   .serial_in(serial_in),
   .shift_enable(shift_enable),
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
    .d_minus(d_minus)
);

endmodule