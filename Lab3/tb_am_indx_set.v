module tb_am_indx_set
(
input	wire			rst			,
input	wire			clk			,		// 125MHz
input	wire			pls			,		// 500kHz
input	wire	[7:0]	indx_set	,
input	wire	[15:0]	f_source	,
//input	wire	[9:0]	f_source	,
//
output			[11:0]	mod_in		
);

wire	[11:0]	usource, ssource	;

//-------------------------------------

am_indx_set u_am_indx_set
(
.rst		( rst		)	,
.clk		( clk		)	,
.pls		( pls		)	,
.indx_set	( indx_set 	)	,
.source		( ssource 	)	,
.mod_src	( mod_in	)
);

//------------ Signed <==> Unsigned Conversion ---------

assign ssource = {~usource[11],usource[10:0]};

sine_gen u_sine_source_gen
(
.rst		( rst		)	,
.clk		( clk		)	,
.pls		( pls		)	,	// 500KHz
.f_set		( f_source	)	,
.sind		( usource	)
);

endmodule