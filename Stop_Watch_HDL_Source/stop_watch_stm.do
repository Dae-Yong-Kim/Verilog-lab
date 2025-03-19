--module stop_watch_stm
--( 
--input	rst       		,   // USER_DIO1 <L19>
--input	clk       		,   // 125MHz>
--input	pls_100hz  		,   // 100Hz
--//	
--input	clr_btn    		,   // High Active Clear
--input	start_stop_btn	,   // High Active Count
--//	
--output	ld0_r,ld0_g,ld0_b,   // Stop Watch State LED Display
--output	ld1_r,ld1_g,ld1_b,   // Stop Watch State LED Display
--//
--output	cnt_en,clr_plso  
--);

restart
force rst 0 0, 1 50ns
force clk 0 0, 1 4ns -r 8ns
force pls_100hz 0 0, 1 500ns -r 1us
force clr_btn 0
force start_stop_btn 0

run 10us

force start_stop_btn 1
run 10us
force start_stop_btn 0
run 10us

force start_stop_btn 1
run 10us
force start_stop_btn 0
run 10us

force start_stop_btn 1
run 10us
force start_stop_btn 0
run 10us

force start_stop_btn 1
run 10us
force start_stop_btn 0
run 10us

force clr_btn 1
run 10us
force clr_btn 0
run 10us


