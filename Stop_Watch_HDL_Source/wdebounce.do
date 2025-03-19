onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /debounce/rst
add wave -noupdate /debounce/clk
add wave -noupdate /debounce/pls_1k
add wave -noupdate /debounce/pl0
add wave -noupdate /debounce/pl1
add wave -noupdate /debounce/btn_in
add wave -noupdate -color cyan /debounce/btn0
add wave -noupdate -color cyan /debounce/btn1
add wave -noupdate -radix unsigned /debounce/btn_cnt
add wave -noupdate -color gold /debounce/btn_out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {57381011 ps} 0} {{Cursor 2} {164478422 ps} 0}
quietly wave cursor active 2
configure wave -namecolwidth 150
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
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {336 us}
