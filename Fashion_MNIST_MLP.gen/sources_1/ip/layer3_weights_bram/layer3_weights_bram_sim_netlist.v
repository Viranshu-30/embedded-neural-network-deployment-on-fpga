// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Mon Jul 14 16:09:52 2025
// Host        : LAPTOP-JNN13LQG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Vivado/Fashion_MNIST_MLP/Fashion_MNIST_MLP.gen/sources_1/ip/layer3_weights_bram/layer3_weights_bram_sim_netlist.v
// Design      : layer3_weights_bram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "layer3_weights_bram,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module layer3_weights_bram
   (clka,
    ena,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [9:0]addra;
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     1.1884 mW" *) 
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
  (* C_INIT_FILE = "layer3_weights_bram.mem" *) 
  (* C_INIT_FILE_NAME = "layer3_weights_bram.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "640" *) 
  (* C_READ_DEPTH_B = "640" *) 
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
  (* C_WRITE_DEPTH_A = "640" *) 
  (* C_WRITE_DEPTH_B = "640" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  layer3_weights_bram_blk_mem_gen_v8_4_7 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18736)
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
