// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Mon Feb  3 16:14:11 2025
// Host        : COMSYS01 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Verilog-lab/my_SPI_RAM/my_SPI_RAM.gen/sources_1/bd/my_SPI_RAM/ip/my_SPI_RAM_spi_slave_0_0/my_SPI_RAM_spi_slave_0_0_sim_netlist.v
// Design      : my_SPI_RAM_spi_slave_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "my_SPI_RAM_spi_slave_0_0,spi_slave,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "spi_slave,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module my_SPI_RAM_spi_slave_0_0
   (CSN,
    SCLK,
    MOSI,
    MISO,
    CLK,
    WEN,
    ADDR,
    DIN,
    DOUT);
  input CSN;
  input SCLK;
  input MOSI;
  output MISO;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN my_SPI_RAM_spi_slave_0_0_CLK, INSERT_VIP 0" *) output CLK;
  output WEN;
  output [6:0]ADDR;
  output [7:0]DIN;
  input [7:0]DOUT;

  wire [6:0]ADDR;
  wire CLK;
  wire CSN;
  wire [7:0]DIN;
  wire [7:0]DOUT;
  wire MISO;
  wire MOSI;
  wire SCLK;
  wire WEN;

  (* KEEP_HIERARCHY = "soft" *) 
  my_SPI_RAM_spi_slave_0_0_spi_slave inst
       (.ADDR(ADDR),
        .CLK(CLK),
        .CSN(CSN),
        .DIN(DIN),
        .DOUT(DOUT),
        .MISO(MISO),
        .MOSI(MOSI),
        .SCLK(SCLK),
        .WEN(WEN));
endmodule

