module pp_det_rf
(
input		wire			rst		,
input		wire			clk		,
input		wire			pls		,
input				[11:0]	rfdi	,
//
output						up_dno	,
output			 	[11:0]	pp_top	,
output			 	[11:0]	pp_btm
);

wire	[11:0]	urfd	;
reg		[11:0]	d0,d1	;

reg		updn0,updn1	;
reg		[3:0]	udcnt	;

reg		ud0,ud1	;
reg		[11:0]	ttop,vtop	;
reg		[11:0]	tbtm,vbtm	;

reg	pl0,pl1	;

/*----------------------------*/

assign up_dno = ud1;
assign pp_top = vtop;
assign pp_btm = vbtm;

/*----------------------------*/

always@ (negedge rst, posedge clk)
begin
	if (rst == 0)
		begin
			tbtm <= 0;
			vbtm <= 2048;
		end
	else if ((pl0 & ~pl1) == 1)
		begin
			if (ud1 & ~ud0)
				begin
					tbtm <= 4095;
					vbtm <= tbtm;
				end
			else if (d0 < tbtm)
				tbtm <= d0;
		end
end

/*----------------------------*/

always@ (negedge rst, posedge clk)
begin
	if (rst == 0)
		begin
			ttop <= 0;
			vtop <= 2048;
		end
	else if ((pl0 & ~pl1) == 1)
		begin
			if (ud0 & ~ud1)
				begin
					ttop <= 0;
					vtop <= ttop;
				end
			else if (d0 > ttop)
				ttop <= d0;
		end
end

/*----------------------------*/

always@ (negedge rst, posedge clk)
begin
	if (rst == 0)
		begin
			ud0 <= 0;
			ud1 <= 0;
		end
	else if ((pl0 & ~pl1) == 1)
		begin
			ud1 <= ud0;
			if (udcnt == 14)
				ud0 <= updn0;
		end
end

/*----------------------------*/

always@ (negedge rst, posedge clk)
begin
	if (rst == 0)
		begin
			updn0 <= 0;
			updn1 <= 0;
			udcnt <= 15;
		end
	else if ((pl0 & ~pl1) == 1)
		begin
			updn1 <= updn0;
			if (d0 > d1)
				updn0 <= 1;
			else if (d0 < d1)
				updn0 <= 0;
				
			if (updn0 != updn1)
				udcnt <= 0;
			else if (udcnt < 15)
				udcnt <= udcnt + 1;
		end
end

/*----------------------------*/

always@ (negedge rst, posedge clk)
begin
	if (rst == 0)
		begin
			d0 <= 2048;
			d1 <= 2048;
		end
	else if ((pl0 & ~pl1) == 1)
		begin
			d0 <= urfd;
			d1 <= d0;
		end
end

/*----------------------------*/

assign urfd = {~rfdi[11],rfdi[10:0]};

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