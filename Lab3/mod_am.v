module mod_am
(
input		wire			rst		,
input		wire			clk		,
input		wire			pls		,
input		signed	[11:0]	carrier	,
input		signed	[11:0]	mod_in	,
output	reg signed 	[11:0]	mod_out
);

reg	pl0,pl1	;

reg	signed	[23:0]	mod_d	;

always@ (negedge rst, posedge clk)
begin
	if (rst == 0)
		mod_d <= 0;
	else if ((pl0 & ~pl1) == 1)
		mod_d <= carrier * mod_in;
end

always@ (negedge rst, posedge clk)
begin
	if (rst == 0)
		mod_out <= 0;
	else if ((pl0 & ~pl1) == 1)
		if (mod_d[23] == mod_d[22])
			mod_out <= mod_d[22:11];
		else if (mod_d[23] == 1)
			mod_out <= -2048;
		else
			mod_out <= 2047;
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