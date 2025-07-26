// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Mon Jul 14 16:09:49 2025
// Host        : LAPTOP-JNN13LQG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ image_bram_ip_sim_netlist.v
// Design      : image_bram_ip
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "image_bram_ip,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    enb,
    web,
    addrb,
    dinb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [9:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [7:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [7:0]doutb;

  wire [9:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]dinb;
  wire [7:0]douta;
  wire [7:0]doutb;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire [0:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.7033 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "1" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "image_bram_ip.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "784" *) 
  (* C_READ_DEPTH_B = "784" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "8" *) 
  (* C_READ_WIDTH_B = "8" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "784" *) 
  (* C_WRITE_DEPTH_B = "784" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_7 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[7:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
jLV29U0rrfMIZhYJzdoUrPoqB9eHQ5NXmWyCdqnN3Wgm+GU4C3zthrN1m4QGiaj0thPCIynZbX+0
7yjtkv+T5ByJ6NhiofAwWseGLvPXlYu6ERAPvi4SAYpF2VUqQHtPAbPmnPubGdDRgIEpeobF7hsz
rEcpEru1pyiScUriyuo=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
vsoizVrOONWw/DhjRLEYrtRmtji+Ok63CbpSg/l9VnoKAi8tAzqRbQ57atGB2N6IGGbKHkbK2Uzh
EHgWvYZeyt4hE+bpQX91vc9PNxfjQMGzPoFD3jCWk30EmEk+AND39eWx+DhJ8xhFuucoOQ2GwyAk
B+Mjs15naPE7DvlHel8hnD4dfSdYhGKp96oozu8JeBto8aHG6poOuYkxSwaut7NCI+mabCkMxtMp
RrydgmRuTvhRTbJMyx5CxFSZTRDrS5aU1vaRlnMiqKCI7g2KY9pemYaJsFeVodBuo6IyKGynyEhs
wr+VtUhQDtaVhMkwB95WwmMoDk9F2L5Au1I+TQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
W081dPMCWhKs5YlQD7n3zvf7+PTcnb8eFWxoVs8+zHLkxDMA1klITbsfztGYvJFce8Yao5XQLLqZ
oUE5Pq2arq+zwICFUcLjdMsmP1WmL82znHOPHm83zNwrxWMloHkySAqzFbgJeHa973uZqj0M8ydc
sYmzCYVlGVjt0QX0xqA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Zpc3MmdLWaVOv+S4z2POuoyslYoAbWc+Npxq2UyQRtDwf566IId3uwAetolMAgfLo/G3ezuSOXMn
8NznS37h9XvmVrxA50SAux68P87WgkLtiUYqM3CMBKkxNlZ/TR8WzTuQyFdvzkOE9lp8HC7LXnk5
RDsnOM+su46FW7ysY01COslo9Xc7rhs6WFqx29+Xcqk8+ZMLSzaJfuwZdNmJFS3Q1vhlq3ZeYqMl
wMieB731KsPxjxp7VKNHpTbgFryC2isqc4ohBDOt52M/Bz4B/rIpFeHfZ7X3jWSiKtSuBsDN2NXf
EMjfAT248dlK7NxJ+NBNPhS5sLxTiGyQhta57A==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rPMYqnkKhJKV1wltOfDrKos9ZbucaoX3WGTuqsdLkGpcKObzslHBwlGrKtWV7bZYmS2SM+QuEMfa
CE+tCUdsSiprp+n5BuSQlJa6BJ8mlqccjoo/JLw2QEmUhyMXQ3TLGomGGoZdeTmMPXhUBAOyLPea
Ddc8mgtTN8Kpy117GOTXDKP+IKJqW01fLrPJpgEhFiJCbyElLgtCRWmI94gX+y4XNVS0Cd1YwNw6
4nHgnEdC7fXARDKcYO3VsWC/pdzPQgursXloNLrVYa6i2xr+8E1V0+nSWwNYQZP7XUIVqXKMU8Ea
bT4acXrRCF/5tJJ5B9JparYI0zxXSbaakn1dIw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mfroTgL8g2pyIXQ/mGO9YHm19cd5mOlJ++qpusOYeVxGmkIhvF4aKx+AyIUz2yGGAeCtOzIasHty
pyqKgZhibSqxcpHgR0m6GOxXXOXJiHaK8NzxUzXeRJovcBI/WjtDhXeb1LRMI1J97jVBtJPJQH0Y
fGOD7jWvkvQwxnrZdyLp6kPWgSIcavHHDbO7iJv4gnyGp6W3/FCDo2RKWNLoW+SNjSdLZ6YRP8a+
ldaGU8TYvJ03KWlmik7repuN6AwxCjg2KeQ+x1sBAEXzROXomuSbvX3ZAo8UiIKAQY1SJumHLG3L
QI/S4Wbl1Hz6LDTsttMwP480gq6+tb6s1E4oWw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QJIabgm8dx/gVHbOQFwt8maOKVHFgkpZTPR6dzD8fqoGo9M9oGPTqBqchtPZWgv2UYFF2KEUSlV4
L3SDXBKrLs+NsAVTcICaEMiEi6j82zj/C1LsPkQfS8RLrg0ab8lbDMb5YqJ7lkHs3iM65x2iN1Mf
66cTgCbkAdl3rDpab75btpTQt5ZKiq5CSY3RZfyIW0uWbTGTELm6liuRKM9+K8BQwTU7A+FFFQBA
/9eJwQYzNNA/iwoYJ2WTPd6pBlzXriNLu9M+/2bYicNBSuH1PBR9v2ESrTB6k7EiV1zvBXV9NuG/
sFt4MumWMuSNwP2W38bQATxxW/l0IrmaXGOC/w==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
lhKf/Vgj6pHpme1ji4HVe36BU8pMkam/2I9lFeyOiBnIbzgdEGfLJBcEvkL33A7s0hxa6LFbHnkT
upgMpPjmIghBz3xUQ13vpiY152thFec6qvlcdg1r+GTmnBOSFl6g/OfZ3eFUhfsve6ZjQHpXnKFo
a55hN2+eP1EG9+VxGeM7XkHaeFhEIry52qtnmg072KEFIwRiGs2d/TJ4AqupuIdIiP1kTN9k+oqa
2ta1vdtqPY0dDHqrf+5YSd0CejkhQeCqg/bauLP3755SwdOPRgooG5ANT8hUpTiFMFXtU+GC9NSp
evJtMHUy1NbgMmhFHO+w3URLEdjSaBxZPD7YLdWkF65jY526tJzoek+BzEKoBaGfCaY7O1nHKXm+
89k3rPUy0Xo4/0nHpno+N/Db09heJPbnGsCwN/l+KnR6Lz8kvWziBjZe0ijOkKI+T12y3T1VeOtY
H/aqtNlQt1mhFwrbw6ezaAiDPVbCQXnly6b4tbb8+nFsxWOGIGAfLozB

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PNsQ8uEcQYrl+GaDuBaq1tQ5br5aAdaqHnyrc0NVu/JnQUk53jaiLx8Oz5fNACvWelUUk2/C+P5I
b2rbU1bb/dC6TqC5J1N0yoMYRYw58u4Lrl8Kgqgt9Rlph5Qgzzfxp+oblXF/pO4mRyAXpZhpNkFT
0Ar9BUtPOTOtJ9/g53SRnZ6GjxzfeD+25J4fcXBNo2gCTgUkwiLSsJRwTB/cJmn+dZPwPdIOHEP9
TkfDK+OrbLYO3T+DFBTCMRNH2NB1J9sc5s+nPU8iYnjgPTo6HoGW+LIlCz6yNJMZzJzoeW708utc
0fJXkT7vLDVh7olvy3V9AAY8Do0YR1kiZlhVhQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zAz8RnGHFebkJFAS+gjC+mXHW7m7We+JgSmIz15mS01u/4+9Ng0sJfkeXOClmVPTQ2Mp2Yuv6/6f
ehzUTcANilWsqLM6Q1FToCPNX/NTqodlcHirGM7b5R9yevouNT/aqH12nmbunBQmBHmehNutdCjG
r6Z7kZgeZ2ZE7MMOF0rTy1XHEPkqgMNTRoS8R/pPWPTW4/j+bn3aJj0Q/fTz4Gi3mbSUKWs2fREQ
UKiuolNJkN6DiDvhlVYHUyytXNJG44ikmBXehoQQRLapkYaxnQmMRT1ok9uY6pKoy71CtvJ3Mt2x
EQv1GU2i4qQyAOwa0mkEohWXduicU6tDz3zQwQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TK3eE9V+v1z2P1KjG4GrjhA1n3qDOpNzLGXdtjnjhF0QBFPSuhC+nmNqTPOb3p2a9r5KD0miY3Cd
+KpjH6Ao09E2/LD2Go4aLQh6vP+9BldlSKEwCGfx2NjBQrXWVH21lQR7IRjOvyTOclpd7SgtUJLw
dvebETyLiKr9C6RfnIBeptuCA3iJlXfwkh6I0JfzD5WBizQkotioZmmrXv5105pCXQ4Ta1WThFsA
2ll9dZeSjEDHUxxhfyfjryv9m4VL89ZDU/rGITsdptwB1BC1jLqmPDymY05lyECnjA6NIR5GGfI4
K2y2f4GfikKoN5r9IOvFzw963Wm82ZZPtXOKGg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 22144)
`pragma protect data_block
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
16um9+I2qg9s6ARZtGtHX1ESxwRtA/1O0zGMAA==
`pragma protect end_protected
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
