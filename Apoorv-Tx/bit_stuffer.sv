// $Id: $
// File name:   bit_stuffer.sv
// Created:     12/2/2015
// Author:      Apoorv Sanjay Gaur
// Lab Section: 337-01
// Version:     1.0  Initial Design Entry
// Description: Bit Stuffer
module bit_stuffer (
   input wire clk,
   input wire n_rst,
   input wire serial_in,
   input wire shift_enable,
   output wire stop_clock_shift_enable, //This signal is used to generate the extra shift enable for bit stuffing
   output wire d_orig,
   output wire stop_clock //This is the signal sent out to disable count_enable of the flex counter generating shigt enables
);

reg stop_prep; 
reg [3:0] count_out_value, dummy_variable2;
reg count_enable;
reg reg_stop_clock;
reg reg_d_orig;
reg cnt_clear, cnt_enable, cnt_done;
reg reg_stop_clock_shift_enable;
assign stop_clock_shift_enable = reg_stop_clock_shift_enable; 

typedef enum bit [3:0] {IDLE, CLEAR, COUNT} statevalue;
statevalue cur_state;
statevalue next_state;

//This flex counter counts the number of ones, and rollovers at 6.
flex_counter_stuff GENERATE_STOP_CLOCK
(
  .clk(clk),
  .n_rst(n_rst),
  .clear(!count_enable),
  .count_enable(count_enable & shift_enable),
  .rollover_val(4'd6), 
  .count_out(count_out_value),
  .rollover_flag(stop_prep)
);

//This flex counter counts upto 8, to skip a shift enable

flex_counter_stuff CLOCKS
(
   .clk(clk),
   .n_rst(n_rst),
   .clear(cnt_clear),
   .count_enable(cnt_enable),
   .rollover_val(4'd8), //8
   .count_out(dummy_variable2),
   .rollover_flag(cnt_done)
);



always_ff @ (posedge clk, negedge n_rst) begin
    if (n_rst == 0) begin
            cur_state <= IDLE;
    end else begin
            cur_state <= next_state;
    end
end


always_comb
begin: GENERATE_ONE_ENABLE
count_enable = 0;
reg_stop_clock_shift_enable = 0;
if (count_out_value == 4'd6)
begin
    //do nothing
    reg_d_orig = 0;
    reg_stop_clock_shift_enable = 1;
end
else if (serial_in == 1)
begin
    count_enable = 1;
    reg_d_orig = 1;
end
else
begin
    count_enable = 0;
    reg_d_orig = 0;
end
end

    

always_comb 
begin //next state logic
    next_state = cur_state;
    case (cur_state)
        IDLE: 
        begin
          if (stop_prep == 1) 
          begin
              next_state = COUNT;
          end
        end
        COUNT: 
        begin
          if (cnt_done == 1) 
          begin
              next_state = IDLE;
          end
        end
    endcase
end

always_comb 
begin //output logic
cnt_enable = 0;
reg_stop_clock = 0;
    case (cur_state)
      IDLE: 
      begin
                    //no values on
      end
      COUNT: 
      begin
        cnt_enable = 1;
        reg_stop_clock = 1;
      end
    endcase
end

assign cnt_clear = (stop_prep & !cnt_enable);
assign stop_clock = reg_stop_clock;
assign d_orig = reg_d_orig;

endmodule

