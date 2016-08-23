// $Id: $
// File name:   flex_pts_sr.sv
// Created:     9/15/2015
// Author:      Apoorv Sanjay Gaur
// Lab Section: 337-01
// Version:     1.0  Initial Design Entry
// Description: N-bit Parallel-to-Serial Register

module flex_pts_tx
#(
    parameter NUM_BITS = 8,
    parameter SHIFT_MSB = 1
  )
  (
    input wire clk,
    input wire n_rst,
    input wire shift_enable,
    input wire load_enable,
    input wire [(NUM_BITS - 1) : 0] parallel_in,
    input wire stop_clock_shift_enable,
    output wire serial_out
  );
  
  reg [(NUM_BITS - 1): 0] D_in;
  reg [(NUM_BITS - 1) : 0] Q_out;
  
  always_ff @ (negedge n_rst, posedge clk) 
  begin : RESET
    if(n_rst == 1'b0) 
    begin
      Q_out <= 1'b0; 
    end
    else 
    begin
      Q_out <= D_in; 
    end
  
  end
  
  always_comb begin: NEXT_STATE
    D_in = Q_out;
    if(shift_enable == 1 && load_enable == 0 && !stop_clock_shift_enable) 
    begin
      if(SHIFT_MSB == 1) 
      begin
        D_in = {D_in[(NUM_BITS - 2):0], D_in[NUM_BITS - 1]};
      end
      
      if(SHIFT_MSB == 0) 
      begin
        D_in = {D_in[0], D_in[(NUM_BITS - 1):1]};
      end
    end
    
    
    else if(shift_enable == 1 && load_enable == 1 && !stop_clock_shift_enable) 
    begin
      if(SHIFT_MSB == 1) 
      begin
        D_in = {parallel_in[(NUM_BITS - 2) : 0], parallel_in[NUM_BITS - 1]};
      end
      
      if(SHIFT_MSB == 0) 
      begin
        D_in = {parallel_in[0], parallel_in[(NUM_BITS - 1):1]};
      end
    end
    
    else if(shift_enable == 0 && load_enable == 1)
    begin
      D_in = parallel_in;
    end
    
  end
  
  if(SHIFT_MSB == 1) 
  begin
    assign serial_out = Q_out[NUM_BITS - 1];
  end
  else if (SHIFT_MSB == 0)
  begin
    assign serial_out = Q_out[0];
  end

  
  
endmodule
