// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Mon Jul 14 16:09:47 2025
// Host        : LAPTOP-JNN13LQG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Vivado/Fashion_MNIST_MLP/Fashion_MNIST_MLP.gen/sources_1/ip/layer1_biases_bram/layer1_biases_bram_sim_netlist.v
// Design      : layer1_biases_bram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "layer1_biases_bram,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module layer1_biases_bram
   (clka,
    ena,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [6:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [6:0]addra;
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
  wire [6:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [6:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "7" *) 
  (* C_ADDRB_WIDTH = "7" *) 
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
  (* C_INIT_FILE = "layer1_biases_bram.mem" *) 
  (* C_INIT_FILE_NAME = "layer1_biases_bram.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "128" *) 
  (* C_READ_DEPTH_B = "128" *) 
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
  (* C_WRITE_DEPTH_A = "128" *) 
  (* C_WRITE_DEPTH_B = "128" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  layer1_biases_bram_blk_mem_gen_v8_4_7 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[6:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[6:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20176)
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
