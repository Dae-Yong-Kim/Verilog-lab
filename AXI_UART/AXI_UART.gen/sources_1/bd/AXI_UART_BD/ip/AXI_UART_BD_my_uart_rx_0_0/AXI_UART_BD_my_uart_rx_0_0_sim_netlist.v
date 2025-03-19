// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Thu Jan  9 09:41:34 2025
// Host        : COMSYS01 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Verilog-lab/AXI_UART/AXI_UART.gen/sources_1/bd/AXI_UART_BD/ip/AXI_UART_BD_my_uart_rx_0_0/AXI_UART_BD_my_uart_rx_0_0_sim_netlist.v
// Design      : AXI_UART_BD_my_uart_rx_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "AXI_UART_BD_my_uart_rx_0_0,my_uart_rx,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "my_uart_rx,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module AXI_UART_BD_my_uart_rx_0_0
   (CLK,
    RST,
    RXD,
    RX_READY,
    RX_DATA);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK, ASSOCIATED_RESET RST, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN AXI_UART_BD_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0" *) input CLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input RST;
  input RXD;
  output RX_READY;
  output [7:0]RX_DATA;

  wire CLK;
  wire RST;
  wire RXD;
  wire [7:0]RX_DATA;
  wire RX_READY;

  AXI_UART_BD_my_uart_rx_0_0_my_uart_rx inst
       (.CLK(CLK),
        .RST(RST),
        .RXD(RXD),
        .RX_DATA(RX_DATA),
        .RX_READY(RX_READY));
endmodule

(* ORIG_REF_NAME = "my_uart_rx" *) 
module AXI_UART_BD_my_uart_rx_0_0_my_uart_rx
   (RX_DATA,
    RX_READY,
    CLK,
    RST,
    RXD);
  output [7:0]RX_DATA;
  output RX_READY;
  input CLK;
  input RST;
  input RXD;

  wire CLK;
  wire RST;
  wire RXD;
  wire [7:0]RX_DATA;
  wire RX_READY;
  wire c_state;
  wire tick_baud;

  AXI_UART_BD_my_uart_rx_0_0_my_uart_rx_FSM my_FSM_uut
       (.CLK(CLK),
        .E(tick_baud),
        .RST(RST),
        .RXD(RXD),
        .c_state(c_state));
  (* KEEP_HIERARCHY = "soft" *) 
  AXI_UART_BD_my_uart_rx_0_0_my_uart_rx_S2P my_S2P_uut
       (.CLK(CLK),
        .C_STATE(c_state),
        .P_DATA(RX_DATA),
        .READY(RX_READY),
        .RST(RST),
        .S_DATA(RXD),
        .TICK(tick_baud));
  AXI_UART_BD_my_uart_rx_0_0_my_uart_rx_gen_tick my_tick_uut
       (.CLK(CLK),
        .E(tick_baud),
        .RST(RST),
        .RXD(RXD));
endmodule

