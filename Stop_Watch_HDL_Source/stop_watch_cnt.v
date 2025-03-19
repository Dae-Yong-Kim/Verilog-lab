// Digilent Cora-Z7 Board
//-- xc7z007sclg400-1

module stop_watch_cnt
( 
input	rst       		,   // USER_DIO1 <L19>
input	clk       		,   // 125MHz
input	pls_in    		,   // 100Hz Pulse, Falling Edge Count Up
//
input	clr_pls    		,   // High Active Clear
input	cnt_en    		,   // High Active Count
//------------------------------
output	[6:0] us_cnt,m_cnt,
output	[5:0] s_cnt    
);

reg pl0,pl1;
reg cnt_ens;

wire plso_us,plso_s,plso_m;

//reg rnc0,rnc1;
reg uart_set;

always@(negedge rst, posedge clk)
begin
	if (rst == 0)
		uart_set <= 0;
	else
		uart_set <= 0;
end
         
pls_cnt100 u_m_cnt
( 
.rst       	(rst      	),  // USER_DIO1 <L19>
.clk       	(clk      	),  // 125MHz
//                    
.clr       	(clr_pls   	),  // High Active Clear
.cnt_en    	(cnt_ens  	),  // High Active Count
//                    
.pls_in    	(plso_s   	),  // Falling Edge Count Up
//                    
.pls_out   	(plso_m  	),	// Half Duty Pulse Out for Next Counter
.qout      	(m_cnt     	)
);
            
pls_cnt60 u_s_cnt
( 
.rst       	(rst      	),  // USER_DIO1 <L19>
.clk       	(clk      	),  // 125MHz
//                    
.clr       	(clr_pls   	),  // High Active Clear
.cnt_en    	(cnt_ens  	),  // High Active Count
//                    
.pls_in    	(plso_us   	),  // Falling Edge Count Up
//                    
.pls_out   	(plso_s  	),	// Half Duty Pulse Out for Next Counter
.qout      	(s_cnt     	)
);
            
pls_cnt100 u_us_cnt
( 
.rst       	(rst      	),  // USER_DIO1 <L19>
.clk       	(clk      	),  // 125MHz
//                    
.clr       	(clr_pls   	),  // High Active Clear
.cnt_en    	(cnt_ens  	),  // High Active Count
//                    
.pls_in    	(pls_in   	),  // Falling Edge Count Up
//                    
.pls_out   	(plso_us  	),	// Half Duty Pulse Out for Next Counter
.qout      	(us_cnt    	)
);
            
always@(negedge rst, posedge clk)
begin
    if (rst == 0)
        cnt_ens <= 0;
	else if (pl0 & ~pl1)
        cnt_ens <= cnt_en;
end        
            
always@(negedge rst, posedge clk)
begin
    if (rst == 0)
        begin
            pl0 <= 0;    pl1 <= 0;
        end
    else
        begin
            pl0 <= pls_in;	pl1 <= pl0;
        end
end        
         
endmodule
