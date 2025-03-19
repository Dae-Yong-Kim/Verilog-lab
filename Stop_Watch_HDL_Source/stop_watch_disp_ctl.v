// Digilent Cora-Z7 Board
//-- xc7z007sclg400-1

module stop_watch_disp_ctl
( 
input			rst       	,   // USER_DIO1 <L19>
input			clk       	,   // 125MHz
input			pls_1khz   	,   // 1kHz Pulse for display control
//
input	[6:0] 	us_cnt		,
input	[5:0] 	s_cnt    	,
input	[6:0] 	m_cnt		,
//
input			disp_mode  	,   // 
//
output			h_cat,l_cat	,   // 
//	
output	[6:0] 	h_seg,l_seg
);

reg 		pl0,pl1;
reg  [3:0] 	plcnt;

reg  [6:0] 	h_hex,l_hex;

wire [7:0] 	h_bcd,l_bcd;

bcd2seg_2digit u_bcd2seg_l
(
.rst		(rst		),
.clk		(clk		),
.pls_1khz	(pls_1khz	),
.plcnt		(plcnt		),
//	        
.bcd_in		(l_bcd		),
//          
.cat		(l_cat		),
.segd	    (l_seg	    )
);

bcd2seg_2digit u_bcd2seg_h
(
.rst		(rst		),
.clk		(clk		),
.pls_1khz	(pls_1khz	),
.plcnt		(plcnt		),
//	        
.bcd_in		(h_bcd		),
//          
.cat		(h_cat		),
.segd	    (h_seg	    )
);

hex2bcd_2digit u_hex2bcd_h
(
.rst		(rst		),
.clk		(clk		),
.plcnt		(plcnt		),
//
.hex_in		(h_hex		),
//
.bcd_o		(h_bcd		)
);

hex2bcd_2digit u_hex2bcd_l
(
.rst		(rst		),
.clk		(clk		),
.plcnt		(plcnt		),
//
.hex_in		(l_hex		),
//
.bcd_o		(l_bcd		)
);

always@(negedge rst, posedge clk)
begin
    if (rst == 0)
        begin
            h_hex <= 0;    l_hex <= 0;
        end
    else if (pl0 & ~pl1)
		if (disp_mode == 0)
			begin
				h_hex <= s_cnt;		l_hex <= us_cnt;
			end
		else
			begin
				h_hex <= m_cnt;		l_hex <= s_cnt;
			end
end        
         
always@(negedge rst, posedge clk)
begin
    if (rst == 0)
        begin
            plcnt <= 15;    pl0 <= 0;    pl1 <= 0;
        end
    else 
		begin
			pl0 <= pls_1khz;    pl1 <= pl0;
			if (pl0 != pl1)
				plcnt <= 0;
			else if (plcnt < 15)
				plcnt <= plcnt + 1;
		end
end        
         
endmodule
