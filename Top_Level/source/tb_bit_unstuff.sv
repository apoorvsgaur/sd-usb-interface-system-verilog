// $Id: $
// File name:   tb_bit_unstuff.sv
// Created:     12/7/15
// Author:      Katie Bauschka
// Lab Section: 99
// Version:     1.0  Initial Design Entry
// Description: Bit Unstuff flex counters and state machine test bench

`timescale 1ns / 10ps

module tb_bit_unstuff ();

    // Define parameters
    // basic test bench parameters
    localparam CLOCK = 2.5;
    int tb_test_num = 0;

    // Shared Test Variables
    reg tb_clk;
    reg tb_n_rst;
    reg tb_d_orig;
    reg tb_d_edge;
    reg tb_shift_enable;
    reg tb_shift_stop;

    // Clock generation block
    always
    begin
        tb_clk = 1'b0;
        #(CLOCK/2.0);
        tb_clk = 1'b1;
        #(CLOCK/2.0);
    end
    
    //DUT Port Mapping
    bit_unstuff DUT(.clk(tb_clk),
                    .n_rst(tb_n_rst),
                    .d_orig(tb_d_orig),
                    .d_edge(tb_d_edge),
                    .shift_enable(tb_shift_enable),
                    .shift_stop(tb_shift_stop)
                   );

    //BEGIN TESTS
    initial
    begin
        //TEST 0: RESET W/O ACTIVE INPUTS
        tb_n_rst = 1;
        tb_d_orig = 0;
        tb_d_edge = 0;
        tb_shift_enable = 0;
        #CLOCK
        tb_n_rst = 0;
        #CLOCK
        tb_n_rst = 1;
        #CLOCK
        
        //TEST 1: RESET W/ ACTIVE INPUTS
        tb_test_num++;
        tb_n_rst = 1;
        tb_d_edge = 1;
        tb_d_orig = 1;
        tb_shift_enable = 1;
        #CLOCK
        tb_n_rst = 0;
        #CLOCK
        tb_n_rst = 1;
        #CLOCK
        
        //TEST 2: BIT UNSTUFF CLEAR WITH D_EDGE
        tb_test_num++;
        tb_n_rst = 0;
        tb_d_edge = 0;
        tb_d_orig = 1;
        tb_shift_enable = 0;
        #(CLOCK)
        tb_n_rst = 1;
        tb_shift_enable = 1;
        #(CLOCK)
        tb_shift_enable = 0;
        #(CLOCK*7)
        tb_shift_enable = 1;
        #(CLOCK)
        tb_shift_enable = 0;
        #(CLOCK*7)
        tb_shift_enable = 1;
        #(CLOCK)
        tb_shift_enable = 0;
        #(CLOCK*7)
        tb_shift_enable = 1;
        tb_d_edge = 1;
        #(CLOCK)
        tb_shift_enable = 0;
        tb_d_edge = 0;
        #(CLOCK*7)
        tb_shift_enable = 1;
        #(CLOCK)
        tb_shift_enable = 0;
        tb_d_edge = 0;
        #(CLOCK*7)
        tb_shift_enable = 1;
        #(CLOCK)
        tb_shift_enable = 0;
        #(CLOCK*7)
        tb_shift_enable = 1;
        #(CLOCK)
        tb_shift_enable = 0;
        #(CLOCK*7)
        tb_shift_enable = 1;
        #(CLOCK)
        tb_shift_enable = 0;
        #(CLOCK*7)
        tb_shift_enable = 1;
        #(CLOCK)
        tb_shift_enable = 0;
        #(CLOCK*7)
        tb_shift_enable = 1;
        #(CLOCK)
        tb_shift_enable = 0;
        #(CLOCK*7)
        tb_shift_enable = 1;
        #(CLOCK)
        tb_shift_enable = 0;
        #(CLOCK*7)
        tb_shift_enable = 1;
        tb_d_edge = 1;
        #(CLOCK)
        tb_shift_enable = 0;
        tb_d_edge = 0;
        #(CLOCK*7)

        //TEST 3: BIT UNSTUFF NOMINAL ALL ONES
        tb_test_num++;
        tb_n_rst = 0;
        tb_d_edge = 0;
        tb_d_orig = 1;
        tb_shift_enable = 1;
        #CLOCK
        tb_n_rst = 1;
        #CLOCK
        #CLOCK
        #CLOCK
        #CLOCK
        #CLOCK
        #CLOCK
        #CLOCK
        #CLOCK
        #CLOCK
        #CLOCK
        #CLOCK
        #CLOCK
        #CLOCK
        #CLOCK
        #CLOCK
        #CLOCK


        $stop;
    end
endmodule

