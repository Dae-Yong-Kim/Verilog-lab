module sine_gen
(
input	wire			rst		,
input	wire			clk		,
input	wire			pls		,	// 500KHz
input	wire	[15:0]	f_set	,
//----------------------
output	wire	[11:0]	sind
);

wire 		rstb	;
wire [11:0]	addr	;

assign rstb = ~ rst;

usin_rom u_sin_rom
(
.rsta		( rstb		)	,
.clka		( clk		)	,
.addra		( addr 		)	,
.douta		( sind		)
);

addr_gen u_addr_gen
(
.rst		( rst		)	,
.clk		( clk		)	,
.pls		( pls		)	,	// 500KHz
.f_set		( f_set 	)	,
.addro		( addr		)
);

endmodule