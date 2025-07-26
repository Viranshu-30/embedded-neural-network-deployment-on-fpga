// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Mon Jul 14 16:09:53 2025
// Host        : LAPTOP-JNN13LQG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Vivado/Fashion_MNIST_MLP/Fashion_MNIST_MLP.gen/sources_1/ip/layer2_weights_bram/layer2_weights_bram_sim_netlist.v
// Design      : layer2_weights_bram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "layer2_weights_bram,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module layer2_weights_bram
   (clka,
    ena,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [12:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [12:0]addra;
  wire clka;
  wire [7:0]douta;
  wire ena;
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
  wire [7:0]NLW_U0_doutb_UNCONNECTED;
  wire [12:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [12:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "13" *) 
  (* C_ADDRB_WIDTH = "13" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.326399 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
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
  (* C_INIT_FILE = "layer2_weights_bram.mem" *) 
  (* C_INIT_FILE_NAME = "layer2_weights_bram.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "8192" *) 
  (* C_READ_DEPTH_B = "8192" *) 
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
  (* C_WRITE_DEPTH_A = "8192" *) 
  (* C_WRITE_DEPTH_B = "8192" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  layer2_weights_bram_blk_mem_gen_v8_4_7 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[7:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[12:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[12:0]),
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
        .wea(1'b0),
        .web(1'b0));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 47856)
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
