onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_sd_interface/tb_clk
add wave -noupdate /tb_sd_interface/tb_sd_read
add wave -noupdate /tb_sd_interface/tb_sd_write
add wave -noupdate /tb_sd_interface/tb_sd_addr_ready
add wave -noupdate /tb_sd_interface/tb_fifo_in
add wave -noupdate /tb_sd_interface/tb_tx_r_enable
add wave -noupdate /tb_sd_interface/DUT/SDController/state
add wave -noupdate -expand -group {SPI Interface} -radix unsigned /tb_sd_interface/DUT/SDController/counter
add wave -noupdate -expand -group {SPI Interface} /tb_sd_interface/DUT/byte_transf
add wave -noupdate -expand -group {SPI Interface} /tb_sd_interface/DUT/SDController/roll
add wave -noupdate -expand -group {SPI Interface} /tb_sd_interface/DUT/ShiftRegister/data_in
add wave -noupdate -expand -group {SPI Interface} /tb_sd_interface/DUT/actual_cmd
add wave -noupdate -expand -group {SPI Interface} /tb_sd_interface/DUT/load_enable
add wave -noupdate -expand -group {SPI Interface} /tb_sd_interface/DUT/shift_enable
add wave -noupdate -expand -group {SPI Interface} /tb_sd_interface/DUT/ShiftRegister/shift_out/temp1
add wave -noupdate -expand -group {SPI Interface} -radix unsigned /tb_sd_interface/DUT/SDController/LoadFIFO/count_out
add wave -noupdate -expand -group {SPI Interface} /tb_sd_interface/count_reads
add wave -noupdate -expand -group FIFO /tb_sd_interface/tb_address
add wave -noupdate -expand -group FIFO /tb_sd_interface/tb_read_data
add wave -noupdate -expand -group FIFO /tb_sd_interface/tb_r_enable_o
add wave -noupdate -expand -group FIFO /tb_sd_interface/tb_write_data
add wave -noupdate -expand -group FIFO /tb_sd_interface/tb_read_enable
add wave -noupdate -expand -group SD /tb_sd_interface/tb_SDDI
add wave -noupdate -expand -group SD /tb_sd_interface/tb_SDDO
add wave -noupdate -expand -group SD /tb_sd_interface/tb_SDCLK
add wave -noupdate /tb_sd_interface/tb_write_enable
add wave -noupdate /tb_sd_interface/DUT/addr
add wave -noupdate /tb_sd_interface/DUT/speed
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {284529600 ps} 0}
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
WaveRestoreZoom {0 ps} {2074256940 ps}
