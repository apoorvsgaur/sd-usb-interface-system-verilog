// $Id: $
// File name:   tb_usb_receiver.sv
// Created:     10/18/2015
// Author:      Lucas Goedde
// Lab Section: 337-04
// Version:     1.2  Updated for USB Rx Project 
// Description: Test Bench for USB receiver

`timescale 1ns / 10ps
module tb_usb_receiver
();

	//Define local params
	localparam CLOCK = 10;
	
	//Declare signals
	reg tb_clk, tb_n_rst, tb_d_plus, tb_d_minus, pid_rdy; //, tb_r_enable;
	//reg [7:0]tb_r_data;
	//reg tb_empty,tb_full,tb_rcving,tb_r_error;
        reg tb_rcving, tb_r_error;
	reg [7:0]tb_expected; 
    reg [1:0] tb_packet_done;
    reg [3:0] tb_pid;
	integer i;
	//Clock
	always
	begin
		tb_clk = 0;
		#(CLOCK/2.0);
		tb_clk = 1;
		#(CLOCK/2.0);
	end

	//DUT Port mapping
	//usb_receiver DUT(.clk(tb_clk),.n_rst(tb_n_rst),.d_plus(tb_d_plus),.d_minus(tb_d_minus),.r_enable(tb_r_enable),.r_data(tb_r_data),.empty(tb_empty),.full(tb_full),.rcving(tb_rcving),.r_error(tb_r_error));
	usb_receiver DUT(.clk(tb_clk),
                     .n_rst(tb_n_rst),
                     .d_plus(tb_d_plus),
                     .d_minus(tb_d_minus),
                     .packet_done(tb_packet_done),
                     .pid_rdy(tb_pid_rdy),
                     .pid(tb_pid),
                     .rcving(tb_rcving),
                     .r_error(tb_r_error)
                    );

	//Test Bench
	initial 
	begin
        setup_token;
        #(CLOCK*8)
        ack_handshake;
        #(CLOCK*8)
        nak_handshake;
        #(CLOCK*8)
        stall_handshake;
        #(CLOCK*8)
        in_token;
        #(CLOCK*8)
        out_token;
        #(CLOCK*8)
        sof_token;
        #(CLOCK*8)
	
	    $stop;
	end

    task setup_token();
        begin
            //Toggle the n_rst
            tb_d_plus = 1;
            tb_d_minus = 1;
            //tb_r_enable = 1;
            tb_n_rst = 1;
            #(CLOCK)
            tb_n_rst = 0;
            #(CLOCK)
            tb_n_rst = 1;
            #(CLOCK*8)
            
            //Sync Byte
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)

            //PID Setup Byte needs to be 11010010
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)

            //Addr of setup
            //expected = 7'b1100011;
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
        
            //4 other bits of setup
            //expected = 4'b0000
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            
            //crc5 of setup
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)

            //Test eop while rcving
            tb_d_plus = 0;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 0;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
        end
    endtask
    
    task ack_handshake();
        begin
            //Sync Byte
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
        
            //PID 8'b00101101 send in 10110100
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            
            //EOP
            tb_d_plus = 0;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 0;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
        end
    endtask
    
    task nak_handshake();
        begin
            //Sync Byte
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            
            //PID 8'10100101 send in 10100101
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            
            //EOP
            tb_d_plus = 0;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 0;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
        end
    endtask
    
    task stall_handshake();
        begin
            //HANDSHAKE - STALL

            //Sync Byte
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            
            //PID 8'11100001 send in 10000111
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            
            //EOP
            tb_d_plus = 0;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 0;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
        end
    endtask
    
    task in_token();
        begin
            //Sync Byte
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)

            //PID 10010110 send in 01101001
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)

            //Addr of setup
            //expected = 7'b1100011;
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            
            //4 other bits of setup
            //expected = 4'b1111
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            //stuffed bit
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            
            //crc5 of setup
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)

            //Test eop while rcving
            tb_d_plus = 0;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 0;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
        end
    endtask
    
    task out_token();
        begin
            //Sync Byte
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)

            //PID 00011110 send 01111000
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)

            //Addr of setup
            //expected = 7'b1100011;
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            
            //4 other bits of setup
            //expected = 4'b1111
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            //stuffed bit
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            
            //crc5 of setup
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)

            //Test eop while rcving
            tb_d_plus = 0;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 0;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
        end
    endtask
    
    task sof_token();
        begin
            //Sync Byte
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)

            //PID 01011010 send in 01011010
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            
            //11 bit frame number
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            //stuff bit
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            //
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            
            //crc5 of setup
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            //stuff bit
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            //
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)

            //Test eop while rcving
            tb_d_plus = 0;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 0;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
        end
    endtask           
endmodule
