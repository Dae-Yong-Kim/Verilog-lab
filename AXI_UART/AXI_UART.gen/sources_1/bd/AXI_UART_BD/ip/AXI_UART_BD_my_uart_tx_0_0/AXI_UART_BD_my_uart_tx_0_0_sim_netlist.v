// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Wed Jan  8 18:35:51 2025
// Host        : COMSYS01 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Verilog-lab/AXI_UART/AXI_UART.gen/sources_1/bd/AXI_UART_BD/ip/AXI_UART_BD_my_uart_tx_0_0/AXI_UART_BD_my_uart_tx_0_0_sim_netlist.v
// Design      : AXI_UART_BD_my_uart_tx_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "AXI_UART_BD_my_uart_tx_0_0,my_uart_tx,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "my_uart_tx,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module AXI_UART_BD_my_uart_tx_0_0
   (CLK,
    RST,
    SEND,
    DATA,
    TX,
    READY);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK, ASSOCIATED_RESET RST, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN AXI_UART_BD_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0" *) input CLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input RST;
  input SEND;
  input [7:0]DATA;
  output TX;
  output READY;

  wire CLK;
  wire [7:0]DATA;
  wire READY;
  wire RST;
  wire SEND;
  wire TX;

  AXI_UART_BD_my_uart_tx_0_0_my_uart_tx inst
       (.CLK(CLK),
        .DATA(DATA),
        .READY(READY),
        .RST(RST),
        .SEND(SEND),
        .TX(TX));
endmodule

