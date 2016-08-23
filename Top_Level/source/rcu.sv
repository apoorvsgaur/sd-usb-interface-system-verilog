// $Id: $
// File name:   rcu.sv
// Created:     10/8/2015
// Author:      Kathrine Bauschka
// Lab Section: 337-01
// Version:     1.0  Initial Design Entry
// Description: Lab 6 Step 7.8 RCU Block

module rcu
(
    input wire clk,
    input wire n_rst,
    input wire d_edge,
    input wire eop,
    input wire shift_enable,
    input wire [7:0] rcv_data,
    input wire [4:0] crc5_data,
    input wire [15:0] crc16_data,
    input wire byte_received,
    input wire field_received,
    output wire sync_rst,
    output wire [3:0] pid,
    output wire rcving,
    output wire w_enable,
    output wire r_error,
    output wire crc_rcv,
    output wire pid_rdy,
    output wire [3:0]bit_cnt,
    output wire [1:0] packet_done,
    output wire clear
);

    typedef enum bit [6:0] {SU_IDLE, SU_WAIT_SYNC, SU_CHK_SYNC, SU_WAIT_PID, SU_CHK_PID,                                 //setup
                            SU_WAIT_TOKEN1, SET_ADDR, SU_WAIT_TOKEN2, SU_WAIT_TOKEN3, SU_WAIT_EOP5, SU_WAIT_ERR,         //setup
                            SU_EOP_ERR, SU_EOP_CRC5, SU_GOOD_CRC, SU_BAD_CRC, N_RST1, N_RST2,                            //setup
                            EIDLE, IDLE, WAIT_SYNC, CHK_SYNC, WAIT_PID, CHK_PID, SEND_PID,                               //main rcv
                            WAIT_BYTE, WAIT_HS, WAIT_SOF1, WAIT_SOF2, WAIT_TOKEN1, CHK_ADDR, WAIT_TOKEN2, WAIT_TOKEN3,   //main rcv
                            WAIT_EOP5, WAIT_ERR, STORE, WAIT_STORE, EOP, EOP_ERR, EOP_CRC5, EOP_CRC16, GOOD_CRC, BAD_CRC //main rcv
                           } state_type;
    state_type cur_state;
    state_type next_state;

    localparam sync_byte = 8'h80;
    localparam crc5      = 5'b00000;
    localparam crc16     = 16'h0000;
    localparam t_out     = 8'b00011110; //RCVED
    localparam t_in      = 8'b10010110; //RCVED
    localparam t_sof     = 8'b01011010; //RCVED
    localparam t_setup   = 8'b11010010; //RCVED
    localparam d_data0   = 8'b00111100;
    localparam hs_ack    = 8'b00101101; //RCVED
    localparam hs_nak    = 8'b10100101; //RCVED
    localparam hs_stall  = 8'b11100001; //RCVED
    reg [6:0] valid_addr;
    reg [3:0] cur_pid;
    reg cur_rcving;
    reg cur_w_enable;
    reg cur_r_error;
    reg cur_crc_rcv;
    reg cur_pid_rdy;
    reg [3:0] cur_bit_cnt;
    reg [1:0] cur_packet_done;
    reg cur_sync_rst;
    reg cur_clear;

    assign pid         = cur_pid;
    assign rcving      = cur_rcving;
    assign w_enable    = cur_w_enable;
    assign r_error     = cur_r_error;
    assign crc_rcv     = cur_crc_rcv;
    assign pid_rdy     = cur_pid_rdy;
    assign bit_cnt     = cur_bit_cnt;
    assign packet_done = cur_packet_done;
    assign sync_rst    = cur_sync_rst;
    assign clear       = cur_clear;

    always_ff @ (posedge clk, negedge n_rst) begin
        if (n_rst == 0) begin
            cur_state <= N_RST1;
        end else begin
            cur_state <= next_state;
        end
    end

    always_comb begin // NEXT STATE LOGIC ONLY
        next_state = cur_state;
        case (cur_state)
            N_RST1 : begin
                if (d_edge == 1) begin
                    next_state = N_RST2;
                end
            end
            N_RST2 : begin
                if (d_edge == 1) begin
                    next_state = SU_IDLE;
                end
            end
            SU_IDLE : begin
                if (d_edge == 1) begin
                    next_state = SU_WAIT_SYNC;
                end
            end
            SU_WAIT_SYNC : begin
                if(byte_received == 1) begin
                    next_state = SU_CHK_SYNC;
                end
            end
            SU_CHK_SYNC : begin
                if(sync_byte == rcv_data) begin
                    next_state = SU_WAIT_PID;
                end else begin
                    next_state = SU_WAIT_ERR;
                end
            end
            SU_WAIT_PID : begin
                if(byte_received == 1) begin
                    next_state = SU_CHK_PID;
                end
            end
            SU_CHK_PID : begin
                if(t_setup == rcv_data) begin
                    next_state = SU_WAIT_TOKEN1;
                end else begin
                    next_state = SU_WAIT_ERR;
                end
            end
            SU_WAIT_TOKEN1 : begin
                if(field_received == 1) begin
                    next_state = SET_ADDR;
                end
            end
            SET_ADDR : begin
                next_state = SU_WAIT_TOKEN2;
            end
            SU_WAIT_TOKEN2 : begin
                if(field_received == 1) begin
                    next_state = SU_WAIT_TOKEN3;
                end
            end
            SU_WAIT_TOKEN3 : begin
                if(field_received == 1) begin
                    next_state = SU_WAIT_EOP5;
                end
            end
            SU_WAIT_EOP5 : begin
                if((eop & shift_enable) == 1) begin
                    next_state = SU_EOP_CRC5;
                end
            end
            SU_WAIT_ERR : begin
                if((eop & shift_enable) == 1) begin
                    next_state = SU_EOP_ERR;
                end
            end
            SU_EOP_ERR : begin
                if(d_edge == 1) begin
                    next_state = SU_IDLE;
                end
            end
            SU_EOP_CRC5 : begin
                if (~(crc5_data) == crc5) begin
                    next_state = SU_GOOD_CRC;
                end else begin
                    next_state = SU_BAD_CRC;
                end
            end
            SU_GOOD_CRC : begin
                if(d_edge == 1) begin
                    next_state = IDLE;
                end
            end
            SU_BAD_CRC : begin
                if(d_edge == 1) begin
                    next_state = SU_IDLE;
                end
            end
            EIDLE : begin
                if (d_edge == 1) begin
                    next_state = WAIT_SYNC;
                end
            end
            IDLE : begin
                if (d_edge == 1) begin
                    next_state = WAIT_SYNC;
                end
            end
            WAIT_SYNC : begin
                if (byte_received == 1) begin
                    next_state = CHK_SYNC;
                end
            end
            CHK_SYNC : begin
                if (sync_byte == rcv_data) begin
                    next_state = WAIT_PID;
                end else begin
                    next_state = WAIT_ERR;
                end
            end
            WAIT_PID : begin
                if (byte_received == 1) begin
                    next_state = CHK_PID;
                end
            end
            CHK_PID : begin
                if (t_out == rcv_data | t_in == rcv_data) begin
                    next_state = SEND_PID; //WAIT_TOKEN;
                end else if (t_sof == rcv_data) begin
                    next_state = SEND_PID; //WAIT_SOF;
                end else if (d_data0 == rcv_data) begin
                    next_state = SEND_PID; //BYTE_WAIT;
                end else if (hs_ack == rcv_data | hs_nak == rcv_data | hs_stall == rcv_data) begin
                    next_state = SEND_PID; //WAIT_EOP;
                end else begin
                    next_state = WAIT_ERR; //t_setup is included in this
                end
            end
            SEND_PID : begin
                if (t_out == rcv_data | t_in == rcv_data) begin
                    next_state = WAIT_TOKEN1;
                end else if (t_sof == rcv_data) begin
                    next_state = WAIT_SOF1;
                end else if (d_data0 == rcv_data) begin
                    next_state = WAIT_BYTE;
                end else if (hs_ack == rcv_data | hs_nak == rcv_data | hs_stall == rcv_data) begin
                    next_state = WAIT_HS;
                end
            end
            WAIT_TOKEN1 : begin //7
                if(field_received == 1) begin
                    next_state = CHK_ADDR;
                end
            end
            CHK_ADDR : begin
                if(rcv_data[7:1] == valid_addr) begin
                    next_state = WAIT_TOKEN2;
                end else begin
                    next_state = WAIT_ERR;
                end
            end
            WAIT_TOKEN2 : begin //4
                if(field_received == 1) begin
                    next_state = WAIT_TOKEN3;
                end
            end
            WAIT_TOKEN3 : begin //5
                if(field_received == 1) begin
                    next_state = WAIT_EOP5;
                end
            end
            WAIT_SOF1 : begin //11
                if(field_received == 1) begin
                    next_state = WAIT_SOF2;
                end
            end
            WAIT_SOF2 : begin //5
                if(field_received == 1) begin
                    next_state = WAIT_EOP5;
                end
            end
            WAIT_BYTE : begin
                if ((eop & shift_enable) == 1) begin
                    next_state = EOP_ERR;
                end else if (byte_received == 1) begin
                    next_state = STORE;
                end else begin
                    next_state = cur_state;
                end
            end
            WAIT_HS : begin
                if((eop & shift_enable) == 1) begin
                    next_state = EOP;
                end
            end
            WAIT_EOP5 : begin
                if((eop & shift_enable) == 1) begin
                    next_state = EOP_CRC5;
                end
            end
            WAIT_ERR : begin
                if ((eop & shift_enable) == 1) begin
                    next_state = EOP_ERR;
                end
            end
            STORE : begin
                next_state = WAIT_STORE;
            end
            WAIT_STORE : begin 
                if ((!eop & shift_enable) == 1) begin
                    next_state = WAIT_BYTE;
                end else if ((eop & shift_enable) == 1) begin
                    next_state = EOP_CRC16;
                end else begin
                    next_state = cur_state;
                end
            end
            EOP : begin
                if (d_edge == 1) begin
                    next_state = IDLE;
                end
            end
            EOP_CRC5 : begin
                if(~(crc5_data) == crc5) begin
                    next_state = GOOD_CRC;
                end else begin
                    next_state = BAD_CRC;
                end
            end
            EOP_CRC16 : begin
                if(~(crc16_data) == crc16) begin
                    next_state = GOOD_CRC;
                end else begin
                    next_state = BAD_CRC;
                end
            end
            GOOD_CRC : begin
                if(d_edge == 1) begin
                    next_state = IDLE;
                end
            end
            BAD_CRC : begin
                if(d_edge == 1) begin
                    next_state = EIDLE;
                end
            end
            EOP_ERR : begin
                if ((d_edge & !eop) == 1) begin
                    next_state = EIDLE;
                end
            end
        endcase
    end

    always_comb begin // OUTPUT LOGIC ONLY
        cur_pid         = cur_pid;
        valid_addr      = valid_addr;
        cur_rcving      = 0;
        cur_w_enable    = 0;
        cur_r_error     = 0;
        cur_crc_rcv     = 0;
        cur_pid_rdy     = 0;
        cur_bit_cnt     = 8;
        cur_packet_done = 0;
        cur_sync_rst    = 0;
        cur_clear       = 0;

        case (cur_state)
            N_RST1 : begin // N_RST STATE 1
                cur_r_error = 0;
                cur_rcving = 0;
                cur_w_enable = 0;
                cur_crc_rcv = 0;
                cur_pid_rdy = 0;
                cur_bit_cnt = 8;
                cur_packet_done = 0;
                cur_sync_rst    = 0;
                cur_clear       = 0;
            end
            N_RST2 : begin // N_RST STATE 2
                cur_r_error = 0;
                cur_rcving = 0;
                cur_w_enable = 0;
                cur_crc_rcv = 0;
                cur_pid_rdy = 0;
                cur_bit_cnt = 8;
                cur_packet_done = 0;
                cur_sync_rst    = 0;
                cur_clear       = 0;
            end
            SU_IDLE : begin
                cur_rcving = 0;
                cur_w_enable = 0;
                cur_r_error = 0;
                cur_crc_rcv = 0;
                cur_pid_rdy = 0;
                cur_bit_cnt = 8;
                cur_packet_done = 0;
                cur_sync_rst    = 0;
                cur_clear       = 0;
            end
            SU_WAIT_SYNC : begin
                cur_rcving = 1;
                cur_w_enable = 0;
                cur_r_error = 0;
                cur_crc_rcv = 0;
                cur_pid_rdy = 0;
                cur_bit_cnt = 8;
                cur_packet_done = 0;
                cur_sync_rst    = 0;
                cur_clear       = 0;
            end
            SU_CHK_SYNC : begin
                cur_rcving = 1;
                cur_w_enable = 0;
                cur_r_error = 0;
                cur_crc_rcv = 0;
                cur_pid_rdy = 0;
                cur_bit_cnt = 8;
                cur_packet_done = 0;
                cur_sync_rst    = 0;
            end
            SU_WAIT_PID : begin
                cur_rcving = 1;
                cur_w_enable = 0;
                cur_r_error = 0;
                cur_crc_rcv = 0;
                cur_pid_rdy = 0;
                cur_bit_cnt = 8;
                cur_packet_done = 0;
                cur_sync_rst    = 1;
            end
            SU_CHK_PID : begin
                cur_rcving = 1;
                cur_w_enable = 0;
                cur_r_error = 0;
                cur_crc_rcv = 0;
                cur_pid_rdy = 0;
                cur_bit_cnt = 8;
                cur_packet_done = 0;
                cur_sync_rst    = 0;
                cur_clear       = 1;
            end
            SU_WAIT_TOKEN1 : begin
                cur_rcving = 1;
                cur_w_enable = 0;
                cur_r_error = 0;
                cur_crc_rcv = 1;
                cur_pid_rdy = 0;
                cur_bit_cnt = 7;
                cur_packet_done = 0;
                cur_sync_rst    = 0;
            end
            SET_ADDR : begin
                valid_addr = rcv_data[7:1];
                cur_rcving = 1;
                cur_w_enable = 0;
                cur_r_error = 0;
                cur_crc_rcv = 1;
                cur_pid_rdy = 0;
                cur_bit_cnt = 7;
                cur_packet_done = 0;
                cur_sync_rst    = 0;
            end
            SU_WAIT_TOKEN2 : begin
                cur_rcving = 1;
                cur_w_enable = 0;
                cur_r_error = 0;
                cur_crc_rcv = 1;
                cur_pid_rdy = 0;
                cur_bit_cnt = 4;
                cur_packet_done = 0;
                cur_sync_rst    = 0;
            end
            SU_WAIT_TOKEN3 : begin
                cur_rcving = 1;
                cur_w_enable = 0;
                cur_r_error = 0;
                cur_crc_rcv = 1;
                cur_pid_rdy = 0;
                cur_bit_cnt = 5;
                cur_packet_done = 0;
                cur_sync_rst    = 0;
            end
            SU_WAIT_EOP5 : begin
                cur_rcving = 1;
                cur_w_enable = 0;
                cur_r_error = 0;
                cur_crc_rcv = 1;
                cur_pid_rdy = 0;
                cur_bit_cnt = 8;
                cur_packet_done = 0;
                cur_sync_rst    = 0;
            end
            SU_WAIT_ERR : begin
                cur_rcving = 1;
                cur_w_enable = 0;
                cur_r_error = 1;
                cur_crc_rcv = 1;
                cur_pid_rdy = 0;
                cur_bit_cnt = 8;
                cur_packet_done = 0;
                cur_sync_rst    = 0;
            end
            SU_EOP_CRC5 : begin
                cur_rcving = 1;
                cur_w_enable = 0;
                cur_r_error = 0;
                cur_crc_rcv = 1;
                cur_pid_rdy = 0;
                cur_bit_cnt = 8;
                cur_packet_done = 0;
                cur_sync_rst    = 0;
            end
            SU_GOOD_CRC : begin
                cur_rcving = 1;
                cur_w_enable = 0;
                cur_r_error = 0;
                cur_crc_rcv = 1;
                cur_pid_rdy = 0;
                cur_bit_cnt = 8;
                cur_packet_done = 0;
                cur_sync_rst    = 0;
            end
            SU_BAD_CRC : begin
                cur_rcving = 1;
                cur_w_enable = 0;
                cur_r_error = 1;
                cur_crc_rcv = 1;
                cur_pid_rdy = 0;
                cur_bit_cnt = 8;
                cur_packet_done = 0;
                cur_sync_rst    = 0;
            end
            EIDLE : begin
                cur_r_error = 1;
                cur_rcving = 0;
                cur_w_enable = 0;
                cur_crc_rcv = 0;
                cur_pid_rdy = 0;
                cur_bit_cnt = 8;
                cur_packet_done = 0;
                cur_sync_rst    = 0;
            end
            IDLE : begin 
                cur_rcving = 0;
                cur_w_enable = 0;
                cur_r_error = 0;
                cur_crc_rcv = 0;
                cur_pid_rdy = 0;
                cur_bit_cnt = 8;
                cur_packet_done = 0;
                cur_sync_rst    = 0;
            end
            WAIT_SYNC : begin
                cur_rcving = 1;
                cur_w_enable = 0;
                cur_r_error = 0;
                cur_crc_rcv = 0;
                cur_pid_rdy = 0;
                cur_bit_cnt = 8;
                cur_packet_done = 0;
                cur_sync_rst    = 0;
            end
            CHK_SYNC : begin
                cur_rcving = 1;
                cur_w_enable = 0;
                cur_r_error = 0;
                cur_crc_rcv = 0;
                cur_pid_rdy = 0;
                cur_bit_cnt = 8;
                cur_packet_done = 0;
                cur_sync_rst    = 0;
            end
            WAIT_PID : begin
                cur_rcving = 1;
                cur_w_enable = 0;
                cur_r_error = 0;
                cur_crc_rcv = 0;
                cur_pid_rdy = 0;
                cur_bit_cnt = 8;
                cur_packet_done = 0;
                cur_sync_rst    = 1;
            end
            CHK_PID : begin
                cur_rcving = 1;
                cur_w_enable = 0;
                cur_r_error = 0;
                cur_crc_rcv = 0;
                cur_pid_rdy = 0;
                cur_bit_cnt = 8;
                cur_packet_done = 0;
                cur_sync_rst    = 0;
                cur_clear       = 1;
            end
            SEND_PID : begin
                cur_pid = rcv_data[7:4];
                cur_rcving = 1;
                cur_w_enable = 0;
                cur_r_error = 0;
                cur_crc_rcv = 0;
                cur_pid_rdy = 1;
                cur_bit_cnt = 8;
                cur_packet_done = 0;
                cur_sync_rst    = 1;
            end
            WAIT_TOKEN1 : begin //7
                cur_rcving = 1;
                cur_w_enable = 0;
                cur_r_error = 0;
                cur_crc_rcv = 1;
                cur_pid_rdy = 0;
                cur_bit_cnt = 7;
                cur_packet_done = 0;
                cur_sync_rst    = 0;
            end
            CHK_ADDR : begin
                cur_rcving = 1;
                cur_w_enable = 0;
                cur_r_error = 0;
                cur_crc_rcv = 1;
                cur_pid_rdy = 0;
                cur_bit_cnt = 7;
                cur_packet_done = 0;
                cur_sync_rst    = 0;
            end
            WAIT_TOKEN2 : begin //4
                cur_rcving = 1;
                cur_w_enable = 0;
                cur_r_error = 0;
                cur_crc_rcv = 1;
                cur_pid_rdy = 0;
                cur_bit_cnt = 4;
                cur_packet_done = 0;
                cur_sync_rst    = 0;
            end
            WAIT_TOKEN3 : begin //5
                cur_rcving = 1;
                cur_w_enable = 0;
                cur_r_error = 0;
                cur_crc_rcv = 1;
                cur_pid_rdy = 0;
                cur_bit_cnt = 5;
                cur_packet_done = 0;
                cur_sync_rst    = 0;
            end
            WAIT_SOF1 : begin //11
                cur_rcving = 1;
                cur_w_enable = 0;
                cur_r_error = 0;
                cur_crc_rcv = 1;
                cur_pid_rdy = 0;
                cur_bit_cnt = 11;
                cur_packet_done = 0;
                cur_sync_rst    = 0;
            end
            WAIT_SOF2 : begin //5
                cur_rcving = 1;
                cur_w_enable = 0;
                cur_r_error = 0;
                cur_crc_rcv = 1;
                cur_pid_rdy = 0;
                cur_bit_cnt = 5;
                cur_packet_done = 0;
                cur_sync_rst    = 0;
            end
            WAIT_BYTE : begin
                cur_rcving = 1;
                cur_w_enable = 0;
                cur_r_error = 0;
                cur_crc_rcv = 1;
                cur_pid_rdy = 0;
                cur_bit_cnt = 8;
                cur_packet_done = 0;
                cur_sync_rst    = 0;
            end
            WAIT_HS : begin
                cur_rcving = 1;
                cur_w_enable = 0;
                cur_r_error = 0;
                cur_crc_rcv = 0;
                cur_pid_rdy = 0;
                cur_bit_cnt = 8;
                cur_packet_done = 0;
                cur_sync_rst    = 0;
            end
            WAIT_EOP5 : begin
                cur_rcving = 1;
                cur_w_enable = 0;
                cur_r_error = 0;
                cur_crc_rcv = 1;
                cur_pid_rdy = 0;
                cur_bit_cnt = 8;
                cur_packet_done = 0;
                cur_sync_rst    = 0;
            end
            WAIT_ERR : begin
                cur_rcving = 1;
                cur_w_enable = 0;
                cur_r_error = 1;
                cur_crc_rcv = 0;
                cur_pid_rdy = 0;
                cur_bit_cnt = 8;
                cur_packet_done = 0;
                cur_sync_rst    = 0;
            end
            STORE : begin
                cur_rcving = 1;
                cur_w_enable = 1;
                cur_r_error = 0;
                cur_crc_rcv = 1;
                cur_pid_rdy = 0;
                cur_bit_cnt = 8;
                cur_packet_done = 0;
                cur_sync_rst    = 0;
            end
            WAIT_STORE : begin 
                cur_rcving = 1;
                cur_w_enable = 0;
                cur_r_error = 0;
                cur_crc_rcv = 1;
                cur_pid_rdy = 0;
                cur_bit_cnt = 8;
                cur_packet_done = 0;
                cur_sync_rst    = 0;
            end
            EOP : begin
                cur_rcving = 0;
                cur_w_enable = 0;
                cur_r_error = 0;
                cur_crc_rcv = 0;
                cur_pid_rdy = 0;
                cur_bit_cnt = 8;
                cur_packet_done = 1;
                cur_sync_rst    = 0;
            end
            EOP_CRC5 : begin
                cur_rcving = 0;
                cur_w_enable = 0;
                cur_r_error = 0;
                cur_crc_rcv = 0;
                cur_pid_rdy = 0;
                cur_bit_cnt = 8;
                cur_packet_done = 0;
                cur_sync_rst    = 0;
            end
            EOP_CRC16 : begin
                cur_rcving = 0;
                cur_w_enable = 0;
                cur_r_error = 0;
                cur_crc_rcv = 0;
                cur_pid_rdy = 0;
                cur_bit_cnt = 8;
                cur_packet_done = 0;
                cur_sync_rst    = 0;
            end
            GOOD_CRC : begin
                cur_rcving = 0;
                cur_w_enable = 0;
                cur_r_error = 0;
                cur_crc_rcv = 0;
                cur_pid_rdy = 0;
                cur_bit_cnt = 8;
                cur_sync_rst    = 0;
                cur_packet_done = 1;
            end
            BAD_CRC : begin
                cur_rcving = 0;
                cur_w_enable = 0;
                cur_r_error = 1;
                cur_crc_rcv = 0;
                cur_pid_rdy = 0;
                cur_bit_cnt = 8;
                cur_packet_done = 2;
                cur_sync_rst    = 0;
            end
            EOP_ERR : begin
                cur_rcving = 0;
                cur_w_enable = 0;
                cur_r_error = 1;
                cur_crc_rcv = 0;
                cur_pid_rdy = 0;
                cur_bit_cnt = 8;
                cur_packet_done = 2;
                cur_sync_rst    = 0;
            end        
        endcase
    end

endmodule
