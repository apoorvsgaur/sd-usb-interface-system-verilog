// $Id: $
// File name:   edge_detect.sv
// Created:     10/5/2015
// Author:      Kathrine Bauschka
// Lab Section: 337-01
// Version:     1.0  Initial Design Entry
// Description: Lab 6 Step 7.3.1 Edge Detector Block 

module edge_detect
(
    input wire clk,
    input wire n_rst,
    input wire d_plus,
    output wire d_edge
);

    reg past_d_plus;
    reg cur_d_edge;
    reg next_d_edge;

    assign d_edge = cur_d_edge; 

    always_ff @ (posedge clk, negedge n_rst) begin
        if (n_rst == 0) begin
            past_d_plus <= 1;
            cur_d_edge <= 0;
        end else begin
            past_d_plus <= d_plus; 
            cur_d_edge <= next_d_edge;
        end
    end

    always_comb begin
        if (past_d_plus != d_plus ) begin 
            next_d_edge = 1;
        end else begin
            next_d_edge = 0;
        end
    end

endmodule
