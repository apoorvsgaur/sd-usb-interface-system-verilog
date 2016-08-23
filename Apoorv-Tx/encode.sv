// $Id: $
// File name:   encode.sv
// Created:     11/3/2015
// Author:      Apoorv Sanjay Gaur
// Lab Section: 337-01
// Version:     1.0  Initial Design Entry
// Description: Encode block

module encode (
    input wire clk,
    input wire n_rst,
    input wire d_orig,
    input wire shift_enable,
    input wire eop,
    input wire eop_special,
    input wire sending,
    output wire d_plus,
    output wire d_minus
);

reg next_d_orig;
reg stored_shift_value;
reg next_stored_shift_value;
reg actual_d_plus;
reg d_orig_val;
reg pre_d_plus;

reg reg_d_plus;
reg reg_d_minus;

assign d_plus = reg_d_plus;
assign d_minus = reg_d_minus;

always_ff @(posedge clk, negedge n_rst) 
begin: SETTING_D_ORIG
  if(n_rst == 1'b0)
  begin
    pre_d_plus <= 0; 
    //stored_shift_value <= 1;
  end 
  else
  begin
    pre_d_plus <= actual_d_plus; 
    //stored_shift_value <= next_stored_shift_value;
  end
end

//always_ff @(posedge clk, negedge n_rst) 
//begin: d_orig_MOORE
//  if(n_rst == 1'b0)
//  begin
//      next_d_orig <= 1;           
//  end 
//  else
//  begin
//      next_d_orig <= d_orig_val;
//  end
//end

always_comb // This combinational block causes a transition in d_plus everytime a d_orig is 0
begin: GENERATE_D_PLUS 
if(shift_enable == 1 && d_orig ==0)
begin
   actual_d_plus = !pre_d_plus;
end
else
begin
   actual_d_plus = pre_d_plus;
end
end


always_comb //This comb block generates the d-plus and d-minus for all needed cases
begin: DEFAULT_D_VALUES
if (eop)
begin 
   reg_d_plus = 0;
   reg_d_minus = 0;
end
else if (!sending)
begin
   reg_d_plus = 1;
   reg_d_minus = 1;
end
else if (eop_special)
begin
   reg_d_plus = 1;
   reg_d_minus = 0;
end
else
begin
   reg_d_plus = actual_d_plus;
   reg_d_minus = !reg_d_plus;
end
end

endmodule