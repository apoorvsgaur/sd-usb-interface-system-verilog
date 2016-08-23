// $Id: $
// File name:   crc_check_5bit.sv
// Created:     9/13/2015
// Author:      Kathrine Bauschka
// Lab Section: 337-01
// Version:     1.0  Initial Design Entry
// Description: Project Rx Receive Module Serial-to-Parallel Shift Register CRC

module crc_check_5bit 
#(
    parameter SHIFT_MSB = 1
)
(
    input wire clk,
    input wire n_rst,
    input wire shift_enable,
    input wire serial_in,
    input wire eop,
    input wire shift_stop,
    input wire crc_rcv,
    input wire sync_rst,
    output wire [4:0] parallel_out
);

    reg [4:0] out_tmp;
    reg [4:0] in_tmp;

    always_comb begin 
        if(!shift_enable | shift_stop | (shift_enable & eop)) begin
            in_tmp = out_tmp;
        end else if (shift_enable & crc_rcv) begin
            if(SHIFT_MSB == 1) begin
                in_tmp = {out_tmp[3:2], out_tmp[1] ^ out_tmp[4], out_tmp[0], serial_in ^ out_tmp[4]};
            end else begin
                //Add in control for bit unstuff signal
                //in_tmp = {serial_in, out_tmp[NUM_BITS-1:1]};
            end
        end else if(sync_rst) begin
            in_tmp = '1;
        end else begin
            in_tmp = out_tmp; 
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
