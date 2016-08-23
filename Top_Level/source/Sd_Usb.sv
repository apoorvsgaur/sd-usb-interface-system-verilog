// $Id: $
// File name:   Sd_Usb
// Created:     12/12/2015
// Author:      Cameron Jones
// Lab Section: 337-01
// Version:     1.0  Initial Design Entry
// Description: sd to usb top level
module Sd_Usb(
	input wire clk,
	input wire n_rst,
	wire d_plus,
	wire d_minus,
	wire SDCLK,
	wire SDDI,
	wire SDDO,
	wire SDCS,
	wire read_enable,
	wire write_enable,
	wire [11:0]  address,  // The address of the first word in the access
    wire [7:0]   read_data,  // The data read from the SRAM
    wire [7:0]   write_data,  // The data to be written to the SRAM   
    wire read_enableSD,  // Active high read enable for the SRAM
    wire write_enableSD,  // Active high write enable for the SRAM
    wire [11:0]  addressSD,  // The address of the first word in the access
    wire [7:0]   read_dataSD,  // The data read from the SRAM
    wire [7:0]   write_dataSD

	);
	wire sd_read;
	wire sd_write;
	wire sd_addr_ready;
	wire sd_done;
	wire sd_err;
	wire [7:0] sd_tx_data;
	wire sd_FIFO_empty;
	wire tx_sd_enable;
	wire tx_send_bad;
	wire tx_send_good;
	wire tx_transmit;
	wire tx_done;
	wire tx_err;
	wire [3:0] rx_pid;
	wire [1:0] rx_packet_done;
	wire rx_pid_rdy;
	wire rx_FIFO_empty;
	wire [7:0] rx_r_data;
	wire sd_rx_enable;
	

	sd_interface SD(
		.clk(clk),
		.n_rst(n_rst),
		.sd_read(sd_read),
		.sd_write(sd_write),
		.sd_addr_ready(sd_addr_ready),
		.fifo_in(rx_r_data),
		.tx_r_enable(tx_sd_enable),
		.rx_FIFO_empty(rx_FIFO_empty),
		.sd_done(sd_done),
		.sd_err(sd_err),
		.fifo_out(sd_tx_data),
		.r_enable_o(sd_rx_enable),
		.sd_FIFO_empty(sd_FIFO_empty),
		.SDCS(SDCS),
		.SDCLK(SDCLK),
		.SDDI(SDDI),
		.SDDO(SDDO),
		.test_data_fromFIFO(read_dataSD),          //input
        .test_r_enable(read_enableSD),  //output
		.test_w_enable(write_enableSD), //output         
		.test_data_toFIFO(write_dataSD),         //output 
		.sram_addr(addressSD)   
		     );
   
	
	wire test;
	wire test2;
	usb_transmitter transmit(
		.clk(clk),
		.n_rst(n_rst),
		.sd_data(sd_tx_data),
		.empty(sd_FIFO_empty),
		.load_enable_sd(tx_sd_enable),
		.tx_send_good(tx_send_good),
		.tx_send_bad(tx_send_bad),
		.tx_transmit(tx_transmit),
		.tx_done(tx_done),
		.tx_err(tx_err),
		.d_plus(test2),
		.d_minus(test)
			);
   

	usb_receiver receiveTOP(
		.clk(clk),
		.n_rst(n_rst),
		.d_plus(d_plus),
		.d_minus(d_minus),
		.pid(rx_pid),
		.packet_done(rx_packet_done),
		.pid_rdy(rx_pid_rdy),
		.empty(rx_FIFO_empty),
		.r_data(rx_r_data),
		.r_enable(sd_rx_enable),
		.r_enable_out(read_enable),
	    .w_enable_out(write_enable),
   	    .sram_o(read_data),
	    .sram_i(write_data),
    	.addr(address)

	);

	usbcontroller MCU(
		.clk(clk),
		.n_rst(n_rst),
		.tx_send_good(tx_send_good),
		.tx_send_bad(tx_send_bad),
		.tx_transmit(tx_transmit),
		.tx_done(tx_done),
		.tx_err(tx_err),
		.sd_addr_rdy(sd_addr_ready),
		.sd_read(sd_read),
		.sd_write(sd_write),
		.sd_done(sd_done),
		.sd_err(sd_err),
		.rx_pid(rx_pid),
		.rx_packet_done(rx_packet_done),
		.pid_rdy(rx_pid_rdy)
	);
endmodule
