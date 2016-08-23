// $Id: $
// File name:   tb_sd_interface.sv
// Created:     12/6/2015
// Author:      Cameron Jones
// Lab Section: 337-01
// Version:     1.0  Initial Design Entry
// Description: Test bench for the top level
`timescale 1ns / 10ps
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
	int toggleDI = 0;

	reg tb_mem_clr;		// Active high strobe for at least 1 simulation timestep to zero memory contents
	reg tb_mem_init;	// Active high strobe for at least 1 simulation timestep to set the values for address in
										// currently selected init file to their corresonding values prescribed in the file
	reg tb_mem_dump;	// Active high strobe for at least 1 simulation timestep to dump all values modified since most recent mem_clr activation to
										// the currently chosen dump file. 
										// Only the locations between the "tb_start_address" and "tb_last_address" (inclusive) will be dumped
	reg tb_verbose;		// Active high enable for more verbose debuging information
	
	reg tb_read_enable;		// Active high read enable for the SRAM
	reg tb_write_enable;	// Active high write enable for the SRAM
	
	reg [11:0]	tb_address; 		// The address of the first word in the access
	reg [7:0]	tb_read_data;		// The data read from the SRAM
	reg [7:0]	tb_write_data;	// The data to be written to the SRAM
	reg tb_rx_FIFO_empty;
	int count_reads = 0;
	int i = 0;
	reg tb_sd_fifo_empty;
	
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
		.address(tb_address),
		.read_data(tb_read_data),
		.write_data(tb_write_data)
	);

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
		.sd_FIFO_empty(tb_sd_fifo_empty),
		.rx_FIFO_empty(tb_rx_FIFO_empty),
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

	always @ (posedge tb_clk) begin
		if(tb_r_enable_o == 1'b1) begin
			count_reads = count_reads + 1;//count reads
		end
		if(count_reads > 6 && count_reads < 100) begin
			tb_fifo_in = 8'b00001010;
		end else begin
			tb_fifo_in = 8'b11110101;//so different values were in sram
		end
		case(count_reads) //for choosing the address and size
			1'b0:
				tb_fifo_in = 8'b10101010;
			1'b1:
				tb_fifo_in = 8'b01010101;
			2'b10:
				tb_fifo_in = 8'b00001111;
			2'b11:
				tb_fifo_in = 8'b11110000;
			3'b100:
				tb_fifo_in = 8'b00000100;
			3'b101:
				tb_fifo_in = 8'b00000000;
		endcase
	end




	task test_slowest; //2MB/s
	begin
	#(CLOCK * 8000);
	tb_SDDI = 1'b1;
	#(CLOCK * 56);
	tb_SDDI = 1'b1;//this is the Speed response
	#(80100 - CLOCK * 7000);
	tb_sd_addr_ready = 1;
	
	#(CLOCK);
	tb_sd_addr_ready = 0;
	#(CLOCK * 50);
	tb_fifo_in = 8'b10101111;



	tb_SDDI = 1'b0;
	#10000;
	tb_sd_write = 1'b1;//start write
	#10;
	tb_sd_write = 1'b0;
	#(CLOCK*  400);
	tb_SDDI = 1'b1;//trigger outlow to stop
	#(CLOCK * 2000);
	tb_SDDI = 1'b0;
	#(CLOCK * 50000);//wait first write
	tb_SDDI = 1'b1;
	#(CLOCK * 2000);
	tb_SDDI = 1'b1;
	#(CLOCK * 200);//response
	tb_SDDI = 1'b0;

	#(CLOCK * 40000);//wait second write
	tb_sd_read = 1'b1;//start read
	#(CLOCK* 10);
	tb_sd_read = 1'b0;
	#(CLOCK * 500);
	tb_SDDI = 1'b1;
	#(CLOCK * 51);//time to have appropriate read response
	tb_SDDI = 1'b0;
	#(CLOCK*40000);//let read data
	tb_SDDI = 1'b1;
	#(CLOCK* 51);//same as above
	tb_SDDI = 1'b0;
	#(CLOCK * 10);//to end data
	tb_SDDI = 1'b1;
	#(CLOCK * 60000);
	for(i=0;i<1024;i++)begin//flood out the sram data
		tb_tx_r_enable = 1'b1;
		#(CLOCK);
		tb_tx_r_enable = 1'b0;
	end

	end
	endtask

	task test_middle;
	begin
	#(CLOCK * 8000);
	tb_SDDI = 1'b1;
	#(CLOCK * 48);
	tb_SDDI = 1'b0;
	#(CLOCK* 6);
	tb_SDDI = 1'b1;//speed response
	#(80100 - CLOCK * 7000);//finish initialization
	tb_sd_addr_ready = 1;
	
	#(CLOCK);
	tb_sd_addr_ready = 0;//take in address
	#(CLOCK * 50);
	tb_fifo_in = 8'b10101111;



	tb_SDDI = 1'b0;
	#10000;
	tb_sd_write = 1'b1;//start write
	#10;
	tb_sd_write = 1'b0;
	#(CLOCK*  400);//end writelow
	tb_SDDI = 1'b1;
	#(CLOCK * 2000);//appropriate response
	tb_SDDI = 1'b0;
	#(CLOCK * 20000);//wait first write
	tb_SDDI = 1'b1;
	#(CLOCK * 2000);
	tb_SDDI = 1'b1;
	#(CLOCK * 200);//appropriate response
	tb_SDDI = 1'b0;

	#(CLOCK * 40000);// wait second write
	tb_sd_read = 1'b1;//start read
	#(CLOCK* 10);
	tb_sd_read = 1'b0;
	#(CLOCK * 500);
	tb_SDDI = 1'b1;
	#(CLOCK * 30);//appropriate response
	tb_SDDI = 1'b0;
	#(CLOCK*40000);//wait first read
	tb_SDDI = 1'b1;
	#(CLOCK* 30);//appropriate response
	tb_SDDI = 1'b0;
	#(CLOCK * 10);
	tb_SDDI = 1'b1;
	#(CLOCK * 60000);//wait second read
	for(i=0;i<1024;i++)begin
		tb_tx_r_enable = 1'b1;
		#(CLOCK);
		tb_tx_r_enable = 1'b0;
	end


	end
	endtask
	task test_fast;
	begin
	#(CLOCK * 8000);//wait clock cycles
	tb_SDDI = 1'b1;
	#(CLOCK * 49);//to start with fastest speed
	tb_SDDI = 1'b0;
	#(CLOCK * 8);
	//tb_SDDI = 1'b1;
	#(80100 - CLOCK * 7000);//finish initialization
	tb_sd_addr_ready = 1;//start addr loading
	
	#(CLOCK);
	tb_sd_addr_ready = 0;
	#(CLOCK * 50);
	tb_fifo_in = 8'b10101111;



	tb_SDDI = 1'b0;
	#10000;
	tb_sd_write = 1'b1;//start write
	#10;
	tb_sd_write = 1'b0;
	#(CLOCK*  400);
	tb_SDDI = 1'b1;//end writelow
	#(CLOCK * 2000);//response
	tb_SDDI = 1'b0;
	#(CLOCK * 20000);//wait first write
	tb_SDDI = 1'b1;
	#(CLOCK * 2000);
	tb_SDDI = 1'b1;
	#(CLOCK * 200);//response
	tb_SDDI = 1'b0;

	#(CLOCK * 40000);//wait second write
	tb_sd_read = 1'b1;//start read
	#(CLOCK* 10);
	tb_sd_read = 1'b0;
	#(CLOCK * 500);
	tb_SDDI = 1'b1;//response
	#(CLOCK * 22);
	tb_SDDI = 1'b0;//zero for end of it
	#(CLOCK*40000);//wait first read
	tb_SDDI = 1'b1;
	#(CLOCK* 22);//appropriate timing for 7 bits
	tb_SDDI = 1'b0;
	#(CLOCK * 10);
	tb_SDDI = 1'b1;
	#(CLOCK * 60000);//wait second read
	for(i=0;i<1024;i++)begin//let the flood gates open
		tb_tx_r_enable = 1'b1;
		#(CLOCK);
		tb_tx_r_enable = 1'b0;
	end


	end
	endtask
	task reset_dut;
	begin
		tb_n_rst = 0;
		#(CLOCK);
		tb_n_rst = 1;
		#(CLOCK);
	end
	endtask
	initial begin
	tb_rx_FIFO_empty = 1'b0;
	tb_SDDI = 1'b0;
	reset_dut;
	test_fast;
	#(CLOCK * 100);
	$stop;
	/*
	reset_dut;
	test_middle;
	#(CLOCK * 100);
	$stop;
	*/
	/*
	reset_dut;
	test_fast;
	#(CLOCK * 100);
	$stop;
	*/







	end

endmodule