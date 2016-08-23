// $Id: $
// File name:   fifo.sv
// Created:     11/24/2015
// Author:      Cameron Jones
// Lab Section: 337-01
// Version:     1.0  Initial Design Entry
// Description: first in first out buffer
module myfifo
#(
	parameter BUS_WIDTH = 8

)
(
	input wire clk,
	input wire n_rst,
	input wire r_enable,
	input wire w_enable,
	input wire clear,
	input wire [BUS_WIDTH - 1:0] data_i,
	input wire [BUS_WIDTH - 1:0] sram_o,//SRAM data_o / Read Data
	output wire [BUS_WIDTH - 1:0] sram_i,//SRAM data_i / Write Data
	output wire [BUS_WIDTH - 1:0] data_o,
	output wire [11:0] addr, //SRAM ADDRESS FIELD
	output wire full,
	output wire empty
);
	reg [11:0] readptr;
	reg [11:0] writeptr;
	reg [11:0] address;
	assign sram_i = data_i;
	assign data_o = sram_o;
	assign addr = address;
	assign empty = (writeptr == readptr);
	assign full  = (writeptr == (readptr + 1));

	//Read counter 
	flex_counter #(.NUM_CNT_BITS(12)) ReadCnt (
		.clk(clk),
		.n_rst(n_rst),
		.clear(clear),
		.count_enable(r_enable),
		.rollover_val(12'd1023),
		.count_out(readptr),
		.rollover_flag()
		);
	//Write counter
	flex_counter #(.NUM_CNT_BITS(12)) WriteCnt (
		.clk(clk),
		.n_rst(n_rst),
		.clear(clear),
		.count_enable(w_enable),
		.rollover_val(12'd1023),
		.count_out(writeptr),
		.rollover_flag()
		);
	//Chooses which address to use
	always_comb begin
		address = readptr;
		if(w_enable == 1'b1) begin
			address = writeptr;
		end

	end

endmodule