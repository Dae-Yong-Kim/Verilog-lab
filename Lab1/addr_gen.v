module addr_gen
(
input	wire			rst 	,
input	wire			clk		,
input	wire			pls		,	// 250KHz. 4us
input	wire	[15:0]	f_set	,	// 1 ~ 25000Hz
output	reg 	[11:0]	addro
);

reg	 pl0, pl1 ;
reg  [25:0]	cnt_bas	;
wire [25:0]	cnt_in	;
wire [25:0]	cnt_df	;

wire [7:0]	delta	;

wire [23:0]	f_din	;

//assign f_din = f_set * 64;	// 1 ~ 50kHz
assign f_din = f_set * 256;		// 1 ~ 25kHz
//assign cnt_in = cnt_bas + f_din;
//assign cnt_in = cnt_in + f_din;

/*
delta_gen udelta_gen
(
.cnt_in	( cnt_in )	,
.cnt_df	( cnt_df )	,
.delta	( delta  )
);
*/

always@ ( negedge rst, posedge clk )
begin
	if ( rst == 0 )
		begin
			pl0 <= 0;
			pl1 <= 0;
		end
	else
		begin
			pl0 <= pls;
			pl1 <= pl0;
		end
end

assign cnt_df = cnt_bas + f_din;
	
always@ ( negedge rst, posedge clk )
begin
	if ( rst == 0 )
		cnt_bas <= 0;
	else if ((pl0 & ~pl1) == 1)
		if (cnt_df < 64000000)
			cnt_bas <= cnt_df;
		else
			cnt_bas <= cnt_df - 64000000;
end

assign cnt_in = (cnt_bas / 15625);

always@ ( negedge rst, posedge clk )
begin
	if ( rst == 0 )
		addro <= 0;
	else if ((pl0 & ~pl1) == 1)
		addro <= cnt_in[11:0];
end

/*		
always@ ( negedge rst, posedge clk )
begin
	if ( rst == 0 )
		cnt_bas <= 0;
	else if ((pl0 & ~pl1) == 1)
		cnt_bas <= cnt_df;
end	
*/

endmodule