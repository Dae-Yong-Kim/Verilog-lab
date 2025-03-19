module tb_mod_am
(
input	wire			rst			,
input	wire			clk			,		// 125MHz
input	wire			pls			,		// 500kHz
input	wire	[7:0]	indx_set	,
input	wire	[15:0]	f_carrier	,
input	wire	[15:0]	f_source	,
//
output			[11:0]	usource		,		// UnSigned
output			[11:0]	umod_d				// UnSigned
);

wire	[11:0]	ucarrier ;
wire	[11:0]	scarrier, ssource	;

wire	[11:0]	mod_d, mod_di	;

//------------ Signed <==> Unsigned Conversion ---------

assign umod_d = {~mod_d[11],mod_d[10:0]};
assign mod_di = mod_d;	// for Simulation with Self Generated Signal

//-------------------------------------

mod_am_top u_mod_am_top
(
.rst		( rst		)	,
.clk		( clk		)	,
.pls		( pls		)	,
.indx_set	( indx_set 	)	,
.carrier	( scarrier 	)	,
.source		( ssource 	)	,
//
.mod_out	( mod_d		)
);

assign ssource = {~usource[11],usource[10:0]};
assign scarrier = {~ucarrier[11],ucarrier[10:0]};

sine_gen u_sine_carrier_gen
(
.rst		( rst		)	,
.clk		( clk		)	,	// 500KHz
.pls		( pls		)	,
.f_set		( f_carrier	)	,
.sind		( ucarrier	)
);

sine_gen u_sine_source_gen
(
.rst		( rst		)	,
.clk		( clk		)	,
.pls		( pls		)	,	// 500KHz
.f_set		( f_source	)	,
.sind		( usource	)
);

endmodule