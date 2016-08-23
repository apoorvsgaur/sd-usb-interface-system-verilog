onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_sd_interface/tb_clk
add wave -noupdate /tb_sd_interface/tb_sd_read
add wave -noupdate /tb_sd_interface/tb_sd_write
add wave -noupdate /tb_sd_interface/tb_sd_addr_ready
add wave -noupdate /tb_sd_interface/tb_fifo_in
add wave -noupdate /tb_sd_interface/tb_tx_r_enable
add wave -noupdate /tb_sd_interface/tb_address
add wave -noupdate /tb_sd_interface/tb_read_data
add wave -noupdate /tb_sd_interface/tb_write_data
add wave -noupdate /tb_sd_interface/DUT/SDController/state
add wave -noupdate -radix decimal /tb_sd_interface/DUT/SDController/counter
add wave -noupdate /tb_sd_interface/DUT/byte_transf
add wave -noupdate /tb_sd_interface/tb_sd_addr_ready
add wave -noupdate /tb_sd_interface/tb_SDDI
add wave -noupdate /tb_sd_interface/tb_SDDO
add wave -noupdate /tb_sd_interface/DUT/ShiftRegister/data_in
add wave -noupdate /tb_sd_interface/DUT/actual_cmd
add wave -noupdate /tb_sd_interface/DUT/load_enable
add wave -noupdate /tb_sd_interface/DUT/shift_enable
add wave -noupdate /tb_sd_interface/tb_SDCLK
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {196013 ps} 0}
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
configure wave -timelineunits ps
update
WaveRestoreZoom {195756 ps} {196492 ps}
