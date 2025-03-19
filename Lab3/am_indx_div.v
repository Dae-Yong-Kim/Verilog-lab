module am_indx_div
(
input	wire			rst			,
input	wire			clk			,
input	wire			pls			,
//                          	
input					ud_pp		,
input			[19:0]	bunja		,
input			[11:0]	bunmo		,
//
output	reg				indx_dn		,
output	reg		[7:0]	indx_div
);

reg		pl0,pl1;
reg		ud0,ud1;
reg		[3:0]	udcnt	;

wire	df	;
reg		[19:0]	bm,bj	;
reg		[7:0]	divs	;

/*----------------------------*/

always @ (negedge rst, posedge clk)
begin
	if (rst == 0)
		begin
			indx_dn <= 0;
			indx_div <= 0;
		end
	else if ((pl0 & ~pl1) == 1)
		begin
			if (bunja == 0)
				indx_div <= 0;
			else if (udcnt == 10)
				indx_div <= divs;
			
			if ((udcnt > 10) & (udcnt < 15))
				indx_dn <= 1;
			else
				indx_dn <= 0;
		end
end
			
/*----------------------------*/

always @ (negedge rst, posedge clk)
begin
	if (rst == 0)
		divs <= 0;
	else if ((pl0 & ~pl1) == 1)
		if      (udcnt == 1)	divs[7] <= df;
		else if (udcnt == 2)	divs[6] <= df;
		else if (udcnt == 3)	divs[5] <= df;
		else if (udcnt == 4)	divs[4] <= df;
		else if (udcnt == 5)	divs[3] <= df;
		else if (udcnt == 6)	divs[2] <= df;
		else if (udcnt == 7)	divs[1] <= df;
		else if (udcnt == 8)	divs[0] <= df;
		else if (udcnt == 9)	
			if (divs !=255)
				divs <= (divs + df);
end
			
/*----------------------------*/

assign df = (bj >= bm) ? 1 : 0;

always @ (negedge rst, posedge clk)
begin
	if (rst == 0)
		begin
			bm <= 0;
			bj <= 0;
		end
	else if ((pl0 & ~pl1) == 1)
		if (ud0 != ud1)
			begin
				bm <= {bunmo,8'b0};
				bj <= bunja;
			end
		else if (udcnt < 15)
			begin
				bm <= {1'b0,bm[19:1]};
				if (bj >= bm)
					bj <= bj - bm;
			end
		
end
			
/*----------------------------*/

always @ (negedge rst, posedge clk)
begin
	if (rst == 0)
		begin
			ud0 <= 0;
			ud1 <= 0;
			udcnt <= 15;
		end
	else if ((pl0 & ~pl1) == 1)
		begin
			ud0 <= ud_pp;
			ud1 <= ud0;
			if (ud0 != ud1)
				udcnt <= 0;
			else if (udcnt < 15)
				udcnt <= udcnt + 1;
		end
end
			
/*----------------------------*/

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