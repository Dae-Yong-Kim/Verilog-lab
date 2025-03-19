// Digilent Cora-Z7 Board
//-- xc7z007sclg400-1

module stop_watch_top
( 
input	rst       		,   // USER_DIO1 <L19>
input	clk       		,   // 125MHz
//	Start & Stop Button. Pushed High
input	btn0    		,   // Start & Stop Button. Pushed High
input	btn1    		,   // Clear & Display Change Button. Pushed High
//	
output	ld0_r,ld0_g,ld0_b,  // LED0 R,G,B Display
output	ld1_r,ld1_g,ld1_b,  // LED1 R,G,B Display
//
output	[7:0] ja		,	// Upper 2 Digit 7 Segment
output	[7:0] jb			// Lower 2 Digit 7 Segment
);

wire pls_1mhz;
//wire lck;

wire pls_100hz,pls_1khz;

wire clr_btn,start_stop_btn;

wire cnt_en;
wire clr_pls;
wire disp_mode;

wire [6:0] us_cnt;
wire [5:0] s_cnt;
wire [6:0] m_cnt;

wire h_cat,l_cat;

wire [6:0] h_seg,l_seg;

assign jb = {h_cat,h_seg};
assign ja = {l_cat,l_seg};

stop_watch_disp_ctl u_stop_watch_disp_ctl
( 
.rst       		(rst       		),   // USER_DIO1 <L19>
.clk       		(clk       		),   // 125MHz
.pls_1khz  		(pls_1khz  		),   // 1kHz
// Time Counter Value Input                            
.us_cnt			(us_cnt			),   // Under Sec Counter. 0.00 ~ 0.99 Sec
.s_cnt			(s_cnt			),   // Sec Counter. 00 ~ 59 Sec
.m_cnt			(m_cnt			),	 // Min Counter. 00 ~ 99 Min
//
.disp_mode 		(disp_mode 		),    // 
// Upper Display 
.h_cat	    	(h_cat	    	),   // 
.h_seg	    	(h_seg			),    // 
// Upper Display 
.l_cat	    	(l_cat	    	),   // 
.l_seg	    	(l_seg			)    // 
);

stop_watch_cnt u_stop_watch_cnt
( 
.rst       		(rst       		),   // USER_DIO1 <L19>
.clk       		(clk       		),   // 125MHz
.pls_in		  	(pls_100hz  	),   // 100Hz
// Button Input                            
.clr_pls    	(clr_pls    	),   // High Active Clear
.cnt_en			(cnt_en			),   // High : Count Up
// Counter output                           
.us_cnt			(us_cnt			),   // Under Sec Counter. 0.00 ~ 0.99 Sec
.s_cnt			(s_cnt			),   // Sec Counter. 00 ~ 59 Sec
.m_cnt			(m_cnt			)	 // Min Counter. 00 ~ 99 Min
);

stop_watch_stm u_stop_watch_stm
( 
.rst       		(rst       		),   // USER_DIO1 <L19>
.clk       		(clk       		),   // 125MHz
.pls_100hz  	(pls_100hz  	),   // 100Hz
// Button Input                            
.clr_btn    	(clr_btn    	),   // High Active Clear
.start_stop_btn	(start_stop_btn	),   // High Active Count
// output                           
.ld0_r			(ld0_r			),   // LED0 Red
.ld0_g			(ld0_g			),   // LED0 Green
.ld0_b			(ld0_b			),   // LED0 Blue
///
.ld1_r			(ld1_r			),   // LED1 Red
.ld1_g			(ld1_g			),   // LED1 Green
.ld1_b			(ld1_b			),   // LED1 Blue
///
.cnt_en			(cnt_en			),   // 
.clr_plso  		(clr_pls  		),   // 
.disp_mode 		(disp_mode 		)    // 
);

debounce u_debounce_0	// Button 0 : Start & Stop Button
( 
.rst       (rst       		),   // USER_DIO1 <L19>
.clk       (clk       		),   // 125MHz
.pls_1k    (pls_1khz   		),   // 1KHz
//          
.btn_in    (btn0    		),   // Input
//                   
.btn_out   (start_stop_btn	) 
);     
         
debounce u_debounce_1	// Button 1 : Clear Button
( 
.rst       (rst       		),   // USER_DIO1 <L19>
.clk       (clk       		),   // 125MHz
.pls_1k    (pls_1khz   		),   // 1KHz
//          
.btn_in    (btn1    		),   // Input
//                   
.btn_out   (clr_btn			) 
);     
         
stop_watch_ctl_sig_gen u_stop_watch_ctl_sig_gen
( 
.rst       		(rst       		),   // USER_DIO1 <L19>
.clk       		(clk       		),   // 125MHz
//
.pls_1mhz  		(pls_1mhz  		),   // 100Hz
.pls_100hz  	(pls_100hz  	),   // 100Hz
.pls_1khz  		(pls_1khz  		)    // 1kHz
);

endmodule
