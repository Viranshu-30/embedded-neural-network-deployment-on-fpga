// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Mon Jul 14 16:09:50 2025
// Host        : LAPTOP-JNN13LQG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ layer3_weights_bram_sim_netlist.v
// Design      : layer3_weights_bram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "layer3_weights_bram,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_7 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18688)
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
