onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_usb_receiver/tb_clk
add wave -noupdate /tb_usb_receiver/tb_n_rst
add wave -noupdate /tb_usb_receiver/DUT/sync_rst
add wave -noupdate -divider {RAW DATA}
add wave -noupdate /tb_usb_receiver/DUT/d_plus_sync
add wave -noupdate /tb_usb_receiver/DUT/d_minus_sync
add wave -noupdate -divider {DECODED DATA}
add wave -noupdate /tb_usb_receiver/DUT/d_orig
add wave -noupdate /tb_usb_receiver/DUT/d_edge
add wave -noupdate -divider {RCVING INFO}
add wave -noupdate /tb_usb_receiver/DUT/rcving
add wave -noupdate /tb_usb_receiver/DUT/crc_rcv
add wave -noupdate /tb_usb_receiver/DUT/r_error
add wave -noupdate -divider {RCVED INFO}
add wave -noupdate -radix unsigned /tb_usb_receiver/DUT/bit_cnt
add wave -noupdate -radix unsigned /tb_usb_receiver/DUT/TIM/useless
add wave -noupdate /tb_usb_receiver/DUT/byte_received
add wave -noupdate /tb_usb_receiver/DUT/field_received
add wave -noupdate -divider STATE
add wave -noupdate /tb_usb_receiver/DUT/RCU/cur_state
add wave -noupdate -divider {SHIFT INFO}
add wave -noupdate /tb_usb_receiver/DUT/shift_stop
add wave -noupdate /tb_usb_receiver/DUT/shift_enable
add wave -noupdate -divider {EOP INFO}
add wave -noupdate /tb_usb_receiver/DUT/eop
add wave -noupdate -radix unsigned /tb_usb_receiver/DUT/packet_done
add wave -noupdate -divider CRC
add wave -noupdate /tb_usb_receiver/DUT/crc5_data
add wave -noupdate /tb_usb_receiver/DUT/crc16_data
add wave -noupdate -divider PID
add wave -noupdate /tb_usb_receiver/DUT/pid
add wave -noupdate /tb_usb_receiver/tb_pid_rdy
add wave -noupdate -divider ADDR
add wave -noupdate /tb_usb_receiver/DUT/RCU/valid_addr
add wave -noupdate -divider {FIFO DATA}
add wave -noupdate /tb_usb_receiver/tb_clk
add wave -noupdate /tb_usb_receiver/tb_write_data
add wave -noupdate /tb_usb_receiver/DUT/rcv_data
add wave -noupdate /tb_usb_receiver/tb_write_enable
add wave -noupdate /tb_usb_receiver/tb_empty
add wave -noupdate -radix binary /tb_usb_receiver/tb_address
add wave -noupdate /tb_usb_receiver/DUT/clear
add wave -noupdate /tb_usb_receiver/tb_read_enable
add wave -noupdate /tb_usb_receiver/tb_r_data
add wave -noupdate /tb_usb_receiver/tb_read_data
TreeUpdate [SetDefaultTree]
quietly WaveActivateNextPane
add wave -noupdate -radix unsigned /tb_usb_receiver/DUH/address
add wave -noupdate -radix hexadecimal /tb_usb_receiver/DUH/read_data
add wave -noupdate /tb_usb_receiver/DUH/read_enable
add wave -noupdate -radix hexadecimal /tb_usb_receiver/DUH/write_data
add wave -noupdate /tb_usb_receiver/DUH/write_enable
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {19464000 ps} 1} {{Cursor 2} {19237793 ps} 0}
quietly wave cursor active 2
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
configure wave -timelineunits ps
update
WaveRestoreZoom {19091013 ps} {20563828 ps}
