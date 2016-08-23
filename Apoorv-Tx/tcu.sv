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
    input wire shift_enable,
    input wire empty,
    input wire [15:0] crc_value,
    output wire [7:0] data,
    output wire sending,
    output wire sd_enable, //Wire to notify all block that we are interacting with the SD card 
    output wire load_enable_g, //Wire to generate a load enable for a special case
    output reg eop,
    output reg eop_special,
    output wire crc_sync_rst
);

typedef enum bit [4:0] {IDLE, TRANSMIT_SYNC, TRANSMIT_GOOD_BOOTY_SYNC, TRANSMIT_BAD_BOOTY_SYNC, TRANSMIT_GOOD_BOOTY_PID, TRANSMIT_BAD_BOOTY_PID, SEND_EOP1, SEND_EOP2, SEND_EOP3, SEND_CRC, SEND_CRC_2, WAIT_SEND_CRC_2, 
						TRANSMIT_PID, TRANSMIT_TX, DUMMY_LOAD_GEN} stateValue; 
stateValue current_state;
stateValue next_state;
stateValue store_state; //Used to store the type of cycle asked by the controller, because this is used 2 states after idle

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
  reg_sending = 1;
  reg_sd_enable = 0;
  next_reg_data = reg_data;
  load_enable_gen = 0;
  eop = 0;
  eop_special = 0;
  reg_crc_sync_rst = 0;
  case(current_state)
  IDLE: begin
    reg_sending = 0;
    if (tx_transmit == 1) //Start the Data Transmission cycle
    begin
        store_state = TRANSMIT_SYNC; 
        next_state = DUMMY_LOAD_GEN;
        next_reg_data = 8'b10000000;
    end
    else if (tx_send_good == 1) //Start the Good Handshake cycle
    begin
        store_state = TRANSMIT_GOOD_BOOTY_SYNC;
        next_state = DUMMY_LOAD_GEN;
        next_reg_data = 8'b10000000;
    end
    else if (tx_send_bad == 1) //Start the Bad Handshake cycle
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
  DUMMY_LOAD_GEN: begin //Generates a load enable to get the sync byte into the shift register, for all cycles
      load_enable_gen = 1;
      next_state = store_state;
  end
  TRANSMIT_GOOD_BOOTY_SYNC: begin
    reg_sending = 1;  //Start generating load enables and shift enables
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
    reg_sending = 1;
    eop = 1; //Telling the encoder to give out the EOP
    reg_crc_sync_rst = 1; //Reset the CRC16 Generator
    if (shift_enable == 1)
    begin
      next_state = SEND_EOP2;
    end
    else
    begin 
      next_state = SEND_EOP1;
    end
    end
    SEND_EOP2: begin
    reg_sending = 1;
    eop = 1;
    if (shift_enable == 1)
    begin
      next_state = SEND_EOP3;
    end
    else
    begin 
      next_state = SEND_EOP2;
    end
    end
    SEND_EOP3: begin
    reg_sending = 1;
    eop_special = 1; //Generate the third special EOP
    if (shift_enable == 1)
    begin
      next_state = IDLE;
    end
    else
    begin 
      next_state = SEND_EOP3;
    end
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
   TRANSMIT_TX: begin //Staring taking in data from the FIFO and transmitting
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
   SEND_CRC: begin //This name of this state may be misleading, it's still transmitting the byte received from the FIFO before the empty flag. It gets the CRC ready for the next state to start sending
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
   SEND_CRC_2: begin //The first 8 bits of the CRC16 value to be sent
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
   WAIT_SEND_CRC_2: begin //Waiting for the last 8 bits of the CRC16 value to be sent
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