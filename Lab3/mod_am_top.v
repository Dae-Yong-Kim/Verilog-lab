module mod_am_top
(
input	wire			rst			,
input	wire			clk			,
input	wire			pls			,
input	wire	[7:0]	indx_set	,
input	wire	[11:0]	carrier		,
input	wire	[11:0]	source		,
output	wire	[11:0]	mod_out
);

wire	[11:0]	mod_in	;

mod_am u_mod_am
(
.rst		( rst		)	,
.clk		( clk		)	,
.pls		( pls		)	,
.carrier	( carrier 	)	,
.mod_in		( mod_in	)	,
.mod_out	( mod_out	)
);

am_indx_set u_am_indx_set
(
.rst		( rst		)	,
.clk		( clk		)	,
.pls		( pls		)	,
.indx_set	( indx_set 	)	,
.source		( source 	)	,
.mod_src	( mod_in	)
);

endmodule