
�
�You have specified a new message control rule that is equivalent to an existing rule with attributes '%s'. The existing rule will be replaced.601*common2
 -id {17-179}  -suppress Z17-1361h px� 
�
�You have specified a new message control rule that is equivalent to an existing rule with attributes '%s'. The existing rule will be replaced.601*common2
 -id {17-179}  -suppress Z17-1361h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
create_project: 2

00:00:022

00:00:052	
504.3122	
203.227Z17-268h px� 
>
Refreshing IP repositories
234*coregenZ19-234h px� 
G
"No user IP repositories specified
1154*coregenZ19-1704h px� 
j
"Loaded Vivado IP repository '%s'.
1332*coregen2!
C:/Xilinx/Vivado/2024.1/data/ipZ19-2313h px� 
�
Command: %s
1870*	planAhead2}
{read_checkpoint -auto_incremental -incremental C:/Verilog-lab/AXI_UART/AXI_UART.srcs/utils_1/imports/synth_1/my_uart_rx.dcpZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2N
LC:/Verilog-lab/AXI_UART/AXI_UART.srcs/utils_1/imports/synth_1/my_uart_rx.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
o
Command: %s
53*	vivadotcl2>
<synth_design -top AXI_UART_BD_wrapper -part xc7z007sclg400-1Z4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
{
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2

xc7z007sZ17-347h px� 
k
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2

xc7z007sZ17-349h px� 
E
Loading part %s157*device2
xc7z007sclg400-1Z21-403h px� 
[
$Part: %s does not have CEAM library.966*device2
xc7z007sclg400-1Z21-9227h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
2Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
�
�You have specified a new message control rule that is equivalent to an existing rule with attributes '%s'. The existing rule will be replaced.601*common2
 -id {17-179}  -suppress Z17-1361h px� 
N
#Helper process launched with PID %s4824*oasys2
17468Z8-7075h px� 
�
%s*synth2{
yStarting RTL Elaboration : Time (s): cpu = 00:00:01 ; elapsed = 00:00:03 . Memory (MB): peak = 1378.586 ; gain = 449.730
h px� 
�
synthesizing module '%s'%s4497*oasys2
AXI_UART_BD_wrapper2
 2[
WC:/Verilog-lab/AXI_UART/AXI_UART.gen/sources_1/bd/AXI_UART_BD/hdl/AXI_UART_BD_wrapper.v2
138@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
AXI_UART_BD2
 2U
Qc:/Verilog-lab/AXI_UART/AXI_UART.gen/sources_1/bd/AXI_UART_BD/synth/AXI_UART_BD.v2
138@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
AXI_UART_BD_my_uart_rx_0_02
 2w
sC:/Verilog-lab/AXI_UART/AXI_UART.runs/synth_1/.Xil/Vivado-24636-COMSYS01/realtime/AXI_UART_BD_my_uart_rx_0_0_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
AXI_UART_BD_my_uart_rx_0_02
 2
02
12w
sC:/Verilog-lab/AXI_UART/AXI_UART.runs/synth_1/.Xil/Vivado-24636-COMSYS01/realtime/AXI_UART_BD_my_uart_rx_0_0_stub.v2
68@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
AXI_UART_BD_my_uart_tx_0_02
 2w
sC:/Verilog-lab/AXI_UART/AXI_UART.runs/synth_1/.Xil/Vivado-24636-COMSYS01/realtime/AXI_UART_BD_my_uart_tx_0_0_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
AXI_UART_BD_my_uart_tx_0_02
 2
02
12w
sC:/Verilog-lab/AXI_UART/AXI_UART.runs/synth_1/.Xil/Vivado-24636-COMSYS01/realtime/AXI_UART_BD_my_uart_tx_0_0_stub.v2
68@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2&
$AXI_UART_BD_myip_slave_lite_v1_0_0_02
 2�
}C:/Verilog-lab/AXI_UART/AXI_UART.runs/synth_1/.Xil/Vivado-24636-COMSYS01/realtime/AXI_UART_BD_myip_slave_lite_v1_0_0_0_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2&
$AXI_UART_BD_myip_slave_lite_v1_0_0_02
 2
02
12�
}C:/Verilog-lab/AXI_UART/AXI_UART.runs/synth_1/.Xil/Vivado-24636-COMSYS01/realtime/AXI_UART_BD_myip_slave_lite_v1_0_0_0_stub.v2
68@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2$
"AXI_UART_BD_processing_system7_0_12
 2
{C:/Verilog-lab/AXI_UART/AXI_UART.runs/synth_1/.Xil/Vivado-24636-COMSYS01/realtime/AXI_UART_BD_processing_system7_0_1_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2$
"AXI_UART_BD_processing_system7_0_12
 2
02
12
{C:/Verilog-lab/AXI_UART/AXI_UART.runs/synth_1/.Xil/Vivado-24636-COMSYS01/realtime/AXI_UART_BD_processing_system7_0_1_stub.v2
68@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2 
AXI_UART_BD_ps7_0_axi_periph_02
 2U
Qc:/Verilog-lab/AXI_UART/AXI_UART.gen/sources_1/bd/AXI_UART_BD/synth/AXI_UART_BD.v2
3318@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
s00_couplers_imp_11VPLXP2
 2U
Qc:/Verilog-lab/AXI_UART/AXI_UART.gen/sources_1/bd/AXI_UART_BD/synth/AXI_UART_BD.v2
6468@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
AXI_UART_BD_auto_pc_02
 2r
nC:/Verilog-lab/AXI_UART/AXI_UART.runs/synth_1/.Xil/Vivado-24636-COMSYS01/realtime/AXI_UART_BD_auto_pc_0_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
AXI_UART_BD_auto_pc_02
 2
02
12r
nC:/Verilog-lab/AXI_UART/AXI_UART.runs/synth_1/.Xil/Vivado-24636-COMSYS01/realtime/AXI_UART_BD_auto_pc_0_stub.v2
68@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
s00_couplers_imp_11VPLXP2
 2
02
12U
Qc:/Verilog-lab/AXI_UART/AXI_UART.gen/sources_1/bd/AXI_UART_BD/synth/AXI_UART_BD.v2
6468@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
AXI_UART_BD_ps7_0_axi_periph_02
 2
02
12U
Qc:/Verilog-lab/AXI_UART/AXI_UART.gen/sources_1/bd/AXI_UART_BD/synth/AXI_UART_BD.v2
3318@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
AXI_UART_BD_rst_ps7_0_100M_02
 2y
uC:/Verilog-lab/AXI_UART/AXI_UART.runs/synth_1/.Xil/Vivado-24636-COMSYS01/realtime/AXI_UART_BD_rst_ps7_0_100M_0_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
AXI_UART_BD_rst_ps7_0_100M_02
 2
02
12y
uC:/Verilog-lab/AXI_UART/AXI_UART.runs/synth_1/.Xil/Vivado-24636-COMSYS01/realtime/AXI_UART_BD_rst_ps7_0_100M_0_stub.v2
68@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2

mb_reset2
AXI_UART_BD_rst_ps7_0_100M_02
rst_ps7_0_100M2U
Qc:/Verilog-lab/AXI_UART/AXI_UART.gen/sources_1/bd/AXI_UART_BD/synth/AXI_UART_BD.v2
3218@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
bus_struct_reset2
AXI_UART_BD_rst_ps7_0_100M_02
rst_ps7_0_100M2U
Qc:/Verilog-lab/AXI_UART/AXI_UART.gen/sources_1/bd/AXI_UART_BD/synth/AXI_UART_BD.v2
3218@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
interconnect_aresetn2
AXI_UART_BD_rst_ps7_0_100M_02
rst_ps7_0_100M2U
Qc:/Verilog-lab/AXI_UART/AXI_UART.gen/sources_1/bd/AXI_UART_BD/synth/AXI_UART_BD.v2
3218@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
rst_ps7_0_100M2
AXI_UART_BD_rst_ps7_0_100M_02
102
72U
Qc:/Verilog-lab/AXI_UART/AXI_UART.gen/sources_1/bd/AXI_UART_BD/synth/AXI_UART_BD.v2
3218@Z8-7023h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
AXI_UART_BD2
 2
02
12U
Qc:/Verilog-lab/AXI_UART/AXI_UART.gen/sources_1/bd/AXI_UART_BD/synth/AXI_UART_BD.v2
138@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
AXI_UART_BD_wrapper2
 2
02
12[
WC:/Verilog-lab/AXI_UART/AXI_UART.gen/sources_1/bd/AXI_UART_BD/hdl/AXI_UART_BD_wrapper.v2
138@Z8-6155h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2
s00_couplers_imp_11VPLXPZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2
s00_couplers_imp_11VPLXPZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ACLK2 
AXI_UART_BD_ps7_0_axi_periph_0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ARESETN2 
AXI_UART_BD_ps7_0_axi_periph_0Z8-7129h px� 
�
%s*synth2{
yFinished RTL Elaboration : Time (s): cpu = 00:00:01 ; elapsed = 00:00:04 . Memory (MB): peak = 1492.109 ; gain = 563.254
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:01 ; elapsed = 00:00:04 . Memory (MB): peak = 1492.109 ; gain = 563.254
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:01 ; elapsed = 00:00:04 . Memory (MB): peak = 1492.109 ; gain = 563.254
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0072

1492.1092
0.000Z17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Verilog-lab/AXI_UART/AXI_UART.gen/sources_1/bd/AXI_UART_BD/ip/AXI_UART_BD_processing_system7_0_1/AXI_UART_BD_processing_system7_0_1/AXI_UART_BD_processing_system7_0_1_in_context.xdc2&
"AXI_UART_BD_i/processing_system7_0	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Verilog-lab/AXI_UART/AXI_UART.gen/sources_1/bd/AXI_UART_BD/ip/AXI_UART_BD_processing_system7_0_1/AXI_UART_BD_processing_system7_0_1/AXI_UART_BD_processing_system7_0_1_in_context.xdc2&
"AXI_UART_BD_i/processing_system7_0	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Verilog-lab/AXI_UART/AXI_UART.gen/sources_1/bd/AXI_UART_BD/ip/AXI_UART_BD_myip_slave_lite_v1_0_0_0/AXI_UART_BD_myip_slave_lite_v1_0_0_0/AXI_UART_BD_myip_slave_lite_v1_0_0_0_in_context.xdc2(
$AXI_UART_BD_i/myip_slave_lite_v1_0_0	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Verilog-lab/AXI_UART/AXI_UART.gen/sources_1/bd/AXI_UART_BD/ip/AXI_UART_BD_myip_slave_lite_v1_0_0_0/AXI_UART_BD_myip_slave_lite_v1_0_0_0/AXI_UART_BD_myip_slave_lite_v1_0_0_0_in_context.xdc2(
$AXI_UART_BD_i/myip_slave_lite_v1_0_0	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Verilog-lab/AXI_UART/AXI_UART.gen/sources_1/bd/AXI_UART_BD/ip/AXI_UART_BD_auto_pc_0/AXI_UART_BD_auto_pc_0/AXI_UART_BD_auto_pc_0_in_context.xdc27
3AXI_UART_BD_i/ps7_0_axi_periph/s00_couplers/auto_pc	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Verilog-lab/AXI_UART/AXI_UART.gen/sources_1/bd/AXI_UART_BD/ip/AXI_UART_BD_auto_pc_0/AXI_UART_BD_auto_pc_0/AXI_UART_BD_auto_pc_0_in_context.xdc27
3AXI_UART_BD_i/ps7_0_axi_periph/s00_couplers/auto_pc	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Verilog-lab/AXI_UART/AXI_UART.gen/sources_1/bd/AXI_UART_BD/ip/AXI_UART_BD_rst_ps7_0_100M_0/AXI_UART_BD_rst_ps7_0_100M_0/AXI_UART_BD_rst_ps7_0_100M_0_in_context.xdc2 
AXI_UART_BD_i/rst_ps7_0_100M	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Verilog-lab/AXI_UART/AXI_UART.gen/sources_1/bd/AXI_UART_BD/ip/AXI_UART_BD_rst_ps7_0_100M_0/AXI_UART_BD_rst_ps7_0_100M_0/AXI_UART_BD_rst_ps7_0_100M_0_in_context.xdc2 
AXI_UART_BD_i/rst_ps7_0_100M	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Verilog-lab/AXI_UART/AXI_UART.gen/sources_1/bd/AXI_UART_BD/ip/AXI_UART_BD_my_uart_tx_0_0/AXI_UART_BD_my_uart_tx_0_0/AXI_UART_BD_my_uart_tx_0_0_in_context.xdc2
AXI_UART_BD_i/my_uart_tx_0	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Verilog-lab/AXI_UART/AXI_UART.gen/sources_1/bd/AXI_UART_BD/ip/AXI_UART_BD_my_uart_tx_0_0/AXI_UART_BD_my_uart_tx_0_0/AXI_UART_BD_my_uart_tx_0_0_in_context.xdc2
AXI_UART_BD_i/my_uart_tx_0	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Verilog-lab/AXI_UART/AXI_UART.gen/sources_1/bd/AXI_UART_BD/ip/AXI_UART_BD_my_uart_rx_0_0/AXI_UART_BD_my_uart_rx_0_0/AXI_UART_BD_my_uart_rx_0_0_in_context.xdc2
AXI_UART_BD_i/my_uart_rx_0	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Verilog-lab/AXI_UART/AXI_UART.gen/sources_1/bd/AXI_UART_BD/ip/AXI_UART_BD_my_uart_rx_0_0/AXI_UART_BD_my_uart_rx_0_0/AXI_UART_BD_my_uart_rx_0_0_in_context.xdc2
AXI_UART_BD_i/my_uart_rx_0	8Z20-847h px� 
�
Parsing XDC File [%s]
179*designutils2J
FC:/Verilog-lab/AXI_UART/AXI_UART.srcs/constrs_1/new/AXI_UART_CONST.xdc8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2J
FC:/Verilog-lab/AXI_UART/AXI_UART.srcs/constrs_1/new/AXI_UART_CONST.xdc8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2H
FC:/Verilog-lab/AXI_UART/AXI_UART.srcs/constrs_1/new/AXI_UART_CONST.xdc2'
%.Xil/AXI_UART_BD_wrapper_propImpl.xdcZ1-236h px� 
�
Parsing XDC File [%s]
179*designutils2A
=C:/Verilog-lab/AXI_UART/AXI_UART.srcs/constrs_1/new/debug.xdc8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2A
=C:/Verilog-lab/AXI_UART/AXI_UART.srcs/constrs_1/new/debug.xdc8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2?
=C:/Verilog-lab/AXI_UART/AXI_UART.srcs/constrs_1/new/debug.xdc2'
%.Xil/AXI_UART_BD_wrapper_propImpl.xdcZ1-236h px� 
�
Parsing XDC File [%s]
179*designutils2@
<C:/Verilog-lab/AXI_UART/AXI_UART.runs/synth_1/dont_touch.xdc8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2@
<C:/Verilog-lab/AXI_UART/AXI_UART.runs/synth_1/dont_touch.xdc8Z20-178h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1492.1092
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
 Constraint Validation Runtime : 2

00:00:002
00:00:00.0072

1492.1092
0.000Z17-268h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:03 ; elapsed = 00:00:11 . Memory (MB): peak = 1492.109 ; gain = 563.254
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Loading part: xc7z007sclg400-1
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:03 ; elapsed = 00:00:11 . Memory (MB): peak = 1492.109 ; gain = 563.254
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
%s
*synth20
.Start Applying 'set_property' XDC Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:03 ; elapsed = 00:00:11 . Memory (MB): peak = 1492.109 ; gain = 563.254
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:03 ; elapsed = 00:00:11 . Memory (MB): peak = 1492.109 ; gain = 563.254
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
p
%s
*synth2X
VPart Resources:
DSPs: 66 (col length:40)
BRAMs: 100 (col length: RAMB18 40 RAMB36 20)
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ACLK2 
AXI_UART_BD_ps7_0_axi_periph_0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ARESETN2 
AXI_UART_BD_ps7_0_axi_periph_0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

M00_ACLK2 
AXI_UART_BD_ps7_0_axi_periph_0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M00_ARESETN2 
AXI_UART_BD_ps7_0_axi_periph_0Z8-7129h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:04 ; elapsed = 00:00:12 . Memory (MB): peak = 1492.109 ; gain = 563.254
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
@
%s
*synth2(
&Start Applying XDC Timing Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:05 ; elapsed = 00:00:16 . Memory (MB): peak = 1492.109 ; gain = 563.254
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
4
%s
*synth2
Start Timing Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2
}Finished Timing Optimization : Time (s): cpu = 00:00:05 ; elapsed = 00:00:16 . Memory (MB): peak = 1492.109 ; gain = 563.254
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
3
%s
*synth2
Start Technology Mapping
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2~
|Finished Technology Mapping : Time (s): cpu = 00:00:05 ; elapsed = 00:00:16 . Memory (MB): peak = 1492.109 ; gain = 563.254
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Start IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
?
%s
*synth2'
%Start Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2x
vFinished IO Insertion : Time (s): cpu = 00:00:06 ; elapsed = 00:00:18 . Memory (MB): peak = 1492.109 ; gain = 563.254
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:06 ; elapsed = 00:00:18 . Memory (MB): peak = 1492.109 ; gain = 563.254
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:06 ; elapsed = 00:00:18 . Memory (MB): peak = 1492.109 ; gain = 563.254
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Renaming Generated Ports
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:06 ; elapsed = 00:00:18 . Memory (MB): peak = 1492.109 ; gain = 563.254
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:06 ; elapsed = 00:00:18 . Memory (MB): peak = 1492.109 ; gain = 563.254
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Start Renaming Generated Nets
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:06 ; elapsed = 00:00:18 . Memory (MB): peak = 1492.109 ; gain = 563.254
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
/
%s
*synth2

Report BlackBoxes: 
h p
x
� 
T
%s
*synth2<
:+------+-------------------------------------+----------+
h p
x
� 
T
%s
*synth2<
:|      |BlackBox name                        |Instances |
h p
x
� 
T
%s
*synth2<
:+------+-------------------------------------+----------+
h p
x
� 
T
%s
*synth2<
:|1     |AXI_UART_BD_my_uart_rx_0_0           |         1|
h p
x
� 
T
%s
*synth2<
:|2     |AXI_UART_BD_my_uart_tx_0_0           |         1|
h p
x
� 
T
%s
*synth2<
:|3     |AXI_UART_BD_myip_slave_lite_v1_0_0_0 |         1|
h p
x
� 
T
%s
*synth2<
:|4     |AXI_UART_BD_processing_system7_0_1   |         1|
h p
x
� 
T
%s
*synth2<
:|5     |AXI_UART_BD_auto_pc_0                |         1|
h p
x
� 
T
%s
*synth2<
:|6     |AXI_UART_BD_rst_ps7_0_100M_0         |         1|
h p
x
� 
T
%s
*synth2<
:+------+-------------------------------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
N
%s*synth26
4+------+-----------------------------------+------+
h px� 
N
%s*synth26
4|      |Cell                               |Count |
h px� 
N
%s*synth26
4+------+-----------------------------------+------+
h px� 
N
%s*synth26
4|1     |AXI_UART_BD_auto_pc                |     1|
h px� 
N
%s*synth26
4|2     |AXI_UART_BD_my_uart_rx_0           |     1|
h px� 
N
%s*synth26
4|3     |AXI_UART_BD_my_uart_tx_0           |     1|
h px� 
N
%s*synth26
4|4     |AXI_UART_BD_myip_slave_lite_v1_0_0 |     1|
h px� 
N
%s*synth26
4|5     |AXI_UART_BD_processing_system7_0   |     1|
h px� 
N
%s*synth26
4|6     |AXI_UART_BD_rst_ps7_0_100M         |     1|
h px� 
N
%s*synth26
4|7     |IBUF                               |     1|
h px� 
N
%s*synth26
4|8     |OBUF                               |     1|
h px� 
N
%s*synth26
4+------+-----------------------------------+------+
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:06 ; elapsed = 00:00:18 . Memory (MB): peak = 1492.109 ; gain = 563.254
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
`
%s
*synth2H
FSynthesis finished with 0 errors, 0 critical warnings and 5 warnings.
h p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:04 ; elapsed = 00:00:17 . Memory (MB): peak = 1492.109 ; gain = 563.254
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:06 ; elapsed = 00:00:18 . Memory (MB): peak = 1492.109 ; gain = 563.254
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0072

1492.1092
0.000Z17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1492.1092
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

8a0a44faZ4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 

G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
442
162
02
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
synth_design: 2

00:00:072

00:00:222

1492.1092	
967.457Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002

00:00:002

1492.1092
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2G
EC:/Verilog-lab/AXI_UART/AXI_UART.runs/synth_1/AXI_UART_BD_wrapper.dcpZ17-1381h px� 
�
Executing command : %s
56330*	planAhead2q
oreport_utilization -file AXI_UART_BD_wrapper_utilization_synth.rpt -pb AXI_UART_BD_wrapper_utilization_synth.pbZ12-24828h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Thu Jan  9 09:42:07 2025Z17-206h px� 


End Record