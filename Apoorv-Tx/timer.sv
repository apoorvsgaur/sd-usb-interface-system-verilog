// $Id: $
// File name:   timer.sv
// Created:     10/26/2015
// Author:      Apoorv Sanjay Gaur
// Lab Section: 337-01
// Version:     1.0  Initial Design Entry
// Description: Timer
module timer (
   input wire clk,
   input wire n_rst,
  // input wire d_edge,
   input wire sending,
   input wire stop_clock,
   input wire sd_enable,
   input wire load_enable_g,
   input wire stop_clock_shift_enable,
   output wire load_enable_sd,
   output wire shift_enable_sd,
   output wire shift_enable,
   output reg load_enable
);

reg [3:0] count_out_shift;
reg [3:0] random_var;
reg random_var2;
reg reg_load_enable_sd;
reg nextbyte;
reg mybyte; 

assign load_enable_sd = reg_load_enable_sd;

flex_counter #(.NUM_CNT_BITS(4)) shift_enable_gen(
  .clk(clk),
  .n_rst(n_rst),
  .clear(!sending),  
  .count_enable(sending && !stop_clock), //Doesn't count the shift enable at bit-stuffing mode
  .rollover_val(4'd8),
  .count_out(count_out_shift),
  .rollover_flag(random_var2)  
);

flex_counter #(.NUM_CNT_BITS(4)) load_enable_gen (
  .clk(clk),
  .n_rst(n_rst),
  .clear(!sending || nextbyte),
  .count_enable(shift_enable && !stop_clock_shift_enable),
  .rollover_val(4'd8),
  .count_out(random_var),
  .rollover_flag(load_enable)  
);

assign shift_enable = (count_out_shift == 4'd3 || stop_clock_shift_enable) ? 1:0; //Generates shift_enable at stop_clock_shift_enable (for bit-stuffing) 
assign shift_enable_sd = ((count_out_shift == 4'd3 || stop_clock_shift_enable) && sd_enable == 1) ? 1:0; //This shift enable is for the CRC16 generator, it's only switched on when data is being taken in from the FIFO


//The below setup keeps the load enable asserted for only one clock cycle
always_ff @ (negedge n_rst, posedge clk) begin
  if(~n_rst)begin
      mybyte = 1'b0;
  end 
  else 
  begin
      mybyte = nextbyte;
  end
end

always_comb
begin: LOAD_ENABLE_SD_GEN
if (sd_enable == 1 && load_enable == 1)
begin
    reg_load_enable_sd = 1;
end
else
begin
    reg_load_enable_sd = 0;
end
end  

always_comb 
begin
    nextbyte = 1'b0;
    if(load_enable)
            nextbyte = 1'b1;

end
endmodule