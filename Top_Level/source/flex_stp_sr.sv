// $Id: $
// File name:   flex_stp_sr.sv
// Created:     9/13/2015
// Author:      Kathrine Bauschka
// Lab Section: 337-01
// Version:     1.0  Initial Design Entry
// Description: Lab 3 Step 4.1 Flexible and Scalable Serial-to-Parallel Shift Register Design

module flex_stp_sr
#(
    parameter NUM_BITS = 8,
    parameter SHIFT_MSB = 1
)
(
    input wire clk,
    input wire n_rst,
    input wire shift_enable,
    input wire serial_in,
    output wire [NUM_BITS-1:0] parallel_out
);

    reg [NUM_BITS-1:0] out_tmp;
    reg [NUM_BITS-1:0] in_tmp;

    always_comb begin 
        if(shift_enable == 0) begin
            in_tmp = out_tmp;
        end else begin
            if(SHIFT_MSB == 1) begin
                in_tmp = {out_tmp[NUM_BITS-2:0], serial_in};
            end else begin
                //Add in control for bit unstuff signal
                in_tmp = {serial_in, out_tmp[NUM_BITS-1:1]};
            end
        end 
    end

    always_ff @ (posedge clk, negedge n_rst) begin
        if(n_rst == 0) begin
            out_tmp <= '1;
        end else begin
            out_tmp <= in_tmp;                
        end
    end

    assign parallel_out = out_tmp;

endmodule
