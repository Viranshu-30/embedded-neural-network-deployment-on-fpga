// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Mon Jul 14 16:09:50 2025
// Host        : LAPTOP-JNN13LQG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ layer2_biases_bram_sim_netlist.v
// Design      : layer2_biases_bram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "layer2_biases_bram,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_7 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20064)
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
