// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Mon Jul 14 16:13:51 2025
// Host        : LAPTOP-JNN13LQG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Vivado/Fashion_MNIST_MLP/Fashion_MNIST_MLP.gen/sources_1/ip/layer3_biases_bram/layer3_biases_bram_sim_netlist.v
// Design      : layer3_biases_bram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "layer3_biases_bram,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module layer3_biases_bram
   (clka,
    ena,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [3:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [3:0]addra;
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
  wire [3:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "4" *) 
  (* C_ADDRB_WIDTH = "4" *) 
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
  (* C_INIT_FILE = "layer3_biases_bram.mem" *) 
  (* C_INIT_FILE_NAME = "layer3_biases_bram.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "10" *) 
  (* C_READ_DEPTH_B = "10" *) 
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
  (* C_WRITE_DEPTH_A = "10" *) 
  (* C_WRITE_DEPTH_B = "10" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  layer3_biases_bram_blk_mem_gen_v8_4_7 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0}),
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[3:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[3:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19968)
`pragma protect data_block
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
mCD1TuRpuCJ6/4CMHmTldC2S
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
