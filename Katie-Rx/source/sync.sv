// $Id: $
// File name:   sync.sv
// Created:     9/3/2015
// Author:      Kathrine Bauschka
// Lab Section: 337-01
// Version:     1.0  Initial Design Entry
// Description: Post Lab 2 Step 2.4.2 Synchronizer Design Specifications

module sync
(
    input reg clk,
    input reg n_rst,
    input reg async_in,
    output wire sync_out
);

    reg Q1, Q2;

    always_ff @ (posedge clk, negedge n_rst) begin
        if(1'b0 == n_rst) begin
            Q1 <= 1'b0;
            Q2 <= 1'b0;
        end else begin
            Q1 <= async_in;
            Q2 <= Q1;
        end
    end

    assign sync_out = Q2;

endmodule
