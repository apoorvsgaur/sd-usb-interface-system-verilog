// $Id: $
// File name:   tb_crc_check_16bit.sv
// Created:     12/6/15
// Author:      Katie Bauschka
// Lab Section: 99
// Version:     1.0  Initial Design Entry
// Description: Flexible Serial to Parallel Shift register test bench for crc 16

`timescale 1ns / 10ps

module tb_crc_check_16bit ();

    // Define parameters
    // basic test bench parameters
    localparam CLOCK = 2.5;
    int tb_test_num = 0;

    // Shared Test Variables
    reg tb_clk;
    reg tb_n_rst;
    reg tb_shift_enable;
    reg tb_serial_in;
    reg tb_eop;
    reg tb_shift_stop;
    reg tb_crc_rcv;
    reg [15:0] tb_parallel_out;

    // Clock generation block
    always
    begin
        tb_clk = 1'b0;
        #(CLOCK/2.0);
        tb_clk = 1'b1;
        #(CLOCK/2.0);
    end
	
    localparam DEFALUT_MSB  = 1;
    
    //DUT Port Mapping
    crc_check_16bit DUT(.clk(tb_clk),
                       .n_rst(tb_n_rst),
                       .shift_enable(tb_shift_enable),
                       .serial_in(tb_serial_in),
                       .eop(tb_eop),
                       .crc_rcv(tb_crc_rcv),
                       .shift_stop(tb_shift_stop),
                       .parallel_out(tb_parallel_out)
                      );

    //BEGIN TESTS
    initial
    begin
        //TEST 0: RESET W/O ACTIVE INPUTS
        tb_n_rst = 1;
        tb_shift_enable = 0;
        tb_crc_rcv = 1;
        tb_serial_in = 0;
        tb_eop = 0;
        #CLOCK
        tb_n_rst = 0;
        #CLOCK
        tb_n_rst = 1;
        #CLOCK
        
        //TEST 1: RESET W/ ACTIVE INPUTS
        tb_test_num++;
        tb_n_rst = 1;
        tb_shift_enable = 1;
        tb_serial_in = 1;
        #CLOCK
        tb_n_rst = 0;
        #CLOCK
        tb_n_rst = 1;
        #CLOCK
        
        //TEST 2: OBTAIN CRC VALUE FOR INPUT OF ALL 1'S
        tb_test_num++;
        tb_n_rst = 0;
        tb_shift_enable = 1;
        tb_serial_in = 1;
        #CLOCK
        tb_n_rst = 1;
        #CLOCK
        #CLOCK
        #CLOCK
        #CLOCK
        #CLOCK
        #CLOCK
        #CLOCK
        #CLOCK
        #CLOCK
        #CLOCK
        #CLOCK
        #CLOCK
        #CLOCK
        #CLOCK
        #CLOCK
        #CLOCK
        tb_serial_in = 0;
        #CLOCK
        #CLOCK
        #CLOCK
        #CLOCK
        #CLOCK
        #CLOCK
        #CLOCK
        #CLOCK
        #CLOCK
        #CLOCK
        #CLOCK
        #CLOCK
        #CLOCK
        #CLOCK
        #CLOCK
        #CLOCK
        if(tb_parallel_out == 16'b1000000000101001) begin
          $info("CRC Value Accurate!!!!!!!!!!!!!!!!!!!!");
        end else begin
          $error("CRC Value Incorrect D: D: D: D: D: D:");
        end        
        
        //TEST 3: INPUT SAME DATA W/ IMMED. CRC CHECK
        tb_test_num++;
        tb_serial_in = 1;
        tb_n_rst = 0;
        tb_eop = 0;
        #CLOCK
        tb_n_rst = 1;
        #CLOCK
        #CLOCK
        #CLOCK
        #CLOCK
        #CLOCK
        #CLOCK
        #CLOCK
        #CLOCK
        #CLOCK
        #CLOCK
        #CLOCK
        #CLOCK
        #CLOCK
        #CLOCK
        #CLOCK
        #CLOCK
        //enter crc
        tb_serial_in = 0;
        #CLOCK
        tb_serial_in = 1;
        #CLOCK
        #CLOCK
        #CLOCK
        #CLOCK
        #CLOCK
        #CLOCK
        #CLOCK
        #CLOCK
        #CLOCK
        tb_serial_in = 0;
        #CLOCK
        tb_serial_in = 1;
        #CLOCK
        tb_serial_in = 0;
        #CLOCK
        tb_serial_in = 1;
        #CLOCK
        #CLOCK
        tb_serial_in = 0;
        #CLOCK
        tb_eop = 1;
        #CLOCK

        if(~(tb_parallel_out) == '0) begin
          $info("Successful CRC");
        end
        
        //TEST 4 : CREATE CRC OF A data TOKEN
        tb_test_num++;
        tb_serial_in = 1;
        tb_n_rst = 0;
        tb_eop = 0;
        #CLOCK
        tb_n_rst = 1;
        #CLOCK
        #CLOCK
        #CLOCK
        #CLOCK
        tb_serial_in = 0;
        #CLOCK
        #CLOCK
        #CLOCK
        #CLOCK
        tb_serial_in = 1;
        #CLOCK
        tb_serial_in = 0;
        #CLOCK
        #CLOCK
        tb_serial_in = 1;
        #CLOCK
        tb_serial_in = 0;
        #CLOCK
        tb_serial_in = 1;
        #CLOCK
        tb_serial_in = 0;
        #CLOCK
        tb_serial_in = 1;
        #CLOCK
        tb_serial_in = 0;
        #CLOCK
        #CLOCK
        #CLOCK
        #CLOCK
        #CLOCK
        #CLOCK
        #CLOCK
        #CLOCK
        #CLOCK
        #CLOCK
        #CLOCK
        #CLOCK
        #CLOCK
        #CLOCK
        #CLOCK
        #CLOCK
        
        $stop;
    end
endmodule

