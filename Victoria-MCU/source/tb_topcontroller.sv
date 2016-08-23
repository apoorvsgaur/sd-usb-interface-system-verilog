`timescale 1ns / 10ps
module tb_topcontroller
();

	localparam CLOCK = 10;
	
	reg tb_clk, tb_n_rst;
	reg tb_tx_send_bad, tb_tx_send_good, tb_tx_transmit, tb_tx_err, tb_tx_done;
	reg tb_sd_addr_rdy, tb_sd_read, tb_sd_write, tb_sd_done, tb_sd_err;
	reg tb_pid_rdy; 
	reg [1:0] tb_rx_packet_done; 
	reg [3:0] tb_rx_pid;

	always
	begin
		tb_clk = 0;
		#(CLOCK/2.0);
		tb_clk = 1;
		#(CLOCK/2.0);
	end


	//port map
	usbcontroller DUT (.n_rst(tb_n_rst), .clk(tb_clk), .sd_done(tb_sd_done), .sd_err(tb_sd_err), .tx_err(tb_tx_err), .tx_done(tb_tx_done), .rx_pid(tb_rx_pid), .rx_packet_done(tb_rx_packet_done), .pid_rdy(tb_pid_rdy), .sd_read(tb_sd_read), .sd_write(tb_sd_write), .tx_send_good(tb_tx_send_good), .tx_send_bad(tb_tx_send_bad), .tx_transmit(tb_tx_transmit), .sd_addr_rdy(tb_sd_addr_rdy));

	//tb
	initial
	begin
	//-----------------------------write test
	//IDLE
	tb_pid_rdy = 1'b1;					//TYPE
	tb_rx_pid = 4'b0001; //initial out, sending addr and such
	#(CLOCK*8)
	tb_pid_rdy = 1'b0;
	tb_rx_packet_done = 2'b01; //cmd packet done		//WAIT
	#(CLOCK*2)
	tb_rx_packet_done = 2'b00;				//WAIT3
	#(CLOCK*8)
	tb_rx_packet_done = 2'b01; // addr data packet done	//PACKET_DONE -> idle2
	#(CLOCK*2)
	tb_rx_packet_done = 2'b00;
	//controller should toggle sd_addr_rdy
	#(CLOCK*8)
	tb_pid_rdy = 1'b1;					//TYPE2
	tb_rx_pid = 4'b0001; //write to sd
	#(CLOCK*8)
	tb_pid_rdy = 1'b0;
	#(CLOCK*8)
	tb_rx_packet_done = 2'b01; // cmd packet done		//WAIT2
	#(CLOCK*2)
	tb_rx_packet_done = 2'b00;				//WAIT4
	#(CLOCK*8)
	#(CLOCK*8)
	#(CLOCK*8)
	tb_rx_packet_done = 2'b01; //data packet done		//SELECT RW
	#(CLOCK*2)
	tb_rx_packet_done = 2'b00;
	//read/write is selected - SHOULD BE WRITE		//WRITE
	#(CLOCK*8)
	//sd read is 1
	tb_sd_done = 1'b1;
	#(CLOCK*8)
	#(CLOCK*8)
	tb_sd_done = 1'b0;
	//tx transmit = 1
	tb_tx_done = 1'b1;
	#(CLOCK*2)
	tb_tx_done = 1'b0;
	//back to idle
	#(CLOCK*16)
	//-------------------------------read test
	//IDLE
	tb_pid_rdy = 1'b1;					//TYPE
	tb_rx_pid = 4'b0001; //initial out, sending addr and such
	#(CLOCK*8)
	tb_pid_rdy = 1'b0;
	tb_rx_packet_done = 2'b01; //cmd packet done		//WAIT
	#(CLOCK*2)
	tb_rx_packet_done = 2'b00;				//WAIT3
	#(CLOCK*8)
	tb_rx_packet_done = 2'b01; // addr data packet done	//PACKET_DONE -> idle2
	#(CLOCK*2)
	tb_rx_packet_done = 2'b00;
	//controller should toggle sd_addr_rdy
	#(CLOCK*8)
	tb_pid_rdy = 1'b1;					//TYPE2
	tb_rx_pid = 4'b1001; //read from sd
	#(CLOCK*8)
	tb_pid_rdy = 1'b0;
	#(CLOCK*8)
	tb_rx_packet_done = 2'b01; // cmd packet done		//WAIT2
	#(CLOCK*2)
	tb_rx_packet_done = 2'b00;				//WAIT4
	#(CLOCK*8)
	#(CLOCK*8)
	#(CLOCK*8)
	tb_rx_packet_done = 2'b01; //data packet done		//SELECT RW - should be read
	#(CLOCK*2)
	#(CLOCK*8)
	#(CLOCK*8)
	#(CLOCK*8)
	#(CLOCK*8)
	tb_rx_packet_done = 2'b00;
	//read
	#(CLOCK*8)
	tb_sd_done = 1'b1;
	#(CLOCK*8)
	tb_tx_done = 1'b1;
	#(CLOCK*8)
	#(CLOCK*8)
	//idle


	



	$stop;
	end
endmodule
