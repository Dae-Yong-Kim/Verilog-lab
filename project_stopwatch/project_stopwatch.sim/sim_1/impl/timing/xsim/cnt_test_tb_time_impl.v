// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Wed Feb 19 16:23:55 2025
// Host        : COMSYS01 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Verilog-lab/project_stopwatch/project_stopwatch.sim/sim_1/impl/timing/xsim/cnt_test_tb_time_impl.v
// Design      : bcd_cnt_test
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "bd1511ae" *) 
(* NotValidForBitStream *)
(* \DesignAttr:ENABLE_NOC_NETLIST_VIEW  *) 
(* \DesignAttr:ENABLE_AIE_NETLIST_VIEW  *) 
module bcd_cnt_test
   (CLK,
    PLS_100Hz,
    BCD_m,
    BCD_s,
    BCD_us);
  input CLK;
  input PLS_100Hz;
  output [6:0]BCD_m;
  output [6:0]BCD_s;
  output [7:0]BCD_us;

  wire [6:0]BCD_m;
  wire [6:0]BCD_m_OBUF;
  wire [6:0]BCD_s;
  wire [6:0]BCD_s_OBUF;
  wire [7:0]BCD_us;
  wire [7:0]BCD_us_OBUF;
  wire CLK;
  wire CLK_IBUF;
  wire CLK_IBUF_BUFG;
  wire PLS_100Hz;
  wire PLS_100Hz_IBUF;
  wire \m_cnt_H[0]_i_1_n_0 ;
  wire \m_cnt_H[1]_i_1_n_0 ;
  wire \m_cnt_H[2]_i_1_n_0 ;
  wire \m_cnt_H[2]_i_2_n_0 ;
  wire \m_cnt_H[2]_i_3_n_0 ;
  wire m_cnt_L;
  wire [3:0]p_0_in__1;
  wire [3:0]p_0_in__2;
  wire pls_100Hz_0;
  wire pls_100Hz_1;
  wire pls_100Hz_redge;
  wire pls_100Hz_redge_i_1_n_0;
  wire s_cnt_H;
  wire \s_cnt_H[0]_i_1_n_0 ;
  wire \s_cnt_H[1]_i_1_n_0 ;
  wire \s_cnt_H[2]_i_1_n_0 ;
  wire s_cnt_L;
  wire \s_cnt_L[3]_i_4_n_0 ;
  wire us_cnt_H;
  wire \us_cnt_H[0]_i_1_n_0 ;
  wire \us_cnt_H[1]_i_1_n_0 ;
  wire \us_cnt_H[2]_i_1_n_0 ;
  wire \us_cnt_H[3]_i_2_n_0 ;
  wire us_cnt_L;
  wire \us_cnt_L[0]_i_1_n_0 ;
  wire \us_cnt_L[1]_i_1_n_0 ;
  wire \us_cnt_L[2]_i_1_n_0 ;
  wire \us_cnt_L[3]_i_1_n_0 ;

initial begin
 $sdf_annotate("cnt_test_tb_time_impl.sdf",,,,"tool_control");
