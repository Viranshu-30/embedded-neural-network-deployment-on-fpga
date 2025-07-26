// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Mon Jul 14 16:09:51 2025
// Host        : LAPTOP-JNN13LQG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Vivado/Fashion_MNIST_MLP/Fashion_MNIST_MLP.gen/sources_1/ip/layer2_biases_bram/layer2_biases_bram_sim_netlist.v
// Design      : layer2_biases_bram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "layer2_biases_bram,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module layer2_biases_bram
   (clka,
    ena,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [5:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [5:0]addra;
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
  wire [5:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [5:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "6" *) 
  (* C_ADDRB_WIDTH = "6" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.3768 mW" *) 
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
  (* C_INIT_FILE = "layer2_biases_bram.mem" *) 
  (* C_INIT_FILE_NAME = "layer2_biases_bram.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "64" *) 
  (* C_READ_DEPTH_B = "64" *) 
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
  (* C_WRITE_DEPTH_A = "64" *) 
  (* C_WRITE_DEPTH_B = "64" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  layer2_biases_bram_blk_mem_gen_v8_4_7 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[5:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[5:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20096)
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
