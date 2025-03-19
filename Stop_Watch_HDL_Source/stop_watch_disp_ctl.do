--module stop_watch_disp_ctl
--( 
--input		rst       		,   // USER_DIO1 <L19>
--input		clk       		,   // 125MHz
--input		pls_1khz   		,   // 1kHz Pulse for display control
--//	
--input		[6:0] us_cnt	,
--input		[5:0] s_cnt    	,
--input		[6:0] m_cnt		,
--//	
--input		disp_mode  		,   // 
--//
--output	h_cat,l_cat		,   // 
--//	
--output	[6:0] h_seg,l_seg
--);

restart
force rst 0 0, 1 50ns
force clk 0 0, 1 4ns -r 8ns
force pls_1khz 0 0, 1 500ns -r 1us

force m_cnt 10#12
force s_cnt 10#34
force us_cnt 10#56

force disp_mode 0
run 50us
force disp_mode 1
run 50us