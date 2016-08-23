// $Id: $
// File name:   flex_counter.sv
// Created:     9/15/2015
// Author:      Apoorv Sanjay Gaur
// Lab Section: 337-01
// Version:     1.0  Initial Design Entry
// Description: Flexible and Scalable Counter with Controlled Rollover
module flex_counter 
#(
   parameter NUM_CNT_BITS = 4
)
(
  input wire clk,
  input wire n_rst,
  input wire clear,
  input wire count_enable,
  input wire [(NUM_CNT_BITS-1):0] rollover_val,
  output wire [(NUM_CNT_BITS-1):0] count_out,
  output wire rollover_flag  
);

reg [NUM_CNT_BITS - 1: 0] counter; 
reg roll_val;
reg [NUM_CNT_BITS - 1:0] count_assign;
reg roll_assign;
assign count_out = counter;
assign rollover_flag = roll_val;

always_ff @ (negedge n_rst, posedge clk)
begin : RESET_FF
  if(n_rst == 1'b0)
  begin
    counter <= 1'b0; 
  end 
  else
  begin
    counter <= count_assign;
  end  
end

always_ff @ (negedge n_rst, posedge clk)
begin: ROLLOVER_FLAG
  if(n_rst == 1'b0)
  begin
    roll_val <= 0;
  end
  else
  begin
    roll_val <= roll_assign;
  end
end


always_comb 
begin: COUNTER_COMB
  count_assign = counter;
  roll_assign = 1'b0;
  
if(clear == 1'b1)
begin
    count_assign = 0;
    roll_assign = 0;  
end
else if(count_enable == 1'b1)
begin
  //  count_assign = counter + 1; 
    if (counter + 1 == rollover_val)
    begin
        roll_assign = 1;
    end
    else
    begin
        roll_assign = 0;
    end

    if (counter == rollover_val)
    begin
       count_assign = 1;
    end
    else
    begin
       count_assign = counter + 1;
    end
 //   if(count_assign == rollover_val)
 //   begin
 //     count_assign = 1; 
 //     roll_assign = 1;
 //   end 
end
else if(count_enable == 1'b0)
begin
    if(count_assign == rollover_val)
    begin
      roll_assign = 1;
    end 
    else
    begin
      roll_assign = 0;
    end
end
end 

endmodule

  