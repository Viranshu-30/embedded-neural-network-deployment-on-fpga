// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Mon Jul 14 16:09:51 2025
// Host        : LAPTOP-JNN13LQG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Vivado/Fashion_MNIST_MLP/Fashion_MNIST_MLP.gen/sources_1/ip/image_bram_ip/image_bram_ip_sim_netlist.v
// Design      : image_bram_ip
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "image_bram_ip,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module image_bram_ip
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
  image_bram_ip_blk_mem_gen_v8_4_7 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 22112)
`pragma protect data_block
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
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
