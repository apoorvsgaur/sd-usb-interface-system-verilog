// $Id: $
// File name:   usb_receiver.sv
// Created:     10/15/2015
// Author:      Kathrine Bauschka
// Lab Section: 337-01
// Version:     1.0  Initial Design Entry
// Description: Lab 6 Step 7.1 Top-Level File

module usb_receiver
(
    input wire clk,
    input wire n_rst,
    input wire d_plus,
    input wire d_minus,
    input wire [7:0] sram_o,
    input wire r_enable,
    output wire [7:0] sram_i,
    output wire [7:0] r_data,
    output wire empty,
    output wire [1:0] packet_done,
    output wire pid_rdy,
    output wire [3:0] pid,
    //output wire full,
    output wire rcving,
    output wire [11:0] addr,
    output wire r_enable_out,
    output wire w_enable_out,
    output wire r_error
);

    reg shift_enable, eop, d_orig, d_edge, byte_received, w_enable, d_plus_sync, d_minus_sync, shift_stop, field_received, sync_rst, clear;
    reg [7:0] rcv_data; // w_data;
    reg [4:0] crc5_data;
    reg [15:0] crc16_data;
    reg [3:0] bit_cnt;

    assign r_enable_out = r_enable;
    assign w_enable_out = w_enable;


    sync CNYS1(.clk(clk),
               .n_rst(n_rst),
               .async_in(d_plus),
               .sync_out(d_plus_sync)
              );

    sync CNYS2(.clk(clk),
               .n_rst(n_rst),
               .async_in(d_minus),
               .sync_out(d_minus_sync)
              );

    decode DCD(.clk(clk),
               .n_rst(n_rst),
               .d_plus(d_plus_sync),
               .shift_enable(shift_enable),
               .eop(eop),
               .d_orig(d_orig)
              );

    edge_detect EDT(.clk(clk),
                    .n_rst(n_rst),
                    .d_plus(d_plus_sync),
                    .d_edge(d_edge)
                   );

    eop_detect PDT(.d_plus(d_plus_sync),
                   .d_minus(d_minus_sync),
                   .eop(eop)
                  );

    timer TIM(.clk(clk),
              .n_rst(n_rst),
              .d_edge(d_edge),
              .rcving(rcving),
              .bit_cnt(bit_cnt),
              .shift_stop(shift_stop),
              .shift_enable(shift_enable),
              .byte_received(byte_received),
              .field_received(field_received)
             );

    bit_unstuff BST(.clk(clk),
                    .n_rst(n_rst),
                    .d_orig(d_orig),
                    .d_edge(d_edge),
                    .shift_enable(shift_enable),
                    .shift_stop(shift_stop)
                   );

    crc_check_5bit CRC5(.clk(clk),
                        .n_rst(n_rst),
                        .shift_enable(shift_enable),
                        .serial_in(d_orig),
                        .shift_stop(shift_stop),
                        .eop(eop),
                        .crc_rcv(crc_rcv),
                        .sync_rst(sync_rst),
                        .parallel_out(crc5_data)
                       );

    crc_check_16bit CRC16(.clk(clk),
                          .n_rst(n_rst),
                          .shift_enable(shift_enable),
                          .serial_in(d_orig),
                          .eop(eop),
                          .shift_stop(shift_stop),
                          .crc_rcv(crc_rcv),
                          .sync_rst(sync_rst),
                          .parallel_out(crc16_data)
                         );

    rcu RCU(.clk(clk),
            .n_rst(n_rst),
            .d_edge(d_edge),
            .eop(eop),
            .shift_enable(shift_enable),
            .rcv_data(rcv_data),
            .crc5_data(crc5_data),
            .crc16_data(crc16_data),
            .byte_received(byte_received),
            .field_received(field_received),
            .pid(pid),
            .rcving(rcving),
            .w_enable(w_enable),
            .clear(clear),
            .r_error(r_error),
            .crc_rcv(crc_rcv),
            .pid_rdy(pid_rdy),
            .bit_cnt(bit_cnt),
            .packet_done(packet_done),
            .sync_rst(sync_rst)
           );

    shift_register SRG(.clk(clk),
                       .n_rst(n_rst),
                       .shift_enable(shift_enable),
                       .d_orig(d_orig),
                       .shift_stop(shift_stop),
                       .rcv_data(rcv_data)
                      );

    myfifo OFIF(.clk(clk),           //input
                .n_rst(n_rst),       //input
                .r_enable(r_enable), //input
                .w_enable(w_enable), //input
                .clear(clear),       //input
                .data_i(rcv_data),   //input
                .sram_o(sram_o),     //input
                .sram_i(sram_i),     //output
                .data_o(r_data),     //output
                .addr(addr),         //output
                .empty(empty),       //output
                .full(full)          //output
               );

endmodule
