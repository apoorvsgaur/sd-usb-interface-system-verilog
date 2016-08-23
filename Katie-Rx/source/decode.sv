// $Id: $
// File name:   decode.sv
// Created:     10/5/2015
// Author:      Kathrine Bauschka
// Lab Section: 337-01
// Version:     1.0  Initial Design Entry
// Description: Lab 6 Step 7.2.1 Decode Block

module decode
(
    input wire clk,
    input wire n_rst,
    input wire d_plus,
    input wire shift_enable,
    input wire eop,
    output wire d_orig
);

    reg cur_d;
    reg next_d;
    reg cur_stored;
    reg next_stored;
    assign d_orig = !(cur_d ^ cur_stored);

    always_ff @ (posedge clk, negedge n_rst) begin
        if (n_rst == 0) begin
            cur_stored <= 1;
            cur_d <= 1;
        end else begin
            cur_stored <= next_stored;
            cur_d <= next_d;
        end
    end

    always_comb begin
        next_stored = cur_stored;
        next_d = d_plus;
        if (shift_enable & eop) begin
            next_stored = 1; //Sync reset
            next_d = 1;
        end else begin
            if (shift_enable == 1 & eop == 0) begin
                next_stored = d_plus;
            end
        end
    end

endmodule
