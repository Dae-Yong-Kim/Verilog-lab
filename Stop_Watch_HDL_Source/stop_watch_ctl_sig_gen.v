// Digilent Cora-Z7 Board
//-- xc7z007sclg400-1

module stop_watch_ctl_sig_gen
( 
input	rst       		,   // USER_DIO1 <L19>
input	clk       		,   // 125MHz
//	
output	reg pls_1mhz	,  // 1MHz Pulse Output
output	reg pls_1khz	,  // 1KHz Pulse Output
output	reg pls_100hz	   // 100Hz Pulse Output
);

reg [6:0] hcnt;

reg [15:0] kcnt;
reg pl0,pl1;

reg [3:0] plcnt;

// 1MHz Pulse Generation    
always@(negedge rst, posedge clk)
begin
    if (rst == 0)
		begin
			hcnt <= 0;	pls_1mhz <= 0;
		end
    else if (pl1 & ~pl0)
		begin
			if (hcnt < 24)
				hcnt <= hcnt + 1;
			else	
				hcnt <= 0;
			if (hcnt < 12)	pls_1mhz <= 0;
			else			pls_1mhz <= 1;
		end
end        

// Ouput Signal Generation    
always@(negedge rst, posedge clk)
begin
    if (rst == 0)
		begin
			pls_100hz <= 0;		pls_1khz <= 0;	
		end
    else 
		begin
			pls_1khz <= pl1;
			if (plcnt < 5)	pls_100hz <= 0;
			else			pls_100hz <= 1;
		end
end        

// 100Hz Pulse Generation    
always@(negedge rst, posedge clk)
begin
    if (rst == 0)
		plcnt <= 0;	
    else if (pl1 & ~pl0)
		if (plcnt < 9)
			plcnt <= plcnt + 1;
		else	
			plcnt <= 0;
end        

// 1KHz Pulse Generation    
always@(negedge rst, posedge clk)
begin
    if (rst == 0)
		begin
			kcnt <= 0;	pl0 <= 0;	pl1 <= 0;
		end
    else 
		begin
			pl1 <= pl0;
			if (kcnt < 62499)
				kcnt <= kcnt + 1;
			else	
				begin	
					kcnt <= 0;
					pl0 <= ~pl0;
				end
		end
end        

endmodule
