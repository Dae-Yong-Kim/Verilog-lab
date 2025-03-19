













connect_debug_port u_ila_0/probe2 [get_nets [list {my_SPI_RAM_i/spi_slave_0/inst/index[0]} {my_SPI_RAM_i/spi_slave_0/inst/index[1]} {my_SPI_RAM_i/spi_slave_0/inst/index[2]} {my_SPI_RAM_i/spi_slave_0/inst/index[3]} {my_SPI_RAM_i/spi_slave_0/inst/index[4]}]]


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
connect_debug_port u_ila_0/clk [get_nets [list my_SPI_RAM_i/processing_system7_0/inst/FCLK_CLK0]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 5 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {my_SPI_RAM_i/spi_master_0/inst/csn_rd_cnt[0]} {my_SPI_RAM_i/spi_master_0/inst/csn_rd_cnt[1]} {my_SPI_RAM_i/spi_master_0/inst/csn_rd_cnt[2]} {my_SPI_RAM_i/spi_master_0/inst/csn_rd_cnt[3]} {my_SPI_RAM_i/spi_master_0/inst/csn_rd_cnt[4]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 16 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {my_SPI_RAM_i/spi_master_0/inst/mosi_data[0]} {my_SPI_RAM_i/spi_master_0/inst/mosi_data[1]} {my_SPI_RAM_i/spi_master_0/inst/mosi_data[2]} {my_SPI_RAM_i/spi_master_0/inst/mosi_data[3]} {my_SPI_RAM_i/spi_master_0/inst/mosi_data[4]} {my_SPI_RAM_i/spi_master_0/inst/mosi_data[5]} {my_SPI_RAM_i/spi_master_0/inst/mosi_data[6]} {my_SPI_RAM_i/spi_master_0/inst/mosi_data[7]} {my_SPI_RAM_i/spi_master_0/inst/mosi_data[8]} {my_SPI_RAM_i/spi_master_0/inst/mosi_data[9]} {my_SPI_RAM_i/spi_master_0/inst/mosi_data[10]} {my_SPI_RAM_i/spi_master_0/inst/mosi_data[11]} {my_SPI_RAM_i/spi_master_0/inst/mosi_data[12]} {my_SPI_RAM_i/spi_master_0/inst/mosi_data[13]} {my_SPI_RAM_i/spi_master_0/inst/mosi_data[14]} {my_SPI_RAM_i/spi_master_0/inst/mosi_data[15]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 5 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {my_SPI_RAM_i/spi_master_0/inst/csn_wr_cnt[0]} {my_SPI_RAM_i/spi_master_0/inst/csn_wr_cnt[1]} {my_SPI_RAM_i/spi_master_0/inst/csn_wr_cnt[2]} {my_SPI_RAM_i/spi_master_0/inst/csn_wr_cnt[3]} {my_SPI_RAM_i/spi_master_0/inst/csn_wr_cnt[4]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 7 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list {my_SPI_RAM_i/spi_master_0/inst/ADDR[0]} {my_SPI_RAM_i/spi_master_0/inst/ADDR[1]} {my_SPI_RAM_i/spi_master_0/inst/ADDR[2]} {my_SPI_RAM_i/spi_master_0/inst/ADDR[3]} {my_SPI_RAM_i/spi_master_0/inst/ADDR[4]} {my_SPI_RAM_i/spi_master_0/inst/ADDR[5]} {my_SPI_RAM_i/spi_master_0/inst/ADDR[6]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 8 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list {my_SPI_RAM_i/spi_master_0/inst/miso_data[0]} {my_SPI_RAM_i/spi_master_0/inst/miso_data[1]} {my_SPI_RAM_i/spi_master_0/inst/miso_data[2]} {my_SPI_RAM_i/spi_master_0/inst/miso_data[3]} {my_SPI_RAM_i/spi_master_0/inst/miso_data[4]} {my_SPI_RAM_i/spi_master_0/inst/miso_data[5]} {my_SPI_RAM_i/spi_master_0/inst/miso_data[6]} {my_SPI_RAM_i/spi_master_0/inst/miso_data[7]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property port_width 8 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list {my_SPI_RAM_i/spi_master_0/inst/RD_DATA[0]} {my_SPI_RAM_i/spi_master_0/inst/RD_DATA[1]} {my_SPI_RAM_i/spi_master_0/inst/RD_DATA[2]} {my_SPI_RAM_i/spi_master_0/inst/RD_DATA[3]} {my_SPI_RAM_i/spi_master_0/inst/RD_DATA[4]} {my_SPI_RAM_i/spi_master_0/inst/RD_DATA[5]} {my_SPI_RAM_i/spi_master_0/inst/RD_DATA[6]} {my_SPI_RAM_i/spi_master_0/inst/RD_DATA[7]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe6]
set_property port_width 2 [get_debug_ports u_ila_0/probe6]
connect_debug_port u_ila_0/probe6 [get_nets [list {my_SPI_RAM_i/spi_master_0/inst/CMD[0]} {my_SPI_RAM_i/spi_master_0/inst/CMD[1]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe7]
set_property port_width 5 [get_debug_ports u_ila_0/probe7]
connect_debug_port u_ila_0/probe7 [get_nets [list {my_SPI_RAM_i/spi_master_0/inst/rd_cnt[0]} {my_SPI_RAM_i/spi_master_0/inst/rd_cnt[1]} {my_SPI_RAM_i/spi_master_0/inst/rd_cnt[2]} {my_SPI_RAM_i/spi_master_0/inst/rd_cnt[3]} {my_SPI_RAM_i/spi_master_0/inst/rd_cnt[4]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe8]
set_property port_width 8 [get_debug_ports u_ila_0/probe8]
connect_debug_port u_ila_0/probe8 [get_nets [list {my_SPI_RAM_i/spi_master_0/inst/WR_DATA[0]} {my_SPI_RAM_i/spi_master_0/inst/WR_DATA[1]} {my_SPI_RAM_i/spi_master_0/inst/WR_DATA[2]} {my_SPI_RAM_i/spi_master_0/inst/WR_DATA[3]} {my_SPI_RAM_i/spi_master_0/inst/WR_DATA[4]} {my_SPI_RAM_i/spi_master_0/inst/WR_DATA[5]} {my_SPI_RAM_i/spi_master_0/inst/WR_DATA[6]} {my_SPI_RAM_i/spi_master_0/inst/WR_DATA[7]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe9]
set_property port_width 7 [get_debug_ports u_ila_0/probe9]
connect_debug_port u_ila_0/probe9 [get_nets [list {my_SPI_RAM_i/spi_slave_0/inst/ADDR[0]} {my_SPI_RAM_i/spi_slave_0/inst/ADDR[1]} {my_SPI_RAM_i/spi_slave_0/inst/ADDR[2]} {my_SPI_RAM_i/spi_slave_0/inst/ADDR[3]} {my_SPI_RAM_i/spi_slave_0/inst/ADDR[4]} {my_SPI_RAM_i/spi_slave_0/inst/ADDR[5]} {my_SPI_RAM_i/spi_slave_0/inst/ADDR[6]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe10]
set_property port_width 7 [get_debug_ports u_ila_0/probe10]
connect_debug_port u_ila_0/probe10 [get_nets [list {my_SPI_RAM_i/spi_slave_0/inst/addr[0]} {my_SPI_RAM_i/spi_slave_0/inst/addr[1]} {my_SPI_RAM_i/spi_slave_0/inst/addr[2]} {my_SPI_RAM_i/spi_slave_0/inst/addr[3]} {my_SPI_RAM_i/spi_slave_0/inst/addr[4]} {my_SPI_RAM_i/spi_slave_0/inst/addr[5]} {my_SPI_RAM_i/spi_slave_0/inst/addr[6]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe11]
set_property port_width 8 [get_debug_ports u_ila_0/probe11]
connect_debug_port u_ila_0/probe11 [get_nets [list {my_SPI_RAM_i/spi_slave_0/inst/din[0]} {my_SPI_RAM_i/spi_slave_0/inst/din[1]} {my_SPI_RAM_i/spi_slave_0/inst/din[2]} {my_SPI_RAM_i/spi_slave_0/inst/din[3]} {my_SPI_RAM_i/spi_slave_0/inst/din[4]} {my_SPI_RAM_i/spi_slave_0/inst/din[5]} {my_SPI_RAM_i/spi_slave_0/inst/din[6]} {my_SPI_RAM_i/spi_slave_0/inst/din[7]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe12]
set_property port_width 8 [get_debug_ports u_ila_0/probe12]
connect_debug_port u_ila_0/probe12 [get_nets [list {my_SPI_RAM_i/spi_slave_0/inst/dout[0]} {my_SPI_RAM_i/spi_slave_0/inst/dout[1]} {my_SPI_RAM_i/spi_slave_0/inst/dout[2]} {my_SPI_RAM_i/spi_slave_0/inst/dout[3]} {my_SPI_RAM_i/spi_slave_0/inst/dout[4]} {my_SPI_RAM_i/spi_slave_0/inst/dout[5]} {my_SPI_RAM_i/spi_slave_0/inst/dout[6]} {my_SPI_RAM_i/spi_slave_0/inst/dout[7]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe13]
set_property port_width 5 [get_debug_ports u_ila_0/probe13]
connect_debug_port u_ila_0/probe13 [get_nets [list {my_SPI_RAM_i/spi_slave_0/inst/rd_index[0]} {my_SPI_RAM_i/spi_slave_0/inst/rd_index[1]} {my_SPI_RAM_i/spi_slave_0/inst/rd_index[2]} {my_SPI_RAM_i/spi_slave_0/inst/rd_index[3]} {my_SPI_RAM_i/spi_slave_0/inst/rd_index[4]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe14]
set_property port_width 5 [get_debug_ports u_ila_0/probe14]
connect_debug_port u_ila_0/probe14 [get_nets [list {my_SPI_RAM_i/spi_slave_0/inst/wr_index[0]} {my_SPI_RAM_i/spi_slave_0/inst/wr_index[1]} {my_SPI_RAM_i/spi_slave_0/inst/wr_index[2]} {my_SPI_RAM_i/spi_slave_0/inst/wr_index[3]} {my_SPI_RAM_i/spi_slave_0/inst/wr_index[4]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe15]
set_property port_width 8 [get_debug_ports u_ila_0/probe15]
connect_debug_port u_ila_0/probe15 [get_nets [list {my_SPI_RAM_i/spi_slave_0/inst/DIN[0]} {my_SPI_RAM_i/spi_slave_0/inst/DIN[1]} {my_SPI_RAM_i/spi_slave_0/inst/DIN[2]} {my_SPI_RAM_i/spi_slave_0/inst/DIN[3]} {my_SPI_RAM_i/spi_slave_0/inst/DIN[4]} {my_SPI_RAM_i/spi_slave_0/inst/DIN[5]} {my_SPI_RAM_i/spi_slave_0/inst/DIN[6]} {my_SPI_RAM_i/spi_slave_0/inst/DIN[7]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe16]
set_property port_width 16 [get_debug_ports u_ila_0/probe16]
connect_debug_port u_ila_0/probe16 [get_nets [list {my_SPI_RAM_i/spi_slave_0/inst/reg0[0]} {my_SPI_RAM_i/spi_slave_0/inst/reg0[1]} {my_SPI_RAM_i/spi_slave_0/inst/reg0[2]} {my_SPI_RAM_i/spi_slave_0/inst/reg0[3]} {my_SPI_RAM_i/spi_slave_0/inst/reg0[4]} {my_SPI_RAM_i/spi_slave_0/inst/reg0[5]} {my_SPI_RAM_i/spi_slave_0/inst/reg0[6]} {my_SPI_RAM_i/spi_slave_0/inst/reg0[7]} {my_SPI_RAM_i/spi_slave_0/inst/reg0[8]} {my_SPI_RAM_i/spi_slave_0/inst/reg0[9]} {my_SPI_RAM_i/spi_slave_0/inst/reg0[10]} {my_SPI_RAM_i/spi_slave_0/inst/reg0[11]} {my_SPI_RAM_i/spi_slave_0/inst/reg0[12]} {my_SPI_RAM_i/spi_slave_0/inst/reg0[13]} {my_SPI_RAM_i/spi_slave_0/inst/reg0[14]} {my_SPI_RAM_i/spi_slave_0/inst/reg0[15]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe17]
set_property port_width 8 [get_debug_ports u_ila_0/probe17]
connect_debug_port u_ila_0/probe17 [get_nets [list {my_SPI_RAM_i/spi_slave_0/inst/reg1[0]} {my_SPI_RAM_i/spi_slave_0/inst/reg1[1]} {my_SPI_RAM_i/spi_slave_0/inst/reg1[2]} {my_SPI_RAM_i/spi_slave_0/inst/reg1[3]} {my_SPI_RAM_i/spi_slave_0/inst/reg1[4]} {my_SPI_RAM_i/spi_slave_0/inst/reg1[5]} {my_SPI_RAM_i/spi_slave_0/inst/reg1[6]} {my_SPI_RAM_i/spi_slave_0/inst/reg1[7]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe18]
set_property port_width 8 [get_debug_ports u_ila_0/probe18]
connect_debug_port u_ila_0/probe18 [get_nets [list {my_SPI_RAM_i/RAM_0/inst/DOUT[0]} {my_SPI_RAM_i/RAM_0/inst/DOUT[1]} {my_SPI_RAM_i/RAM_0/inst/DOUT[2]} {my_SPI_RAM_i/RAM_0/inst/DOUT[3]} {my_SPI_RAM_i/RAM_0/inst/DOUT[4]} {my_SPI_RAM_i/RAM_0/inst/DOUT[5]} {my_SPI_RAM_i/RAM_0/inst/DOUT[6]} {my_SPI_RAM_i/RAM_0/inst/DOUT[7]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe19]
set_property port_width 1 [get_debug_ports u_ila_0/probe19]
connect_debug_port u_ila_0/probe19 [get_nets [list my_SPI_RAM_i/spi_slave_0/inst/cmd]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe20]
set_property port_width 1 [get_debug_ports u_ila_0/probe20]
connect_debug_port u_ila_0/probe20 [get_nets [list my_SPI_RAM_i/spi_master_0/inst/CSN]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe21]
set_property port_width 1 [get_debug_ports u_ila_0/probe21]
connect_debug_port u_ila_0/probe21 [get_nets [list my_SPI_RAM_i/spi_master_0/inst/csn_rd_enable]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe22]
set_property port_width 1 [get_debug_ports u_ila_0/probe22]
connect_debug_port u_ila_0/probe22 [get_nets [list my_SPI_RAM_i/spi_master_0/inst/csn_wr_enable]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe23]
set_property port_width 1 [get_debug_ports u_ila_0/probe23]
connect_debug_port u_ila_0/probe23 [get_nets [list my_SPI_RAM_i/spi_slave_0/inst/done]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe24]
set_property port_width 1 [get_debug_ports u_ila_0/probe24]
connect_debug_port u_ila_0/probe24 [get_nets [list my_SPI_RAM_i/spi_master_0/inst/MISO]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe25]
set_property port_width 1 [get_debug_ports u_ila_0/probe25]
connect_debug_port u_ila_0/probe25 [get_nets [list my_SPI_RAM_i/spi_master_0/inst/MOSI]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe26]
set_property port_width 1 [get_debug_ports u_ila_0/probe26]
connect_debug_port u_ila_0/probe26 [get_nets [list my_SPI_RAM_i/spi_master_0/inst/rd_done]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe27]
set_property port_width 1 [get_debug_ports u_ila_0/probe27]
connect_debug_port u_ila_0/probe27 [get_nets [list my_SPI_RAM_i/spi_slave_0/inst/ren]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe28]
set_property port_width 1 [get_debug_ports u_ila_0/probe28]
connect_debug_port u_ila_0/probe28 [get_nets [list my_SPI_RAM_i/spi_master_0/inst/SCLK]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe29]
set_property port_width 1 [get_debug_ports u_ila_0/probe29]
connect_debug_port u_ila_0/probe29 [get_nets [list my_SPI_RAM_i/spi_slave_0/inst/WEN]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe30]
set_property port_width 1 [get_debug_ports u_ila_0/probe30]
connect_debug_port u_ila_0/probe30 [get_nets [list my_SPI_RAM_i/spi_slave_0/inst/wen]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets u_ila_0_FCLK_CLK0]
