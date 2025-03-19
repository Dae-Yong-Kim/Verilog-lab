module pp_det
(
input	wire			rst			,
input	wire			clk			,
input	wire			pls			,
//                          	
input					rf_up_dn	,
input			[11:0]	rf_pp_top	,
input			[11:0]	rf_pp_btm	,
//
output					up_dno		,
output			[11:0]	pp_t2b		,
output			[11:0]	pp_b2t		,
output	reg		[11:0]	rf_pp_dif
);

reg	pl0,pl1	;

reg		rud0,rud1	;
reg		ud0,ud1	;
reg		[11:0]	udcnt,udcv	;

reg		eqf	;
reg		[11:0]	eqcnt	;

wire	[11:0]	ddif	;

reg		[11:0]	df0,df1	;

reg		[11:0]	tmax,vmax	;
reg		[11:0]	tmin,vmin	;

/*----------------------------*/

assign up_dno = ud1;
assign pp_t2b = vmax;
assign pp_b2t = vmin;

/*----------------------------*/

always@ (negedge rst, posedge clk)
begin
	if (rst == 0)
		begin
			tmin <= 0;
			vmin <= 2048;
		end
	else if ((pl0 & ~pl1) == 1)
		if (rud0 != rud1)
			if (eqf == 1)
				vmin <= df0;
			else if (ud1 & ~ud0)	// Falling Edge of UD
				begin
					tmin <= 4095;
					vmin <= tmin;
				end
			else if (df0 < tmin)
				tmin <= df0;
end

/*----------------------------*/

always@ (negedge rst, posedge clk)
begin
	if (rst == 0)
		begin
			tmax <= 0;
			vmax <= 2048;
		end
	else if ((pl0 & ~pl1) == 1)
		if (rud0 != rud1)
			if (eqf == 1)
				vmax <= df0;
			else if (ud0 & ~ud1)	// Rising Edge of UD
				begin
					tmax <= 0;
					vmax <= tmax;
				end
			else if (df0 > tmax)
				tmax <= df0;
end

/*----------------------------*/

always@ (negedge rst, posedge clk)
begin
	if (rst == 0)
		begin
			eqf <= 0;
			eqcnt <= 0;
		end	
	else if ((pl0 & ~pl1) == 1)
		if (rud0 != rud1)
			if (df0 != df1)
				begin
					eqf <= 0;
					eqcnt <= 0;
				end
			else if (eqcnt < udcv)	
				eqcnt <= eqcnt + 1;
			else 
				eqf <= 1;
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
		if (rud0 != rud1)
			begin
				ud1 <= ud0;
				if (df0 > df1)
					ud0 <= 1;
				else if (df0 < df1)
					ud0 <= 0;
			end
end

/*----------------------------*/

always@ (negedge rst, posedge clk)
begin
	if (rst == 0)
		begin
			df0 <= 2018;
			df1 <= 2018;
		end
	else if ((pl0 & ~pl1) == 1)
		if (rud0 != rud1)
			begin
				df0 <= ddif;
				df1 <= df0;
			end
end

/*----------------------------*/

always@ (negedge rst, posedge clk)
begin
	if (rst == 0)
		begin
			udcnt <= 0;
			udcv <= 0;
		end
	else if ((pl0 & ~pl1) == 1)
		if (rud0 != rud1)
			if (ud0 != ud1)
				begin
					udcnt <= 0;
					udcv <= udcnt;
				end
			else if (udcnt < 63)
				udcnt <= udcnt + 1;
end

/*----------------------------*/

always@ (negedge rst, posedge clk)
begin
	if (rst == 0)
		begin
			rud0 <= 0;
			rud1 <= 0;
		end
	else if ((pl0 & ~pl1) == 1)		
		begin
			rud0 <= rf_up_dn;
			rud1 <= rud0;
		end
end

/*----------------------------*/

always@ (negedge rst, posedge clk)
begin
	if (rst == 0)
		rf_pp_dif <= 0;
	else if ((pl0 & ~pl1) == 1)
		if (rud0 != rud1)
			rf_pp_dif <= ddif;
end

/*----------------------------*/

assign ddif = (rf_pp_top > rf_pp_btm) ? (rf_pp_top - rf_pp_btm) : 0;

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