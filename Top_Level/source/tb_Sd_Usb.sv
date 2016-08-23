// $Id: $
// File name:   tb_Sd_Usb.sv
// Created:     12/13/2015
// Author:      Victoria Humphreys
// Lab Section: 337-01
// Version:     1.0  Initial Design Entry
// Description: top level test bench.

module tb_Sd_Usb();

	localparam CLOCK = 9.6;
	
	//Declare signals
	reg tb_clk, tb_n_rst, tb_d_plus, tb_d_minus, tb_pid_rdy;
    reg tb_r_enable=1'b0;
	reg [7:0] tb_r_data;
	reg tb_empty, tb_rcving, tb_r_error; 
    reg [1:0] tb_packet_done;
    reg [3:0] tb_pid;    

    reg tb_init_file_number = 1;
    
    reg tb_mem_clr = 1'b0;  // Active high strobe for at least 1 simulation timestep to zero memory contents
    reg tb_mem_init = 1'b0;  // Active high strobe for at least 1 simulation timestep to set the values for address in
                      // currently selected init file to their corresonding values prescribed in the file
    reg tb_mem_dump = 1'b0;  // Active high strobe for at least 1 simulation timestep to dump all values modified since most recent mem_clr activation to
                      // the currently chosen dump file. 
                      // Only the locations between the "tb_start_address" and "tb_last_address" (inclusive) will be dumped
    reg tb_verbose= 1'b1;  // Active high enable for more verbose debuging information
    reg tb_start_address = 8'b00000000;
    reg tb_last_address = 8'b11111111;
    wire tb_read_enable;  // Active high read enable for the SRAM
    wire tb_write_enable;  // Active high write enable for the SRAM
    wire [11:0]  tb_address;  // The address of the first word in the access
    wire [7:0]   tb_read_data;  // The data read from the SRAM
    wire [7:0]   tb_write_data;  // The data to be written to the SRAM   
    wire tb_read_enable2;  // Active high read enable for the SRAM
    wire tb_write_enable2;  // Active high write enable for the SRAM
    wire [11:0]  tb_address2;  // The address of the first word in the access
    wire [7:0]   tb_read_data2;  // The data read from the SRAM
    wire [7:0]   tb_write_data2; 
    wire tb_SDCLK;
    wire tb_SDDO;
    reg tb_SDDI;
    wire tb_SDCS;
    integer i = 0;
    reg [7:0] syncbyte = 8'b01010100;
    
	//Clock
	always
	begin
		tb_clk = 0;
		#(CLOCK/2.0);
		tb_clk = 1;
		#(CLOCK/2.0);
	end

	Sd_Usb TopLevel (
	.clk(tb_clk),
	.n_rst(tb_n_rst),
	.d_plus(tb_d_plus),
	.d_minus(tb_d_minus),
	.SDCLK(tb_SDCLK),
	.SDDI(tb_SDDI),
	.SDDO(tb_SDDO),
	.SDCS(tb_SDCS),
    .read_enableSD(tb_read_enable2),
    .write_enableSD(tb_write_enable2),
    .read_dataSD(tb_read_data2),
    .write_dataSD(tb_write_data2),
    .addressSD(tb_address2),
    .read_data(tb_read_data),          //input
    .read_enable(tb_read_enable),  //output
    .write_enable(tb_write_enable), //output         
    .write_data(tb_write_data),         //output 
    .address(tb_address)
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

    on_chip_sram_wrapper DUH2
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
        .read_enable(tb_read_enable2),
        .write_enable(tb_write_enable2),
        .address(tb_address2),      //in
        .read_data(tb_read_data2),  //out
        .write_data(tb_write_data2) //in
    );                  
                    

	//Test Bench
	initial 
	begin
        tb_SDDI = 1'b0;
        tb_mem_init = 1'b1;
        #(CLOCK * 100)
        tb_mem_init = 1'b0;
	    n_rst;
        #(CLOCK*8)
        setup_token;
        #(CLOCK*8)
        in_token;
        #(CLOCK*8)
        tb_SDDI = 1'b1;
        #(CLOCK * 48);
        tb_SDDI = 1'b0;
        data_packet_addr;
        tb_mem_dump = 1'b1;
        #(CLOCK);
        tb_mem_dump = 1'b0;
	    
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
            //send_byte(mybyte2);

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

    task data_packet_addr();
        begin
            send_byte(syncbyte);

            send_byte(8'b10000010);

            send_byte(8'b00110011);
            send_byte(8'b11001100);
            send_byte(8'b00110011);
            send_byte(8'b11001100);
            send_byte(8'b10010101);
            send_byte(8'b01010101);
            send_byte(8'b01011000);
            send_byte(8'b00100000);
            
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
    
    task send_byte;
    input [0:7] mybyte;
    begin
    for(i=0; i < 8; i = i + 1) begin
        tb_SDDI = i % 2;
        tb_d_plus = mybyte[i];
        tb_d_minus = ~mybyte[i];
        #(CLOCK*8);
    end

    end
    endtask
            
endmodule
