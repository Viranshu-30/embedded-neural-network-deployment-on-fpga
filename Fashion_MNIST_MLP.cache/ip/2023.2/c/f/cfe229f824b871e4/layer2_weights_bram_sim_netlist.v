// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Mon Jul 14 16:09:51 2025
// Host        : LAPTOP-JNN13LQG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ layer2_weights_bram_sim_netlist.v
// Design      : layer2_weights_bram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "layer2_weights_bram,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_7 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 47904)
`pragma protect data_block
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
3PBzAao/eYh7aavcnHp93NMvNmXFJrs7
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
