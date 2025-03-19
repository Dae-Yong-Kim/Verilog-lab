--module stop_watch_ctl_sig_gen
--( 
--input	rst       		,   // USER_DIO1 <L19>
--input	clk       		,   // 125MHz
--//	
--output	reg pls_1khz	,  // 1KHz Pulse Output
--output	reg pls_100hz	   // 100Hz Pulse Output
--);

restart
force rst 0 0, 1 50ns
force clk 0 0, 1 4ns -r 8ns

run 21ms