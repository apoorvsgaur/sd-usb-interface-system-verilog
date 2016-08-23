onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_bit_unstuff/tb_test_num
add wave -noupdate /tb_bit_unstuff/tb_clk
add wave -noupdate /tb_bit_unstuff/tb_n_rst
add wave -noupdate /tb_bit_unstuff/tb_d_edge
add wave -noupdate /tb_bit_unstuff/tb_shift_enable
add wave -noupdate /tb_bit_unstuff/tb_shift_stop
add wave -noupdate -divider {D_Orig 1 Cnt}
add wave -noupdate /tb_bit_unstuff/tb_d_orig
add wave -noupdate -radix unsigned /tb_bit_unstuff/DUT/ONES/count_out
add wave -noupdate -divider {Clk Cnt}
add wave -noupdate -divider States
add wave -noupdate /tb_bit_unstuff/DUT/cur_state
add wave -noupdate /tb_bit_unstuff/DUT/next_state
add wave -noupdate -divider {State stuff}
add wave -noupdate /tb_bit_unstuff/DUT/stop_prep
add wave -noupdate /tb_bit_unstuff/DUT/cnt_clear
add wave -noupdate /tb_bit_unstuff/DUT/cnt_enable
add wave -noupdate /tb_bit_unstuff/DUT/cnt_done
TreeUpdate [SetDefaultTree]
quietly WaveActivateNextPane
WaveRestoreCursors {{Cursor 1} {242846 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 59
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
WaveRestoreZoom {0 ps} {315 ns}
