onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /stop_watch_stm/rst
add wave -noupdate /stop_watch_stm/clk
add wave -noupdate /stop_watch_stm/pls_100hz
add wave -noupdate /stop_watch_stm/clr_btn
add wave -noupdate /stop_watch_stm/start_stop_btn
add wave -noupdate /stop_watch_stm/ld0_r
add wave -noupdate /stop_watch_stm/ld0_g
add wave -noupdate /stop_watch_stm/ld0_b
add wave -noupdate /stop_watch_stm/ld1_r
add wave -noupdate /stop_watch_stm/ld1_g
add wave -noupdate /stop_watch_stm/ld1_b
add wave -noupdate -color gold /stop_watch_stm/cnt_en
add wave -noupdate -color gold /stop_watch_stm/clr_plso
add wave -noupdate /stop_watch_stm/pl0
add wave -noupdate /stop_watch_stm/pl1
add wave -noupdate /stop_watch_stm/cl0
add wave -noupdate /stop_watch_stm/cl1
add wave -noupdate -radix unsigned /stop_watch_stm/clr_chk_cnt
add wave -noupdate /stop_watch_stm/clr_pls
add wave -noupdate -color magenta /stop_watch_stm/st0
add wave -noupdate -color magenta /stop_watch_stm/st1
add wave -noupdate -color cyan /stop_watch_stm/stm
add wave -noupdate /stop_watch_stm/disp_mode
add wave -noupdate /stop_watch_stm/clr_pls
add wave -noupdate /stop_watch_stm/pl0
add wave -noupdate /stop_watch_stm/pl1
add wave -noupdate /stop_watch_stm/st0
add wave -noupdate /stop_watch_stm/st1
add wave -noupdate -color Coral /stop_watch_stm/cl0
add wave -noupdate -color Coral /stop_watch_stm/cl1
add wave -noupdate -color cyan -radix unsigned -radixshowbase 0 /stop_watch_stm/clr_chk_cnt
add wave -noupdate /stop_watch_stm/clr_pls
add wave -noupdate -radix unsigned /stop_watch_stm/stm
add wave -noupdate /stop_watch_stm/disp_mode
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {90500000 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 233
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
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
WaveRestoreZoom {0 ps} {231 us}
