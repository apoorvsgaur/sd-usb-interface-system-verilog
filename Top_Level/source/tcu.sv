// $Id: $
// File name:   tcu.sv
// Created:     12/6/2015
// Author:      Apoorv Sanjay Gaur
// Lab Section: 337-01
// Version:     1.0  Initial Design Entry
// Description: Transmitter Recieving Unit
module tcu (
    input wire clk,
    input wire n_rst, 
    input wire tx_transmit,
    input wire tx_send_good,
    input wire tx_send_bad,
    input wire load_enable,
    input wire empty,
    input wire [15:0] crc_value,
    output wire [7:0] data,
    output wire sending,
    output wire sd_enable,
    output wire load_enable_g,
    output reg tx_done,
    output wire tx_err,
    output reg eop,
    output wire crc_sync_rst
);

typedef enum bit [4:0] {IDLE, TRANSMIT_SYNC, TRANSMIT_GOOD_BOOTY_SYNC, TRANSMIT_BAD_BOOTY_SYNC, TRANSMIT_GOOD_BOOTY_PID, TRANSMIT_BAD_BOOTY_PID, SEND_EOP1, SEND_EOP2, SEND_CRC, SEND_CRC_2, WAIT_SEND_CRC_2, 
						TRANSMIT_PID, TRANSMIT_TX, DUMMY_LOAD_GEN, DONE} stateValue; 
stateValue current_state;
stateValue next_state;
stateValue store_state; 

reg load_enable_gen;
reg reg_sending;
reg [7:0] reg_data;
reg reg_sd_enable;
reg [7:0] next_reg_data;
reg reg_crc_sync_rst;

assign sending = reg_sending;
assign data = reg_data;
assign sd_enable = reg_sd_enable;
assign load_enable_g = load_enable_gen;
assign crc_sync_rst = reg_crc_sync_rst;  


always_ff @(negedge n_rst, posedge clk)
begin: NEXT_STATE_FF
  if(n_rst == 1'b0)
  begin
    current_state = IDLE;
  end
  else
  begin
    current_state = next_state;
  end
end

always_ff @(negedge n_rst, posedge clk)
begin: NEXT_REG_DATA
  if(n_rst == 1'b0)
  begin
    reg_data = 8'b00000000;
  end
  else
  begin
    reg_data = next_reg_data;
  end
end

always_comb
begin: reg_data_TRANS_LOGIC
  next_state = current_state;
  tx_done = 0;
  reg_sending = 1;
  reg_sd_enable = 0;
  next_reg_data = reg_data;
  load_enable_gen = 0;
  eop = 0;
  reg_crc_sync_rst = 0;
  case(current_state)
  IDLE: begin
    reg_sending = 0;
    if (tx_transmit == 1)
    begin
        store_state = TRANSMIT_SYNC; 
        next_state = DUMMY_LOAD_GEN;
        next_reg_data = 8'b10000000;
    end
    else if (tx_send_good == 1)
    begin
        store_state = TRANSMIT_GOOD_BOOTY_SYNC;
        next_state = DUMMY_LOAD_GEN;
        next_reg_data = 8'b10000000;
    end
    else if (tx_send_bad == 1)
    begin 
        store_state = TRANSMIT_BAD_BOOTY_SYNC;
        next_state = DUMMY_LOAD_GEN;
        next_reg_data = 8'b10000000;
    end
    else
    begin 
        next_state = IDLE;
    end 
  end
  DUMMY_LOAD_GEN: begin
      load_enable_gen = 1;
      next_state = store_state;
  end
  TRANSMIT_GOOD_BOOTY_SYNC: begin
    reg_sending = 1;  
    next_reg_data = 8'b00101101;
    if (load_enable == 1)
    begin
    	next_state = TRANSMIT_GOOD_BOOTY_PID;
    end
    else
    begin 
        next_state = TRANSMIT_GOOD_BOOTY_SYNC; 
    end
   end
   TRANSMIT_GOOD_BOOTY_PID: begin 
    reg_sending = 1; 
    if (load_enable == 1)
    begin
        next_state = SEND_EOP1;
    end
    else 
    begin
        next_state = TRANSMIT_GOOD_BOOTY_PID; 
    end
    end
    SEND_EOP1: begin
    reg_sending = 0;
    eop = 1;
    reg_crc_sync_rst = 1;
    next_state = SEND_EOP2;
    end
    SEND_EOP2: begin
    reg_sending = 0;
    eop = 1;
    next_state = DONE;
    end
    DONE: begin
    tx_done = 1;
    next_state = IDLE;
    end

  TRANSMIT_BAD_BOOTY_SYNC: begin
    reg_sending = 1;  
    next_reg_data = 8'b10100101;
    if (load_enable == 1)
    begin
    	next_state = TRANSMIT_BAD_BOOTY_PID;
    end
    else
    begin 
        next_state = TRANSMIT_BAD_BOOTY_SYNC; 
    end
   end
   TRANSMIT_BAD_BOOTY_PID: begin 
    reg_sending = 1; 
    if (load_enable == 1)
    begin
        next_state = SEND_EOP1;
    end
    else 
    begin
        next_state = TRANSMIT_BAD_BOOTY_PID; 
    end
   end
   TRANSMIT_SYNC: begin
   	reg_sending = 1;
   // reg_sd_enable = 1;
    next_reg_data = 8'b00111100;
    if (load_enable == 1)
    begin
       next_state = TRANSMIT_PID;
    end 
    else
    begin
       next_state = TRANSMIT_SYNC;
    end
   end
   TRANSMIT_PID: begin
   reg_sending = 1;
  // reg_sd_enable = 1;
   if (load_enable == 1)
   begin
       next_state = TRANSMIT_TX;
   end
   else
   begin
       next_state = TRANSMIT_PID;
   end
   end
   TRANSMIT_TX: begin
   reg_sending = 1;
   reg_sd_enable = 1;
   if(empty == 1)
   begin
      reg_sd_enable = 0; 
      next_state = SEND_CRC;
   end
   else
   begin
      next_state = TRANSMIT_TX;
   end
   end
   SEND_CRC: begin
   reg_sd_enable = 1;
   if (load_enable == 1)
   begin
      next_reg_data = crc_value[15:8];
      next_state = SEND_CRC_2;
   end
   else
   begin
       next_state = SEND_CRC;
   end
   end
   SEND_CRC_2: begin
   if (load_enable == 1)
   begin
      next_reg_data = crc_value[7:0];
      next_state = WAIT_SEND_CRC_2;
   end
   else
   begin
       next_state = SEND_CRC_2;
   end
   end
   WAIT_SEND_CRC_2: begin
   if (load_enable == 1)
   begin
      next_state = SEND_EOP1;
   end
   else
   begin
      next_state = WAIT_SEND_CRC_2;
   end
   end

endcase
end

endmodule 