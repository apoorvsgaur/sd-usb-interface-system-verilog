// $Id: $
// File name:   shift_register.sv
// Created:     10/7/2015
// Author:      Kathrine Bauschka
// Lab Section: 337-01
// Version:     1.0  Initial Design Entry
// Description: Lab 6 Step 7.5 Shift Register Block

module shift_register
(
    input wire clk,
    input wire n_rst,
    input wire shift_enable,
    input wire d_orig,
    input wire shift_stop,
    output wire [7:0] rcv_data
);

    flex_stp_sr FSS(.clk(clk),
                    .n_rst(n_rst),
                    .shift_enable(shift_enable & !shift_stop),
                    .serial_in(d_orig),
                    .parallel_out(rcv_data)
                   );

    defparam FSS.NUM_BITS = 8;
    defparam FSS.SHIFT_MSB = 0;

endmodule
