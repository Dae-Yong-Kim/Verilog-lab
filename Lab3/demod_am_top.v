module demod_am_top
(
input	wire			rst			,
input	wire			clk			,
input	wire			pls			,
input			[11:0]	rf_din		,
//
output					indx_dn		,
output			[7:0]	indx_cal	,
output			[11:0]	demod_v
);

wire			rf_up_dn	;
wire	[11:0]	rf_pp_top	;
wire	[11:0]	rf_pp_btm	;

wire			up_dno	;
wire	[11:0]	pp_t2b	;
wire	[11:0]	pp_b2t	;
wire	[11:0]	rf_pp_dif	;

/*--------------------------*/

am_indx_cal u_am_indx_cal
(
.rst		( rst		)	,
.clk		( clk		)	,
.pls		( pls		)	,
//
.up_dni		( up_dno	)	,
.pp_t2b		( pp_t2b	)	,
.pp_b2t		( pp_b2t	)	,
//
.indx_dn	( indx_dn	)	,
.indx_cal	( indx_cal	)	
);

/*--------------------------*/

pp_det u_pp_det
(
.rst		( rst		)	,
.clk		( clk		)	,
.pls		( pls		)	,
//
.rf_up_dn	( rf_up_dn	)	,
.rf_pp_top	( rf_pp_top	)	,
.rf_pp_btm	( rf_pp_btm	)	,
//
.up_dno		( up_dno	)	,
.pp_t2b		( pp_t2b	)	,
.pp_b2t		( pp_b2t	)	,
.rf_pp_dif	( rf_pp_dif	)
);

/*--------------------------*/

pp_det_rf u_pp_det_rf
(
.rst		( rst		)	,
.clk		( clk		)	,
.pls		( pls		)	,
//
.rfdi		( rf_din	)	,
//
.up_dno		( rf_up_dn	)	,
.pp_top		( rf_pp_top	)	,
.pp_btm		( rf_pp_btm	)
);

assign demod_v = {~rf_pp_dif[11],rf_pp_dif[10:0]};

endmodule