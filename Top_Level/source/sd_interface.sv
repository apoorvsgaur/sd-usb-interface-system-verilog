// $Id: $
// File name:   sd_interface.sv
// Created:     12/6/2015
// Author:      Cameron Jones
// Lab Section: 337-01
// Version:     1.0  Initial Design Entry
// Description: Top level for this whole silly mess
module sd_interface (
	input wire clk,
	input wire n_rst,
	input wire sd_read,
	input wire sd_write,
	input wire sd_addr_ready,
	input wire [7:0] fifo_in,
	input wire tx_r_enable,
	
	input wire [7:0] test_data_fromFIFO,
	
	input wire rx_FIFO_empty,
	output wire sd_done,
	output wire sd_err,
	output wire [7:0] fifo_out,
	output wire r_enable_o,
	output reg test_r_enable,
	output wire test_w_enable,


	output wire [7:0] test_data_toFIFO,
	
	output wire sd_FIFO_empty,
	output wire [11:0] sram_addr,
	output wire SDCS,
	output wire SDCLK,
	input wire SDDI,
	output wire SDDO
);

	wire w_enable;
	wire r_enable;
	wire shift_enable;
	wire clear_byte;
	wire byte_transf;
	wire [7:0] data_o;
	wire full;
	wire load_enable;
	wire [7:0] cmd_select;
	wire [31:0] addr;
	wire [5:0] cmd_out;
	wire [3:0] counter;
	wire edge_detect;
	wire [1:0] SPI_select;
	wire [7:0] actual_cmd;
	wire rw_select;
	reg  [7:0] data_i;
	wire [1:0] speed;
	wire enable;
	assign test_w_enable = w_enable;
	assign test_r_enable = r_enable | tx_r_enable;

	mode_select SDController (
		.clk(clk),
		.n_rst(n_rst),
		.sd_read(sd_read),
		.sd_write(sd_write),
		.sd_addr_ready(sd_addr_ready),
		.sd_full(full),
		//.sd_empty(sd_FIFO_empty),
		.rx_FIFO_empty(rx_FIFO_empty),
		.cmd_check(data_o),
		.rcv_fifo(fifo_in),
		.speed_o(speed),
		.clear_byte(clear_byte),
		.byte_transf(byte_transf),
		.edge_detect(edge_detect),
		.sd_done(sd_done),
		.shift_enable(shift_enable),
		.sd_err(sd_err),
		.load_enable(load_enable),
		.w_enable(w_enable),
		.r_enable(r_enable),
		.r_enable_o(r_enable_o),
		.enable(enable),
		.rw_select(rw_select),
		.SPI_select(SPI_select),
		.cmd_out(cmd_out),
		.count_out(counter),
		.addr_o(addr),
		.SDCS(SDCS)
		);
	always_comb begin
		if(rw_select == 1'b1) begin
			data_i = fifo_in;//write
		end else begin
			data_i = data_o; //read
		end
	end



	myfifo myFIFO (
		.clk(clk),
		.n_rst(n_rst),
		.r_enable(r_enable | tx_r_enable),
		.w_enable(w_enable),
		.clear(),
		.data_i(data_i),//////
		.sram_i(test_data_toFIFO),
		.sram_o(test_data_fromFIFO),
		.data_o(fifo_out),
		.addr(sram_addr),
		.full(full),
		.empty(sd_FIFO_empty)
	);

	timerSD myTimer(
		.clk(clk),
		.n_rst(n_rst),
		.enable(enable),
		.speed(speed),
		.clear_byte(clear_byte),
		.shift_enable(shift_enable),
		.byte_received(byte_transf),
		.SDCLK(SDCLK)
	);

	spi_shift ShiftRegister (
		.clk(clk),
		.n_rst(n_rst),
		.fifo_data(fifo_out),
		.sddi(SDDI),
		.line_select(SPI_select),
		.command_in(actual_cmd),
		.shift_enable(shift_enable),
		.load_enable(load_enable),
		.byte_received(byte_transf),
		.data_out(data_o),
		.sddo(SDDO)
	);

	command_store Bank(
		.cmd_select(cmd_out),
		.counter(counter),
		.address(addr),
		.cmd(actual_cmd)
	);

	edge_detect eDetect (
		.clk(clk),
		.n_rst(n_rst),
		.d_plus(SDDI),
		.d_edge(edge_detect)
	);

endmodule