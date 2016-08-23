onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_crc_check_16bit/tb_test_num
add wave -noupdate /tb_crc_check_16bit/tb_clk
add wave -noupdate /tb_crc_check_16bit/tb_n_rst
add wave -noupdate /tb_crc_check_16bit/tb_shift_enable
add wave -noupdate /tb_crc_check_16bit/tb_serial_in
add wave -noupdate /tb_crc_check_16bit/tb_eop
add wave -noupdate /tb_crc_check_16bit/tb_shift_stop
add wave -noupdate /tb_crc_check_16bit/tb_crc_rcv
add wave -noupdate /tb_crc_check_16bit/tb_parallel_out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {190942 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 146
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
WaveRestoreZoom {181987 ps} {262939 ps}
