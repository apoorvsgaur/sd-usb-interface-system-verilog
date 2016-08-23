// $Id: $
// File name:   tb_usb_receiver.sv
// Created:     12/14/2015
// Author:      Katie Bauschka
// Lab Section: 337-04
// Version:     1.2  Updated for USB Rx Project 
// Description: Test Bench for USB receiver

`timescale 1ns / 10ps
module tb_usb_receiver
();

	//Define local params
	localparam CLOCK = 9.6;
	
	//Declare signals
	reg tb_clk, tb_n_rst, tb_d_plus, tb_d_minus, tb_pid_rdy;
    reg tb_r_enable=1'b0;
	reg [7:0] tb_r_data;
	reg tb_empty, tb_rcving, tb_r_error; 
    reg [1:0] tb_packet_done;
    reg [3:0] tb_pid;    
    
    reg tb_mem_clr=1'b0;  // Active high strobe for at least 1 simulation timestep to zero memory contents
    reg tb_mem_init=1'b0;  // Active high strobe for at least 1 simulation timestep to set the values for address in
                      // currently selected init file to their corresonding values prescribed in the file
    reg tb_mem_dump=1'b0;  // Active high strobe for at least 1 simulation timestep to dump all values modified since most recent mem_clr activation to
                      // the currently chosen dump file. 
                      // Only the locations between the "tb_start_address" and "tb_last_address" (inclusive) will be dumped
    reg tb_verbose=1'b1;  // Active high enable for more verbose debuging information
    wire tb_read_enable;  // Active high read enable for the SRAM
    wire tb_write_enable;  // Active high write enable for the SRAM
    wire [11:0]  tb_address;  // The address of the first word in the access
    wire [7:0]   tb_read_data;  // The data read from the SRAM
    wire [7:0]   tb_write_data;  // The data to be written to the SRAM   
    
	//Clock
	always
	begin
		tb_clk = 0;
		#(CLOCK/2.0);
		tb_clk = 1;
		#(CLOCK/2.0);
	end

	//DUT Port mapping
	usb_receiver DUT(.clk(tb_clk),                   //input
                     .n_rst(tb_n_rst),               //input
                     .d_plus(tb_d_plus),             //input
                     .d_minus(tb_d_minus),           //input
                     .sram_o(tb_read_data),          //input
                     .r_enable(tb_r_enable),         //input
                     .sram_i(tb_write_data),         //output
                     .r_data(tb_r_data),             //output
                     .empty(tb_empty),               //output
                     .packet_done(tb_packet_done),   //output
                     .pid_rdy(tb_pid_rdy),           //output
                     .pid(tb_pid),                   //output
                     .rcving(tb_rcving),             //output
                     .addr(tb_address),              //output
                     .r_enable_out(tb_read_enable),  //output
                     .w_enable_out(tb_write_enable), //output
                     .r_error(tb_r_error)            //output
                    );
                    
    //Wrapper portmap
    on_chip_sram_wrapper DUH
    (
        //Test bench control signals
        .mem_clr(tb_mem_clr),
        .mem_init(tb_mem_init),
        .mem_dump(tb_mem_dump),
        .verbose(tb_verbose),
        .init_file_number(tb_init_file_number),
        .dump_file_number(tb_dump_file_number),
        .start_address(tb_start_address),
        .last_address(tb_last_address),
        //Memory interface signals
        .read_enable(tb_read_enable),
        .write_enable(tb_write_enable),
        .address(tb_address),      //in
        .read_data(tb_read_data),  //out
        .write_data(tb_write_data) //in
    );                    
                    

	//Test Bench
	initial 
	begin
	    n_rst;
        #(CLOCK*8)
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
        data_packet;
        #(CLOCK*8)
	
	    @(posedge tb_clk);
        #300ps;
	    tb_r_enable = 1;
        #CLOCK
        tb_r_enable = 0;
        #(CLOCK*7)
        tb_r_enable = 1;
        #CLOCK
        tb_r_enable = 0;
        #(CLOCK*7)
        tb_r_enable = 1;
        #CLOCK
        tb_r_enable = 0;
        #(CLOCK*7)
        tb_r_enable = 1;
        #CLOCK
        tb_r_enable = 0;
        #(CLOCK*7)
        tb_r_enable = 1;
        #CLOCK
        tb_r_enable = 0;
        #(CLOCK*7)
        tb_r_enable = 1;
        #CLOCK
        tb_r_enable = 0;
        #(CLOCK*7)
        tb_r_enable = 1;
        #CLOCK
        tb_r_enable = 0;
        #(CLOCK*7)
        tb_r_enable = 1;
        #CLOCK
        tb_r_enable = 0;
        #(CLOCK*7)
        
        
        tb_r_enable = 0;
        n_rst;
        #(CLOCK*8)
        setup_token_bad_pid;
        #(CLOCK*8)
        setup_token_bad_crc;
        #(CLOCK*8)
        setup_token;
        #(CLOCK*8)
        ack_handshake_bad_pid;
        #(CLOCK*8)
        ack_handshake;
        #(CLOCK*8)
        
	    $stop;
	end
	
	task n_rst();
        begin
            //Toggle the n_rst
            tb_d_plus = 1;
            tb_d_minus = 1;            
            tb_n_rst = 1;
            #(CLOCK)
            tb_n_rst = 0;
            #(CLOCK)
            tb_n_rst = 1;
        end
    endtask

    task setup_token();
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
    
    task setup_token_bad_pid();
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

            //PID Setup Byte needs to be 11010010
            //bad PID 01001101
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
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            /*tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)*/
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
    
    task setup_token_bad_crc();
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
            //bad data 0011
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
            /*tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)*/
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
    
    task ack_handshake_bad_pid();
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
            //bad PID 10110101
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
            tb_d_plus = 1;
            tb_d_minus = 0;
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
    
    task data_packet();
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

            //PID 00111100 send in 00111100
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
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            
            //data byte 1 - 11110000
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
            
            //data byte 2 - 10010101
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
            
            //crc 16 for data 01011100-10101010
            //first 8 bits of crc
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
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            tb_d_plus = 1;
            tb_d_minus = 0;
            #(CLOCK*8)
            tb_d_plus = 0;
            tb_d_minus = 1;
            #(CLOCK*8)
            //second 8 bits of crc
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
            tb_d_plus = 1;
            tb_d_minus = 0;
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
