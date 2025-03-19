// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Mon Feb  3 10:22:29 2025
// Host        : COMSYS01 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Verilog-lab/my_SPI_RAM/my_SPI_RAM.gen/sources_1/bd/my_SPI_RAM/ip/my_SPI_RAM_RAM_0_0/my_SPI_RAM_RAM_0_0_sim_netlist.v
// Design      : my_SPI_RAM_RAM_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "my_SPI_RAM_RAM_0_0,RAM,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "RAM,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module my_SPI_RAM_RAM_0_0
   (CLK,
    WEN,
    ADDR,
    DIN,
    DOUT);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN my_SPI_RAM_spi_slave_0_0_CLK, INSERT_VIP 0" *) input CLK;
  input WEN;
  input [6:0]ADDR;
  input [7:0]DIN;
  output [7:0]DOUT;

  wire [6:0]ADDR;
  wire CLK;
  wire [7:0]DIN;
  wire [7:0]DOUT;
  wire WEN;

  (* KEEP_HIERARCHY = "soft" *) 
  my_SPI_RAM_RAM_0_0_RAM inst
       (.ADDR(ADDR),
        .CLK(CLK),
        .DIN(DIN),
        .DOUT(DOUT),
        .WEN(WEN));
endmodule

(* ORIG_REF_NAME = "RAM" *) (* keep_hierarchy = "soft" *) 
module my_SPI_RAM_RAM_0_0_RAM
   (CLK,
    WEN,
    ADDR,
    DIN,
    DOUT);
  input CLK;
  input WEN;
  input [6:0]ADDR;
  input [7:0]DIN;
  (* mark_debug = "true" *) output [7:0]DOUT;

  wire [6:0]ADDR;
  wire CLK;
  wire [7:0]DIN;
  (* MARK_DEBUG *) wire [7:0]DOUT;
  wire [7:0]DOUT_reg0;
  wire WEN;

  (* KEEP = "yes" *) 
  FDRE \DOUT_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(DOUT_reg0[0]),
        .Q(DOUT[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \DOUT_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(DOUT_reg0[1]),
        .Q(DOUT[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \DOUT_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(DOUT_reg0[2]),
        .Q(DOUT[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \DOUT_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(DOUT_reg0[3]),
        .Q(DOUT[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \DOUT_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(DOUT_reg0[4]),
        .Q(DOUT[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \DOUT_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(DOUT_reg0[5]),
        .Q(DOUT[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \DOUT_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(DOUT_reg0[6]),
        .Q(DOUT[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \DOUT_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(DOUT_reg0[7]),
        .Q(DOUT[7]),
        .R(1'b0));
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM128X1S mem_reg_0_127_0_0
       (.A0(ADDR[0]),
        .A1(ADDR[1]),
        .A2(ADDR[2]),
        .A3(ADDR[3]),
        .A4(ADDR[4]),
        .A5(ADDR[5]),
        .A6(ADDR[6]),
        .D(DIN[0]),
        .O(DOUT_reg0[0]),
        .WCLK(CLK),
        .WE(WEN));
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAM128X1S mem_reg_0_127_1_1
       (.A0(ADDR[0]),
        .A1(ADDR[1]),
        .A2(ADDR[2]),
        .A3(ADDR[3]),
        .A4(ADDR[4]),
        .A5(ADDR[5]),
        .A6(ADDR[6]),
        .D(DIN[1]),
        .O(DOUT_reg0[1]),
        .WCLK(CLK),
        .WE(WEN));
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAM128X1S mem_reg_0_127_2_2
       (.A0(ADDR[0]),
        .A1(ADDR[1]),
        .A2(ADDR[2]),
        .A3(ADDR[3]),
        .A4(ADDR[4]),
        .A5(ADDR[5]),
        .A6(ADDR[6]),
        .D(DIN[2]),
        .O(DOUT_reg0[2]),
        .WCLK(CLK),
        .WE(WEN));
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAM128X1S mem_reg_0_127_3_3
       (.A0(ADDR[0]),
        .A1(ADDR[1]),
        .A2(ADDR[2]),
        .A3(ADDR[3]),
        .A4(ADDR[4]),
        .A5(ADDR[5]),
        .A6(ADDR[6]),
        .D(DIN[3]),
        .O(DOUT_reg0[3]),
        .WCLK(CLK),
        .WE(WEN));
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAM128X1S mem_reg_0_127_4_4
       (.A0(ADDR[0]),
        .A1(ADDR[1]),
        .A2(ADDR[2]),
        .A3(ADDR[3]),
        .A4(ADDR[4]),
        .A5(ADDR[5]),
        .A6(ADDR[6]),
        .D(DIN[4]),
        .O(DOUT_reg0[4]),
        .WCLK(CLK),
        .WE(WEN));
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAM128X1S mem_reg_0_127_5_5
       (.A0(ADDR[0]),
        .A1(ADDR[1]),
        .A2(ADDR[2]),
        .A3(ADDR[3]),
        .A4(ADDR[4]),
        .A5(ADDR[5]),
        .A6(ADDR[6]),
        .D(DIN[5]),
        .O(DOUT_reg0[5]),
        .WCLK(CLK),
        .WE(WEN));
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM128X1S mem_reg_0_127_6_6
       (.A0(ADDR[0]),
        .A1(ADDR[1]),
        .A2(ADDR[2]),
        .A3(ADDR[3]),
        .A4(ADDR[4]),
        .A5(ADDR[5]),
        .A6(ADDR[6]),
        .D(DIN[6]),
        .O(DOUT_reg0[6]),
        .WCLK(CLK),
        .WE(WEN));
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM128X1S mem_reg_0_127_7_7
       (.A0(ADDR[0]),
        .A1(ADDR[1]),
        .A2(ADDR[2]),
        .A3(ADDR[3]),
        .A4(ADDR[4]),
        .A5(ADDR[5]),
        .A6(ADDR[6]),
        .D(DIN[7]),
        .O(DOUT_reg0[7]),
        .WCLK(CLK),
        .WE(WEN));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
