// $Id: $
// File name:   flex_counter.sv
// Created:     9/15/2015
// Author:      Kathrine Bauschka
// Lab Section: 337-01
// Version:     1.0  Initial Design Entry
// Description: Lab 3 Step 5.1 (Late Work)

module flex_counter
#(
    parameter NUM_CNT_BITS = 4
)
(
    input wire clk,
    input wire n_rst,
    input wire clear,
    input wire count_enable,
    input wire [NUM_CNT_BITS-1:0] rollover_val,
    output wire [NUM_CNT_BITS-1:0] count_out,
    output wire rollover_flag
);
    reg [NUM_CNT_BITS-1:0] cur_count; //was set to 0
    reg [NUM_CNT_BITS-1:0] next_count;
    reg next_flag;
    reg cur_flag;

    always_comb begin
        next_flag = 0;
        if(clear) begin
            next_count = 1;
        end else if (count_enable) begin
            if (cur_count == rollover_val) begin
                next_count = 1;
            end else begin
                next_count = cur_count + 1;
            end
            if (cur_count == rollover_val - 1) begin
                next_flag = 1;
            end else begin
                next_flag = 0;
            end
        end else begin
            next_count = cur_count;
            if (cur_count == rollover_val) begin
                next_flag = 1;
            end else begin
                next_flag = 0;
            end
        end
    end

    always_ff @ (posedge clk, negedge n_rst) begin
        if (n_rst == 0) begin
            cur_count <= '0;
            cur_flag <= '0;
        end else begin
            cur_count <= next_count;
            cur_flag <= next_flag;
        end
    end

    assign rollover_flag = cur_flag;
    assign count_out = cur_count;

endmodule