(* ORIG_REF_NAME = "spi_slave" *) (* keep_hierarchy = "soft" *) 
module my_SPI_RAM_spi_slave_0_0_spi_slave
   (CSN,
    SCLK,
    MOSI,
    MISO,
    CLK,
    WEN,
    ADDR,
    DIN,
    DOUT);
  input CSN;
  input SCLK;
  input MOSI;
  (* mark_debug = "true" *) output MISO;
  output CLK;
  (* mark_debug = "true" *) output WEN;
  (* mark_debug = "true" *) output [6:0]ADDR;
  (* mark_debug = "true" *) output [7:0]DIN;
  input [7:0]DOUT;

  (* MARK_DEBUG *) wire [6:0]ADDR;
  wire CSN;
  (* MARK_DEBUG *) wire [7:0]DIN;
  wire [7:0]DOUT;
  (* MARK_DEBUG *) wire MISO;
  wire MOSI;
  wire SCLK;
  (* MARK_DEBUG *) wire WEN;
  (* MARK_DEBUG *) wire [6:0]addr;
  wire \addr[0]_i_1_n_0 ;
  wire \addr[1]_i_1_n_0 ;
  wire \addr[2]_i_1_n_0 ;
  wire \addr[3]_i_1_n_0 ;
  wire \addr[4]_i_1_n_0 ;
  wire \addr[5]_i_1_n_0 ;
  wire \addr[6]_i_1_n_0 ;
  wire \addr[6]_i_2_n_0 ;
  wire \addr[6]_i_3_n_0 ;
  (* MARK_DEBUG *) wire cmd;
  wire cmd_i_1_n_0;
  wire cmd_i_2_n_0;
  wire cmd_i_3_n_0;
  (* MARK_DEBUG *) wire [7:0]din;
  wire \din[0]_i_1_n_0 ;
  wire \din[1]_i_1_n_0 ;
  wire \din[2]_i_1_n_0 ;
  wire \din[3]_i_1_n_0 ;
  wire \din[4]_i_1_n_0 ;
  wire \din[5]_i_1_n_0 ;
  wire \din[6]_i_1_n_0 ;
  wire \din[7]_i_1_n_0 ;
  wire \din[7]_i_2_n_0 ;
  (* MARK_DEBUG *) wire done;
  wire done_i_1_n_0;
  wire done_i_2_n_0;
  wire done_i_3_n_0;
  (* MARK_DEBUG *) wire [7:0]dout;
  wire \dout[0]_i_1_n_0 ;
  wire \dout[1]_i_1_n_0 ;
  wire \dout[2]_i_1_n_0 ;
  wire \dout[3]_i_1_n_0 ;
  wire \dout[4]_i_1_n_0 ;
  wire \dout[5]_i_1_n_0 ;
  wire \dout[6]_i_1_n_0 ;
  wire \dout[7]_i_1_n_0 ;
  (* MARK_DEBUG *) wire [4:0]rd_index;
  wire \rd_index[4]_i_1_n_0 ;
  wire \rd_index[4]_i_2_n_0 ;
  wire [4:0]rd_index_reg0;
  (* MARK_DEBUG *) wire [15:0]reg0;
  wire \reg0[0]_i_1_n_0 ;
  wire \reg0[10]_i_1_n_0 ;
  wire \reg0[11]_i_1_n_0 ;
  wire \reg0[12]_i_1_n_0 ;
  wire \reg0[13]_i_1_n_0 ;
  wire \reg0[14]_i_1_n_0 ;
  wire \reg0[14]_i_2_n_0 ;
  wire \reg0[15]_i_1_n_0 ;
  wire \reg0[15]_i_2_n_0 ;
  wire \reg0[1]_i_1_n_0 ;
  wire \reg0[2]_i_1_n_0 ;
  wire \reg0[3]_i_1_n_0 ;
  wire \reg0[4]_i_1_n_0 ;
  wire \reg0[5]_i_1_n_0 ;
  wire \reg0[6]_i_1_n_0 ;
  wire \reg0[6]_i_2_n_0 ;
  wire \reg0[7]_i_1_n_0 ;
  wire \reg0[7]_i_2_n_0 ;
  wire \reg0[8]_i_1_n_0 ;
  wire \reg0[9]_i_1_n_0 ;
  wire [0:0]reg0_reg1;
  (* MARK_DEBUG *) wire [7:0]reg1;
  wire \reg1[0]_i_1_n_0 ;
  wire \reg1[1]_i_1_n_0 ;
  wire \reg1[2]_i_1_n_0 ;
  wire \reg1[3]_i_1_n_0 ;
  wire \reg1[4]_i_1_n_0 ;
  wire \reg1[5]_i_1_n_0 ;
  wire \reg1[6]_i_1_n_0 ;
  wire \reg1[6]_i_2_n_0 ;
  wire \reg1[7]_i_1_n_0 ;
  wire \reg1[7]_i_2_n_0 ;
  (* MARK_DEBUG *) wire ren;
  wire ren_i_1_n_0;
  (* MARK_DEBUG *) wire wen;
  wire wen_i_1_n_0;
  (* MARK_DEBUG *) wire [4:0]wr_index;
  wire \wr_index[4]_i_1_n_0 ;
  wire [4:1]wr_index_reg0;

  assign CLK = SCLK;
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \addr[0]_i_1 
       (.I0(reg1[0]),
        .I1(cmd_i_3_n_0),
        .I2(\addr[6]_i_2_n_0 ),
        .I3(reg0[8]),
        .I4(ADDR[0]),
        .I5(\addr[6]_i_3_n_0 ),
        .O(\addr[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \addr[1]_i_1 
       (.I0(reg1[1]),
        .I1(cmd_i_3_n_0),
        .I2(\addr[6]_i_2_n_0 ),
        .I3(reg0[9]),
        .I4(ADDR[1]),
        .I5(\addr[6]_i_3_n_0 ),
        .O(\addr[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \addr[2]_i_1 
       (.I0(reg1[2]),
        .I1(cmd_i_3_n_0),
        .I2(\addr[6]_i_2_n_0 ),
        .I3(reg0[10]),
        .I4(ADDR[2]),
        .I5(\addr[6]_i_3_n_0 ),
        .O(\addr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \addr[3]_i_1 
       (.I0(reg1[3]),
        .I1(cmd_i_3_n_0),
        .I2(\addr[6]_i_2_n_0 ),
        .I3(reg0[11]),
        .I4(ADDR[3]),
        .I5(\addr[6]_i_3_n_0 ),
        .O(\addr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \addr[4]_i_1 
       (.I0(reg1[4]),
        .I1(cmd_i_3_n_0),
        .I2(\addr[6]_i_2_n_0 ),
        .I3(reg0[12]),
        .I4(ADDR[4]),
        .I5(\addr[6]_i_3_n_0 ),
        .O(\addr[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \addr[5]_i_1 
       (.I0(reg1[5]),
        .I1(cmd_i_3_n_0),
        .I2(\addr[6]_i_2_n_0 ),
        .I3(reg0[13]),
        .I4(ADDR[5]),
        .I5(\addr[6]_i_3_n_0 ),
        .O(\addr[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \addr[6]_i_1 
       (.I0(reg1[6]),
        .I1(cmd_i_3_n_0),
        .I2(\addr[6]_i_2_n_0 ),
        .I3(reg0[14]),
        .I4(ADDR[6]),
        .I5(\addr[6]_i_3_n_0 ),
        .O(\addr[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \addr[6]_i_2 
       (.I0(reg0[15]),
        .I1(cmd_i_2_n_0),
        .O(\addr[6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFE2)) 
    \addr[6]_i_3 
       (.I0(done_i_3_n_0),
        .I1(reg0[15]),
        .I2(done_i_2_n_0),
        .I3(CSN),
        .O(\addr[6]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    addr_inst
       (.I0(addr[6]),
        .O(ADDR[6]));
  LUT1 #(
    .INIT(2'h2)) 
    addr_inst__0
       (.I0(addr[5]),
        .O(ADDR[5]));
  LUT1 #(
    .INIT(2'h2)) 
    addr_inst__1
       (.I0(addr[4]),
        .O(ADDR[4]));
  LUT1 #(
    .INIT(2'h2)) 
    addr_inst__2
       (.I0(addr[3]),
        .O(ADDR[3]));
  LUT1 #(
    .INIT(2'h2)) 
    addr_inst__3
       (.I0(addr[2]),
        .O(ADDR[2]));
  LUT1 #(
    .INIT(2'h2)) 
    addr_inst__4
       (.I0(addr[1]),
        .O(ADDR[1]));
  LUT1 #(
    .INIT(2'h2)) 
    addr_inst__5
       (.I0(addr[0]),
        .O(ADDR[0]));
  (* KEEP = "yes" *) 
  FDRE \addr_reg[0] 
       (.C(SCLK),
        .CE(1'b1),
        .D(\addr[0]_i_1_n_0 ),
        .Q(addr[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \addr_reg[1] 
       (.C(SCLK),
        .CE(1'b1),
        .D(\addr[1]_i_1_n_0 ),
        .Q(addr[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \addr_reg[2] 
       (.C(SCLK),
        .CE(1'b1),
        .D(\addr[2]_i_1_n_0 ),
        .Q(addr[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \addr_reg[3] 
       (.C(SCLK),
        .CE(1'b1),
        .D(\addr[3]_i_1_n_0 ),
        .Q(addr[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \addr_reg[4] 
       (.C(SCLK),
        .CE(1'b1),
        .D(\addr[4]_i_1_n_0 ),
        .Q(addr[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \addr_reg[5] 
       (.C(SCLK),
        .CE(1'b1),
        .D(\addr[5]_i_1_n_0 ),
        .Q(addr[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \addr_reg[6] 
       (.C(SCLK),
        .CE(1'b1),
        .D(\addr[6]_i_1_n_0 ),
        .Q(addr[6]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFF22F2F2)) 
    cmd_i_1
       (.I0(reg0[15]),
        .I1(cmd_i_2_n_0),
        .I2(reg1[7]),
        .I3(cmd),
        .I4(cmd_i_3_n_0),
        .O(cmd_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    cmd_i_2
       (.I0(wr_index[0]),
        .I1(wr_index[3]),
        .I2(wr_index[1]),
        .I3(wr_index[2]),
        .I4(wr_index[4]),
        .I5(CSN),
        .O(cmd_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    cmd_i_3
       (.I0(\din[7]_i_1_n_0 ),
        .I1(rd_index[0]),
        .I2(rd_index[3]),
        .I3(rd_index[1]),
        .I4(rd_index[2]),
        .I5(rd_index[4]),
        .O(cmd_i_3_n_0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    cmd_reg
       (.C(SCLK),
        .CE(1'b1),
        .D(cmd_i_1_n_0),
        .Q(cmd),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    \din[0]_i_1 
       (.I0(DIN[0]),
        .I1(cmd_i_2_n_0),
        .I2(reg0[0]),
        .O(\din[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \din[1]_i_1 
       (.I0(DIN[1]),
        .I1(cmd_i_2_n_0),
        .I2(reg0[1]),
        .O(\din[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \din[2]_i_1 
       (.I0(DIN[2]),
        .I1(cmd_i_2_n_0),
        .I2(reg0[2]),
        .O(\din[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \din[3]_i_1 
       (.I0(DIN[3]),
        .I1(cmd_i_2_n_0),
        .I2(reg0[3]),
        .O(\din[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \din[4]_i_1 
       (.I0(DIN[4]),
        .I1(cmd_i_2_n_0),
        .I2(reg0[4]),
        .O(\din[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \din[5]_i_1 
       (.I0(DIN[5]),
        .I1(cmd_i_2_n_0),
        .I2(reg0[5]),
        .O(\din[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \din[6]_i_1 
       (.I0(DIN[6]),
        .I1(cmd_i_2_n_0),
        .I2(reg0[6]),
        .O(\din[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \din[7]_i_1 
       (.I0(CSN),
        .I1(reg0[15]),
        .O(\din[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \din[7]_i_2 
       (.I0(DIN[7]),
        .I1(cmd_i_2_n_0),
        .I2(reg0[7]),
        .O(\din[7]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    din_inst
       (.I0(din[7]),
        .O(DIN[7]));
  LUT1 #(
    .INIT(2'h2)) 
    din_inst__0
       (.I0(din[6]),
        .O(DIN[6]));
  LUT1 #(
    .INIT(2'h2)) 
    din_inst__1
       (.I0(din[5]),
        .O(DIN[5]));
  LUT1 #(
    .INIT(2'h2)) 
    din_inst__2
       (.I0(din[4]),
        .O(DIN[4]));
  LUT1 #(
    .INIT(2'h2)) 
    din_inst__3
       (.I0(din[3]),
        .O(DIN[3]));
  LUT1 #(
    .INIT(2'h2)) 
    din_inst__4
       (.I0(din[2]),
        .O(DIN[2]));
  LUT1 #(
    .INIT(2'h2)) 
    din_inst__5
       (.I0(din[1]),
        .O(DIN[1]));
  LUT1 #(
    .INIT(2'h2)) 
    din_inst__6
       (.I0(din[0]),
        .O(DIN[0]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \din_reg[0] 
       (.C(SCLK),
        .CE(\din[7]_i_1_n_0 ),
        .D(\din[0]_i_1_n_0 ),
        .Q(din[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \din_reg[1] 
       (.C(SCLK),
        .CE(\din[7]_i_1_n_0 ),
        .D(\din[1]_i_1_n_0 ),
        .Q(din[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \din_reg[2] 
       (.C(SCLK),
        .CE(\din[7]_i_1_n_0 ),
        .D(\din[2]_i_1_n_0 ),
        .Q(din[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \din_reg[3] 
       (.C(SCLK),
        .CE(\din[7]_i_1_n_0 ),
        .D(\din[3]_i_1_n_0 ),
        .Q(din[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \din_reg[4] 
       (.C(SCLK),
        .CE(\din[7]_i_1_n_0 ),
        .D(\din[4]_i_1_n_0 ),
        .Q(din[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \din_reg[5] 
       (.C(SCLK),
        .CE(\din[7]_i_1_n_0 ),
        .D(\din[5]_i_1_n_0 ),
        .Q(din[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \din_reg[6] 
       (.C(SCLK),
        .CE(\din[7]_i_1_n_0 ),
        .D(\din[6]_i_1_n_0 ),
        .Q(din[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \din_reg[7] 
       (.C(SCLK),
        .CE(\din[7]_i_1_n_0 ),
        .D(\din[7]_i_2_n_0 ),
        .Q(din[7]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0047)) 
    done_i_1
       (.I0(done_i_2_n_0),
        .I1(reg0[15]),
        .I2(done_i_3_n_0),
        .I3(CSN),
        .O(done_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    done_i_2
       (.I0(wr_index[4]),
        .I1(wr_index[2]),
        .I2(wr_index[1]),
        .I3(wr_index[3]),
        .I4(wr_index[0]),
        .O(done_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    done_i_3
       (.I0(rd_index[4]),
        .I1(rd_index[2]),
        .I2(rd_index[1]),
        .I3(rd_index[3]),
        .I4(rd_index[0]),
        .O(done_i_3_n_0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    done_reg
       (.C(SCLK),
        .CE(1'b1),
        .D(done_i_1_n_0),
        .Q(done),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    \dout[0]_i_1 
       (.I0(DOUT[0]),
        .I1(ren),
        .I2(dout[1]),
        .O(\dout[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \dout[1]_i_1 
       (.I0(DOUT[1]),
        .I1(ren),
        .I2(dout[2]),
        .O(\dout[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \dout[2]_i_1 
       (.I0(DOUT[2]),
        .I1(ren),
        .I2(dout[3]),
        .O(\dout[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \dout[3]_i_1 
       (.I0(DOUT[3]),
        .I1(ren),
        .I2(dout[4]),
        .O(\dout[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \dout[4]_i_1 
       (.I0(DOUT[4]),
        .I1(ren),
        .I2(dout[5]),
        .O(\dout[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \dout[5]_i_1 
       (.I0(DOUT[5]),
        .I1(ren),
        .I2(dout[6]),
        .O(\dout[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \dout[6]_i_1 
       (.I0(DOUT[6]),
        .I1(ren),
        .I2(dout[7]),
        .O(\dout[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \dout[7]_i_1 
       (.I0(ren),
        .I1(DOUT[7]),
        .O(\dout[7]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    dout_inst
       (.I0(dout[0]),
        .O(MISO));
  (* KEEP = "yes" *) 
  (* XILINX_LEGACY_PRIM = "FDR_1" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \dout_reg[0] 
       (.C(SCLK),
        .CE(1'b1),
        .D(\dout[0]_i_1_n_0 ),
        .Q(dout[0]),
        .R(CSN));
  (* KEEP = "yes" *) 
  (* XILINX_LEGACY_PRIM = "FDR_1" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \dout_reg[1] 
       (.C(SCLK),
        .CE(1'b1),
        .D(\dout[1]_i_1_n_0 ),
        .Q(dout[1]),
        .R(CSN));
  (* KEEP = "yes" *) 
  (* XILINX_LEGACY_PRIM = "FDR_1" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \dout_reg[2] 
       (.C(SCLK),
        .CE(1'b1),
        .D(\dout[2]_i_1_n_0 ),
        .Q(dout[2]),
        .R(CSN));
  (* KEEP = "yes" *) 
  (* XILINX_LEGACY_PRIM = "FDR_1" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \dout_reg[3] 
       (.C(SCLK),
        .CE(1'b1),
        .D(\dout[3]_i_1_n_0 ),
        .Q(dout[3]),
        .R(CSN));
  (* KEEP = "yes" *) 
  (* XILINX_LEGACY_PRIM = "FDR_1" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \dout_reg[4] 
       (.C(SCLK),
        .CE(1'b1),
        .D(\dout[4]_i_1_n_0 ),
        .Q(dout[4]),
        .R(CSN));
  (* KEEP = "yes" *) 
  (* XILINX_LEGACY_PRIM = "FDR_1" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \dout_reg[5] 
       (.C(SCLK),
        .CE(1'b1),
        .D(\dout[5]_i_1_n_0 ),
        .Q(dout[5]),
        .R(CSN));
  (* KEEP = "yes" *) 
  (* XILINX_LEGACY_PRIM = "FDR_1" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \dout_reg[6] 
       (.C(SCLK),
        .CE(1'b1),
        .D(\dout[6]_i_1_n_0 ),
        .Q(dout[6]),
        .R(CSN));
  (* KEEP = "yes" *) 
  (* XILINX_LEGACY_PRIM = "FDR_1" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \dout_reg[7] 
       (.C(SCLK),
        .CE(1'b1),
        .D(\dout[7]_i_1_n_0 ),
        .Q(dout[7]),
        .R(CSN));
  LUT1 #(
    .INIT(2'h1)) 
    \rd_index[0]_i_1 
       (.I0(rd_index[0]),
        .O(rd_index_reg0[0]));
  LUT2 #(
    .INIT(4'h9)) 
    \rd_index[1]_i_1 
       (.I0(rd_index[1]),
        .I1(rd_index[0]),
        .O(rd_index_reg0[1]));
  LUT3 #(
    .INIT(8'hA9)) 
    \rd_index[2]_i_1 
       (.I0(rd_index[2]),
        .I1(rd_index[0]),
        .I2(rd_index[1]),
        .O(rd_index_reg0[2]));
  LUT4 #(
    .INIT(16'hAAA9)) 
    \rd_index[3]_i_1 
       (.I0(rd_index[3]),
        .I1(rd_index[2]),
        .I2(rd_index[1]),
        .I3(rd_index[0]),
        .O(rd_index_reg0[3]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \rd_index[4]_i_1 
       (.I0(rd_index[0]),
        .I1(rd_index[3]),
        .I2(rd_index[1]),
        .I3(rd_index[2]),
        .I4(rd_index[4]),
        .I5(done),
        .O(\rd_index[4]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rd_index[4]_i_2 
       (.I0(done),
        .O(\rd_index[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \rd_index[4]_i_3 
       (.I0(rd_index[4]),
        .I1(rd_index[3]),
        .I2(rd_index[1]),
        .I3(rd_index[2]),
        .I4(rd_index[0]),
        .O(rd_index_reg0[4]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDSE #(
    .INIT(1'b0)) 
    \rd_index_reg[0] 
       (.C(SCLK),
        .CE(\rd_index[4]_i_2_n_0 ),
        .D(rd_index_reg0[0]),
        .Q(rd_index[0]),
        .S(\rd_index[4]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rd_index_reg[1] 
       (.C(SCLK),
        .CE(\rd_index[4]_i_2_n_0 ),
        .D(rd_index_reg0[1]),
        .Q(rd_index[1]),
        .R(\rd_index[4]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rd_index_reg[2] 
       (.C(SCLK),
        .CE(\rd_index[4]_i_2_n_0 ),
        .D(rd_index_reg0[2]),
        .Q(rd_index[2]),
        .R(\rd_index[4]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b1)) 
    \rd_index_reg[3] 
       (.C(SCLK),
        .CE(\rd_index[4]_i_2_n_0 ),
        .D(rd_index_reg0[3]),
        .Q(rd_index[3]),
        .R(\rd_index[4]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDSE #(
    .INIT(1'b0)) 
    \rd_index_reg[4] 
       (.C(SCLK),
        .CE(\rd_index[4]_i_2_n_0 ),
        .D(rd_index_reg0[4]),
        .Q(rd_index[4]),
        .S(\rd_index[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAB8B8AA)) 
    \reg0[0]_i_1 
       (.I0(reg0[0]),
        .I1(\reg0[6]_i_2_n_0 ),
        .I2(MOSI),
        .I3(wr_index[0]),
        .I4(wr_index[1]),
        .I5(wr_index[2]),
        .O(\reg0[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAB8B8AAAAAA)) 
    \reg0[10]_i_1 
       (.I0(reg0[10]),
        .I1(\reg0[14]_i_2_n_0 ),
        .I2(MOSI),
        .I3(wr_index[1]),
        .I4(wr_index[0]),
        .I5(wr_index[2]),
        .O(\reg0[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAB8B8AAAAAA)) 
    \reg0[11]_i_1 
       (.I0(reg0[11]),
        .I1(\reg0[15]_i_2_n_0 ),
        .I2(MOSI),
        .I3(wr_index[1]),
        .I4(wr_index[0]),
        .I5(wr_index[2]),
        .O(\reg0[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAB8B8AAAAAAAAAA)) 
    \reg0[12]_i_1 
       (.I0(reg0[12]),
        .I1(\reg0[14]_i_2_n_0 ),
        .I2(MOSI),
        .I3(wr_index[0]),
        .I4(wr_index[1]),
        .I5(wr_index[2]),
        .O(\reg0[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAB8B8AAAAAAAAAA)) 
    \reg0[13]_i_1 
       (.I0(reg0[13]),
        .I1(\reg0[15]_i_2_n_0 ),
        .I2(MOSI),
        .I3(wr_index[0]),
        .I4(wr_index[1]),
        .I5(wr_index[2]),
        .O(\reg0[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8AAAAAAAAAAAAB8)) 
    \reg0[14]_i_1 
       (.I0(reg0[14]),
        .I1(\reg0[14]_i_2_n_0 ),
        .I2(MOSI),
        .I3(wr_index[0]),
        .I4(wr_index[1]),
        .I5(wr_index[2]),
        .O(\reg0[14]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hBF)) 
    \reg0[14]_i_2 
       (.I0(wr_index[4]),
        .I1(wr_index[3]),
        .I2(wr_index[0]),
        .O(\reg0[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8AAAAAAAAAAAAB8)) 
    \reg0[15]_i_1 
       (.I0(reg0[15]),
        .I1(\reg0[15]_i_2_n_0 ),
        .I2(MOSI),
        .I3(wr_index[0]),
        .I4(wr_index[1]),
        .I5(wr_index[2]),
        .O(\reg0[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFBBBD)) 
    \reg0[15]_i_2 
       (.I0(wr_index[4]),
        .I1(wr_index[3]),
        .I2(wr_index[2]),
        .I3(wr_index[1]),
        .I4(wr_index[0]),
        .O(\reg0[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAB8B8AA)) 
    \reg0[1]_i_1 
       (.I0(reg0[1]),
        .I1(\reg0[7]_i_2_n_0 ),
        .I2(MOSI),
        .I3(wr_index[0]),
        .I4(wr_index[1]),
        .I5(wr_index[2]),
        .O(\reg0[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAB8B8AAAAAA)) 
    \reg0[2]_i_1 
       (.I0(reg0[2]),
        .I1(\reg0[6]_i_2_n_0 ),
        .I2(MOSI),
        .I3(wr_index[1]),
        .I4(wr_index[0]),
        .I5(wr_index[2]),
        .O(\reg0[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAB8B8AAAAAA)) 
    \reg0[3]_i_1 
       (.I0(reg0[3]),
        .I1(\reg0[7]_i_2_n_0 ),
        .I2(MOSI),
        .I3(wr_index[1]),
        .I4(wr_index[0]),
        .I5(wr_index[2]),
        .O(\reg0[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAB8B8AAAAAAAAAA)) 
    \reg0[4]_i_1 
       (.I0(reg0[4]),
        .I1(\reg0[6]_i_2_n_0 ),
        .I2(MOSI),
        .I3(wr_index[0]),
        .I4(wr_index[1]),
        .I5(wr_index[2]),
        .O(\reg0[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAB8B8AAAAAAAAAA)) 
    \reg0[5]_i_1 
       (.I0(reg0[5]),
        .I1(\reg0[7]_i_2_n_0 ),
        .I2(MOSI),
        .I3(wr_index[0]),
        .I4(wr_index[1]),
        .I5(wr_index[2]),
        .O(\reg0[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8AAAAAAAAAAAAB8)) 
    \reg0[6]_i_1 
       (.I0(reg0[6]),
        .I1(\reg0[6]_i_2_n_0 ),
        .I2(MOSI),
        .I3(wr_index[0]),
        .I4(wr_index[1]),
        .I5(wr_index[2]),
        .O(\reg0[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \reg0[6]_i_2 
       (.I0(wr_index[4]),
        .I1(wr_index[3]),
        .I2(wr_index[0]),
        .O(\reg0[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8AAAAAAAAAAAAB8)) 
    \reg0[7]_i_1 
       (.I0(reg0[7]),
        .I1(\reg0[7]_i_2_n_0 ),
        .I2(MOSI),
        .I3(wr_index[0]),
        .I4(wr_index[1]),
        .I5(wr_index[2]),
        .O(\reg0[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEEEB)) 
    \reg0[7]_i_2 
       (.I0(wr_index[4]),
        .I1(wr_index[3]),
        .I2(wr_index[2]),
        .I3(wr_index[1]),
        .I4(wr_index[0]),
        .O(\reg0[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAB8B8AA)) 
    \reg0[8]_i_1 
       (.I0(reg0[8]),
        .I1(\reg0[14]_i_2_n_0 ),
        .I2(MOSI),
        .I3(wr_index[0]),
        .I4(wr_index[1]),
        .I5(wr_index[2]),
        .O(\reg0[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAB8B8AA)) 
    \reg0[9]_i_1 
       (.I0(reg0[9]),
        .I1(\reg0[15]_i_2_n_0 ),
        .I2(MOSI),
        .I3(wr_index[0]),
        .I4(wr_index[1]),
        .I5(wr_index[2]),
        .O(\reg0[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg0_reg[0] 
       (.C(SCLK),
        .CE(\rd_index[4]_i_2_n_0 ),
        .D(\reg0[0]_i_1_n_0 ),
        .Q(reg0[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg0_reg[10] 
       (.C(SCLK),
        .CE(\rd_index[4]_i_2_n_0 ),
        .D(\reg0[10]_i_1_n_0 ),
        .Q(reg0[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg0_reg[11] 
       (.C(SCLK),
        .CE(\rd_index[4]_i_2_n_0 ),
        .D(\reg0[11]_i_1_n_0 ),
        .Q(reg0[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg0_reg[12] 
       (.C(SCLK),
        .CE(\rd_index[4]_i_2_n_0 ),
        .D(\reg0[12]_i_1_n_0 ),
        .Q(reg0[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg0_reg[13] 
       (.C(SCLK),
        .CE(\rd_index[4]_i_2_n_0 ),
        .D(\reg0[13]_i_1_n_0 ),
        .Q(reg0[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg0_reg[14] 
       (.C(SCLK),
        .CE(\rd_index[4]_i_2_n_0 ),
        .D(\reg0[14]_i_1_n_0 ),
        .Q(reg0[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg0_reg[15] 
       (.C(SCLK),
        .CE(\rd_index[4]_i_2_n_0 ),
        .D(\reg0[15]_i_1_n_0 ),
        .Q(reg0[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg0_reg[1] 
       (.C(SCLK),
        .CE(\rd_index[4]_i_2_n_0 ),
        .D(\reg0[1]_i_1_n_0 ),
        .Q(reg0[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg0_reg[2] 
       (.C(SCLK),
        .CE(\rd_index[4]_i_2_n_0 ),
        .D(\reg0[2]_i_1_n_0 ),
        .Q(reg0[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg0_reg[3] 
       (.C(SCLK),
        .CE(\rd_index[4]_i_2_n_0 ),
        .D(\reg0[3]_i_1_n_0 ),
        .Q(reg0[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg0_reg[4] 
       (.C(SCLK),
        .CE(\rd_index[4]_i_2_n_0 ),
        .D(\reg0[4]_i_1_n_0 ),
        .Q(reg0[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg0_reg[5] 
       (.C(SCLK),
        .CE(\rd_index[4]_i_2_n_0 ),
        .D(\reg0[5]_i_1_n_0 ),
        .Q(reg0[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg0_reg[6] 
       (.C(SCLK),
        .CE(\rd_index[4]_i_2_n_0 ),
        .D(\reg0[6]_i_1_n_0 ),
        .Q(reg0[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg0_reg[7] 
       (.C(SCLK),
        .CE(\rd_index[4]_i_2_n_0 ),
        .D(\reg0[7]_i_1_n_0 ),
        .Q(reg0[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg0_reg[8] 
       (.C(SCLK),
        .CE(\rd_index[4]_i_2_n_0 ),
        .D(\reg0[8]_i_1_n_0 ),
        .Q(reg0[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg0_reg[9] 
       (.C(SCLK),
        .CE(\rd_index[4]_i_2_n_0 ),
        .D(\reg0[9]_i_1_n_0 ),
        .Q(reg0[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAAAAAAABBAA88A)) 
    \reg1[0]_i_1 
       (.I0(reg1[0]),
        .I1(rd_index[2]),
        .I2(rd_index[0]),
        .I3(rd_index[1]),
        .I4(MOSI),
        .I5(\reg1[6]_i_2_n_0 ),
        .O(\reg1[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAABBAA88A)) 
    \reg1[1]_i_1 
       (.I0(reg1[1]),
        .I1(rd_index[2]),
        .I2(rd_index[0]),
        .I3(rd_index[1]),
        .I4(MOSI),
        .I5(\reg1[7]_i_2_n_0 ),
        .O(\reg1[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAABAAE8AA2)) 
    \reg1[2]_i_1 
       (.I0(reg1[2]),
        .I1(rd_index[2]),
        .I2(rd_index[0]),
        .I3(rd_index[1]),
        .I4(MOSI),
        .I5(\reg1[6]_i_2_n_0 ),
        .O(\reg1[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAABAAE8AA2)) 
    \reg1[3]_i_1 
       (.I0(reg1[3]),
        .I1(rd_index[2]),
        .I2(rd_index[0]),
        .I3(rd_index[1]),
        .I4(MOSI),
        .I5(\reg1[7]_i_2_n_0 ),
        .O(\reg1[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAEEAA22A)) 
    \reg1[4]_i_1 
       (.I0(reg1[4]),
        .I1(rd_index[2]),
        .I2(rd_index[1]),
        .I3(rd_index[0]),
        .I4(MOSI),
        .I5(\reg1[6]_i_2_n_0 ),
        .O(\reg1[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAEEAA22A)) 
    \reg1[5]_i_1 
       (.I0(reg1[5]),
        .I1(rd_index[2]),
        .I2(rd_index[1]),
        .I3(rd_index[0]),
        .I4(MOSI),
        .I5(\reg1[7]_i_2_n_0 ),
        .O(\reg1[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAEAAB2AA8)) 
    \reg1[6]_i_1 
       (.I0(reg1[6]),
        .I1(rd_index[2]),
        .I2(rd_index[0]),
        .I3(rd_index[1]),
        .I4(MOSI),
        .I5(\reg1[6]_i_2_n_0 ),
        .O(\reg1[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \reg1[6]_i_2 
       (.I0(rd_index[3]),
        .I1(rd_index[4]),
        .I2(rd_index[0]),
        .O(\reg1[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAEAAB2AA8)) 
    \reg1[7]_i_1 
       (.I0(reg1[7]),
        .I1(rd_index[2]),
        .I2(rd_index[0]),
        .I3(rd_index[1]),
        .I4(MOSI),
        .I5(\reg1[7]_i_2_n_0 ),
        .O(\reg1[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFEEEEF)) 
    \reg1[7]_i_2 
       (.I0(rd_index[0]),
        .I1(rd_index[4]),
        .I2(rd_index[2]),
        .I3(rd_index[1]),
        .I4(rd_index[3]),
        .O(\reg1[7]_i_2_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg1_reg[0] 
       (.C(SCLK),
        .CE(\rd_index[4]_i_2_n_0 ),
        .D(\reg1[0]_i_1_n_0 ),
        .Q(reg1[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg1_reg[1] 
       (.C(SCLK),
        .CE(\rd_index[4]_i_2_n_0 ),
        .D(\reg1[1]_i_1_n_0 ),
        .Q(reg1[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg1_reg[2] 
       (.C(SCLK),
        .CE(\rd_index[4]_i_2_n_0 ),
        .D(\reg1[2]_i_1_n_0 ),
        .Q(reg1[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg1_reg[3] 
       (.C(SCLK),
        .CE(\rd_index[4]_i_2_n_0 ),
        .D(\reg1[3]_i_1_n_0 ),
        .Q(reg1[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg1_reg[4] 
       (.C(SCLK),
        .CE(\rd_index[4]_i_2_n_0 ),
        .D(\reg1[4]_i_1_n_0 ),
        .Q(reg1[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg1_reg[5] 
       (.C(SCLK),
        .CE(\rd_index[4]_i_2_n_0 ),
        .D(\reg1[5]_i_1_n_0 ),
        .Q(reg1[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg1_reg[6] 
       (.C(SCLK),
        .CE(\rd_index[4]_i_2_n_0 ),
        .D(\reg1[6]_i_1_n_0 ),
        .Q(reg1[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg1_reg[7] 
       (.C(SCLK),
        .CE(\rd_index[4]_i_2_n_0 ),
        .D(\reg1[7]_i_1_n_0 ),
        .Q(reg1[7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB0)) 
    ren_i_1
       (.I0(ren),
        .I1(cmd),
        .I2(done),
        .O(ren_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    ren_reg
       (.C(SCLK),
        .CE(1'b1),
        .D(ren_i_1_n_0),
        .Q(ren),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hC8)) 
    wen_i_1
       (.I0(WEN),
        .I1(done),
        .I2(cmd),
        .O(wen_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    wen_inst
       (.I0(wen),
        .O(WEN));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    wen_reg
       (.C(SCLK),
        .CE(1'b1),
        .D(wen_i_1_n_0),
        .Q(wen),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \wr_index[0]_i_1 
       (.I0(wr_index[0]),
        .O(reg0_reg1));
  LUT2 #(
    .INIT(4'h9)) 
    \wr_index[1]_i_1 
       (.I0(wr_index[1]),
        .I1(wr_index[0]),
        .O(wr_index_reg0[1]));
  LUT3 #(
    .INIT(8'hA9)) 
    \wr_index[2]_i_1 
       (.I0(wr_index[2]),
        .I1(wr_index[0]),
        .I2(wr_index[1]),
        .O(wr_index_reg0[2]));
  LUT4 #(
    .INIT(16'hAAA9)) 
    \wr_index[3]_i_1 
       (.I0(wr_index[3]),
        .I1(wr_index[2]),
        .I2(wr_index[1]),
        .I3(wr_index[0]),
        .O(wr_index_reg0[3]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \wr_index[4]_i_1 
       (.I0(wr_index[0]),
        .I1(wr_index[3]),
        .I2(wr_index[1]),
        .I3(wr_index[2]),
        .I4(wr_index[4]),
        .I5(done),
        .O(\wr_index[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \wr_index[4]_i_2 
       (.I0(wr_index[4]),
        .I1(wr_index[3]),
        .I2(wr_index[1]),
        .I3(wr_index[2]),
        .I4(wr_index[0]),
        .O(wr_index_reg0[4]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDSE #(
    .INIT(1'b0)) 
    \wr_index_reg[0] 
       (.C(SCLK),
        .CE(\rd_index[4]_i_2_n_0 ),
        .D(reg0_reg1),
        .Q(wr_index[0]),
        .S(\wr_index[4]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wr_index_reg[1] 
       (.C(SCLK),
        .CE(\rd_index[4]_i_2_n_0 ),
        .D(wr_index_reg0[1]),
        .Q(wr_index[1]),
        .R(\wr_index[4]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wr_index_reg[2] 
       (.C(SCLK),
        .CE(\rd_index[4]_i_2_n_0 ),
        .D(wr_index_reg0[2]),
        .Q(wr_index[2]),
        .R(\wr_index[4]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wr_index_reg[3] 
       (.C(SCLK),
        .CE(\rd_index[4]_i_2_n_0 ),
        .D(wr_index_reg0[3]),
        .Q(wr_index[3]),
        .R(\wr_index[4]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDSE #(
    .INIT(1'b1)) 
    \wr_index_reg[4] 
       (.C(SCLK),
        .CE(\rd_index[4]_i_2_n_0 ),
        .D(wr_index_reg0[4]),
        .Q(wr_index[4]),
        .S(\wr_index[4]_i_1_n_0 ));
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
