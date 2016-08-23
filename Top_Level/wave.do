onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_Sd_Usb/tb_clk
add wave -noupdate /tb_Sd_Usb/tb_n_rst
add wave -noupdate /tb_Sd_Usb/tb_d_plus
add wave -noupdate /tb_Sd_Usb/tb_d_minus
add wave -noupdate /tb_Sd_Usb/tb_SDCLK
add wave -noupdate /tb_Sd_Usb/tb_SDDO
add wave -noupdate /tb_Sd_Usb/tb_SDDI
add wave -noupdate /tb_Sd_Usb/tb_SDCS
add wave -noupdate /tb_Sd_Usb/TopLevel/MCU/state
add wave -noupdate /tb_Sd_Usb/TopLevel/receiveTOP/RCU/cur_state
add wave -noupdate /tb_Sd_Usb/TopLevel/SD/SDController/state
add wave -noupdate /tb_Sd_Usb/TopLevel/transmit/TCU/current_state
add wave -noupdate /tb_Sd_Usb/TopLevel/receiveTOP/SRG/rcv_data
add wave -noupdate /tb_Sd_Usb/TopLevel/receiveTOP/d_plus_sync
add wave -noupdate /tb_Sd_Usb/TopLevel/receiveTOP/d_minus_sync
add wave -noupdate /tb_Sd_Usb/TopLevel/receiveTOP/d_orig
add wave -noupdate /tb_Sd_Usb/TopLevel/receiveTOP/d_edge
add wave -noupdate /tb_Sd_Usb/TopLevel/receiveTOP/byte_received
add wave -noupdate /tb_Sd_Usb/TopLevel/receiveTOP/eop
add wave -noupdate /tb_Sd_Usb/TopLevel/receiveTOP/TIM/shift_enable
add wave -noupdate /tb_Sd_Usb/TopLevel/receiveTOP/TIM/byte_received
add wave -noupdate /tb_Sd_Usb/TopLevel/receiveTOP/TIM/field_received
add wave -noupdate /tb_Sd_Usb/TopLevel/MCU/sd_read
add wave -noupdate /tb_Sd_Usb/TopLevel/MCU/sd_write
add wave -noupdate /tb_Sd_Usb/TopLevel/MCU/tx_send_good
add wave -noupdate /tb_Sd_Usb/TopLevel/MCU/tx_send_bad
add wave -noupdate /tb_Sd_Usb/TopLevel/MCU/tx_transmit
add wave -noupdate /tb_Sd_Usb/TopLevel/MCU/sd_addr_rdy
add wave -noupdate /tb_Sd_Usb/TopLevel/MCU/token
add wave -noupdate /tb_Sd_Usb/TopLevel/MCU/rmode
add wave -noupdate /tb_Sd_Usb/TopLevel/MCU/wmode
add wave -noupdate /tb_Sd_Usb/TopLevel/MCU/packet_type
add wave -noupdate /tb_Sd_Usb/TopLevel/receiveTOP/RCU/cur_packet_done
add wave -noupdate /tb_Sd_Usb/TopLevel/rx_pid_rdy
add wave -noupdate /tb_Sd_Usb/TopLevel/sd_rx_enable
add wave -noupdate /tb_Sd_Usb/TopLevel/rx_r_data
add wave -noupdate /tb_Sd_Usb/TopLevel/SD/SDController/addr
add wave -noupdate /tb_Sd_Usb/TopLevel/SD/SDController/size
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {15361 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {51256 ps}
