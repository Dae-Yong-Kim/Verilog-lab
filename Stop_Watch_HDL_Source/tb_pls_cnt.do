--module tb_pls_cnt
--( 
--input	rst       		,   // USER_DIO1 <L19>
--input	clk       		,   // 125MHz
--//	
--input	clr       		,   // High Active Clear
--input	cnt_en    		,   // High Active Count
--//	
--input	pls_in    		,   // Falling Edge Count Up
--//
--output	pls_out   		,   // Half Duty Pulse Out for Next Counter
--output	[6:0] qout    
--);

restart
force rst 0 0, 1 50ns
force clk 0 0, 1 4ns -r 8ns
force clr 0
force cnt_en 0
force pls_in 0 0, 1 500ns -r 1us

run 10us
force cnt_en 1
run 50us
force clr 1
run 1us
force clr 0
run 100us
force cnt_en 0
run 50us

force clr 1
run 1us
force clr 0
run 10us