end
  OBUF \BCD_m_OBUF[0]_inst 
       (.I(BCD_m_OBUF[0]),
        .O(BCD_m[0]));
  OBUF \BCD_m_OBUF[1]_inst 
       (.I(BCD_m_OBUF[1]),
        .O(BCD_m[1]));
  OBUF \BCD_m_OBUF[2]_inst 
       (.I(BCD_m_OBUF[2]),
        .O(BCD_m[2]));
  OBUF \BCD_m_OBUF[3]_inst 
       (.I(BCD_m_OBUF[3]),
        .O(BCD_m[3]));
  OBUF \BCD_m_OBUF[4]_inst 
       (.I(BCD_m_OBUF[4]),
        .O(BCD_m[4]));
  OBUF \BCD_m_OBUF[5]_inst 
       (.I(BCD_m_OBUF[5]),
        .O(BCD_m[5]));
  OBUF \BCD_m_OBUF[6]_inst 
       (.I(BCD_m_OBUF[6]),
        .O(BCD_m[6]));
  OBUF \BCD_s_OBUF[0]_inst 
       (.I(BCD_s_OBUF[0]),
        .O(BCD_s[0]));
  OBUF \BCD_s_OBUF[1]_inst 
       (.I(BCD_s_OBUF[1]),
        .O(BCD_s[1]));
  OBUF \BCD_s_OBUF[2]_inst 
       (.I(BCD_s_OBUF[2]),
        .O(BCD_s[2]));
  OBUF \BCD_s_OBUF[3]_inst 
       (.I(BCD_s_OBUF[3]),
        .O(BCD_s[3]));
  OBUF \BCD_s_OBUF[4]_inst 
       (.I(BCD_s_OBUF[4]),
        .O(BCD_s[4]));
  OBUF \BCD_s_OBUF[5]_inst 
       (.I(BCD_s_OBUF[5]),
        .O(BCD_s[5]));
  OBUF \BCD_s_OBUF[6]_inst 
       (.I(BCD_s_OBUF[6]),
        .O(BCD_s[6]));
  OBUF \BCD_us_OBUF[0]_inst 
       (.I(BCD_us_OBUF[0]),
        .O(BCD_us[0]));
  OBUF \BCD_us_OBUF[1]_inst 
       (.I(BCD_us_OBUF[1]),
        .O(BCD_us[1]));
  OBUF \BCD_us_OBUF[2]_inst 
       (.I(BCD_us_OBUF[2]),
        .O(BCD_us[2]));
  OBUF \BCD_us_OBUF[3]_inst 
       (.I(BCD_us_OBUF[3]),
        .O(BCD_us[3]));
  OBUF \BCD_us_OBUF[4]_inst 
       (.I(BCD_us_OBUF[4]),
        .O(BCD_us[4]));
  OBUF \BCD_us_OBUF[5]_inst 
       (.I(BCD_us_OBUF[5]),
        .O(BCD_us[5]));
  OBUF \BCD_us_OBUF[6]_inst 
       (.I(BCD_us_OBUF[6]),
        .O(BCD_us[6]));
  OBUF \BCD_us_OBUF[7]_inst 
       (.I(BCD_us_OBUF[7]),
        .O(BCD_us[7]));
  BUFG CLK_IBUF_BUFG_inst
       (.I(CLK_IBUF),
        .O(CLK_IBUF_BUFG));
  IBUF CLK_IBUF_inst
       (.I(CLK),
        .O(CLK_IBUF));
  IBUF PLS_100Hz_IBUF_inst
       (.I(PLS_100Hz),
        .O(PLS_100Hz_IBUF));
  LUT6 #(
    .INIT(64'h77087788FF00FF00)) 
    \m_cnt_H[0]_i_1 
       (.I0(s_cnt_L),
        .I1(\m_cnt_H[2]_i_2_n_0 ),
        .I2(BCD_m_OBUF[5]),
        .I3(BCD_m_OBUF[4]),
        .I4(BCD_m_OBUF[6]),
        .I5(\m_cnt_H[2]_i_3_n_0 ),
        .O(\m_cnt_H[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h707078F0F0F0F0F0)) 
    \m_cnt_H[1]_i_1 
       (.I0(s_cnt_L),
        .I1(\m_cnt_H[2]_i_2_n_0 ),
        .I2(BCD_m_OBUF[5]),
        .I3(BCD_m_OBUF[4]),
        .I4(BCD_m_OBUF[6]),
        .I5(\m_cnt_H[2]_i_3_n_0 ),
        .O(\m_cnt_H[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h777F8000FFFF0000)) 
    \m_cnt_H[2]_i_1 
       (.I0(s_cnt_L),
        .I1(\m_cnt_H[2]_i_2_n_0 ),
        .I2(BCD_m_OBUF[5]),
        .I3(BCD_m_OBUF[4]),
        .I4(BCD_m_OBUF[6]),
        .I5(\m_cnt_H[2]_i_3_n_0 ),
        .O(\m_cnt_H[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \m_cnt_H[2]_i_2 
       (.I0(BCD_m_OBUF[0]),
        .I1(BCD_m_OBUF[2]),
        .I2(BCD_m_OBUF[1]),
        .O(\m_cnt_H[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hA800)) 
    \m_cnt_H[2]_i_3 
       (.I0(BCD_s_OBUF[6]),
        .I1(BCD_s_OBUF[4]),
        .I2(BCD_s_OBUF[5]),
        .I3(BCD_m_OBUF[3]),
        .O(\m_cnt_H[2]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_cnt_H_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\m_cnt_H[0]_i_1_n_0 ),
        .Q(BCD_m_OBUF[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_cnt_H_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\m_cnt_H[1]_i_1_n_0 ),
        .Q(BCD_m_OBUF[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_cnt_H_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\m_cnt_H[2]_i_1_n_0 ),
        .Q(BCD_m_OBUF[6]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \m_cnt_L[0]_i_1 
       (.I0(BCD_m_OBUF[0]),
        .O(p_0_in__2[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \m_cnt_L[1]_i_1 
       (.I0(BCD_m_OBUF[0]),
        .I1(BCD_m_OBUF[1]),
        .O(p_0_in__2[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \m_cnt_L[2]_i_1 
       (.I0(BCD_m_OBUF[0]),
        .I1(BCD_m_OBUF[1]),
        .I2(BCD_m_OBUF[2]),
        .O(p_0_in__2[2]));
  LUT5 #(
    .INIT(32'hFE000000)) 
    \m_cnt_L[3]_i_1 
       (.I0(BCD_m_OBUF[0]),
        .I1(BCD_m_OBUF[2]),
        .I2(BCD_m_OBUF[1]),
        .I3(\m_cnt_H[2]_i_3_n_0 ),
        .I4(s_cnt_L),
        .O(m_cnt_L));
  LUT4 #(
    .INIT(16'h8880)) 
    \m_cnt_L[3]_i_2 
       (.I0(s_cnt_L),
        .I1(BCD_s_OBUF[6]),
        .I2(BCD_s_OBUF[4]),
        .I3(BCD_s_OBUF[5]),
        .O(s_cnt_H));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \m_cnt_L[3]_i_3 
       (.I0(BCD_m_OBUF[2]),
        .I1(BCD_m_OBUF[1]),
        .I2(BCD_m_OBUF[0]),
        .I3(BCD_m_OBUF[3]),
        .O(p_0_in__2[3]));
  FDRE #(
    .INIT(1'b0)) 
    \m_cnt_L_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(s_cnt_H),
        .D(p_0_in__2[0]),
        .Q(BCD_m_OBUF[0]),
        .R(m_cnt_L));
  FDRE #(
    .INIT(1'b0)) 
    \m_cnt_L_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(s_cnt_H),
        .D(p_0_in__2[1]),
        .Q(BCD_m_OBUF[1]),
        .R(m_cnt_L));
  FDRE #(
    .INIT(1'b0)) 
    \m_cnt_L_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(s_cnt_H),
        .D(p_0_in__2[2]),
        .Q(BCD_m_OBUF[2]),
        .R(m_cnt_L));
  FDRE #(
    .INIT(1'b0)) 
    \m_cnt_L_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(s_cnt_H),
        .D(p_0_in__2[3]),
        .Q(BCD_m_OBUF[3]),
        .R(m_cnt_L));
  FDRE #(
    .INIT(1'b0)) 
    pls_100Hz_0_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(PLS_100Hz_IBUF),
        .Q(pls_100Hz_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    pls_100Hz_1_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(pls_100Hz_0),
        .Q(pls_100Hz_1),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    pls_100Hz_redge_i_1
       (.I0(pls_100Hz_0),
        .I1(pls_100Hz_1),
        .O(pls_100Hz_redge_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    pls_100Hz_redge_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(pls_100Hz_redge_i_1_n_0),
        .Q(pls_100Hz_redge),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h13CC)) 
    \s_cnt_H[0]_i_1 
       (.I0(BCD_s_OBUF[5]),
        .I1(BCD_s_OBUF[4]),
        .I2(BCD_s_OBUF[6]),
        .I3(s_cnt_L),
        .O(\s_cnt_H[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h06AA)) 
    \s_cnt_H[1]_i_1 
       (.I0(BCD_s_OBUF[5]),
        .I1(BCD_s_OBUF[4]),
        .I2(BCD_s_OBUF[6]),
        .I3(s_cnt_L),
        .O(\s_cnt_H[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h18F0)) 
    \s_cnt_H[2]_i_1 
       (.I0(BCD_s_OBUF[5]),
        .I1(BCD_s_OBUF[4]),
        .I2(BCD_s_OBUF[6]),
        .I3(s_cnt_L),
        .O(\s_cnt_H[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_cnt_H_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\s_cnt_H[0]_i_1_n_0 ),
        .Q(BCD_s_OBUF[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_cnt_H_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\s_cnt_H[1]_i_1_n_0 ),
        .Q(BCD_s_OBUF[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_cnt_H_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\s_cnt_H[2]_i_1_n_0 ),
        .Q(BCD_s_OBUF[6]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \s_cnt_L[0]_i_1 
       (.I0(BCD_s_OBUF[0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \s_cnt_L[1]_i_1 
       (.I0(BCD_s_OBUF[0]),
        .I1(BCD_s_OBUF[1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \s_cnt_L[2]_i_1 
       (.I0(BCD_s_OBUF[0]),
        .I1(BCD_s_OBUF[1]),
        .I2(BCD_s_OBUF[2]),
        .O(p_0_in__1[2]));
  LUT6 #(
    .INIT(64'hAAA8000000000000)) 
    \s_cnt_L[3]_i_1 
       (.I0(BCD_s_OBUF[3]),
        .I1(BCD_s_OBUF[0]),
        .I2(BCD_s_OBUF[2]),
        .I3(BCD_s_OBUF[1]),
        .I4(us_cnt_L),
        .I5(\s_cnt_L[3]_i_4_n_0 ),
        .O(s_cnt_L));
  LUT5 #(
    .INIT(32'hAAA80000)) 
    \s_cnt_L[3]_i_2 
       (.I0(BCD_us_OBUF[7]),
        .I1(BCD_us_OBUF[4]),
        .I2(BCD_us_OBUF[6]),
        .I3(BCD_us_OBUF[5]),
        .I4(us_cnt_L),
        .O(us_cnt_H));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \s_cnt_L[3]_i_3 
       (.I0(BCD_s_OBUF[2]),
        .I1(BCD_s_OBUF[1]),
        .I2(BCD_s_OBUF[0]),
        .I3(BCD_s_OBUF[3]),
        .O(p_0_in__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \s_cnt_L[3]_i_4 
       (.I0(BCD_us_OBUF[5]),
        .I1(BCD_us_OBUF[6]),
        .I2(BCD_us_OBUF[4]),
        .I3(BCD_us_OBUF[7]),
        .O(\s_cnt_L[3]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_cnt_L_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(us_cnt_H),
        .D(p_0_in__1[0]),
        .Q(BCD_s_OBUF[0]),
        .R(s_cnt_L));
  FDRE #(
    .INIT(1'b0)) 
    \s_cnt_L_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(us_cnt_H),
        .D(p_0_in__1[1]),
        .Q(BCD_s_OBUF[1]),
        .R(s_cnt_L));
  FDRE #(
    .INIT(1'b0)) 
    \s_cnt_L_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(us_cnt_H),
        .D(p_0_in__1[2]),
        .Q(BCD_s_OBUF[2]),
        .R(s_cnt_L));
  FDRE #(
    .INIT(1'b0)) 
    \s_cnt_L_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(us_cnt_H),
        .D(p_0_in__1[3]),
        .Q(BCD_s_OBUF[3]),
        .R(s_cnt_L));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h1113)) 
    \us_cnt_H[0]_i_1 
       (.I0(BCD_us_OBUF[7]),
        .I1(BCD_us_OBUF[4]),
        .I2(BCD_us_OBUF[6]),
        .I3(BCD_us_OBUF[5]),
        .O(\us_cnt_H[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h14)) 
    \us_cnt_H[1]_i_1 
       (.I0(BCD_us_OBUF[7]),
        .I1(BCD_us_OBUF[4]),
        .I2(BCD_us_OBUF[5]),
        .O(\us_cnt_H[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h1450)) 
    \us_cnt_H[2]_i_1 
       (.I0(BCD_us_OBUF[7]),
        .I1(BCD_us_OBUF[4]),
        .I2(BCD_us_OBUF[6]),
        .I3(BCD_us_OBUF[5]),
        .O(\us_cnt_H[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFE000000)) 
    \us_cnt_H[3]_i_1 
       (.I0(BCD_us_OBUF[0]),
        .I1(BCD_us_OBUF[2]),
        .I2(BCD_us_OBUF[1]),
        .I3(pls_100Hz_redge),
        .I4(BCD_us_OBUF[3]),
        .O(us_cnt_L));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h4002)) 
    \us_cnt_H[3]_i_2 
       (.I0(BCD_us_OBUF[7]),
        .I1(BCD_us_OBUF[4]),
        .I2(BCD_us_OBUF[6]),
        .I3(BCD_us_OBUF[5]),
        .O(\us_cnt_H[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \us_cnt_H_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(us_cnt_L),
        .D(\us_cnt_H[0]_i_1_n_0 ),
        .Q(BCD_us_OBUF[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \us_cnt_H_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(us_cnt_L),
        .D(\us_cnt_H[1]_i_1_n_0 ),
        .Q(BCD_us_OBUF[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \us_cnt_H_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(us_cnt_L),
        .D(\us_cnt_H[2]_i_1_n_0 ),
        .Q(BCD_us_OBUF[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \us_cnt_H_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(us_cnt_L),
        .D(\us_cnt_H[3]_i_2_n_0 ),
        .Q(BCD_us_OBUF[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0155)) 
    \us_cnt_L[0]_i_1 
       (.I0(BCD_us_OBUF[0]),
        .I1(BCD_us_OBUF[2]),
        .I2(BCD_us_OBUF[1]),
        .I3(BCD_us_OBUF[3]),
        .O(\us_cnt_L[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \us_cnt_L[1]_i_1 
       (.I0(BCD_us_OBUF[0]),
        .I1(BCD_us_OBUF[1]),
        .I2(BCD_us_OBUF[3]),
        .O(\us_cnt_L[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h006C)) 
    \us_cnt_L[2]_i_1 
       (.I0(BCD_us_OBUF[0]),
        .I1(BCD_us_OBUF[2]),
        .I2(BCD_us_OBUF[1]),
        .I3(BCD_us_OBUF[3]),
        .O(\us_cnt_L[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0180)) 
    \us_cnt_L[3]_i_1 
       (.I0(BCD_us_OBUF[0]),
        .I1(BCD_us_OBUF[2]),
        .I2(BCD_us_OBUF[1]),
        .I3(BCD_us_OBUF[3]),
        .O(\us_cnt_L[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \us_cnt_L_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(pls_100Hz_redge),
        .D(\us_cnt_L[0]_i_1_n_0 ),
        .Q(BCD_us_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \us_cnt_L_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(pls_100Hz_redge),
        .D(\us_cnt_L[1]_i_1_n_0 ),
        .Q(BCD_us_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \us_cnt_L_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(pls_100Hz_redge),
        .D(\us_cnt_L[2]_i_1_n_0 ),
        .Q(BCD_us_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \us_cnt_L_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(pls_100Hz_redge),
        .D(\us_cnt_L[3]_i_1_n_0 ),
        .Q(BCD_us_OBUF[3]),
        .R(1'b0));
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
