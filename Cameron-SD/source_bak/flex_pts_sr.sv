// $Id: $
// File name:   flex_pts_sr.sv
// Created:     9/15/2015
// Author:      Kathrine Bauschka
// Lab Section: 337-01
// Version:     1.0  Initial Design Entry
// Description: Lab 3 Step 4.2.1 N-Bit Parallel-to-Serial Shift Register Design

module flex_pts_sr
#(
    parameter NUM_BITS = 4,
    parameter SHIFT_MSB = 1
)
(
    input wire clk,
    input wire n_rst,
    input wire shift_enable,
    input wire load_enable,
    input wire [NUM_BITS-1:0] parallel_in,
    output wire serial_out
);

    reg [NUM_BITS-1:0] parallel_cur = parallel_in;
    reg [NUM_BITS-1:0] parallel_next = parallel_in;

    always_comb begin
        parallel_next = parallel_cur;
        if(load_enable == 1) begin
            parallel_next = parallel_in;
        end else if (shift_enable == 1) begin
            if(SHIFT_MSB == 1) begin
                parallel_next = {parallel_cur[NUM_BITS-2:0], '1};
            end else begin
                parallel_next = {'1, parallel_cur[NUM_BITS-1:1]};
            end
        end            
    end
    

    always_ff @ (posedge clk, negedge n_rst) begin
        if(n_rst == 0) begin
            parallel_cur <= '1;
        end else begin
            parallel_cur <= parallel_next;
        end
    end

    assign serial_out = (SHIFT_MSB == 1) ? parallel_cur[NUM_BITS-1]:parallel_cur[0];

endmodule
