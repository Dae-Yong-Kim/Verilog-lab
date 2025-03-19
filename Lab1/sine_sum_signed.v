module sine_sum_signed
(
input			rst		,
input			clk		,
input	[11:0]	delta_a, delta_b	,
//-----------------------
output	reg signed [12:0]	sind_sum
);

wire [11:0]	sind_a, sind_b	;
wire signed [11:0]	ssind_a, ssind_b	;

assign ssind_a = sind_a - 2048;
assign ssind_b = sind_b - 2048;

always@(negedge rst, posedge clk)
begin
	if (rst == 0)
		sind_sum <= 0;
	else
		sind_sum <= ssind_a + ssind_b;
end

assign rstb = ~ rst;

sine_a u_sine_a_0
(
.rst		( rst		)	,
.clk		( clk		)	,
.delta		( delta_a	)	,
.sind		( sind_a	)
);

sine_a u_sine_a_1
(
.rst		( rst		)	,
.clk		( clk		)	,
.delta		( delta_b	)	,
.sind		( sind_b	)
);

endmodule