module bcd2seg_2digit
(
input				rst		,
input				clk		,
input				pls_1khz,
input		[3:0]	plcnt	,
//
input		[7:0]	bcd_in	,
//
output 	reg			cat		,
output 	reg	[6:0]	segd	
);

wire	[3:0]	bcd_s	;

// Select Display BCDV
assign bcd_s = (pls_1khz == 1) ? bcd_in[7:4] : bcd_in[3:0];

// BCD to 7 Seg Data Conversion
always@(negedge rst, posedge clk)
begin
    if (rst == 0)
		begin
			segd <= 0;	cat <= 0;
		end
    else if (plcnt == 4)   
		begin	
			cat <= pls_1khz;
			case (bcd_s)
			4'd0 :      segd <= 7'h3f;
			4'd1 :      segd <= 7'h06;
			4'd2 :      segd <= 7'h5b;
			4'd3 :      segd <= 7'h4f;
			4'd4 :      segd <= 7'h66;
			4'd5 :      segd <= 7'h6d;
			4'd6 :      segd <= 7'h7d;
			4'd7 :      segd <= 7'h27;
			4'd8 :      segd <= 7'h7f;
			4'd9 :      segd <= 7'h6f;
			default :   segd <= 7'h40;
			endcase
		end
end  

endmodule
