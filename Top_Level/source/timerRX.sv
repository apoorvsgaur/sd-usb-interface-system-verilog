// $Id: $
// File name:   timer.sv
// Created:     10/8/2015
// Author:      Kathrine Bauschka
// Lab Section: 337-01
// Version:     1.0  Initial Design Entry
// Description: Lab 6 Step 7.4

module timerRX
(
    input wire clk,
    input wire n_rst,
    input wire d_edge,
    input wire rcving,
    input wire [3:0] bit_cnt,
    input wire shift_stop,
    output wire shift_enable,
    output wire byte_received,
    output wire field_received
);

    reg [3:0] useless, clk_count;
    reg also_useless;
    reg flag_temp;
    reg clear_temp;

    flex_counter BITS(.clk(clk),
                      .n_rst(n_rst),
                      .clear(!rcving),
                      .count_enable(shift_enable & !shift_stop),
                      .rollover_val(bit_cnt), 
                      .count_out(useless),
                      .rollover_flag(flag_temp)
                     );

    flex_counter CLKS(.clk(clk),
                      .n_rst(n_rst),
                      .clear(clear_temp),
                      .count_enable(rcving),
                      .rollover_val(4'b1000), //8
                      .count_out(clk_count),
                      .rollover_flag(also_useless)
                     );

    assign clear_temp = (d_edge | !rcving);
    assign byte_received = (shift_enable & (useless == 8));
    assign field_received = (shift_enable & flag_temp);
    assign shift_enable = (clk_count == 3);

endmodule
