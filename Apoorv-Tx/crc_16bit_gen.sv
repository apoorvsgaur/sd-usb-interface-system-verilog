// $Id: $
// File name:   crc_16bit_gen.sv
// Created:     12/14/2015
// Author:      Apoorv Sanjay Gaur
// Lab Section: 337-01
// Version:     1.0  Initial Design Entry
// Description: CRC Generator
module crc_16bit_gen 
#(
    parameter SHIFT_MSB = 1
)
(
    input wire clk,
    input wire n_rst,
    input wire shift_enable_sd,
    input wire serial_in,
    input wire stop_clock_shift_enable,
    input wire crc_sync_rst,
    output wire [15:0] parallel_out
);

    reg [15:0] out_tmp;
    reg [15:0] in_tmp;

    always_comb begin 
        in_tmp = out_tmp;
        if(!shift_enable_sd | stop_clock_shift_enable) begin
            in_tmp = out_tmp;
        end else if (shift_enable_sd) begin
            if(SHIFT_MSB == 1) begin
                in_tmp   = {out_tmp[14] ^ out_tmp[15], out_tmp[13:2], out_tmp[1] ^ out_tmp[15], out_tmp[0], serial_in ^ out_tmp[15]}; //CRC16 generation, with every shift that takes in serial_in
            end else begin

            end
        end else if(crc_sync_rst) begin
            in_tmp = 16'b1111111111111111; //Reset after a data transmit cycle
        end 
    end

    always_ff @ (posedge clk, negedge n_rst) begin
        if(n_rst == 0) begin
            out_tmp <= 16'b1111111111111111;
        end else begin
            out_tmp <= in_tmp;                
        end
    end

    assign parallel_out = out_tmp;

endmodule