(* ORIG_REF_NAME = "my_uart_tx" *) 
module AXI_UART_BD_my_uart_tx_0_0_my_uart_tx
   (READY,
    TX,
    RST,
    CLK,
    DATA,
    SEND);
  output READY;
  output TX;
  input RST;
  input CLK;
  input [7:0]DATA;
  input SEND;

  wire CLK;
  wire [7:0]DATA;
  wire READY;
  wire RST;
  wire SEND;
  wire TX;
  wire my_FSM_uut_n_12;
  wire my_FSM_uut_n_13;
  wire my_P2S_uut_n_1;
  wire my_P2S_uut_n_10;
  wire my_P2S_uut_n_11;
  wire my_P2S_uut_n_2;
  wire my_P2S_uut_n_3;
  wire my_P2S_uut_n_4;
  wire my_P2S_uut_n_5;
  wire my_P2S_uut_n_6;
  wire my_P2S_uut_n_7;
  wire my_P2S_uut_n_8;
  wire my_P2S_uut_n_9;
  wire [10:0]p_1_in;
  wire parity;
  wire [10:1]parity_data;
  wire parity_data0;
  wire \parity_data[9]_i_2_n_0 ;
  wire send_1D;
  wire send_1clk;
  wire send_1clk0;
  wire send_2D;
  wire tick;

  AXI_UART_BD_my_uart_tx_0_0_my_uart_tx_FSM my_FSM_uut
       (.CLK(CLK),
        .D(p_1_in),
        .E(my_FSM_uut_n_13),
        .\FSM_onehot_current_state_reg[2]_0 (my_FSM_uut_n_12),
        .\FSM_onehot_current_state_reg[2]_1 (parity_data0),
        .Q({my_P2S_uut_n_1,my_P2S_uut_n_2,my_P2S_uut_n_3,my_P2S_uut_n_4,my_P2S_uut_n_5,my_P2S_uut_n_6,my_P2S_uut_n_7,my_P2S_uut_n_8,my_P2S_uut_n_9,my_P2S_uut_n_10,my_P2S_uut_n_11}),
        .READY(READY),
        .RST(RST),
        .\p_data_reg[10] (parity_data),
        .send_1clk(send_1clk),
        .tick(tick));
  AXI_UART_BD_my_uart_tx_0_0_my_uart_tx_P2S my_P2S_uut
       (.CLK(CLK),
        .D(p_1_in),
        .E(my_FSM_uut_n_13),
        .Q({my_P2S_uut_n_1,my_P2S_uut_n_2,my_P2S_uut_n_3,my_P2S_uut_n_4,my_P2S_uut_n_5,my_P2S_uut_n_6,my_P2S_uut_n_7,my_P2S_uut_n_8,my_P2S_uut_n_9,my_P2S_uut_n_10,my_P2S_uut_n_11}),
        .S_DATA_reg_0(my_FSM_uut_n_12),
        .TX(TX));
  AXI_UART_BD_my_uart_tx_0_0_my_uart_tx_gen_tick my_tick_uut
       (.CLK(CLK),
        .RST(RST),
        .tick(tick));
  LUT5 #(
    .INIT(32'h96696996)) 
    \parity_data[9]_i_1 
       (.I0(DATA[5]),
        .I1(DATA[4]),
        .I2(DATA[7]),
        .I3(DATA[6]),
        .I4(\parity_data[9]_i_2_n_0 ),
        .O(parity));
  LUT4 #(
    .INIT(16'h6996)) 
    \parity_data[9]_i_2 
       (.I0(DATA[2]),
        .I1(DATA[3]),
        .I2(DATA[0]),
        .I3(DATA[1]),
        .O(\parity_data[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \parity_data_reg[10] 
       (.C(CLK),
        .CE(parity_data0),
        .D(1'b1),
        .Q(parity_data[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \parity_data_reg[1] 
       (.C(CLK),
        .CE(parity_data0),
        .D(DATA[0]),
        .Q(parity_data[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \parity_data_reg[2] 
       (.C(CLK),
        .CE(parity_data0),
        .D(DATA[1]),
        .Q(parity_data[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \parity_data_reg[3] 
       (.C(CLK),
        .CE(parity_data0),
        .D(DATA[2]),
        .Q(parity_data[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \parity_data_reg[4] 
       (.C(CLK),
        .CE(parity_data0),
        .D(DATA[3]),
        .Q(parity_data[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \parity_data_reg[5] 
       (.C(CLK),
        .CE(parity_data0),
        .D(DATA[4]),
        .Q(parity_data[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \parity_data_reg[6] 
       (.C(CLK),
        .CE(parity_data0),
        .D(DATA[5]),
        .Q(parity_data[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \parity_data_reg[7] 
       (.C(CLK),
        .CE(parity_data0),
        .D(DATA[6]),
        .Q(parity_data[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \parity_data_reg[8] 
       (.C(CLK),
        .CE(parity_data0),
        .D(DATA[7]),
        .Q(parity_data[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \parity_data_reg[9] 
       (.C(CLK),
        .CE(parity_data0),
        .D(parity),
        .Q(parity_data[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    send_1D_reg
       (.C(CLK),
        .CE(1'b1),
        .D(SEND),
        .Q(send_1D),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    send_1clk_i_1
       (.I0(send_1D),
        .I1(send_2D),
        .O(send_1clk0));
  FDRE #(
    .INIT(1'b0)) 
    send_1clk_reg
       (.C(CLK),
        .CE(1'b1),
        .D(send_1clk0),
        .Q(send_1clk),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    send_2D_reg
       (.C(CLK),
        .CE(1'b1),
        .D(send_1D),
        .Q(send_2D),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "my_uart_tx_FSM" *) 
module AXI_UART_BD_my_uart_tx_0_0_my_uart_tx_FSM
   (READY,
    D,
    \FSM_onehot_current_state_reg[2]_0 ,
    E,
    \FSM_onehot_current_state_reg[2]_1 ,
    RST,
    CLK,
    tick,
    Q,
    \p_data_reg[10] ,
    send_1clk);
  output READY;
  output [10:0]D;
  output \FSM_onehot_current_state_reg[2]_0 ;
  output [0:0]E;
  output [0:0]\FSM_onehot_current_state_reg[2]_1 ;
  input RST;
  input CLK;
  input tick;
  input [10:0]Q;
  input [9:0]\p_data_reg[10] ;
  input send_1clk;

  wire CLK;
  wire [10:0]D;
  wire [0:0]E;
  wire \FSM_onehot_current_state[0]_i_1_n_0 ;
  wire \FSM_onehot_current_state[1]_i_1_n_0 ;
  wire \FSM_onehot_current_state[2]_i_1_n_0 ;
  wire \FSM_onehot_current_state_reg[2]_0 ;
  wire [0:0]\FSM_onehot_current_state_reg[2]_1 ;
  wire \FSM_onehot_current_state_reg_n_0_[0] ;
  wire [10:0]Q;
  wire READY;
  wire READY_i_1_n_0;
  wire RST;
  wire [1:0]c_state;
  wire [3:0]p_0_in;
  wire [9:0]\p_data_reg[10] ;
  wire send_1clk;
  wire tick;
  wire [3:0]tick_cnt_reg;
  wire tick_done_i_1_n_0;
  wire tick_done_reg_n_0;

  LUT5 #(
    .INIT(32'hD555C000)) 
    \FSM_onehot_current_state[0]_i_1 
       (.I0(send_1clk),
        .I1(tick),
        .I2(tick_done_reg_n_0),
        .I3(c_state[1]),
        .I4(\FSM_onehot_current_state_reg_n_0_[0] ),
        .O(\FSM_onehot_current_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h88F8)) 
    \FSM_onehot_current_state[1]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I1(send_1clk),
        .I2(c_state[0]),
        .I3(tick),
        .O(\FSM_onehot_current_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFC4C)) 
    \FSM_onehot_current_state[2]_i_1 
       (.I0(tick_done_reg_n_0),
        .I1(c_state[1]),
        .I2(tick),
        .I3(c_state[0]),
        .O(\FSM_onehot_current_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "STANDBY:010,START:100,IDLE:001" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_current_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[0] ),
        .S(RST));
  (* FSM_ENCODED_STATES = "STANDBY:010,START:100,IDLE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_onehot_current_state[1]_i_1_n_0 ),
        .Q(c_state[0]),
        .R(RST));
  (* FSM_ENCODED_STATES = "STANDBY:010,START:100,IDLE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_onehot_current_state[2]_i_1_n_0 ),
        .Q(c_state[1]),
        .R(RST));
  LUT1 #(
    .INIT(2'h1)) 
    READY_i_1
       (.I0(c_state[1]),
        .O(READY_i_1_n_0));
  FDRE READY_reg
       (.C(CLK),
        .CE(1'b1),
        .D(READY_i_1_n_0),
        .Q(READY),
        .R(RST));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    S_DATA_i_1
       (.I0(c_state[1]),
        .I1(c_state[0]),
        .I2(Q[0]),
        .O(\FSM_onehot_current_state_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \p_data[0]_i_1 
       (.I0(c_state[0]),
        .I1(c_state[1]),
        .I2(Q[1]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \p_data[10]_i_1 
       (.I0(c_state[0]),
        .I1(tick),
        .I2(c_state[1]),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    \p_data[10]_i_2 
       (.I0(c_state[1]),
        .I1(c_state[0]),
        .I2(\p_data_reg[10] [9]),
        .O(D[10]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \p_data[1]_i_1 
       (.I0(c_state[0]),
        .I1(Q[2]),
        .I2(c_state[1]),
        .I3(\p_data_reg[10] [0]),
        .O(D[1]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \p_data[2]_i_1 
       (.I0(c_state[0]),
        .I1(Q[3]),
        .I2(c_state[1]),
        .I3(\p_data_reg[10] [1]),
        .O(D[2]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \p_data[3]_i_1 
       (.I0(c_state[0]),
        .I1(Q[4]),
        .I2(c_state[1]),
        .I3(\p_data_reg[10] [2]),
        .O(D[3]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \p_data[4]_i_1 
       (.I0(c_state[0]),
        .I1(Q[5]),
        .I2(c_state[1]),
        .I3(\p_data_reg[10] [3]),
        .O(D[4]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \p_data[5]_i_1 
       (.I0(c_state[0]),
        .I1(Q[6]),
        .I2(c_state[1]),
        .I3(\p_data_reg[10] [4]),
        .O(D[5]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \p_data[6]_i_1 
       (.I0(c_state[0]),
        .I1(Q[7]),
        .I2(c_state[1]),
        .I3(\p_data_reg[10] [5]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hEF40)) 
    \p_data[7]_i_1 
       (.I0(c_state[0]),
        .I1(Q[8]),
        .I2(c_state[1]),
        .I3(\p_data_reg[10] [6]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hEF40)) 
    \p_data[8]_i_1 
       (.I0(c_state[0]),
        .I1(Q[9]),
        .I2(c_state[1]),
        .I3(\p_data_reg[10] [7]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hEF40)) 
    \p_data[9]_i_1 
       (.I0(c_state[0]),
        .I1(Q[10]),
        .I2(c_state[1]),
        .I3(\p_data_reg[10] [8]),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \parity_data[10]_i_1 
       (.I0(c_state[1]),
        .I1(c_state[0]),
        .I2(send_1clk),
        .O(\FSM_onehot_current_state_reg[2]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \tick_cnt[0]_i_1 
       (.I0(tick_cnt_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \tick_cnt[1]_i_1 
       (.I0(tick_cnt_reg[1]),
        .I1(tick_cnt_reg[0]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \tick_cnt[2]_i_1 
       (.I0(tick_cnt_reg[2]),
        .I1(tick_cnt_reg[1]),
        .I2(tick_cnt_reg[0]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \tick_cnt[3]_i_1 
       (.I0(tick_cnt_reg[3]),
        .I1(tick_cnt_reg[1]),
        .I2(tick_cnt_reg[0]),
        .I3(tick_cnt_reg[2]),
        .O(p_0_in[3]));
  FDRE #(
    .INIT(1'b0)) 
    \tick_cnt_reg[0] 
       (.C(tick),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(tick_cnt_reg[0]),
        .R(READY_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \tick_cnt_reg[1] 
       (.C(tick),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(tick_cnt_reg[1]),
        .R(READY_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \tick_cnt_reg[2] 
       (.C(tick),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(tick_cnt_reg[2]),
        .R(READY_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \tick_cnt_reg[3] 
       (.C(tick),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(tick_cnt_reg[3]),
        .R(READY_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFF040000000000)) 
    tick_done_i_1
       (.I0(tick_cnt_reg[2]),
        .I1(tick_cnt_reg[1]),
        .I2(tick_cnt_reg[0]),
        .I3(tick_cnt_reg[3]),
        .I4(tick_done_reg_n_0),
        .I5(c_state[1]),
        .O(tick_done_i_1_n_0));
  FDRE tick_done_reg
       (.C(tick),
        .CE(1'b1),
        .D(tick_done_i_1_n_0),
        .Q(tick_done_reg_n_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "my_uart_tx_P2S" *) 
module AXI_UART_BD_my_uart_tx_0_0_my_uart_tx_P2S
   (TX,
    Q,
    S_DATA_reg_0,
    CLK,
    E,
    D);
  output TX;
  output [10:0]Q;
  input S_DATA_reg_0;
  input CLK;
  input [0:0]E;
  input [10:0]D;

  wire CLK;
  wire [10:0]D;
  wire [0:0]E;
  wire [10:0]Q;
  wire S_DATA_reg_0;
  wire TX;

  FDRE #(
    .INIT(1'b1)) 
    S_DATA_reg
       (.C(CLK),
        .CE(1'b1),
        .D(S_DATA_reg_0),
        .Q(TX),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p_data_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(D[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p_data_reg[10] 
       (.C(CLK),
        .CE(E),
        .D(D[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p_data_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(D[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p_data_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(D[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p_data_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(D[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p_data_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(D[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p_data_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(D[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p_data_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(D[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p_data_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(D[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p_data_reg[8] 
       (.C(CLK),
        .CE(E),
        .D(D[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p_data_reg[9] 
       (.C(CLK),
        .CE(E),
        .D(D[9]),
        .Q(Q[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "my_uart_tx_gen_tick" *) 
module AXI_UART_BD_my_uart_tx_0_0_my_uart_tx_gen_tick
   (tick,
    RST,
    CLK);
  output tick;
  input RST;
  input CLK;

  wire CLK;
  wire RST;
  wire TICK;
  wire TICK_i_2_n_0;
  wire \cnt[0]_i_1_n_0 ;
  wire \cnt[0]_i_3_n_0 ;
  wire [9:0]cnt_reg;
  wire \cnt_reg[0]_i_2_n_0 ;
  wire \cnt_reg[0]_i_2_n_1 ;
  wire \cnt_reg[0]_i_2_n_2 ;
  wire \cnt_reg[0]_i_2_n_3 ;
  wire \cnt_reg[0]_i_2_n_4 ;
  wire \cnt_reg[0]_i_2_n_5 ;
  wire \cnt_reg[0]_i_2_n_6 ;
  wire \cnt_reg[0]_i_2_n_7 ;
  wire \cnt_reg[4]_i_1_n_0 ;
  wire \cnt_reg[4]_i_1_n_1 ;
  wire \cnt_reg[4]_i_1_n_2 ;
  wire \cnt_reg[4]_i_1_n_3 ;
  wire \cnt_reg[4]_i_1_n_4 ;
  wire \cnt_reg[4]_i_1_n_5 ;
  wire \cnt_reg[4]_i_1_n_6 ;
  wire \cnt_reg[4]_i_1_n_7 ;
  wire \cnt_reg[8]_i_1_n_3 ;
  wire \cnt_reg[8]_i_1_n_6 ;
  wire \cnt_reg[8]_i_1_n_7 ;
  wire tick;
  wire [3:1]\NLW_cnt_reg[8]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_cnt_reg[8]_i_1_O_UNCONNECTED ;

  LUT5 #(
    .INIT(32'h00800000)) 
    TICK_i_1
       (.I0(cnt_reg[8]),
        .I1(cnt_reg[6]),
        .I2(TICK_i_2_n_0),
        .I3(cnt_reg[7]),
        .I4(cnt_reg[9]),
        .O(TICK));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    TICK_i_2
       (.I0(cnt_reg[3]),
        .I1(cnt_reg[2]),
        .I2(cnt_reg[0]),
        .I3(cnt_reg[1]),
        .I4(cnt_reg[5]),
        .I5(cnt_reg[4]),
        .O(TICK_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    TICK_reg
       (.C(CLK),
        .CE(1'b1),
        .D(TICK),
        .Q(tick),
        .R(RST));
  LUT6 #(
    .INIT(64'hFFFFFFFF20000000)) 
    \cnt[0]_i_1 
       (.I0(cnt_reg[9]),
        .I1(cnt_reg[7]),
        .I2(TICK_i_2_n_0),
        .I3(cnt_reg[6]),
        .I4(cnt_reg[8]),
        .I5(RST),
        .O(\cnt[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_3 
       (.I0(cnt_reg[0]),
        .O(\cnt[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_2_n_7 ),
        .Q(cnt_reg[0]),
        .R(\cnt[0]_i_1_n_0 ));
  CARRY4 \cnt_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\cnt_reg[0]_i_2_n_0 ,\cnt_reg[0]_i_2_n_1 ,\cnt_reg[0]_i_2_n_2 ,\cnt_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\cnt_reg[0]_i_2_n_4 ,\cnt_reg[0]_i_2_n_5 ,\cnt_reg[0]_i_2_n_6 ,\cnt_reg[0]_i_2_n_7 }),
        .S({cnt_reg[3:1],\cnt[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_2_n_6 ),
        .Q(cnt_reg[1]),
        .R(\cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_2_n_5 ),
        .Q(cnt_reg[2]),
        .R(\cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_2_n_4 ),
        .Q(cnt_reg[3]),
        .R(\cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[4]_i_1_n_7 ),
        .Q(cnt_reg[4]),
        .R(\cnt[0]_i_1_n_0 ));
  CARRY4 \cnt_reg[4]_i_1 
       (.CI(\cnt_reg[0]_i_2_n_0 ),
        .CO({\cnt_reg[4]_i_1_n_0 ,\cnt_reg[4]_i_1_n_1 ,\cnt_reg[4]_i_1_n_2 ,\cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[4]_i_1_n_4 ,\cnt_reg[4]_i_1_n_5 ,\cnt_reg[4]_i_1_n_6 ,\cnt_reg[4]_i_1_n_7 }),
        .S(cnt_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[4]_i_1_n_6 ),
        .Q(cnt_reg[5]),
        .R(\cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[4]_i_1_n_5 ),
        .Q(cnt_reg[6]),
        .R(\cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[4]_i_1_n_4 ),
        .Q(cnt_reg[7]),
        .R(\cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[8]_i_1_n_7 ),
        .Q(cnt_reg[8]),
        .R(\cnt[0]_i_1_n_0 ));
  CARRY4 \cnt_reg[8]_i_1 
       (.CI(\cnt_reg[4]_i_1_n_0 ),
        .CO({\NLW_cnt_reg[8]_i_1_CO_UNCONNECTED [3:1],\cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_cnt_reg[8]_i_1_O_UNCONNECTED [3:2],\cnt_reg[8]_i_1_n_6 ,\cnt_reg[8]_i_1_n_7 }),
        .S({1'b0,1'b0,cnt_reg[9:8]}));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[8]_i_1_n_6 ),
        .Q(cnt_reg[9]),
        .R(\cnt[0]_i_1_n_0 ));
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
