
>
Refreshing IP repositories
234*coregenZ19-234h px� 
G
"No user IP repositories specified
1154*coregenZ19-1704h px� 
j
"Loaded Vivado IP repository '%s'.
1332*coregen2!
C:/Xilinx/Vivado/2023.2/data/ipZ19-2313h px� 
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental C:/Verilog-lab/practice_zync_btns_leds/practice_zync_btns_leds.srcs/utils_1/imports/synth_1/zync_basys_wrapper.dcpZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2t
rC:/Verilog-lab/practice_zync_btns_leds/practice_zync_btns_leds.srcs/utils_1/imports/synth_1/zync_basys_wrapper.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
n
Command: %s
53*	vivadotcl2=
;synth_design -top zync_basys_wrapper -part xc7z007sclg400-1Z4-113h px� 
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

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
2Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
M
#Helper process launched with PID %s4824*oasys2
6096Z8-7075h px� 
�
%s*synth2{
yStarting RTL Elaboration : Time (s): cpu = 00:00:01 ; elapsed = 00:00:03 . Memory (MB): peak = 1328.180 ; gain = 439.539
h px� 
�
synthesizing module '%s'%s4497*oasys2
zync_basys_wrapper2
 2w
sc:/Verilog-lab/practice_zync_btns_leds/practice_zync_btns_leds.gen/sources_1/bd/zync_basys/hdl/zync_basys_wrapper.v2
138@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2

zync_basys2
 2q
mc:/Verilog-lab/practice_zync_btns_leds/practice_zync_btns_leds.gen/sources_1/bd/zync_basys/synth/zync_basys.v2
5828@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
zync_basys_axi_gpio_0_02
 2�
�C:/Verilog-lab/practice_zync_btns_leds/practice_zync_btns_leds.runs/synth_1/.Xil/Vivado-18244-COMSYS01/realtime/zync_basys_axi_gpio_0_0_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
zync_basys_axi_gpio_0_02
 2
02
12�
�C:/Verilog-lab/practice_zync_btns_leds/practice_zync_btns_leds.runs/synth_1/.Xil/Vivado-18244-COMSYS01/realtime/zync_basys_axi_gpio_0_0_stub.v2
68@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2&
$zync_basys_axi_gpio_dip_axi_periph_02
 2q
mc:/Verilog-lab/practice_zync_btns_leds/practice_zync_btns_leds.gen/sources_1/bd/zync_basys/synth/zync_basys.v2
9278@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
m00_couplers_imp_3IVWM32
 2q
mc:/Verilog-lab/practice_zync_btns_leds/practice_zync_btns_leds.gen/sources_1/bd/zync_basys/synth/zync_basys.v2
138@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
m00_couplers_imp_3IVWM32
 2
02
12q
mc:/Verilog-lab/practice_zync_btns_leds/practice_zync_btns_leds.gen/sources_1/bd/zync_basys/synth/zync_basys.v2
138@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
m01_couplers_imp_TD4AL92
 2q
mc:/Verilog-lab/practice_zync_btns_leds/practice_zync_btns_leds.gen/sources_1/bd/zync_basys/synth/zync_basys.v2
1458@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
m01_couplers_imp_TD4AL92
 2
02
12q
mc:/Verilog-lab/practice_zync_btns_leds/practice_zync_btns_leds.gen/sources_1/bd/zync_basys/synth/zync_basys.v2
1458@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
s00_couplers_imp_USDY562
 2q
mc:/Verilog-lab/practice_zync_btns_leds/practice_zync_btns_leds.gen/sources_1/bd/zync_basys/synth/zync_basys.v2
2778@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
zync_basys_auto_pc_02
 2�
�C:/Verilog-lab/practice_zync_btns_leds/practice_zync_btns_leds.runs/synth_1/.Xil/Vivado-18244-COMSYS01/realtime/zync_basys_auto_pc_0_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
zync_basys_auto_pc_02
 2
02
12�
�C:/Verilog-lab/practice_zync_btns_leds/practice_zync_btns_leds.runs/synth_1/.Xil/Vivado-18244-COMSYS01/realtime/zync_basys_auto_pc_0_stub.v2
68@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
s00_couplers_imp_USDY562
 2
02
12q
mc:/Verilog-lab/practice_zync_btns_leds/practice_zync_btns_leds.gen/sources_1/bd/zync_basys/synth/zync_basys.v2
2778@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
zync_basys_xbar_02
 2�
�C:/Verilog-lab/practice_zync_btns_leds/practice_zync_btns_leds.runs/synth_1/.Xil/Vivado-18244-COMSYS01/realtime/zync_basys_xbar_0_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
zync_basys_xbar_02
 2
02
12�
�C:/Verilog-lab/practice_zync_btns_leds/practice_zync_btns_leds.runs/synth_1/.Xil/Vivado-18244-COMSYS01/realtime/zync_basys_xbar_0_stub.v2
68@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
m_axi_awprot2
zync_basys_xbar_02
xbar2q
mc:/Verilog-lab/practice_zync_btns_leds/practice_zync_btns_leds.gen/sources_1/bd/zync_basys/synth/zync_basys.v2
14318@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
m_axi_arprot2
zync_basys_xbar_02
xbar2q
mc:/Verilog-lab/practice_zync_btns_leds/practice_zync_btns_leds.gen/sources_1/bd/zync_basys/synth/zync_basys.v2
14318@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
xbar2
zync_basys_xbar_02
402
382q
mc:/Verilog-lab/practice_zync_btns_leds/practice_zync_btns_leds.gen/sources_1/bd/zync_basys/synth/zync_basys.v2
14318@Z8-7023h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2&
$zync_basys_axi_gpio_dip_axi_periph_02
 2
02
12q
mc:/Verilog-lab/practice_zync_btns_leds/practice_zync_btns_leds.gen/sources_1/bd/zync_basys/synth/zync_basys.v2
9278@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
zync_basys_axi_gpio_1_02
 2�
�C:/Verilog-lab/practice_zync_btns_leds/practice_zync_btns_leds.runs/synth_1/.Xil/Vivado-18244-COMSYS01/realtime/zync_basys_axi_gpio_1_0_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
zync_basys_axi_gpio_1_02
 2
02
12�
�C:/Verilog-lab/practice_zync_btns_leds/practice_zync_btns_leds.runs/synth_1/.Xil/Vivado-18244-COMSYS01/realtime/zync_basys_axi_gpio_1_0_stub.v2
68@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2#
!zync_basys_rst_axi_gpio_dip_50M_02
 2�
�C:/Verilog-lab/practice_zync_btns_leds/practice_zync_btns_leds.runs/synth_1/.Xil/Vivado-18244-COMSYS01/realtime/zync_basys_rst_axi_gpio_dip_50M_0_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2#
!zync_basys_rst_axi_gpio_dip_50M_02
 2
02
12�
�C:/Verilog-lab/practice_zync_btns_leds/practice_zync_btns_leds.runs/synth_1/.Xil/Vivado-18244-COMSYS01/realtime/zync_basys_rst_axi_gpio_dip_50M_0_stub.v2
68@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2

mb_reset2#
!zync_basys_rst_axi_gpio_dip_50M_02
rst_axi_gpio_dip_50M2q
mc:/Verilog-lab/practice_zync_btns_leds/practice_zync_btns_leds.gen/sources_1/bd/zync_basys/synth/zync_basys.v2
8558@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
bus_struct_reset2#
!zync_basys_rst_axi_gpio_dip_50M_02
rst_axi_gpio_dip_50M2q
mc:/Verilog-lab/practice_zync_btns_leds/practice_zync_btns_leds.gen/sources_1/bd/zync_basys/synth/zync_basys.v2
8558@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
peripheral_reset2#
!zync_basys_rst_axi_gpio_dip_50M_02
rst_axi_gpio_dip_50M2q
mc:/Verilog-lab/practice_zync_btns_leds/practice_zync_btns_leds.gen/sources_1/bd/zync_basys/synth/zync_basys.v2
8558@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
interconnect_aresetn2#
!zync_basys_rst_axi_gpio_dip_50M_02
rst_axi_gpio_dip_50M2q
mc:/Verilog-lab/practice_zync_btns_leds/practice_zync_btns_leds.gen/sources_1/bd/zync_basys/synth/zync_basys.v2
8558@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
rst_axi_gpio_dip_50M2#
!zync_basys_rst_axi_gpio_dip_50M_02
102
62q
mc:/Verilog-lab/practice_zync_btns_leds/practice_zync_btns_leds.gen/sources_1/bd/zync_basys/synth/zync_basys.v2
8558@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2#
!zync_basys_processing_system7_0_02
 2�
�C:/Verilog-lab/practice_zync_btns_leds/practice_zync_btns_leds.runs/synth_1/.Xil/Vivado-18244-COMSYS01/realtime/zync_basys_processing_system7_0_0_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2#
!zync_basys_processing_system7_0_02
 2
02
12�
�C:/Verilog-lab/practice_zync_btns_leds/practice_zync_btns_leds.runs/synth_1/.Xil/Vivado-18244-COMSYS01/realtime/zync_basys_processing_system7_0_0_stub.v2
68@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

zync_basys2
 2
02
12q
mc:/Verilog-lab/practice_zync_btns_leds/practice_zync_btns_leds.gen/sources_1/bd/zync_basys/synth/zync_basys.v2
5828@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
zync_basys_wrapper2
 2
02
12w
sc:/Verilog-lab/practice_zync_btns_leds/practice_zync_btns_leds.gen/sources_1/bd/zync_basys/hdl/zync_basys_wrapper.v2
138@Z8-6155h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2
s00_couplers_imp_USDY56Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2
s00_couplers_imp_USDY56Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2
m01_couplers_imp_TD4AL9Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2
m01_couplers_imp_TD4AL9Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_ACLK2
m01_couplers_imp_TD4AL9Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	S_ARESETN2
m01_couplers_imp_TD4AL9Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2
m00_couplers_imp_3IVWM3Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2
m00_couplers_imp_3IVWM3Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_ACLK2
m00_couplers_imp_3IVWM3Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	S_ARESETN2
m00_couplers_imp_3IVWM3Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

M00_ACLK2&
$zync_basys_axi_gpio_dip_axi_periph_0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M00_ARESETN2&
$zync_basys_axi_gpio_dip_axi_periph_0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

M01_ACLK2&
$zync_basys_axi_gpio_dip_axi_periph_0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M01_ARESETN2&
$zync_basys_axi_gpio_dip_axi_periph_0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

S00_ACLK2&
$zync_basys_axi_gpio_dip_axi_periph_0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S00_ARESETN2&
$zync_basys_axi_gpio_dip_axi_periph_0Z8-7129h px� 
�
%s*synth2{
yFinished RTL Elaboration : Time (s): cpu = 00:00:01 ; elapsed = 00:00:04 . Memory (MB): peak = 1441.391 ; gain = 552.750
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:01 ; elapsed = 00:00:04 . Memory (MB): peak = 1441.391 ; gain = 552.750
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
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:01 ; elapsed = 00:00:04 . Memory (MB): peak = 1441.391 ; gain = 552.750
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
00:00:00.0122

1441.3912
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
�c:/Verilog-lab/practice_zync_btns_leds/practice_zync_btns_leds.gen/sources_1/bd/zync_basys/ip/zync_basys_processing_system7_0_0/zync_basys_processing_system7_0_0/zync_basys_processing_system7_0_0_in_context.xdc2
zync_basys_i/zync_basys	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Verilog-lab/practice_zync_btns_leds/practice_zync_btns_leds.gen/sources_1/bd/zync_basys/ip/zync_basys_processing_system7_0_0/zync_basys_processing_system7_0_0/zync_basys_processing_system7_0_0_in_context.xdc2
zync_basys_i/zync_basys	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Verilog-lab/practice_zync_btns_leds/practice_zync_btns_leds.gen/sources_1/bd/zync_basys/ip/zync_basys_axi_gpio_0_0/zync_basys_axi_gpio_0_0/zync_basys_axi_gpio_0_0_in_context.xdc2
zync_basys_i/axi_gpio_dip	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Verilog-lab/practice_zync_btns_leds/practice_zync_btns_leds.gen/sources_1/bd/zync_basys/ip/zync_basys_axi_gpio_0_0/zync_basys_axi_gpio_0_0/zync_basys_axi_gpio_0_0_in_context.xdc2
zync_basys_i/axi_gpio_dip	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Verilog-lab/practice_zync_btns_leds/practice_zync_btns_leds.gen/sources_1/bd/zync_basys/ip/zync_basys_xbar_0/zync_basys_xbar_0/zync_basys_xbar_0_in_context.xdc2-
)zync_basys_i/axi_gpio_dip_axi_periph/xbar	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Verilog-lab/practice_zync_btns_leds/practice_zync_btns_leds.gen/sources_1/bd/zync_basys/ip/zync_basys_xbar_0/zync_basys_xbar_0/zync_basys_xbar_0_in_context.xdc2-
)zync_basys_i/axi_gpio_dip_axi_periph/xbar	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Verilog-lab/practice_zync_btns_leds/practice_zync_btns_leds.gen/sources_1/bd/zync_basys/ip/zync_basys_auto_pc_0/zync_basys_auto_pc_0/zync_basys_auto_pc_0_in_context.xdc2=
9zync_basys_i/axi_gpio_dip_axi_periph/s00_couplers/auto_pc	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Verilog-lab/practice_zync_btns_leds/practice_zync_btns_leds.gen/sources_1/bd/zync_basys/ip/zync_basys_auto_pc_0/zync_basys_auto_pc_0/zync_basys_auto_pc_0_in_context.xdc2=
9zync_basys_i/axi_gpio_dip_axi_periph/s00_couplers/auto_pc	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Verilog-lab/practice_zync_btns_leds/practice_zync_btns_leds.gen/sources_1/bd/zync_basys/ip/zync_basys_rst_axi_gpio_dip_50M_0/zync_basys_rst_axi_gpio_dip_50M_0/zync_basys_rst_axi_gpio_dip_50M_0_in_context.xdc2%
!zync_basys_i/rst_axi_gpio_dip_50M	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Verilog-lab/practice_zync_btns_leds/practice_zync_btns_leds.gen/sources_1/bd/zync_basys/ip/zync_basys_rst_axi_gpio_dip_50M_0/zync_basys_rst_axi_gpio_dip_50M_0/zync_basys_rst_axi_gpio_dip_50M_0_in_context.xdc2%
!zync_basys_i/rst_axi_gpio_dip_50M	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Verilog-lab/practice_zync_btns_leds/practice_zync_btns_leds.gen/sources_1/bd/zync_basys/ip/zync_basys_axi_gpio_1_0/zync_basys_axi_gpio_1_0/zync_basys_axi_gpio_1_0_in_context.xdc2
zync_basys_i/axi_gpio_led	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Verilog-lab/practice_zync_btns_leds/practice_zync_btns_leds.gen/sources_1/bd/zync_basys/ip/zync_basys_axi_gpio_1_0/zync_basys_axi_gpio_1_0/zync_basys_axi_gpio_1_0_in_context.xdc2
zync_basys_i/axi_gpio_led	8Z20-847h px� 
�
Parsing XDC File [%s]
179*designutils2^
ZC:/Verilog-lab/practice_zync_btns_leds/practice_zync_btns_leds.runs/synth_1/dont_touch.xdc8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2^
ZC:/Verilog-lab/practice_zync_btns_leds/practice_zync_btns_leds.runs/synth_1/dont_touch.xdc8Z20-178h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1441.3912
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
00:00:00.0042

