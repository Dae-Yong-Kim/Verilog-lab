// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Wed Jan  8 13:07:20 2025
// Host        : COMSYS01 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Verilog-lab/king/king.gen/sources_1/bd/king_bd/ip/king_bd_my_uart_tx_0_0/king_bd_my_uart_tx_0_0_sim_netlist.v
// Design      : king_bd_my_uart_tx_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "king_bd_my_uart_tx_0_0,my_uart_tx,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "my_uart_tx,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module king_bd_my_uart_tx_0_0
   (RST,
    CLK,
    START,
    TX_DATA,
    TXD,
    BUSY);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input RST;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK, ASSOCIATED_RESET RST, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN king_bd_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input CLK;
  input START;
  input [7:0]TX_DATA;
  output TXD;
  output BUSY;

  wire BUSY;
  wire CLK;
  wire RST;
  wire START;
  wire TXD;
  wire [7:0]TX_DATA;

  king_bd_my_uart_tx_0_0_my_uart_tx inst
       (.BUSY(BUSY),
        .CLK(CLK),
        .RST(RST),
        .START(START),
        .TXD(TXD),
        .TX_DATA(TX_DATA));
endmodule

(* ORIG_REF_NAME = "bit_clk_gen" *) 
module king_bd_my_uart_tx_0_0_bit_clk_gen
   (E,
    \FSM_sequential_curr_state_reg[0] ,
    \FSM_sequential_curr_state_reg[1] ,
    CLK,
    curr_state,
    RST,
    \FSM_sequential_curr_state_reg[0]_0 ,
    bit_cnt_done__2);
  output [0:0]E;
  output \FSM_sequential_curr_state_reg[0] ;
  output \FSM_sequential_curr_state_reg[1] ;
  input CLK;
  input [1:0]curr_state;
  input RST;
  input [0:0]\FSM_sequential_curr_state_reg[0]_0 ;
  input bit_cnt_done__2;

  wire CLK;
  wire [0:0]E;
  wire \FSM_sequential_curr_state_reg[0] ;
  wire [0:0]\FSM_sequential_curr_state_reg[0]_0 ;
  wire \FSM_sequential_curr_state_reg[1] ;
  wire RST;
  wire bit_cnt_done__2;
  wire [20:0]clk_cnt;
  wire clk_cnt0_carry__0_n_0;
  wire clk_cnt0_carry__0_n_1;
  wire clk_cnt0_carry__0_n_2;
  wire clk_cnt0_carry__0_n_3;
  wire clk_cnt0_carry__1_n_0;
  wire clk_cnt0_carry__1_n_1;
  wire clk_cnt0_carry__1_n_2;
  wire clk_cnt0_carry__1_n_3;
  wire clk_cnt0_carry__2_n_0;
  wire clk_cnt0_carry__2_n_1;
  wire clk_cnt0_carry__2_n_2;
  wire clk_cnt0_carry__2_n_3;
  wire clk_cnt0_carry__3_n_1;
  wire clk_cnt0_carry__3_n_2;
  wire clk_cnt0_carry__3_n_3;
  wire clk_cnt0_carry_n_0;
  wire clk_cnt0_carry_n_1;
  wire clk_cnt0_carry_n_2;
  wire clk_cnt0_carry_n_3;
  wire \clk_cnt[20]_i_1_n_0 ;
  wire \clk_cnt[20]_i_2_n_0 ;
  wire \clk_cnt[20]_i_3_n_0 ;
  wire \clk_cnt[20]_i_4_n_0 ;
  wire \clk_cnt[20]_i_5_n_0 ;
  wire [1:0]curr_state;
  wire [20:0]p_1_in;
  wire [3:3]NLW_clk_cnt0_carry__3_CO_UNCONNECTED;

  FDRE BIT_CLK_reg
       (.C(CLK),
        .CE(1'b1),
        .D(\clk_cnt[20]_i_1_n_0 ),
        .Q(E),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000E2FFE2)) 
    \FSM_sequential_curr_state[0]_i_1 
       (.I0(\FSM_sequential_curr_state_reg[0]_0 ),
        .I1(curr_state[1]),
        .I2(bit_cnt_done__2),
        .I3(curr_state[0]),
        .I4(E),
        .I5(RST),
        .O(\FSM_sequential_curr_state_reg[1] ));
  LUT4 #(
    .INIT(16'h0078)) 
    \FSM_sequential_curr_state[1]_i_1 
       (.I0(curr_state[0]),
        .I1(E),
        .I2(curr_state[1]),
        .I3(RST),
        .O(\FSM_sequential_curr_state_reg[0] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clk_cnt0_carry
       (.CI(1'b0),
        .CO({clk_cnt0_carry_n_0,clk_cnt0_carry_n_1,clk_cnt0_carry_n_2,clk_cnt0_carry_n_3}),
        .CYINIT(clk_cnt[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[4:1]),
        .S(clk_cnt[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clk_cnt0_carry__0
       (.CI(clk_cnt0_carry_n_0),
        .CO({clk_cnt0_carry__0_n_0,clk_cnt0_carry__0_n_1,clk_cnt0_carry__0_n_2,clk_cnt0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[8:5]),
        .S(clk_cnt[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clk_cnt0_carry__1
       (.CI(clk_cnt0_carry__0_n_0),
        .CO({clk_cnt0_carry__1_n_0,clk_cnt0_carry__1_n_1,clk_cnt0_carry__1_n_2,clk_cnt0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[12:9]),
        .S(clk_cnt[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clk_cnt0_carry__2
       (.CI(clk_cnt0_carry__1_n_0),
        .CO({clk_cnt0_carry__2_n_0,clk_cnt0_carry__2_n_1,clk_cnt0_carry__2_n_2,clk_cnt0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[16:13]),
        .S(clk_cnt[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clk_cnt0_carry__3
       (.CI(clk_cnt0_carry__2_n_0),
        .CO({NLW_clk_cnt0_carry__3_CO_UNCONNECTED[3],clk_cnt0_carry__3_n_1,clk_cnt0_carry__3_n_2,clk_cnt0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[20:17]),
        .S(clk_cnt[20:17]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \clk_cnt[0]_i_1 
       (.I0(clk_cnt[0]),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \clk_cnt[20]_i_1 
       (.I0(\clk_cnt[20]_i_2_n_0 ),
        .I1(clk_cnt[2]),
        .I2(clk_cnt[8]),
        .I3(clk_cnt[3]),
        .I4(\clk_cnt[20]_i_3_n_0 ),
        .I5(\clk_cnt[20]_i_4_n_0 ),
        .O(\clk_cnt[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \clk_cnt[20]_i_2 
       (.I0(clk_cnt[1]),
        .I1(clk_cnt[6]),
        .I2(clk_cnt[7]),
        .I3(clk_cnt[5]),
        .I4(clk_cnt[4]),
        .I5(clk_cnt[13]),
        .O(\clk_cnt[20]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \clk_cnt[20]_i_3 
       (.I0(clk_cnt[9]),
        .I1(clk_cnt[20]),
        .I2(clk_cnt[18]),
        .I3(clk_cnt[15]),
        .O(\clk_cnt[20]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \clk_cnt[20]_i_4 
       (.I0(clk_cnt[11]),
        .I1(clk_cnt[19]),
        .I2(clk_cnt[16]),
        .I3(clk_cnt[0]),
        .I4(\clk_cnt[20]_i_5_n_0 ),
        .O(\clk_cnt[20]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \clk_cnt[20]_i_5 
       (.I0(clk_cnt[17]),
        .I1(clk_cnt[12]),
        .I2(clk_cnt[14]),
        .I3(clk_cnt[10]),
        .O(\clk_cnt[20]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[0]),
        .Q(clk_cnt[0]),
        .R(\clk_cnt[20]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[10]),
        .Q(clk_cnt[10]),
        .R(\clk_cnt[20]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[11]),
        .Q(clk_cnt[11]),
        .R(\clk_cnt[20]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[12]),
        .Q(clk_cnt[12]),
        .R(\clk_cnt[20]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[13]),
        .Q(clk_cnt[13]),
        .R(\clk_cnt[20]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[14]),
        .Q(clk_cnt[14]),
        .R(\clk_cnt[20]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[15]),
        .Q(clk_cnt[15]),
        .R(\clk_cnt[20]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[16]),
        .Q(clk_cnt[16]),
        .R(\clk_cnt[20]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[17]),
        .Q(clk_cnt[17]),
        .R(\clk_cnt[20]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[18]),
        .Q(clk_cnt[18]),
        .R(\clk_cnt[20]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[19]),
        .Q(clk_cnt[19]),
        .R(\clk_cnt[20]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[1]),
        .Q(clk_cnt[1]),
        .R(\clk_cnt[20]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[20]),
        .Q(clk_cnt[20]),
        .R(\clk_cnt[20]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[2]),
        .Q(clk_cnt[2]),
        .R(\clk_cnt[20]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[3]),
        .Q(clk_cnt[3]),
        .R(\clk_cnt[20]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[4]),
        .Q(clk_cnt[4]),
        .R(\clk_cnt[20]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[5]),
        .Q(clk_cnt[5]),
        .R(\clk_cnt[20]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[6]),
        .Q(clk_cnt[6]),
        .R(\clk_cnt[20]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[7]),
        .Q(clk_cnt[7]),
        .R(\clk_cnt[20]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[8]),
        .Q(clk_cnt[8]),
        .R(\clk_cnt[20]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[9]),
        .Q(clk_cnt[9]),
        .R(\clk_cnt[20]_i_1_n_0 ));
endmodule

(* ORIG_REF_NAME = "my_uart_tx" *) 
module king_bd_my_uart_tx_0_0_my_uart_tx
   (BUSY,
    TXD,
    RST,
    CLK,
    START,
    TX_DATA);
  output BUSY;
  output TXD;
  input RST;
  input CLK;
  input START;
  input [7:0]TX_DATA;

  wire BUSY;
  wire CLK;
  wire RST;
  wire START;
  wire TXD;
  wire TXD_INST_0_i_1_n_0;
  wire TXD_INST_0_i_2_n_0;
  wire TXD_INST_0_i_3_n_0;
  wire TXD_INST_0_i_4_n_0;
  wire TXD_INST_0_i_5_n_0;
  wire [7:0]TX_DATA;
  wire bit_clk;
  wire bit_clk_gen_0_n_1;
  wire bit_clk_gen_0_n_2;
  wire bit_cnt;
  wire \bit_cnt[0]_i_1_n_0 ;
  wire bit_cnt_done__2;
  wire [3:0]bit_cnt_reg;
  wire btn_2d;
  wire btn_d;
  wire [1:0]curr_state;
  wire [3:1]p_0_in;
  wire send;
  wire [9:2]tx_data;

  LUT3 #(
    .INIT(8'hFE)) 
    BUSY_INST_0
       (.I0(curr_state[1]),
        .I1(curr_state[0]),
        .I2(RST),
        .O(BUSY));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \FSM_sequential_curr_state[0]_i_2 
       (.I0(bit_cnt_reg[2]),
        .I1(bit_cnt_reg[0]),
        .I2(bit_cnt_reg[3]),
        .I3(bit_cnt_reg[1]),
        .O(bit_cnt_done__2));
  (* FSM_ENCODED_STATES = "sstart:01,sdata_send:10,sstop:11,sidle:00" *) 
  FDRE \FSM_sequential_curr_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(bit_clk_gen_0_n_2),
        .Q(curr_state[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "sstart:01,sdata_send:10,sstop:11,sidle:00" *) 
  FDRE \FSM_sequential_curr_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(bit_clk_gen_0_n_1),
        .Q(curr_state[1]),
        .R(1'b0));
  MUXF7 TXD_INST_0
       (.I0(TXD_INST_0_i_1_n_0),
        .I1(TXD_INST_0_i_2_n_0),
        .O(TXD),
        .S(bit_cnt_reg[3]));
  LUT6 #(
    .INIT(64'hB8B88888BB88BBBB)) 
    TXD_INST_0_i_1
       (.I0(TXD_INST_0_i_3_n_0),
        .I1(bit_cnt_reg[2]),
        .I2(tx_data[3]),
        .I3(tx_data[2]),
        .I4(bit_cnt_reg[1]),
        .I5(bit_cnt_reg[0]),
        .O(TXD_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFF06F6FFFF06060)) 
    TXD_INST_0_i_2
       (.I0(TXD_INST_0_i_4_n_0),
        .I1(TXD_INST_0_i_5_n_0),
        .I2(bit_cnt_reg[1]),
        .I3(tx_data[9]),
        .I4(bit_cnt_reg[0]),
        .I5(tx_data[8]),
        .O(TXD_INST_0_i_2_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    TXD_INST_0_i_3
       (.I0(tx_data[7]),
        .I1(tx_data[6]),
        .I2(bit_cnt_reg[1]),
        .I3(tx_data[5]),
        .I4(bit_cnt_reg[0]),
        .I5(tx_data[4]),
        .O(TXD_INST_0_i_3_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    TXD_INST_0_i_4
       (.I0(tx_data[4]),
        .I1(tx_data[5]),
        .I2(tx_data[2]),
        .I3(tx_data[3]),
        .O(TXD_INST_0_i_4_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    TXD_INST_0_i_5
       (.I0(tx_data[8]),
        .I1(tx_data[9]),
        .I2(tx_data[6]),
        .I3(tx_data[7]),
        .O(TXD_INST_0_i_5_n_0));
  king_bd_my_uart_tx_0_0_bit_clk_gen bit_clk_gen_0
       (.CLK(CLK),
        .E(bit_clk),
        .\FSM_sequential_curr_state_reg[0] (bit_clk_gen_0_n_1),
        .\FSM_sequential_curr_state_reg[0]_0 (send),
        .\FSM_sequential_curr_state_reg[1] (bit_clk_gen_0_n_2),
        .RST(RST),
        .bit_cnt_done__2(bit_cnt_done__2),
        .curr_state(curr_state));
  LUT1 #(
    .INIT(2'h1)) 
    \bit_cnt[0]_i_1 
       (.I0(bit_cnt_reg[0]),
        .O(\bit_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \bit_cnt[1]_i_1 
       (.I0(bit_cnt_reg[0]),
        .I1(bit_cnt_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \bit_cnt[2]_i_1 
       (.I0(bit_cnt_reg[0]),
        .I1(bit_cnt_reg[1]),
        .I2(bit_cnt_reg[2]),
        .O(p_0_in[2]));
  LUT2 #(
    .INIT(4'h1)) 
    \bit_cnt[3]_i_1 
       (.I0(curr_state[1]),
        .I1(curr_state[0]),
        .O(bit_cnt));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \bit_cnt[3]_i_2 
       (.I0(bit_cnt_reg[1]),
        .I1(bit_cnt_reg[0]),
        .I2(bit_cnt_reg[2]),
        .I3(bit_cnt_reg[3]),
        .O(p_0_in[3]));
  FDRE \bit_cnt_reg[0] 
       (.C(CLK),
        .CE(bit_clk),
        .D(\bit_cnt[0]_i_1_n_0 ),
        .Q(bit_cnt_reg[0]),
        .R(bit_cnt));
  FDRE \bit_cnt_reg[1] 
       (.C(CLK),
        .CE(bit_clk),
        .D(p_0_in[1]),
        .Q(bit_cnt_reg[1]),
        .R(bit_cnt));
  FDRE \bit_cnt_reg[2] 
       (.C(CLK),
        .CE(bit_clk),
        .D(p_0_in[2]),
        .Q(bit_cnt_reg[2]),
        .R(bit_cnt));
  FDRE \bit_cnt_reg[3] 
       (.C(CLK),
        .CE(bit_clk),
        .D(p_0_in[3]),
        .Q(bit_cnt_reg[3]),
        .R(bit_cnt));
  FDRE #(
    .INIT(1'b0)) 
    btn_2d_reg
       (.C(CLK),
        .CE(1'b1),
        .D(btn_d),
        .Q(btn_2d),
        .R(1'b0));
  FDRE btn_d_reg
       (.C(CLK),
        .CE(1'b1),
        .D(START),
        .Q(btn_d),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \reg_tx_data[7]_i_1 
       (.I0(btn_d),
        .I1(btn_2d),
        .O(send));
  FDRE \reg_tx_data_reg[0] 
       (.C(CLK),
        .CE(send),
        .D(TX_DATA[0]),
        .Q(tx_data[2]),
        .R(1'b0));
  FDRE \reg_tx_data_reg[1] 
       (.C(CLK),
        .CE(send),
        .D(TX_DATA[1]),
        .Q(tx_data[3]),
        .R(1'b0));
  FDRE \reg_tx_data_reg[2] 
       (.C(CLK),
        .CE(send),
        .D(TX_DATA[2]),
        .Q(tx_data[4]),
        .R(1'b0));
  FDRE \reg_tx_data_reg[3] 
       (.C(CLK),
        .CE(send),
        .D(TX_DATA[3]),
        .Q(tx_data[5]),
        .R(1'b0));
  FDRE \reg_tx_data_reg[4] 
       (.C(CLK),
        .CE(send),
        .D(TX_DATA[4]),
        .Q(tx_data[6]),
        .R(1'b0));
  FDRE \reg_tx_data_reg[5] 
       (.C(CLK),
        .CE(send),
        .D(TX_DATA[5]),
        .Q(tx_data[7]),
        .R(1'b0));
  FDRE \reg_tx_data_reg[6] 
       (.C(CLK),
        .CE(send),
        .D(TX_DATA[6]),
        .Q(tx_data[8]),
        .R(1'b0));
  FDRE \reg_tx_data_reg[7] 
       (.C(CLK),
        .CE(send),
        .D(TX_DATA[7]),
        .Q(tx_data[9]),
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
