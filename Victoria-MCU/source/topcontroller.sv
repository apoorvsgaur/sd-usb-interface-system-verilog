// $Id: $
// File name:   topcontroller.sv
// Created:     12/9/2015
// Author:      Victoria Humphreys
// Lab Section: 337-01
// Version:     1.0  Initial Design Entry
// Description: trying to get the pads to work so this is now the top level
module topcontroller
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
output sd_read1,
output sd_write1,
output tx_send_good1,
output tx_send_bad1,
output tx_transmit1,
output sd_addr_rdy1
);
reg sd_read;
reg sd_write;
reg tx_send_good;
reg tx_send_bad;
reg tx_transmit;
reg sd_addr_rdy;

assign sd_read1 = sd_read;
assign sd_write1 = sd_write;
assign tx_send_good1 = tx_send_good;
assign tx_send_bad1 = tx_send_bad;
assign tx_transmit1 = tx_transmit;
assign sd_addr_rdy1 = sd_addr_rdy;


usbcontroller USBC (
.n_rst(n_rst),
.clk(clk),
.sd_done(sd_done),
.sd_err(sd_err),
.tx_err(tx_err),
.tx_done(tx_done),
.rx_pid(rx_pid),
.rx_packet_done(rx_packet_done),
.pid_rdy(pid_rdy),
.sd_read(sd_read),
.sd_write(sd_write),
.tx_send_good(tx_send_good),
.tx_send_bad(tx_send_bad),
.tx_transmit(tx_transmit),
.sd_addr_rdy(sd_addr_rdy)
);

endmodule
