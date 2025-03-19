module am_indx_set
(
input	wire				rst			,
input	wire				clk			,
input	wire				pls			,
input	wire signed	[7:0]	indx_set	,
input	wire signed	[11:0]	source		,
output	reg  signed [11:0]	mod_src
);

reg	pl0,pl1	;

reg signed	[19:0]	m20		;
reg signed	[12:0]	mod_d	;

wire signed	[12:0]	moda	;
wire signed	[10:0]	modb	;
wire signed	[7:0]	modc	;
wire signed	[1:0]	modd	;
wire signed			mode	;
wire signed	[3:0]	modf	;

always@ ( negedge rst, posedge clk)
begin
	if ( rst == 0 )
		mod_src <= 0;
	else if ((pl0 & ~pl1) == 1)
		mod_src <= mod_d[ 12:1 ] + 1024;
end

always@ ( negedge rst, posedge clk)
begin
	if ( rst == 0 )
		mod_d <= 0;
	else if ((pl0 & ~pl1) == 1)
		mod_d <= moda + modb + modc + modd + mode - modf;
end

assign moda = m20[19:7];
assign modb = m20[19:9];
assign modc = m20[19:12];
assign modd = m20[19:18];
assign mode = m20[19];
assign modf = m20[19:16];

always@ ( negedge rst, posedge clk)
begin
	if ( rst == 0 )
		m20 <= 0;
	else if ((pl0 & ~pl1) == 1)
		m20 <= indx_set * source;
end

always@ ( negedge rst, posedge clk)
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

endmodule