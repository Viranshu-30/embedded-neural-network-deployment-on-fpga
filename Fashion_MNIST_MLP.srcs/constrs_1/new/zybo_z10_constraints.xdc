

# Reset signal (button)
set_property -dict { PACKAGE_PIN K18   IOSTANDARD LVCMOS33 } [get_ports { reset }]; #IO_L12N_T1_MRCC_35 Sch=btn[0]

# UART PMOD on JB
set_property -dict { PACKAGE_PIN J15   IOSTANDARD LVCMOS33 } [get_ports { uart_rx_pin }]; #IO_L15P_T2_DQS_34 Sch=jb_p[1]

# Seven Segment Display (simulated with LEDs) on JC and JD
set_property -dict { PACKAGE_PIN W14   IOSTANDARD LVCMOS33 } [get_ports { ssd_segments[0] }]; #IO_L20P_T3_13 Sch=led5_b (segment a)
set_property -dict { PACKAGE_PIN Y14   IOSTANDARD LVCMOS33 } [get_ports { ssd_segments[1] }]; #IO_L19P_T3_13 Sch=led5_g (segment b)
set_property -dict { PACKAGE_PIN T12   IOSTANDARD LVCMOS33 } [get_ports { ssd_segments[2] }]; #IO_L23P_T3_35 Sch=led[0] (segment c)
set_property -dict { PACKAGE_PIN U12   IOSTANDARD LVCMOS33 } [get_ports { ssd_segments[3] }]; #IO_L23N_T3_35 Sch=led[1] (segment d)
set_property -dict { PACKAGE_PIN U14   IOSTANDARD LVCMOS33 } [get_ports { ssd_segments[4] }]; #IO_0_35 Sch=led[2] (segment e)
set_property -dict { PACKAGE_PIN U15   IOSTANDARD LVCMOS33 } [get_ports { ssd_segments[5] }]; #IO_L3N_T0_DQS_AD1N_35 Sch=led[3] (segment f)
set_property -dict { PACKAGE_PIN V17   IOSTANDARD LVCMOS33 } [get_ports { ssd_segments[6] }]; #IO_L18P_T2_34 Sch=led6_r (segment g)
set_property -dict { PACKAGE_PIN V18   IOSTANDARD LVCMOS33 } [get_ports { ssd_anode }]; #IO_L6N_T0_VREF_35 Sch=led6_g (anode)

# Status LEDs on JA
set_property -dict { PACKAGE_PIN N16   IOSTANDARD LVCMOS33 } [get_ports { led_out[0] }]; #IO_L17P_T2_34 Sch=ja_p[1]
set_property -dict { PACKAGE_PIN L15   IOSTANDARD LVCMOS33 } [get_ports { led_out[1] }]; #IO_L17N_T2_34 Sch=ja_n[1]
set_property -dict { PACKAGE_PIN J16   IOSTANDARD LVCMOS33 } [get_ports { led_out[2] }]; #IO_L7P_T1_34 Sch=ja_p[2]
set_property -dict { PACKAGE_PIN J14   IOSTANDARD LVCMOS33 } [get_ports { led_out[3] }]; #IO_L7N_T1_34 Sch=ja_n[2]