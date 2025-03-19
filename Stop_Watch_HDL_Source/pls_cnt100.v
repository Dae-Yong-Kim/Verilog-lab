// Digilent Cora-Z7 Board
//-- xc7z007sclg400-1

module pls_cnt100
( 
input	rst       		,   // USER_DIO1 <L19>
input	clk       		,   // 125MHz
//	
input	clr       		,   // High Active Clear
input	cnt_en    		,   // High Active Count
//	
input	pls_in    		,   // Falling Edge Count Up
//
output	reg pls_out   	,   // Half Duty Pulse Out for Next Counter
output	reg [6:0] qout    
);

reg pl0,pl1;

reg [6:0] cnt;

always@(negedge rst, posedge clk)
begin
    if (rst == 0)
		begin
			pls_out <= 0;
			qout <= 0;   
		end
    else 
		begin
			qout <= cnt;   
			if (cnt < 50)	pls_out <= 0;
			else			pls_out <= 1;
		end
end        
            
always@(negedge rst, posedge clk)
begin
    if (rst == 0)
        cnt <= 0;
    else if (cnt_en == 0)
		begin
			if (clr)	cnt <= 0;
		end
	else if (pl1 & ~pl0)
        if (cnt < 99)
			cnt <= cnt + 1;
		else
			cnt <= 0;
end        
            
always@(negedge rst, posedge clk)
begin
    if (rst == 0)
        begin
            pl0 <= 0;    pl1 <= 0;
        end
    else
        begin
            pl0 <= pls_in;	pl1 <= pl0;
        end
end        
         
endmodule