(* ORIG_REF_NAME = "my_uart_rx_FSM" *) 
module AXI_UART_BD_my_uart_rx_0_0_my_uart_rx_FSM
   (c_state,
    CLK,
    E,
    RXD,
    RST);
  output c_state;
  input CLK;
  input [0:0]E;
  input RXD;
  input RST;

  wire CLK;
  wire [0:0]E;
  wire RST;
  wire RXD;
  wire c_state;
  wire current_state_i_1_n_0;
  wire [3:0]tick_cnt;
  wire \tick_cnt[0]_i_1_n_0 ;
  wire \tick_cnt[1]_i_1_n_0 ;
  wire \tick_cnt[2]_i_1__0_n_0 ;
  wire \tick_cnt[3]_i_1_n_0 ;
  wire \tick_cnt[3]_i_2_n_0 ;
  wire tick_done_i_1_n_0;
  wire tick_done_reg_n_0;

  LUT4 #(
    .INIT(16'h005D)) 
    current_state_i_1
       (.I0(RXD),
        .I1(c_state),
        .I2(tick_done_reg_n_0),
        .I3(RST),
        .O(current_state_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    current_state_reg
       (.C(CLK),
        .CE(1'b1),
        .D(current_state_i_1_n_0),
        .Q(c_state),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00DFDF00)) 
    \tick_cnt[0]_i_1 
       (.I0(tick_cnt[1]),
        .I1(tick_cnt[2]),
        .I2(tick_cnt[3]),
        .I3(E),
        .I4(tick_cnt[0]),
        .O(\tick_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h0FB0B0F0)) 
    \tick_cnt[1]_i_1 
       (.I0(tick_cnt[2]),
        .I1(tick_cnt[3]),
        .I2(tick_cnt[1]),
        .I3(tick_cnt[0]),
        .I4(E),
        .O(\tick_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \tick_cnt[2]_i_1__0 
       (.I0(tick_cnt[1]),
        .I1(tick_cnt[0]),
        .I2(E),
        .I3(tick_cnt[2]),
        .O(\tick_cnt[2]_i_1__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \tick_cnt[3]_i_1 
       (.I0(c_state),
        .O(\tick_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h79FF8000)) 
    \tick_cnt[3]_i_2 
       (.I0(E),
        .I1(tick_cnt[0]),
        .I2(tick_cnt[2]),
        .I3(tick_cnt[1]),
        .I4(tick_cnt[3]),
        .O(\tick_cnt[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tick_cnt_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\tick_cnt[0]_i_1_n_0 ),
        .Q(tick_cnt[0]),
        .R(\tick_cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tick_cnt_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\tick_cnt[1]_i_1_n_0 ),
        .Q(tick_cnt[1]),
        .R(\tick_cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tick_cnt_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\tick_cnt[2]_i_1__0_n_0 ),
        .Q(tick_cnt[2]),
        .R(\tick_cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tick_cnt_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\tick_cnt[3]_i_2_n_0 ),
        .Q(tick_cnt[3]),
        .R(\tick_cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000280000000000)) 
    tick_done_i_1
       (.I0(c_state),
        .I1(tick_cnt[0]),
        .I2(E),
        .I3(tick_cnt[1]),
        .I4(tick_cnt[2]),
        .I5(tick_cnt[3]),
        .O(tick_done_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tick_done_reg
       (.C(CLK),
        .CE(1'b1),
        .D(tick_done_i_1_n_0),
        .Q(tick_done_reg_n_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "my_uart_rx_S2P" *) (* keep_hierarchy = "soft" *) 
module AXI_UART_BD_my_uart_rx_0_0_my_uart_rx_S2P
   (CLK,
    RST,
    TICK,
    C_STATE,
    S_DATA,
    P_DATA,
    READY);
  input CLK;
  input RST;
  input TICK;
  input C_STATE;
  input S_DATA;
  (* mark_debug = "true" *) output [7:0]P_DATA;
  (* mark_debug = "true" *) output READY;

  wire CLK;
  wire C_STATE;
  (* MARK_DEBUG *) wire [7:0]P_DATA;
  wire \P_DATA[7]_i_1_n_0 ;
  (* MARK_DEBUG *) wire READY;
  wire READY_i_1_n_0;
  wire RST;
  wire S_DATA;
  wire TICK;
  wire cnt0;
  wire \cnt[8]_i_3_n_0 ;
  wire \cnt[8]_i_4_n_0 ;
  wire [8:0]cnt_reg;
  wire enable_i_1_n_0;
  wire enable_i_2_n_0;
  wire enable_i_3_n_0;
  wire enable_i_4_n_0;
  wire enable_reg_n_0;
  (* MARK_DEBUG *) wire [3:0]index;
  wire \index[0]_i_1_n_0 ;
  wire \index[1]_i_1_n_0 ;
  wire \index[2]_i_1_n_0 ;
  wire \index[3]_i_1_n_0 ;
  wire \index[3]_i_2_n_0 ;
  wire [10:0]p_0_in__0;
  wire [8:0]p_0_in__1;
  wire p_1D;
  wire p_2D;
  (* MARK_DEBUG *) wire [10:0]p_data;
  wire \p_data[10]_i_2_n_0 ;
  wire \p_data[2]_i_2_n_0 ;
  wire \p_data[8]_i_2_n_0 ;
  wire \p_data[9]_i_2_n_0 ;
  wire p_enable;
  wire p_enable0;

  LUT2 #(
    .INIT(4'h2)) 
    \P_DATA[7]_i_1 
       (.I0(p_enable),
        .I1(C_STATE),
        .O(\P_DATA[7]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \P_DATA_reg[0] 
       (.C(CLK),
        .CE(\P_DATA[7]_i_1_n_0 ),
        .D(p_data[1]),
        .Q(P_DATA[0]),
        .R(RST));
  (* KEEP = "yes" *) 
  FDRE \P_DATA_reg[1] 
       (.C(CLK),
        .CE(\P_DATA[7]_i_1_n_0 ),
        .D(p_data[2]),
        .Q(P_DATA[1]),
        .R(RST));
  (* KEEP = "yes" *) 
  FDRE \P_DATA_reg[2] 
       (.C(CLK),
        .CE(\P_DATA[7]_i_1_n_0 ),
        .D(p_data[3]),
        .Q(P_DATA[2]),
        .R(RST));
  (* KEEP = "yes" *) 
  FDRE \P_DATA_reg[3] 
       (.C(CLK),
        .CE(\P_DATA[7]_i_1_n_0 ),
        .D(p_data[4]),
        .Q(P_DATA[3]),
        .R(RST));
  (* KEEP = "yes" *) 
  FDRE \P_DATA_reg[4] 
       (.C(CLK),
        .CE(\P_DATA[7]_i_1_n_0 ),
        .D(p_data[5]),
        .Q(P_DATA[4]),
        .R(RST));
  (* KEEP = "yes" *) 
  FDRE \P_DATA_reg[5] 
       (.C(CLK),
        .CE(\P_DATA[7]_i_1_n_0 ),
        .D(p_data[6]),
        .Q(P_DATA[5]),
        .R(RST));
  (* KEEP = "yes" *) 
  FDRE \P_DATA_reg[6] 
       (.C(CLK),
        .CE(\P_DATA[7]_i_1_n_0 ),
        .D(p_data[7]),
        .Q(P_DATA[6]),
        .R(RST));
  (* KEEP = "yes" *) 
  FDRE \P_DATA_reg[7] 
       (.C(CLK),
        .CE(\P_DATA[7]_i_1_n_0 ),
        .D(p_data[8]),
        .Q(P_DATA[7]),
        .R(RST));
  LUT4 #(
    .INIT(16'h88B8)) 
    READY_i_1
       (.I0(READY),
        .I1(RST),
        .I2(p_enable),
        .I3(C_STATE),
        .O(READY_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE READY_reg
       (.C(CLK),
        .CE(1'b1),
        .D(READY_i_1_n_0),
        .Q(READY),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1 
       (.I0(cnt_reg[0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt[1]_i_1 
       (.I0(cnt_reg[0]),
        .I1(cnt_reg[1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cnt[2]_i_1 
       (.I0(cnt_reg[1]),
        .I1(cnt_reg[0]),
        .I2(cnt_reg[2]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \cnt[3]_i_1 
       (.I0(cnt_reg[2]),
        .I1(cnt_reg[0]),
        .I2(cnt_reg[1]),
        .I3(cnt_reg[3]),
        .O(p_0_in__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \cnt[4]_i_1 
       (.I0(cnt_reg[3]),
        .I1(cnt_reg[1]),
        .I2(cnt_reg[0]),
        .I3(cnt_reg[2]),
        .I4(cnt_reg[4]),
        .O(p_0_in__1[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \cnt[5]_i_1 
       (.I0(cnt_reg[4]),
        .I1(cnt_reg[2]),
        .I2(cnt_reg[0]),
        .I3(cnt_reg[1]),
        .I4(cnt_reg[3]),
        .I5(cnt_reg[5]),
        .O(p_0_in__1[5]));
  LUT2 #(
    .INIT(4'h9)) 
    \cnt[6]_i_1 
       (.I0(\cnt[8]_i_4_n_0 ),
        .I1(cnt_reg[6]),
        .O(p_0_in__1[6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \cnt[7]_i_1 
       (.I0(cnt_reg[6]),
        .I1(\cnt[8]_i_4_n_0 ),
        .I2(cnt_reg[7]),
        .O(p_0_in__1[7]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \cnt[8]_i_1 
       (.I0(\cnt[8]_i_3_n_0 ),
        .I1(cnt_reg[3]),
        .I2(cnt_reg[4]),
        .I3(cnt_reg[1]),
        .I4(cnt_reg[2]),
        .O(cnt0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \cnt[8]_i_2 
       (.I0(cnt_reg[7]),
        .I1(\cnt[8]_i_4_n_0 ),
        .I2(cnt_reg[6]),
        .I3(cnt_reg[8]),
        .O(p_0_in__1[8]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \cnt[8]_i_3 
       (.I0(cnt_reg[7]),
        .I1(cnt_reg[8]),
        .I2(cnt_reg[5]),
        .I3(cnt_reg[6]),
        .I4(cnt_reg[0]),
        .I5(TICK),
        .O(\cnt[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \cnt[8]_i_4 
       (.I0(cnt_reg[4]),
        .I1(cnt_reg[2]),
        .I2(cnt_reg[0]),
        .I3(cnt_reg[1]),
        .I4(cnt_reg[3]),
        .I5(cnt_reg[5]),
        .O(\cnt[8]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(CLK),
        .CE(cnt0),
        .D(p_0_in__1[0]),
        .Q(cnt_reg[0]),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(CLK),
        .CE(cnt0),
        .D(p_0_in__1[1]),
        .Q(cnt_reg[1]),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(CLK),
        .CE(cnt0),
        .D(p_0_in__1[2]),
        .Q(cnt_reg[2]),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(CLK),
        .CE(cnt0),
        .D(p_0_in__1[3]),
        .Q(cnt_reg[3]),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(CLK),
        .CE(cnt0),
        .D(p_0_in__1[4]),
        .Q(cnt_reg[4]),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(CLK),
        .CE(cnt0),
        .D(p_0_in__1[5]),
        .Q(cnt_reg[5]),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[6] 
       (.C(CLK),
        .CE(cnt0),
        .D(p_0_in__1[6]),
        .Q(cnt_reg[6]),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[7] 
       (.C(CLK),
        .CE(cnt0),
        .D(p_0_in__1[7]),
        .Q(cnt_reg[7]),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[8] 
       (.C(CLK),
        .CE(cnt0),
        .D(p_0_in__1[8]),
        .Q(cnt_reg[8]),
        .R(RST));
  LUT6 #(
    .INIT(64'hFFFF888F88888888)) 
    enable_i_1
       (.I0(enable_i_2_n_0),
        .I1(enable_i_3_n_0),
        .I2(enable_i_4_n_0),
        .I3(\cnt[8]_i_3_n_0 ),
        .I4(RST),
        .I5(enable_reg_n_0),
        .O(enable_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    enable_i_2
       (.I0(cnt_reg[6]),
        .I1(cnt_reg[7]),
        .I2(cnt_reg[4]),
        .I3(cnt_reg[5]),
        .I4(RST),
        .I5(cnt_reg[8]),
        .O(enable_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    enable_i_3
       (.I0(cnt_reg[0]),
        .I1(cnt_reg[1]),
        .I2(cnt_reg[3]),
        .I3(cnt_reg[2]),
        .O(enable_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    enable_i_4
       (.I0(cnt_reg[2]),
        .I1(cnt_reg[1]),
        .I2(cnt_reg[4]),
        .I3(cnt_reg[3]),
        .O(enable_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    enable_reg
       (.C(CLK),
        .CE(1'b1),
        .D(enable_i_1_n_0),
        .Q(enable_reg_n_0),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h98C8)) 
    \index[0]_i_1 
       (.I0(RST),
        .I1(index[0]),
        .I2(C_STATE),
        .I3(enable_reg_n_0),
        .O(\index[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBF40AA00)) 
    \index[1]_i_1 
       (.I0(RST),
        .I1(enable_reg_n_0),
        .I2(index[0]),
        .I3(index[1]),
        .I4(C_STATE),
        .O(\index[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF7FFF0000800000)) 
    \index[2]_i_1 
       (.I0(index[0]),
        .I1(enable_reg_n_0),
        .I2(index[1]),
        .I3(RST),
        .I4(C_STATE),
        .I5(index[2]),
        .O(\index[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCCCCC060)) 
    \index[3]_i_1 
       (.I0(index[2]),
        .I1(index[3]),
        .I2(C_STATE),
        .I3(\index[3]_i_2_n_0 ),
        .I4(RST),
        .O(\index[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \index[3]_i_2 
       (.I0(index[0]),
        .I1(enable_reg_n_0),
        .I2(index[1]),
        .O(\index[3]_i_2_n_0 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\index[0]_i_1_n_0 ),
        .Q(index[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\index[1]_i_1_n_0 ),
        .Q(index[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\index[2]_i_1_n_0 ),
        .Q(index[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\index[3]_i_1_n_0 ),
        .Q(index[3]),
        .R(1'b0));
  FDRE p_1D_reg
       (.C(CLK),
        .CE(1'b1),
        .D(enable_reg_n_0),
        .Q(p_1D),
        .R(1'b0));
  FDRE p_2D_reg
       (.C(CLK),
        .CE(1'b1),
        .D(p_1D),
        .Q(p_2D),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF0F0F0F0F0F0E4F0)) 
    \p_data[0]_i_1 
       (.I0(\p_data[2]_i_2_n_0 ),
        .I1(S_DATA),
        .I2(p_data[0]),
        .I3(enable_reg_n_0),
        .I4(index[0]),
        .I5(index[1]),
        .O(p_0_in__0[0]));
  LUT5 #(
    .INIT(32'hAABAAA8A)) 
    \p_data[10]_i_1 
       (.I0(p_data[10]),
        .I1(\p_data[10]_i_2_n_0 ),
        .I2(index[3]),
        .I3(index[2]),
        .I4(S_DATA),
        .O(p_0_in__0[10]));
  LUT3 #(
    .INIT(8'hDF)) 
    \p_data[10]_i_2 
       (.I0(enable_reg_n_0),
        .I1(index[0]),
        .I2(index[1]),
        .O(\p_data[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF00FE10)) 
    \p_data[1]_i_1 
       (.I0(index[2]),
        .I1(index[3]),
        .I2(S_DATA),
        .I3(p_data[1]),
        .I4(\p_data[9]_i_2_n_0 ),
        .O(p_0_in__0[1]));
  LUT6 #(
    .INIT(64'hF0F0E4F0F0F0F0F0)) 
    \p_data[2]_i_1 
       (.I0(\p_data[2]_i_2_n_0 ),
        .I1(S_DATA),
        .I2(p_data[2]),
        .I3(enable_reg_n_0),
        .I4(index[0]),
        .I5(index[1]),
        .O(p_0_in__0[2]));
  LUT2 #(
    .INIT(4'hE)) 
    \p_data[2]_i_2 
       (.I0(index[2]),
        .I1(index[3]),
        .O(\p_data[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF00FE10)) 
    \p_data[3]_i_1 
       (.I0(index[2]),
        .I1(index[3]),
        .I2(S_DATA),
        .I3(p_data[3]),
        .I4(\index[3]_i_2_n_0 ),
        .O(p_0_in__0[3]));
  LUT5 #(
    .INIT(32'hAABAAA8A)) 
    \p_data[4]_i_1 
       (.I0(p_data[4]),
        .I1(\p_data[8]_i_2_n_0 ),
        .I2(index[2]),
        .I3(index[3]),
        .I4(S_DATA),
        .O(p_0_in__0[4]));
  LUT5 #(
    .INIT(32'hAABAAA8A)) 
    \p_data[5]_i_1 
       (.I0(p_data[5]),
        .I1(\p_data[9]_i_2_n_0 ),
        .I2(index[2]),
        .I3(index[3]),
        .I4(S_DATA),
        .O(p_0_in__0[5]));
  LUT5 #(
    .INIT(32'hAABAAA8A)) 
    \p_data[6]_i_1 
       (.I0(p_data[6]),
        .I1(\p_data[10]_i_2_n_0 ),
        .I2(index[2]),
        .I3(index[3]),
        .I4(S_DATA),
        .O(p_0_in__0[6]));
  LUT5 #(
    .INIT(32'hAAAEAAA2)) 
    \p_data[7]_i_1 
       (.I0(p_data[7]),
        .I1(index[2]),
        .I2(index[3]),
        .I3(\index[3]_i_2_n_0 ),
        .I4(S_DATA),
        .O(p_0_in__0[7]));
  LUT5 #(
    .INIT(32'hAABAAA8A)) 
    \p_data[8]_i_1 
       (.I0(p_data[8]),
        .I1(\p_data[8]_i_2_n_0 ),
        .I2(index[3]),
        .I3(index[2]),
        .I4(S_DATA),
        .O(p_0_in__0[8]));
  LUT3 #(
    .INIT(8'hFD)) 
    \p_data[8]_i_2 
       (.I0(enable_reg_n_0),
        .I1(index[0]),
        .I2(index[1]),
        .O(\p_data[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAABAAA8A)) 
    \p_data[9]_i_1 
       (.I0(p_data[9]),
        .I1(\p_data[9]_i_2_n_0 ),
        .I2(index[3]),
        .I3(index[2]),
        .I4(S_DATA),
        .O(p_0_in__0[9]));
  LUT3 #(
    .INIT(8'hF7)) 
    \p_data[9]_i_2 
       (.I0(index[0]),
        .I1(enable_reg_n_0),
        .I2(index[1]),
        .O(\p_data[9]_i_2_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \p_data_reg[0] 
       (.C(CLK),
        .CE(C_STATE),
        .D(p_0_in__0[0]),
        .Q(p_data[0]),
        .R(RST));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \p_data_reg[10] 
       (.C(CLK),
        .CE(C_STATE),
        .D(p_0_in__0[10]),
        .Q(p_data[10]),
        .R(RST));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \p_data_reg[1] 
       (.C(CLK),
        .CE(C_STATE),
        .D(p_0_in__0[1]),
        .Q(p_data[1]),
        .R(RST));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \p_data_reg[2] 
       (.C(CLK),
        .CE(C_STATE),
        .D(p_0_in__0[2]),
        .Q(p_data[2]),
        .R(RST));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \p_data_reg[3] 
       (.C(CLK),
        .CE(C_STATE),
        .D(p_0_in__0[3]),
        .Q(p_data[3]),
        .R(RST));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \p_data_reg[4] 
       (.C(CLK),
        .CE(C_STATE),
        .D(p_0_in__0[4]),
        .Q(p_data[4]),
        .R(RST));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \p_data_reg[5] 
       (.C(CLK),
        .CE(C_STATE),
        .D(p_0_in__0[5]),
        .Q(p_data[5]),
        .R(RST));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \p_data_reg[6] 
       (.C(CLK),
        .CE(C_STATE),
        .D(p_0_in__0[6]),
        .Q(p_data[6]),
        .R(RST));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \p_data_reg[7] 
       (.C(CLK),
        .CE(C_STATE),
        .D(p_0_in__0[7]),
        .Q(p_data[7]),
        .R(RST));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \p_data_reg[8] 
       (.C(CLK),
        .CE(C_STATE),
        .D(p_0_in__0[8]),
        .Q(p_data[8]),
        .R(RST));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \p_data_reg[9] 
       (.C(CLK),
        .CE(C_STATE),
        .D(p_0_in__0[9]),
        .Q(p_data[9]),
        .R(RST));
  LUT2 #(
    .INIT(4'h2)) 
    p_enable_i_1
       (.I0(p_1D),
        .I1(p_2D),
        .O(p_enable0));
  FDRE p_enable_reg
       (.C(CLK),
        .CE(1'b1),
        .D(p_enable0),
        .Q(p_enable),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "my_uart_rx_gen_tick" *) 
module AXI_UART_BD_my_uart_rx_0_0_my_uart_rx_gen_tick
   (E,
    CLK,
    RST,
    RXD);
  output [0:0]E;
  input CLK;
  input RST;
  input RXD;

  wire CLK;
  wire [0:0]E;
  wire RST;
  wire RXD;
  wire TICK_i_1_n_0;
  wire TICK_i_2_n_0;
  wire TICK_i_3_n_0;
  wire TICK_i_4_n_0;
  wire [13:0]cnt;
  wire cnt0_carry__0_n_0;
  wire cnt0_carry__0_n_1;
  wire cnt0_carry__0_n_2;
  wire cnt0_carry__0_n_3;
  wire cnt0_carry__1_n_0;
  wire cnt0_carry__1_n_1;
  wire cnt0_carry__1_n_2;
  wire cnt0_carry__1_n_3;
  wire cnt0_carry_n_0;
  wire cnt0_carry_n_1;
  wire cnt0_carry_n_2;
  wire cnt0_carry_n_3;
  wire \cnt[13]_i_1_n_0 ;
  wire \cnt[13]_i_3_n_0 ;
  wire \cnt[13]_i_4_n_0 ;
  wire \cnt[13]_i_5_n_0 ;
  wire \cnt[13]_i_6_n_0 ;
  wire [13:1]data0;
  wire [3:0]p_0_in;
  wire [13:0]p_1_in;
  wire [3:0]tick_cnt_reg;
  wire [3:0]NLW_cnt0_carry__2_CO_UNCONNECTED;
  wire [3:1]NLW_cnt0_carry__2_O_UNCONNECTED;

  LUT5 #(
    .INIT(32'h00000020)) 
    TICK_i_1
       (.I0(TICK_i_2_n_0),
        .I1(cnt[0]),
        .I2(TICK_i_3_n_0),
        .I3(TICK_i_4_n_0),
        .I4(RST),
        .O(TICK_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    TICK_i_2
       (.I0(RXD),
        .I1(tick_cnt_reg[0]),
        .I2(tick_cnt_reg[3]),
        .I3(tick_cnt_reg[2]),
        .I4(tick_cnt_reg[1]),
        .O(TICK_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    TICK_i_3
       (.I0(cnt[6]),
        .I1(cnt[8]),
        .I2(cnt[1]),
        .I3(cnt[5]),
        .I4(RST),
        .I5(cnt[9]),
        .O(TICK_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    TICK_i_4
       (.I0(cnt[4]),
        .I1(cnt[7]),
        .I2(cnt[2]),
        .I3(cnt[3]),
        .I4(\cnt[13]_i_5_n_0 ),
        .O(TICK_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    TICK_reg
       (.C(CLK),
        .CE(1'b1),
        .D(TICK_i_1_n_0),
        .Q(E),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt0_carry
       (.CI(1'b0),
        .CO({cnt0_carry_n_0,cnt0_carry_n_1,cnt0_carry_n_2,cnt0_carry_n_3}),
        .CYINIT(cnt[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(cnt[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt0_carry__0
       (.CI(cnt0_carry_n_0),
        .CO({cnt0_carry__0_n_0,cnt0_carry__0_n_1,cnt0_carry__0_n_2,cnt0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(cnt[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt0_carry__1
       (.CI(cnt0_carry__0_n_0),
        .CO({cnt0_carry__1_n_0,cnt0_carry__1_n_1,cnt0_carry__1_n_2,cnt0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(cnt[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt0_carry__2
       (.CI(cnt0_carry__1_n_0),
        .CO(NLW_cnt0_carry__2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_cnt0_carry__2_O_UNCONNECTED[3:1],data0[13]}),
        .S({1'b0,1'b0,1'b0,cnt[13]}));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1 
       (.I0(cnt[0]),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[10]_i_1 
       (.I0(\cnt[13]_i_3_n_0 ),
        .I1(data0[10]),
        .O(p_1_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[11]_i_1 
       (.I0(\cnt[13]_i_3_n_0 ),
        .I1(data0[11]),
        .O(p_1_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[12]_i_1 
       (.I0(\cnt[13]_i_3_n_0 ),
        .I1(data0[12]),
        .O(p_1_in[12]));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAAA)) 
    \cnt[13]_i_1 
       (.I0(RST),
        .I1(tick_cnt_reg[1]),
        .I2(tick_cnt_reg[2]),
        .I3(tick_cnt_reg[3]),
        .I4(tick_cnt_reg[0]),
        .I5(RXD),
        .O(\cnt[13]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[13]_i_2 
       (.I0(\cnt[13]_i_3_n_0 ),
        .I1(data0[13]),
        .O(p_1_in[13]));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFFFFFFE)) 
    \cnt[13]_i_3 
       (.I0(\cnt[13]_i_4_n_0 ),
        .I1(\cnt[13]_i_5_n_0 ),
        .I2(cnt[5]),
        .I3(cnt[6]),
        .I4(cnt[0]),
        .I5(\cnt[13]_i_6_n_0 ),
        .O(\cnt[13]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cnt[13]_i_4 
       (.I0(cnt[3]),
        .I1(cnt[2]),
        .I2(cnt[7]),
        .I3(cnt[4]),
        .O(\cnt[13]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cnt[13]_i_5 
       (.I0(cnt[11]),
        .I1(cnt[10]),
        .I2(cnt[13]),
        .I3(cnt[12]),
        .O(\cnt[13]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h7FFE)) 
    \cnt[13]_i_6 
       (.I0(cnt[9]),
        .I1(cnt[8]),
        .I2(cnt[1]),
        .I3(cnt[0]),
        .O(\cnt[13]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[1]_i_1 
       (.I0(\cnt[13]_i_3_n_0 ),
        .I1(data0[1]),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[2]_i_1 
       (.I0(\cnt[13]_i_3_n_0 ),
        .I1(data0[2]),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[3]_i_1 
       (.I0(\cnt[13]_i_3_n_0 ),
        .I1(data0[3]),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[4]_i_1 
       (.I0(\cnt[13]_i_3_n_0 ),
        .I1(data0[4]),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[5]_i_1 
       (.I0(\cnt[13]_i_3_n_0 ),
        .I1(data0[5]),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[6]_i_1 
       (.I0(\cnt[13]_i_3_n_0 ),
        .I1(data0[6]),
        .O(p_1_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[7]_i_1 
       (.I0(\cnt[13]_i_3_n_0 ),
        .I1(data0[7]),
        .O(p_1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[8]_i_1 
       (.I0(\cnt[13]_i_3_n_0 ),
        .I1(data0[8]),
        .O(p_1_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[9]_i_1 
       (.I0(\cnt[13]_i_3_n_0 ),
        .I1(data0[9]),
        .O(p_1_in[9]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[0]),
        .Q(cnt[0]),
        .R(\cnt[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[10]),
        .Q(cnt[10]),
        .R(\cnt[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[11]),
        .Q(cnt[11]),
        .R(\cnt[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[12]),
        .Q(cnt[12]),
        .R(\cnt[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[13]),
        .Q(cnt[13]),
        .R(\cnt[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[1]),
        .Q(cnt[1]),
        .R(\cnt[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[2]),
        .Q(cnt[2]),
        .R(\cnt[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[3]),
        .Q(cnt[3]),
        .R(\cnt[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[4]),
        .Q(cnt[4]),
        .R(\cnt[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[5]),
        .Q(cnt[5]),
        .R(\cnt[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[6]),
        .Q(cnt[6]),
        .R(\cnt[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[7]),
        .Q(cnt[7]),
        .R(\cnt[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[8]),
        .Q(cnt[8]),
        .R(\cnt[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[9]),
        .Q(cnt[9]),
        .R(\cnt[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h3313)) 
    \tick_cnt[0]_i_1__0 
       (.I0(tick_cnt_reg[1]),
        .I1(tick_cnt_reg[0]),
        .I2(tick_cnt_reg[3]),
        .I3(tick_cnt_reg[2]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0FB0)) 
    \tick_cnt[1]_i_1__0 
       (.I0(tick_cnt_reg[2]),
        .I1(tick_cnt_reg[3]),
        .I2(tick_cnt_reg[1]),
        .I3(tick_cnt_reg[0]),
        .O(p_0_in[1]));
  LUT3 #(
    .INIT(8'h78)) 
    \tick_cnt[2]_i_1 
       (.I0(tick_cnt_reg[1]),
        .I1(tick_cnt_reg[0]),
        .I2(tick_cnt_reg[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h68CC)) 
    \tick_cnt[3]_i_1__0 
       (.I0(tick_cnt_reg[0]),
        .I1(tick_cnt_reg[3]),
        .I2(tick_cnt_reg[2]),
        .I3(tick_cnt_reg[1]),
        .O(p_0_in[3]));
  FDRE #(
    .INIT(1'b0)) 
    \tick_cnt_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(p_0_in[0]),
        .Q(tick_cnt_reg[0]),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \tick_cnt_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(p_0_in[1]),
        .Q(tick_cnt_reg[1]),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \tick_cnt_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(p_0_in[2]),
        .Q(tick_cnt_reg[2]),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \tick_cnt_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(p_0_in[3]),
        .Q(tick_cnt_reg[3]),
        .R(RST));
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
