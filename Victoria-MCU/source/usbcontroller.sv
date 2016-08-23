// $Id: $
// File name:   usbcontroller.sv
// Created:     11/3/2015
// Author:      Victoria Humphreys
// Lab Section: 337-01
// Version:     1.0  Initial Design Entry
// Description: usb master controller
module usbcontroller
(
input n_rst,
input clk,
input sd_done,
input sd_err,
input tx_err,
input tx_done,
input [3:0] rx_pid,
input [1:0] rx_packet_done,
input pid_rdy,
output reg sd_read,
output reg sd_write,
output reg tx_send_good,
output reg tx_send_bad,
output reg tx_transmit,
output reg sd_addr_rdy
);

reg token;
reg rmode;
reg wmode;
reg packet_type;

typedef enum {DELAY, DELAY1, DELAY2, DELAY3, DELAY4, DELAY5, IDLE, IDLE2, TYPE2, TYPE, WAIT, WAIT2, WAIT4, WAIT3, PACKET_DONE, SELECT_RW, READ, R_EIDLE, TRANSMIT, HANDSHAKE, W_EIDLE, WRITE, EIDLE} stateType;
stateType state;
stateType nextstate;

always_ff @ (negedge n_rst, posedge clk) begin
	if (n_rst == 1'b0) begin
		state <= IDLE;
	end
	else begin
		state <= nextstate;
	end
end

always_comb begin ///////NEXT STATE BLOCK////////////////
	nextstate = state;
	case(state)
	IDLE: begin
		if (pid_rdy == 1) begin
			nextstate = TYPE;
		end else begin
			nextstate = IDLE;
		end
	end
	EIDLE: begin
		nextstate = IDLE;
	end
	TYPE: begin
		if (packet_type == 1) begin
			if (rx_packet_done == 1) begin
				nextstate = DELAY3;
			end else if (rx_packet_done == 0) begin
				nextstate = TYPE;
			end else if (rx_packet_done == 2) begin
				nextstate = EIDLE;
			end
		end else begin
			nextstate = EIDLE;
		end
	end 
	DELAY3: begin
		nextstate = DELAY4;
	end
	DELAY4: begin
		nextstate = DELAY5;
	end
	DELAY5: begin
		nextstate = WAIT;
	end
	WAIT: begin
		if(rx_packet_done == 1) begin
			nextstate = PACKET_DONE;
		end else if (rx_packet_done == 0) begin
			nextstate = WAIT;
		end else begin
			nextstate = EIDLE;
		end
	end
	PACKET_DONE: begin
		nextstate = IDLE2;
	end
	IDLE2: begin
		if (pid_rdy == 1) begin
			nextstate = TYPE2;
		end else begin
			nextstate = IDLE2;
		end
	end
	TYPE2: begin
		//confirm if data?
		if (rx_packet_done == 1) begin
			nextstate = DELAY;
		end else begin
			nextstate = TYPE2;
		end
	end
	DELAY: begin
		nextstate = DELAY1;
	end
	DELAY1: begin
		nextstate = DELAY2;
	end
	DELAY2: begin
		nextstate = WAIT2;
	end
	WAIT2: begin
		if(rx_packet_done == 1) begin
			nextstate = SELECT_RW;
		end else if (rx_packet_done == 0) begin
			nextstate = WAIT2;
		end else begin
			nextstate = EIDLE;
		end

	end
	SELECT_RW: begin
		if (rmode == 1) begin
			nextstate = READ;
		end else if (wmode == 1) begin
			nextstate = WRITE;
		end
	end

	//READ//////////////////////////
	READ: begin
		if (sd_err == 1) begin
			nextstate = EIDLE;
		end else if (sd_done == 1) begin
			nextstate = TRANSMIT;
		end else begin
			nextstate = READ;
		end
	end
	TRANSMIT: begin
		if (tx_err == 1) begin
			nextstate = EIDLE;
		end else if (tx_done == 1) begin
			nextstate = IDLE;
		end else begin
			nextstate = TRANSMIT;
		end
	end

	//WRITE/////////////////////////

	WRITE: begin
		if (sd_err == 1 | tx_err == 1) begin
			nextstate = EIDLE;
		end else if (sd_done == 1) begin
			nextstate = HANDSHAKE;
		end else begin
			nextstate = WRITE;
		end
	end
	HANDSHAKE: begin
		if (tx_err == 1) begin
			nextstate = EIDLE;
		end else if (tx_done == 1) begin
			nextstate = IDLE;
		end else begin
			nextstate = HANDSHAKE;
		end

	end
endcase
end

always_comb begin //////////DOING STUFF BLOCK////////////////
	//nextstate = state;
	packet_type = 0;
	sd_read = 0;
	sd_write = 0;
	tx_transmit = 0;
	tx_send_good = 0;
	tx_send_bad = 0;
	wmode = 0;
	rmode = 0;
	sd_addr_rdy = 0;
	case(state)
	IDLE: begin	
	end
	EIDLE: begin
		tx_send_bad = 1; //NAK NAK NAK!!!!
		//reset values -------
		packet_type = 0;
		sd_read = 0;
		sd_write = 0;
		tx_transmit = 0;
		tx_send_good = 0;
		tx_send_bad = 0;
		wmode = 0;
		rmode = 0;
		sd_addr_rdy = 0;
	end
	TYPE: begin
		if (rx_pid == 4'b0001 | rx_pid == 4'b1001) begin //out, in
			packet_type = 1;
		end else begin
			packet_type = 0;
		end
	end 
	WAIT: begin
	end
	PACKET_DONE: begin
		sd_addr_rdy = 1;
	end
	IDLE2: begin
	end
	TYPE2: begin
		//confirm if data packet??
	end
	WAIT2: begin
	end
	SELECT_RW: begin
		if (rx_pid == 4'b0001) begin // out - host to function - WRITE
			wmode = 1;
			rmode = 0;
		end else if (rx_pid == 4'b1001) begin //in - function to host - READ
			rmode = 1;
			wmode = 0;
		end
	end


	//READ//////////////////////////
	READ: begin
		sd_read = 1;
	end
	TRANSMIT: begin
		tx_transmit = 1;
		sd_read = 0;
	end


	//WRITE/////////////////////////
	WRITE: begin
		sd_write = 1;
	end
	HANDSHAKE: begin
		tx_send_good = 1; //ack
	end
endcase
end


endmodule
