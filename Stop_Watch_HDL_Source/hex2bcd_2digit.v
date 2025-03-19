module hex2bcd_2digit
(
input				rst		,
input				clk		,
input		[3:0]	plcnt	,
//
input		[6:0]	hex_in	,
//
output reg	[7:0]	bcd_o	
);

reg	[6:0] 	hexv	;
reg	[3:0]	bcd_h	;
reg	[3:0]	bcd_l	;

//assign bcd_o = {bcd_h,bcd_l};

// Hex to BCD Converting
always@(negedge rst, posedge clk)
begin
    if (rst == 0)
        begin
            hexv <= 0;
            bcd_h <= 0;  bcd_l <= 0;
			bcd_o <= 0;
        end
    else
        begin
            if (plcnt == 0)     hexv <= hex_in;
            else if (plcnt == 1)
                if      (hexv >= 90) begin   bcd_h <= 9;  hexv <= hexv - 90;  end
                else if (hexv >= 80) begin   bcd_h <= 8;  hexv <= hexv - 80;  end
                else if (hexv >= 70) begin   bcd_h <= 7;  hexv <= hexv - 70;  end
                else if (hexv >= 60) begin   bcd_h <= 6;  hexv <= hexv - 60;  end
                else if (hexv >= 50) begin   bcd_h <= 5;  hexv <= hexv - 50;  end
                else if (hexv >= 40) begin   bcd_h <= 4;  hexv <= hexv - 40;  end
                else if (hexv >= 30) begin   bcd_h <= 3;  hexv <= hexv - 30;  end
                else if (hexv >= 20) begin   bcd_h <= 2;  hexv <= hexv - 20;  end
                else if (hexv >= 10) begin   bcd_h <= 1;  hexv <= hexv - 10;  end
                else                         bcd_h <= 0;  
            else if (plcnt == 2)
                bcd_l <= hexv[3:0];
			else if (plcnt == 3)
				bcd_o <= {bcd_h,bcd_l};
        end
end  

endmodule
