onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_crc_check_5bit/tb_test_num
add wave -noupdate /tb_crc_check_5bit/DUT/n_rst
add wave -noupdate /tb_crc_check_5bit/DUT/clk
add wave -noupdate /tb_crc_check_5bit/DUT/shift_enable
add wave -noupdate /tb_crc_check_5bit/DUT/serial_in
add wave -noupdate /tb_crc_check_5bit/DUT/eop
add wave -noupdate /tb_crc_check_5bit/DUT/shift_stop
add wave -noupdate /tb_crc_check_5bit/DUT/crc_rcv
add wave -noupdate /tb_crc_check_5bit/DUT/parallel_out
add wave -noupdate /tb_crc_check_5bit/DUT/out_tmp
add wave -noupdate /tb_crc_check_5bit/DUT/in_tmp
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {74403 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 149
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
WaveRestoreZoom {0 ps} {118125 ps}
