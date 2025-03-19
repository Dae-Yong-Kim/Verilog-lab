module am_indx_cal
(
input	wire			rst			,
input	wire			clk			,
input	wire			pls			,
//                          	
input					up_dni		,
input			[11:0]	pp_t2b		,
input			[11:0]	pp_b2t		,
//
output					indx_dn		,
output			[7:0]	indx_cal
);

wire	[11:0]	asb	;
wire	[12:0]	apb	;

wire	[11:0]	bunmo	;
wire	[19:0]	bunja	;

/*----------------------------*/

am_indx_div u_am_indx_div
(
.rst		( rst		)	,
.clk		( clk		)	,
.pls		( pls		)	,
//
.ud_pp		( up_dni	)	,
.bunja		( bunja		)	,
.bunmo		( bunmo		)	,
//
.indx_dn	( indx_dn	)	,
.indx_div	( indx_cal	)	
);

/*----------------------------*/

assign bunja = {asb,6'b0} +  {asb,5'b0} +  {asb,2'b0};

assign bunmo = (apb[12] == 0) ? apb[11:0] : 4095;
assign apb = pp_t2b + pp_b2t;
assign asb = (pp_t2b > pp_b2t) ? (pp_t2b - pp_b2t) : 0;

/*----------------------------*/

endmodule