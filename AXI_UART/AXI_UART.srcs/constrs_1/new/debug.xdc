


connect_debug_port u_ila_0/probe4 [get_nets [list AXI_UART_BD_i/my_uart_rx_0/inst/my_S2P_uut/enable]]
connect_debug_port u_ila_0/probe5 [get_nets [list AXI_UART_BD_i/my_uart_rx_0/inst/my_S2P_uut/enable_1D]]
connect_debug_port u_ila_0/probe6 [get_nets [list AXI_UART_BD_i/my_uart_rx_0/inst/my_S2P_uut/enable_2D]]


create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list AXI_UART_BD_i/processing_system7_0/inst/FCLK_CLK0]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 32 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {AXI_UART_BD_i/myip_slave_lite_v1_0_0/inst/slv_reg_uart_rx_data[0]} {AXI_UART_BD_i/myip_slave_lite_v1_0_0/inst/slv_reg_uart_rx_data[1]} {AXI_UART_BD_i/myip_slave_lite_v1_0_0/inst/slv_reg_uart_rx_data[2]} {AXI_UART_BD_i/myip_slave_lite_v1_0_0/inst/slv_reg_uart_rx_data[3]} {AXI_UART_BD_i/myip_slave_lite_v1_0_0/inst/slv_reg_uart_rx_data[4]} {AXI_UART_BD_i/myip_slave_lite_v1_0_0/inst/slv_reg_uart_rx_data[5]} {AXI_UART_BD_i/myip_slave_lite_v1_0_0/inst/slv_reg_uart_rx_data[6]} {AXI_UART_BD_i/myip_slave_lite_v1_0_0/inst/slv_reg_uart_rx_data[7]} {AXI_UART_BD_i/myip_slave_lite_v1_0_0/inst/slv_reg_uart_rx_data[8]} {AXI_UART_BD_i/myip_slave_lite_v1_0_0/inst/slv_reg_uart_rx_data[9]} {AXI_UART_BD_i/myip_slave_lite_v1_0_0/inst/slv_reg_uart_rx_data[10]} {AXI_UART_BD_i/myip_slave_lite_v1_0_0/inst/slv_reg_uart_rx_data[11]} {AXI_UART_BD_i/myip_slave_lite_v1_0_0/inst/slv_reg_uart_rx_data[12]} {AXI_UART_BD_i/myip_slave_lite_v1_0_0/inst/slv_reg_uart_rx_data[13]} {AXI_UART_BD_i/myip_slave_lite_v1_0_0/inst/slv_reg_uart_rx_data[14]} {AXI_UART_BD_i/myip_slave_lite_v1_0_0/inst/slv_reg_uart_rx_data[15]} {AXI_UART_BD_i/myip_slave_lite_v1_0_0/inst/slv_reg_uart_rx_data[16]} {AXI_UART_BD_i/myip_slave_lite_v1_0_0/inst/slv_reg_uart_rx_data[17]} {AXI_UART_BD_i/myip_slave_lite_v1_0_0/inst/slv_reg_uart_rx_data[18]} {AXI_UART_BD_i/myip_slave_lite_v1_0_0/inst/slv_reg_uart_rx_data[19]} {AXI_UART_BD_i/myip_slave_lite_v1_0_0/inst/slv_reg_uart_rx_data[20]} {AXI_UART_BD_i/myip_slave_lite_v1_0_0/inst/slv_reg_uart_rx_data[21]} {AXI_UART_BD_i/myip_slave_lite_v1_0_0/inst/slv_reg_uart_rx_data[22]} {AXI_UART_BD_i/myip_slave_lite_v1_0_0/inst/slv_reg_uart_rx_data[23]} {AXI_UART_BD_i/myip_slave_lite_v1_0_0/inst/slv_reg_uart_rx_data[24]} {AXI_UART_BD_i/myip_slave_lite_v1_0_0/inst/slv_reg_uart_rx_data[25]} {AXI_UART_BD_i/myip_slave_lite_v1_0_0/inst/slv_reg_uart_rx_data[26]} {AXI_UART_BD_i/myip_slave_lite_v1_0_0/inst/slv_reg_uart_rx_data[27]} {AXI_UART_BD_i/myip_slave_lite_v1_0_0/inst/slv_reg_uart_rx_data[28]} {AXI_UART_BD_i/myip_slave_lite_v1_0_0/inst/slv_reg_uart_rx_data[29]} {AXI_UART_BD_i/myip_slave_lite_v1_0_0/inst/slv_reg_uart_rx_data[30]} {AXI_UART_BD_i/myip_slave_lite_v1_0_0/inst/slv_reg_uart_rx_data[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 32 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {AXI_UART_BD_i/myip_slave_lite_v1_0_0/inst/slv_reg_uart_rx_ready[0]} {AXI_UART_BD_i/myip_slave_lite_v1_0_0/inst/slv_reg_uart_rx_ready[1]} {AXI_UART_BD_i/myip_slave_lite_v1_0_0/inst/slv_reg_uart_rx_ready[2]} {AXI_UART_BD_i/myip_slave_lite_v1_0_0/inst/slv_reg_uart_rx_ready[3]} {AXI_UART_BD_i/myip_slave_lite_v1_0_0/inst/slv_reg_uart_rx_ready[4]} {AXI_UART_BD_i/myip_slave_lite_v1_0_0/inst/slv_reg_uart_rx_ready[5]} {AXI_UART_BD_i/myip_slave_lite_v1_0_0/inst/slv_reg_uart_rx_ready[6]} {AXI_UART_BD_i/myip_slave_lite_v1_0_0/inst/slv_reg_uart_rx_ready[7]} {AXI_UART_BD_i/myip_slave_lite_v1_0_0/inst/slv_reg_uart_rx_ready[8]} {AXI_UART_BD_i/myip_slave_lite_v1_0_0/inst/slv_reg_uart_rx_ready[9]} {AXI_UART_BD_i/myip_slave_lite_v1_0_0/inst/slv_reg_uart_rx_ready[10]} {AXI_UART_BD_i/myip_slave_lite_v1_0_0/inst/slv_reg_uart_rx_ready[11]} {AXI_UART_BD_i/myip_slave_lite_v1_0_0/inst/slv_reg_uart_rx_ready[12]} {AXI_UART_BD_i/myip_slave_lite_v1_0_0/inst/slv_reg_uart_rx_ready[13]} {AXI_UART_BD_i/myip_slave_lite_v1_0_0/inst/slv_reg_uart_rx_ready[14]} {AXI_UART_BD_i/myip_slave_lite_v1_0_0/inst/slv_reg_uart_rx_ready[15]} {AXI_UART_BD_i/myip_slave_lite_v1_0_0/inst/slv_reg_uart_rx_ready[16]} {AXI_UART_BD_i/myip_slave_lite_v1_0_0/inst/slv_reg_uart_rx_ready[17]} {AXI_UART_BD_i/myip_slave_lite_v1_0_0/inst/slv_reg_uart_rx_ready[18]} {AXI_UART_BD_i/myip_slave_lite_v1_0_0/inst/slv_reg_uart_rx_ready[19]} {AXI_UART_BD_i/myip_slave_lite_v1_0_0/inst/slv_reg_uart_rx_ready[20]} {AXI_UART_BD_i/myip_slave_lite_v1_0_0/inst/slv_reg_uart_rx_ready[21]} {AXI_UART_BD_i/myip_slave_lite_v1_0_0/inst/slv_reg_uart_rx_ready[22]} {AXI_UART_BD_i/myip_slave_lite_v1_0_0/inst/slv_reg_uart_rx_ready[23]} {AXI_UART_BD_i/myip_slave_lite_v1_0_0/inst/slv_reg_uart_rx_ready[24]} {AXI_UART_BD_i/myip_slave_lite_v1_0_0/inst/slv_reg_uart_rx_ready[25]} {AXI_UART_BD_i/myip_slave_lite_v1_0_0/inst/slv_reg_uart_rx_ready[26]} {AXI_UART_BD_i/myip_slave_lite_v1_0_0/inst/slv_reg_uart_rx_ready[27]} {AXI_UART_BD_i/myip_slave_lite_v1_0_0/inst/slv_reg_uart_rx_ready[28]} {AXI_UART_BD_i/myip_slave_lite_v1_0_0/inst/slv_reg_uart_rx_ready[29]} {AXI_UART_BD_i/myip_slave_lite_v1_0_0/inst/slv_reg_uart_rx_ready[30]} {AXI_UART_BD_i/myip_slave_lite_v1_0_0/inst/slv_reg_uart_rx_ready[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 8 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {AXI_UART_BD_i/my_uart_rx_0/inst/my_S2P_uut/P_DATA[0]} {AXI_UART_BD_i/my_uart_rx_0/inst/my_S2P_uut/P_DATA[1]} {AXI_UART_BD_i/my_uart_rx_0/inst/my_S2P_uut/P_DATA[2]} {AXI_UART_BD_i/my_uart_rx_0/inst/my_S2P_uut/P_DATA[3]} {AXI_UART_BD_i/my_uart_rx_0/inst/my_S2P_uut/P_DATA[4]} {AXI_UART_BD_i/my_uart_rx_0/inst/my_S2P_uut/P_DATA[5]} {AXI_UART_BD_i/my_uart_rx_0/inst/my_S2P_uut/P_DATA[6]} {AXI_UART_BD_i/my_uart_rx_0/inst/my_S2P_uut/P_DATA[7]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 11 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list {AXI_UART_BD_i/my_uart_rx_0/inst/my_S2P_uut/p_data[0]} {AXI_UART_BD_i/my_uart_rx_0/inst/my_S2P_uut/p_data[1]} {AXI_UART_BD_i/my_uart_rx_0/inst/my_S2P_uut/p_data[2]} {AXI_UART_BD_i/my_uart_rx_0/inst/my_S2P_uut/p_data[3]} {AXI_UART_BD_i/my_uart_rx_0/inst/my_S2P_uut/p_data[4]} {AXI_UART_BD_i/my_uart_rx_0/inst/my_S2P_uut/p_data[5]} {AXI_UART_BD_i/my_uart_rx_0/inst/my_S2P_uut/p_data[6]} {AXI_UART_BD_i/my_uart_rx_0/inst/my_S2P_uut/p_data[7]} {AXI_UART_BD_i/my_uart_rx_0/inst/my_S2P_uut/p_data[8]} {AXI_UART_BD_i/my_uart_rx_0/inst/my_S2P_uut/p_data[9]} {AXI_UART_BD_i/my_uart_rx_0/inst/my_S2P_uut/p_data[10]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 4 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list {AXI_UART_BD_i/my_uart_rx_0/inst/my_S2P_uut/index[0]} {AXI_UART_BD_i/my_uart_rx_0/inst/my_S2P_uut/index[1]} {AXI_UART_BD_i/my_uart_rx_0/inst/my_S2P_uut/index[2]} {AXI_UART_BD_i/my_uart_rx_0/inst/my_S2P_uut/index[3]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property port_width 1 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list AXI_UART_BD_i/my_uart_rx_0/inst/my_S2P_uut/READY]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe6]
set_property port_width 1 [get_debug_ports u_ila_0/probe6]
connect_debug_port u_ila_0/probe6 [get_nets [list AXI_UART_BD_i/myip_slave_lite_v1_0_0/inst/RX_READY]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe7]
set_property port_width 1 [get_debug_ports u_ila_0/probe7]
connect_debug_port u_ila_0/probe7 [get_nets [list AXI_UART_BD_i/myip_slave_lite_v1_0_0/inst/rx_ready]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets u_ila_0_FCLK_CLK0]