1441.3912
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
Finished Constraint Validation : Time (s): cpu = 00:00:04 ; elapsed = 00:00:09 . Memory (MB): peak = 1441.391 ; gain = 552.750
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
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:04 ; elapsed = 00:00:09 . Memory (MB): peak = 1441.391 ; gain = 552.750
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
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:04 ; elapsed = 00:00:09 . Memory (MB): peak = 1441.391 ; gain = 552.750
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
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:04 ; elapsed = 00:00:09 . Memory (MB): peak = 1441.391 ; gain = 552.750
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
9Port %s in module %s is either unconnected or has no load4866*oasys2

M00_ACLK2&
$zync_basys_axi_gpio_dip_axi_periph_0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M00_ARESETN2&
$zync_basys_axi_gpio_dip_axi_periph_0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

M01_ACLK2&
$zync_basys_axi_gpio_dip_axi_periph_0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M01_ARESETN2&
$zync_basys_axi_gpio_dip_axi_periph_0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

S00_ACLK2&
$zync_basys_axi_gpio_dip_axi_periph_0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S00_ARESETN2&
$zync_basys_axi_gpio_dip_axi_periph_0Z8-7129h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:04 ; elapsed = 00:00:10 . Memory (MB): peak = 1441.391 ; gain = 552.750
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
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:05 ; elapsed = 00:00:13 . Memory (MB): peak = 1441.391 ; gain = 552.750
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
}Finished Timing Optimization : Time (s): cpu = 00:00:05 ; elapsed = 00:00:13 . Memory (MB): peak = 1441.391 ; gain = 552.750
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
|Finished Technology Mapping : Time (s): cpu = 00:00:05 ; elapsed = 00:00:13 . Memory (MB): peak = 1441.391 ; gain = 552.750
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
vFinished IO Insertion : Time (s): cpu = 00:00:06 ; elapsed = 00:00:16 . Memory (MB): peak = 1447.816 ; gain = 559.176
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
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:06 ; elapsed = 00:00:16 . Memory (MB): peak = 1447.816 ; gain = 559.176
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
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:06 ; elapsed = 00:00:16 . Memory (MB): peak = 1447.816 ; gain = 559.176
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
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:06 ; elapsed = 00:00:16 . Memory (MB): peak = 1447.816 ; gain = 559.176
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:06 ; elapsed = 00:00:16 . Memory (MB): peak = 1447.816 ; gain = 559.176
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
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:06 ; elapsed = 00:00:16 . Memory (MB): peak = 1447.816 ; gain = 559.176
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
Q
%s
*synth29
7+------+----------------------------------+----------+
h p
x
� 
Q
%s
*synth29
7|      |BlackBox name                     |Instances |
h p
x
� 
Q
%s
*synth29
7+------+----------------------------------+----------+
h p
x
� 
Q
%s
*synth29
7|1     |zync_basys_xbar_0                 |         1|
h p
x
� 
Q
%s
*synth29
7|2     |zync_basys_auto_pc_0              |         1|
h p
x
� 
Q
%s
*synth29
7|3     |zync_basys_axi_gpio_0_0           |         1|
h p
x
� 
Q
%s
*synth29
7|4     |zync_basys_axi_gpio_1_0           |         1|
h p
x
� 
Q
%s
*synth29
7|5     |zync_basys_rst_axi_gpio_dip_50M_0 |         1|
h p
x
� 
Q
%s
*synth29
7|6     |zync_basys_processing_system7_0_0 |         1|
h p
x
� 
Q
%s
*synth29
7+------+----------------------------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
K
%s*synth23
1+------+--------------------------------+------+
h px� 
K
%s*synth23
1|      |Cell                            |Count |
h px� 
K
%s*synth23
1+------+--------------------------------+------+
h px� 
K
%s*synth23
1|1     |zync_basys_auto_pc              |     1|
h px� 
K
%s*synth23
1|2     |zync_basys_axi_gpio_0           |     1|
h px� 
K
%s*synth23
1|3     |zync_basys_axi_gpio_1           |     1|
h px� 
K
%s*synth23
1|4     |zync_basys_processing_system7_0 |     1|
h px� 
K
%s*synth23
1|5     |zync_basys_rst_axi_gpio_dip_50M |     1|
h px� 
K
%s*synth23
1|6     |zync_basys_xbar                 |     1|
h px� 
K
%s*synth23
1|7     |IBUF                            |     2|
h px� 
K
%s*synth23
1|8     |OBUF                            |     6|
h px� 
K
%s*synth23
1+------+--------------------------------+------+
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
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:06 ; elapsed = 00:00:16 . Memory (MB): peak = 1447.816 ; gain = 559.176
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
FSynthesis finished with 0 errors, 0 critical warnings and 7 warnings.
h p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:04 ; elapsed = 00:00:15 . Memory (MB): peak = 1447.816 ; gain = 559.176
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:06 ; elapsed = 00:00:16 . Memory (MB): peak = 1447.816 ; gain = 559.176
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
00:00:00.0092

1459.8672
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

1464.4612
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
U
%Synth Design complete | Checksum: %s
562*	vivadotcl2	
5bca8b2Z4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 

G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
452
312
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

00:00:082

00:00:192

1464.4612	
970.660Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002

00:00:002

1464.4612
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2d
bC:/Verilog-lab/practice_zync_btns_leds/practice_zync_btns_leds.runs/synth_1/zync_basys_wrapper.dcpZ17-1381h px� 
�
%s4*runtcl2|
zExecuting : report_utilization -file zync_basys_wrapper_utilization_synth.rpt -pb zync_basys_wrapper_utilization_synth.pb
h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Tue Nov 26 14:40:10 2024Z17-206h px� 


End Record