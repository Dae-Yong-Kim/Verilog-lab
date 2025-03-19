// Digilent Cora-Z7 Board
//-- xc7z007sclg400-1

module debounce
( 
input	rst       ,   // USER_DIO1 <L19>
input	clk       ,   // 125MHz
input	pls_1k    ,   // 1KHz
input	btn_in    ,   // Input
output	reg btn_out    
);

reg pl0,pl1;
reg btn0,btn1;

reg [4:0] btn_cnt;

always@(negedge rst, posedge clk)
begin
    if (rst == 0)
        btn_out <= 0;    
    else if (pl0 & ~pl1)
        if (btn_cnt == 19)
			btn_out <= btn1;
end        
            
always@(negedge rst, posedge clk)
begin
    if (rst == 0)
        begin
            btn0 <= 0;    btn1 <= 0;
            btn_cnt <= 31;
        end
    else if (pl0 & ~pl1)
        begin
            btn0 <= btn_in;    btn1 <= btn0;
            if (btn0 != btn1)
                btn_cnt <= 0;
            else if (btn_cnt < 20)
                btn_cnt <= btn_cnt + 1;
        end
end        
            
always@(negedge rst, posedge clk)
begin
    if (rst == 0)
        begin
            pl0 <= 0;    pl1 <= 0;
        end
    else
        begin
            pl0 <= pls_1k;	pl1 <= pl0;
        end
end        
         
endmodule
