// $Id: $
// File name:   tb_sd_interface.sv
// Created:     12/6/2015
// Author:      Cameron Jones
// Lab Section: 337-01
// Version:     1.0  Initial Design Entry
// Description: Test bench for the top level
module tb_sd_interface ();
	

	localparam CLOCK = 10;
	reg tb_clk;
	reg tb_n_rst = 1;
	reg tb_sd_read = 0;
	reg tb_sd_write = 0;
	reg tb_sd_addr_ready= 0;
	reg [7:0] tb_fifo_in = 8'b01010101;
	reg tb_tx_r_enable = 1'b0;
	reg tb_sd_done;
	reg tb_sd_err;
	reg [7:0] tb_fifo_out;
	reg tb_r_enable_o;
	reg tb_SDCS;
	reg tb_SDCLK;
	reg tb_SDDI;
	reg tb_SDDO;

	reg tb_mem_clr;		// Active high strobe for at least 1 simulation timestep to zero memory contents
	reg tb_mem_init;	// Active high strobe for at least 1 simulation timestep to set the values for address in
										// currently selected init file to their corresonding values prescribed in the file
	reg tb_mem_dump;	// Active high strobe for at least 1 simulation timestep to dump all values modified since most recent mem_clr activation to
										// the currently chosen dump file. 
										// Only the locations between the "tb_start_address" and "tb_last_address" (inclusive) will be dumped
	reg tb_verbose;		// Active high enable for more verbose debuging information
	
	reg tb_read_enable;		// Active high read enable for the SRAM
	reg tb_write_enable;	// Active high write enable for the SRAM
	
	reg [10:0]	tb_address; 		// The address of the first word in the access
	reg [7:0]	tb_read_data;		// The data read from the SRAM
	reg [7:0]	tb_write_data;	// The data to be written to the SRAM
	
	/* Wrapper portmap
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
		.address(tb_address),
		.read_data(tb_read_data),
		.write_data(tb_write_data)
	);
*/
	sd_interface DUT (
		.clk(tb_clk),
		.n_rst(tb_n_rst),
		.sd_read(tb_sd_read),
		.sd_write(tb_sd_write),
		.sd_addr_ready(tb_sd_addr_ready),
		.fifo_in(tb_fifo_in),
		.tx_r_enable(tb_tx_r_enable),
		.sd_done(tb_sd_done),
		.sd_err(tb_sd_err),
		.fifo_out(tb_fifo_out),
		.r_enable_o(tb_r_enable_o),
		.test_r_enable(tb_read_enable),
		.test_w_enable(tb_write_enable),
		.test_data_fromFIFO(tb_read_data),
		.test_data_toFIFO(tb_write_data),
		.sd_FIFO_empty(),
		.sram_addr(tb_address),
		.SDCS(tb_SDCS),
		.SDCLK(tb_SDCLK),
		.SDDI(tb_SDDI),
		.SDDO(tb_SDDO)
	);

	

	always
	begin
		tb_clk = 0;
		#(CLOCK/2.0);
		tb_clk = 1;
		#(CLOCK/2.0);
	end

	
	initial begin
	#0;
	tb_n_rst=0;
	#5;
	tb_n_rst = 1;
	tb_fifo_in = 8'b01010101;
	#500000;
	tb_sd_addr_ready = 1;
	#5;
	tb_sd_addr_ready = 0;





	end

endmodule