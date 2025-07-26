// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Mon Jul 14 16:13:50 2025
// Host        : LAPTOP-JNN13LQG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ layer3_biases_bram_sim_netlist.v
// Design      : layer3_biases_bram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "layer3_biases_bram,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_7 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19936)
`pragma protect data_block
n/jnsxVTHryMOvxH4pwyaUgLnxq6/FgVfO1LH//XQ0X9oes2VIr3YdipookBN0kf5lM232A5jpOi
mQrSC1R2YdGs793WIpfuUGzassF7fvQN1DPp8nLEgZmEWNX0yIInhxqSue6bbMcR23hRKABVAAcd
L+jpK969nai16UkClb4PXvH3fEJ8fjXxZ1sUkIw/+MywTIwl0prvniSpfIQxmU/hXpyA1dqafULs
RRaK09LGL02ia56Ws8igpS1MuFKUKe3X1Gx/kEULHgIcvhI80IkhKjBkNXbu7quQs+9qkmVuEA0D
nhNbptDiiQXjMK0uOTXb7u8A6oeQOONLzKZYHvaB8ma/6jI0OEQh2OPCBdvh0T3JgVfcH7kY1tDw
y/hW48aOJ4uFa16l0Rsnyx0TKawT1WC2CjRPZjYGTg/cidEimF7I1ELitC5wpkgoLKhJI8Cpbdv3
m84lwKUS/EMCDflfIJqeLeiow1B4h0GRFyTXhLU1cF3GLS+eq0G6jMreZ0CnGaylk7o88lHGTRpQ
wZskoPuzm+AE0dh5DVwknkTEGKRR0Y5FOTxQGNsjHnHeGXceeQRLMtmEyrA3PUQ/jdAzHBMDNRYJ
jirZ1R6vDVWWyhpuaxBC7TUzWeMaztUszuOs/fXS7dQtCBhizM+yqv3yIMg1HW8KnDu5P/9eY+ni
UqwMlHy/dkIJhFTzZcr28HBbzKrPDhKbZ2tFanPqMJEezqPG8+j3cFjo9VhBB7BLEqnb9gVV0/Pa
qtIQRsbSp7e1yJPgcpvLFdPIYIVPXdyPyJBz4QFwXIQxMW7jJSYtN3dbZ/lOsHta+4lKQz9hO6bF
Si6wQHMKttfkeBTVSdD6jURBoX4wNMt4wAOtlzIio/YPgUMpaL/tyX/ez0H9uHcWQDmqiueWnRHc
P3zNM5/aaMCAm5UyzVC+3KXlvEURjKIAzjjHhTcBAfmqBuE0RfLULU8mR2ZakOyW8U5gh20TwZn5
TeT+HWGLLxB5G/TFeTrQ9qrZ/GrxfEfZCbET43NXPg1PdZkvQNOZ8+Pw5WyeIlwNLctfgPc8bbpF
hqqHHrzGW7h+uq7WhdCLZXgQa/KmQSwxpHnWlarNLxVrVKjI/x4y2Ya66URl6FiCqOn3ZjQ6zvAN
4ZJDOzg+pJLkI6vOhTocpLKHFkAT3bVeilTqDnxvI+owYBCaFb6DCE033HpUJhJB4SQyE/cTYgLv
R6eAVx+geSE016+evxTqv+dbzpjyGt/d3ETD7I0n2ZSObQD7uGcDl3Xxxd2SSyHjnU8SP7a0b92v
TeZMu5ACT783rVL01jr8+YEO+hwCeprolAjTEO/DE1Ru+zcK0xtGOLfXnY2XRnbc9wf/QZrlvLPz
C0d4u7l4kZ5V0GQTNAF6gCbZi4bfIaQmT3jgmtBr/HDWKurc8mUQBK5aVD70hWLC069rlnhu7vpb
s/Mft7h5ypzUNcd5OP8Xku3xCfQTgYu+g5eFjGgQ3iOFr+yWXx19mkFw4GyMyqvrV0TNSxe5x5xE
waDo6/gSl9tqxXvQfCKqRSvXXk1k8LnswXzH6KJnfNTvCBtkIAc5JFsc3Fqs+c3Eu8Bmqty5EocY
RXNmxcsW3q3UkpgiM2At+aPUabTvO9udo2sv9HLGHfnVlzk4bp4zKQIhEv0zLmsTt5GnlAzDmyao
JUoFXnlCPDxOAGKTT/Fn5waiXwCiNbbMyXaTjBnxKKUym9DvS+zlfBfIe7vJHAb39VLuNj2EXcC5
Yt0dvrXn9RuuEXbql5BCgVVukO0Zs4PhCMonkK3Pr6Ev1N88t2OU0ZePPkvwSNpktBcDpSNJsLyC
cdob4yEOVsUrduS9/RzrAGATysboOKUbUyqEuxeRwOD8Kvj0TjQH/ZM5ZsImch09z7Rk8NoBv/lZ
PCoRDYklD+g/0ycPoV2WD9D0GlvLUdPXcXKnAfu6KhBA6x6NlMnktohUoUaKMB5mLYG09BrdhhgU
WZiM8G4vbXnpvhpQ2K1kGsfyzmKb6dOW5fpKidY9kse+xCI+l4etNHJKOgIx4ZfIzeFSBlxZVChJ
xYHnz7hzH/7iY5Gig5TYQbXiPrOY8QqIyijGVovcHtNoxrWkKVuQMY45PNTBm/BkwLEcHWiy9sLt
jprOmTzalcN7RlqeciJGY5pso52Ns4Z+ij6m8q2Qi/C1IO7SE5PCB2sWWcDDH652Thd0589RXoHx
JM55IuM+xfAO196HWPdoLB4FXznJpMwbKUWMwOCm/kkextelePgn7bN5wvRWqx6PvfAKrtt96vxe
ogjET1PJpCOzbjsq0GUQ2Ko0ku01Vl6Mr+sCRTzKDnhIwZUfsY0fSlgHePFdj/RpBpeBmBkMget9
N3t7Gydz9BG+SEsmn5D7KY7Ge5FWHDD4ucy2gEgHLpgzHkwh829HVxyoc/ZbY9ume1SkjKlEglKS
YGncK+07HoSjmsLyYEdcjuiMQFMYB16pkc9Em+Gwe2VBxfCm2leLmctM2Dr+/R9p175ZD3Z0hl6D
IYlXlWhiYAJ1sGW1Xzb5aF8pPkOyuS6JDnzuEpTL9iFl0zxKP/GvHB9yRSRSw8M9AkMXf2/x7lhQ
eR9XmNdCzaNEFzAqIwbx4SsXxiwMJOxvJzqEc6Wrdf9GBMdmOHHzklmRw643F0a3NP8ZP3bS+f/q
PiwFP+7p6gdnZFVM2aYDvMqb9dfOCBB8nPBKRzmOtP+TU6qXLeygrONdYTFoBKAPvUY46/qKd1eZ
zFPXn5p9THnJgFo1e0sarU2ngXAAYGTTR08Skcb9ofGpaOiRvGXIV4uSo1EQJnJJhVoO0vauC6Qs
4MiNKhdrRIyS7GmK+4Dfn4+plz5L/UM3uBj9CRYHUfDbsPSwnh3a3ndD9mzp9H7U3gZo0/QZAans
EXCNx/IkeiRHt/ePK40f4i9VTWvynEkIyLCWB/X6S1AdH9XN1mkOjewgu0V+tId4R0iNRALPPMWO
mlV/1xJsgzPY8hKmGoqgxRiQDs4sTsBUtrv9+egvdZlAEKqNfhit4wIOlk1Se0eWYNO7z1iw0v02
DslLzNxXBD7R1Dc1Lpnn+/GpO/G3mNGmDi2ZHJa+ggB2SSTCqzGvXgLW8+rEiQkE9OJskrhyYfiN
6DlMFaCVF04OEpngZr4/KPct/kkQp0GgkRrlv1LZtVjPZtd6zjyixoIcFQX24YYXBEsndpkv7vNm
xsLEmaz5cdOcyQ9dx68E86IL5WsXMPLbcGR3F1UZ3BWBDhHc+IuHoBzNvXCdbdsz8vgQFsB0AkOo
SrJf86a9hAoLWRwowxYfwjOz+nqK06mQK4tz9HKmbotJsJ4BVH5wk16++nlNOtKgyvrV6uU4WJlo
FcKJMIznMoP8DCMI4WOdohjaXiKZUBp1eSlrJXBVcMVY7Ec/PBurma9AYFs5OiEIa6Fpd2+jwxSI
rKZ6E9lvJQ6KYjjxFhvXI307M6BpX4K/gfByp9ZOWj7SQwTma2Gz+vvPztH5pB2X/bEf7yqKT6Ss
QWcrogU8FP8MSf0YFcYSxjGXbKvF+fN9jhltc80tP1xla9Q2cwOq+rdTpsSKSaur7ZTqfu87M4El
WfKRiY0nWiMRdOYKjK7RDIuI386+6M7sUxldKKyb7Mbrj1AUpDTDRkRHB38BXrEJrvx8xnOxZKdA
7agLA025vwsgxR6OKikCrcgd6ns4h1j40C+xxO8vBuy0YecwNMb9kVMdo/YsCYowV2udiuBZiOr0
1uwuEtbw/6o8YkVHB860HluGmc+kZoCB3dmzVi/EYQa2bbtBfGBHkGFnmdVG32kZLvAOxRltKnPJ
nWR5oH/O8klQO+AS982OEk99yx1KyD1dTfiw/cSerkT6a0KWkQfA2swwhnFtgw7Yf2qhHt+KPbJc
cgUUNTREhRdM0S1KGqDMjUJLQA1snj4iGpJd0sO02Io85b3TmhtPmLAvC+DEOn7vT5tLf1xoBHwc
0LocTz5hpuPhaS6E4SBl97g5ofy0TvRx7IQYxHfTh48vOcATew6qA919qk43jqPOAYutJkaP+50+
dXatxQTIkWIxn5AIXKaWTe6GQv/csgMm/BkMtJza0KHCQU2awVneaLk8Z8PXKYNDNsRsmv/dqTi6
AM3hNFAzsm/BeICpaLzOrepQ2nojybXQnIjUSK4TMrhPNBopBx0Vgyr0mq7/+YNvSFZVx7gjJ7Pt
mVlL2duqQvjnfJszonMc2k12kRZt/EhT8gsNp0H3aRM0i1tkf/2l8gdu0e8r2ajMG0rtJl0OY2gf
kCFW8qd3RtzkIbP/F1aNP0q4xHk9gB5BIbMhreDAXhLb3dXHvjYvgvU/JVWHYxKEHUxXLaYD32pY
b6IZQBqSUUJ+NoSbLK/10K6B/QJjxULyIGLffLNJjBDqcbV3HkatUpbHyHnf3HBNTIZJ/Dko7Y3B
ALHCb5W1XqWghYkaSjmKQ/vnHR+6qoOjj5iFpoT0LhUIsFttFeOtcD9Ivw2L4HpeeaQLnVZN6/Vo
eBrETRsHu6Goj5SlLXVgCQ/8E5rI5oTb7NZ6aWrVzHSsZYKLD9mlfMqw3Ohp7U6XXv7e5Yj+sq82
rinT1VRAKiNU2YlDVg4CdwMdGNNs9xkOxn1Fs5pUwEYfeiWospRIu7NES2ycSyg2BR0iUTEzC80/
yut3XTJr6mVAQ7vdbsx9wZwCkIuaoCJw7M4xLY1MFri/ChB1eYT28zCDrCoANvuXQLi/U5IKtZ5g
0k4JUWFRpryeLSfYvYNGCbXq3BIT0b2fZphpljt82ciKV0KUV+cYCkjzylG27/BtMid2bXzTouEJ
C+oonh5Map6UqQYRaU0qiGU/QFbhxyEKafWzExooVV3yOGJivUU3o0Q98wvg7sBuizpBBchPG4Gs
oWm8CPvrhYAszZiqqiSXS2Kv8ODMooDNiDNTdVLvry6b4rmzNj0pR6FXn1mNJNzEIlruGrAX7bbK
3Aaudv0TOUUEe3+qaeMBYQI4J/wxglqdjIrK5Xw/8rqQBlXmfOvjdaKD3lxqru/XzkSYrVwkaV+1
URhU47c6NX53kCdqtObBKVdia3SymWxfnIUQSUQKGrvel4TTde0aqpHmPNvs9Yfa6QbDsglgQuCn
b5skuNk0Z55+719yN5LKqts2pF/XPA+QR4XpLO5N5utSVwxWYxk46t6SeBJW1isYjSEfhajwR7iy
NMI2K30nY/yVKhw6formLRB4sBMUB0k+0aZeON4FpCJE4cT+T812D+pqLTT/dk3VfZMwUEFhE/lL
km5JitV0/lv6Pec4aXIUvPG2zO7MX99FnRtDBcQ4EC2dCYwUBLA7Nvw9LcT/LtM7IBHGTjne4/QY
N7kaUGyzi3ypPQmtI4YXupskm9QnWEMYGksUwj76EPGlFNz8VPocWw5+T2sEncDTrhFjueJ6Njb3
qga1FOdPTQUaq0fPquPGt63rq48mIBNwWbZDF0zX3ZsYmoQWjyHF50V6hhNEswWxtLCP6ohnqLZE
6o4WxlMI/TWygd5Ks2tf5q79PNwM3/6cVfCS9E2eOpA4HBEknc6hYx332e+YNORuYtnyq2d9Sl9o
mrVZNe9BvlUvfRVTgXxCVg4v0acA6IqMfhniu/tMqteHJxkVn038AgxuBwfAf9VhOKz4SqqTlP1S
20RIBXWZ+9Wd3KB3El3/IQjh1FEOh2fhTDnakih9G9hTOu0diFZLNbM7evpEeDIZKZZXw5TAj8EA
V2KyB4d5BRHjVccYnAryMrHHZ2Ftq6hWpvgMyoRvFD5Y0Y10uy/Grixegqd+EcP0Fbb7H+CcKNxe
Ee2GKktNlbTgdSbcgIg/HIJyQxIHwYuCvjCIgAJ8BB/nEICpu3RnXEGkKOJ3FO8FuSKPENyk8LEu
z8HNcN0Nzk6O1ahwaffpR76TnZBQO4ZWjo0a3ZxNMKLVlo2Ok7+G6CVRQHJzNl2W3/upjyYx5wf/
Nv2fvqL1QiPdU2YXhK6ZNSELfZFL8al3C8ZMb2cEnQFVH4yZUwxgpyDmnUgsIhta2mGg31WAOLoS
sasvK8z+oe6iOVEKrHE9Z2v2eYQEfZwjMU+rUgiMqyblRZ/JFGGaYBbX5PLoIb6d0oKEDjkZY6Bc
MifOaa6+5sgwJyk5XNShAOGDPEd1WXAq8zWTnfuyutsUAkl9ptN+9kdSRxnDqVW72YGgKdjwS8+A
BGS/Gr9jIhKiCOCYoooj8e83KosHIFP0HONGXpOL9WU6RIwMK3usIDcR9ivvxWmOPBKk2lql0eJx
qENoCSuyLgaUlqVzYMWDbC3dyTJbAHXHK65PlQpcpueIthZ24KN30+Nj3mq3ZQBla6GpkzF2TkTs
kxi2wqzYTdTyIC/qwhGQuuXwpG69Qha9pAHCtsSlVzEip8NMxO3FJ4DxUt1ZaUuKlBLUMsNCyxet
3ZoAEoPyQvwJqtRHh8o3rt18Opxjky0XW5DdZx+eM2LeDLSrqRr2GcktYRMmpeXIq0mik5jNjqDZ
tvxX4WFO/p8JVtT4+e5aw10mXzlLdNGppbUqhVYx05t3GNshORptkMSj8DSQT6jQUuVn54Qrud2J
ATdVqN6LrgBDD0fXkkauCPzYGDrmVBzPfJ1OnA9zRMJNBZhgUF+VTIr5aruAa0WzQiu6Dj76V4rl
luygJAtZULW1TosZdRYxAaaNb4t/MLRjfNnu6A6Rah5OU9fkPZZV10dudNwx66vKuj53vwne8Gva
odnXUDQAStoLmJkBoDXzKj+lQ9heteGwUWCo69f84B0rV1h7MzYhzllN73ZfX451pZSOH+KYfmN+
9Wa7KGlRKW8WQbmDAHdJfxaCrydB0XrTmM3Kwq+NS9/htN5AsGrmpl5SOEnraAH8wc/4Up+c0VXL
7Xa+IONnfidg1ngOkPbhQMDewNTDwxSAfD6Hfo6iuMwR5Xda7KdWF+UddYGayXpA923OIbqNLMok
Yt+pi/zlIF3nMq3FyUnZp4CRSa0IgKa3Mh7IY1lv5j1gNk1AmM58aqQ4gNl0gA5gyfqWuWjUtAN4
seydUAFJ1KHLwqnt0VL9qCj0gyyPm803IDdmhub3HzV2zBgAc6A8/psME9W2BFRSfiOoHgxVcgih
y3qDh4gGyW6rrj8xSgZwLH/wrFT4lSrU01QH5h8Jcr2zuXIGCBHsQ9RPlkfKyR8nUimZAFp4TMwi
n4mFaENaf0mMSOuwDmOW7LGfOdtvzQOdwlF9co3TnNwLBynHAV/bG+4O/m9LcxN69kWGg028Fj+q
g97dWysrnd4/g6sztmEFMq8bh/XWRtR33h72BFHpsG+78N5UMcB6fanZ3K/SiZOM38EB8+cJFPsN
pq57802Hf0CXrVIlTUQ/7apVsQ15wiqbuTd93bca059zreaOyqHyCANor+X6fc5GlujMaKx8H1U3
dsdGV7hSlHzu/EHBSlMFBCFPtdOvLDRn+nBKF7fsPID/UQbfwBxWzT5YENtdUXGN0frgFSvsRvb0
922gtqwW6I+pIengsPfHh621nvqAVeFG36g77m5+KXq5KtZX+pMsy7sjscVxYKOj0BGKBsbUbXUS
2LS2R9OJ6HQVJHnnkrx5JO77/GtIsPk3OAv99PirID8UWRBiVe49viiKmA3Lzi9E9Rbau6PrXEcE
KSmJS6TE9bfoiraXKL/dI4axORau6a04rZYBUqUbEzx7XSLkjBCvtmwqto5BU2/ys6srk+Y/3hg7
+CKv5pEbm3ir/HAs8wCiMiYpRk0O24pyo9wZsa6TqsBE3TNImNQOTvKWP4VmuJ9hLS+Nh6gl1dJh
XtNk+0aL0FUsEgH0L71l1CcXhpMWXJoKhaYarvhsMVgFNTqIeVCWMuyVHoOIxgJBqHa4sauPc1dl
QkBef8gnBrKUU9z1JnnFzIbT73MbyDhgLZZ4XNYmvibn6ZqKkoWOt0YjDQz7uF8cQN1nK0+xvdpn
FSmoGZzHAUpl9aQHNO5FGPCGCgAyHRQg5IIMrHJ8y/RHpK00oWU/nX07vwL2DJjIuuUMiWruRUsC
DmLZxeVu9IeOT6TTp3RPoialr4AFlML4JK8I3OxRCSu6Ytt2HMXOZqwvcdfemkfZ7dH7hRk5GX7M
WUIxDg8m5ClSyFRp08kJn6RnmByU1vAsOB572kK3ug7PX1FrBO0Srdv2xuaJIpTlMhiQ2YuBmWOQ
qoE/5+PBdXlutWz0jisnCk3eeEi7HTPvuPnuZ9jsSGeUv4itXEJ5bnioc6cMgCHW42afTWyxbqdp
t2Udt7hEYBc7gojzlmupLeGM5TYvAL9dvDKkienfTGv4n+EeDHr+ck5eed/NH42GOBzzPdRwIBOd
sDSNej8AVigwP3wAONuPr98nfYVuogNQZRQrZVpoSzGANkIkIlmRXozxtBj69MVYU8uz/w3jDcrD
wGJVRPF6TBcVyr4SeaGRuAKwgAStm0+fHfCVnR+2LuoRfpGjtsTvZRbu5eYcKYBDfRFCAFgfBf+4
lmvfg4TvyH/HF/ILxipLtnW6prZj4NdAOTdERJawEeJz+aZkAeP+7GxrFkFBsmHtqCSErrw38eJ6
px11jfK7cWD2w2qwEd5MwXGcQfBQ7JKchf4DDEYrgM8GxnTPR7CAPKBNdFf8QxNkENZLr24osvyb
4dEJKcPMlwgh5+8n2q6vNiASHtm9/JKzS7o0yLnj4MGibiwe3iT5NSP5kujegHZp0Z675qAqHs3y
k8QDMoObyhU9ml3Zb4QskAsjsOiOBH+8zau6sM5pE9lo8aNpR6wPCchXlmW5+vznJGStzxV0r1Ue
25w45lr7emy+6dLzA6rm10NoNl7nPEcjLW0GjeOJQkKpCwRwoJSJZk45igTxyB82DCw+YEsxXiu7
ZeocLK4J1hSCmnWCTk4AtettMZurBB+AHoMlgVVSNN/DCci2bTBIuDtBcNIlTs4s6ro6Rzc5Jwlj
9OIiNziqQ3iQaKLpYvLkLg4VPba144tpQDqraOQsTPAYUPYiyt5d3iv+lwAze8e/B4VSoz2FlVcI
mdS/2L/Eps523RR95qipDlCKEwn1OWnKmeZAHeZHJou6aIH55Ng6lzAeQTiONl4dGkvEGJiqIHIF
pKf6hlQf0XNpFzkqZWOIHtnaMYzUMZFhaymiTyuS8ycsKjsayKPgXjtFlmaZMIqpQW2ttzQdfYXn
E6bj+j3+wsl2xFXwsuoG6UCN2p46TvFeSBW+FnP8eIh4rQKch874nudXvObYeY6MkrqBym9uWERI
Q+ZujBTZfE+91yqLARLUyfdN3Cbw3OyLDv4MZaOH6UDKvFYmZ7uADp1tCs/U4LLA6aal+1a2krz9
4bMaL9ChauZT4uY9PGigAzCwuNsWTPHFqgRerfmFq8GETvzJjRazVCVQkg0Nn1dIgUcvqkU6sw6R
6wdHENYN1CZL1suWWyvypG3a2uNYvu5IEXSNHyljmC5bUemad1VCCN1w2sTo7jbB1R5jwuuKkaWr
7RCjQ6wgvlxYUDrmLBMzKnA7qER3PC1n184noztIy91JTxrPc9z1y0oHKHImxCuNYkJfrSODMVZu
TLOz9+U6qoq7aRG/mJXuVH/1ce1LOI6gbV12MPsZNzSaPvsFIE7NWh0VmVkLwkeyLtoMiDlMr4wK
bEOQtJum7/0Y3qHzmcsyhKgyQFCP7zM96rP0WNjM88NJ2w6bPfXvK2rLd9dV8ow++9tdWwKaaPuz
bdV4s0UJLmZNRCIP+pZ99g3sxn01D040ZOX51oL9JtMYOAt5VdOgEVvvJyLZKVtm7rA6DBT7kfLU
sygILakOh+74wEOr3EVYu02K/iLusv8L1eFQlgBVXziY/lmVeOyaPLIgwOjD6MEn06c5Aq7svMM8
EpzWv60lTR5jpYOrsRffuHuWtLT0bj6CQR5TUghMsgdLe3yUHiXYRiuRDRHtddUB7XPE9tx15Gdp
kPLMshT9SbBbYu+daoUJT+FpC0BuYwooYbS/YZLm2Qu3Cjf4XHCEL1NK1L+K66x400DflEFGA+YA
OP2pcRIjrkBnCXnKUvlau2r/CtY0WASxWWXQp5bZmc9M+BYmWmar1qmOCdmRmDJYc7AWdC1wpiiK
1wZ6DQysqtnou0NOk0faMIdKmyP3n9+Qh8Baxp517tZk8Va15gLZPlIWjqggKB0Z8Uf5GCkYtvmv
roeqOxdlc3dVHr1zDKxJd9XCvMLipT3LhBSDsimlJvuSTLp5Zp1C0STpn60mCRV0yA9vJRGX8Q73
+hxup4MmVhG9d3wXxVKtnpIBoWPzNF8vSD407q08PO7PWynhVDf75lyeRfuEhHofqu0eN4wfsPUK
9FSsoasILmsqnw9I0sDI71iczpy9q8OJxBcRPTQBnZ28AGCKdrexbpwsISTT7PDNAPSpAJDl+hj0
uXXO5KrXHYSy5PU41S93cBPHMgDdhvSsYwrQAwz3sUKV8yjza21IutWkXe6/aaAcVOBqNMbVMWDP
GFkcp4r0qD69J2qNbyPeoVkmPlogd7J0XU40v+sHg5+CJZRFeFk6bU+avfn3+/tyv4b4JKdOG8ka
lUy9JwH5uG8UhMNgaBASmCxQ0MagI2T+87zdLqLYzIXfh/mh+BIvAa5kERLm1TgjrisfrljvaUA4
GjFxodouagukQDLJMLZd7mEFUtF+rvTpAoQqCzMiqwaVzRcldGBTfdoRCHpkLIPiEyYhWXuiF6Zd
VRQxtZvX35uIgdUM69oHsxqwT/SGw5w9zOFk91bOrjqt609h6zBGR1On7IHRi9cNEYDE59IwxUJc
b3HnRZpvROGZf8IaYqyvzhMy4AThpj2Ny6TweKaZDvOCqGjmKcq3SmX4jvSEjWRk+BAruZj2HTdi
Yh0qzz9jfxCvlRMasyW+FYh7vJtvYLUFK7CWGdlZ6KTi2sIlYjN51bZI66fys9NfmKDdpNMtyE1Z
glgeQ0hItLgLr/85YPEIhDrLXRHnW+CLnfdZphzg/freSQ3UvvaG9tklSzWDL1LpWMoLmhq52k9A
9hJXIXtUPPex7KDevbj3gTsMYBJphoRnZap8/E316SjOmd7TeGMyqXma7YIZhpbwP/CSE0MH84Bm
ATY5LAkpD070Wtj5drbUP0D3J1b58KbhtLg1727qaXQEmxgoIEEHe4UsiaZhOMpd9Pbv5ZaD2eJP
xaIjs2EUCFofKEG7U3DkRK0lizlbRnGr9CtCInZgtWt8YEayce4Ta/HOtg9Gq1iaQ+JDm69GPCzE
atQPn6U4Q9PWzZfGm6Sb3HdGpHSt2ydd400xdlhKlnBL8BbohsOX83s1eI30ekWcpVyRiE4bWI5q
COm1+cQPJoJ22njxz5DTF3PNeY6eZDv8q5A4g+V9Q89D5ibHW8cwgzSZFmSKYXGjEGeo3ayh97vj
llKN6Sm2sA9KBIUPOddkX3Qq2LIDtwNZxxe3jjpDj4G+wWdxpTd8zrtqh4+0RoK4SddRXxyacgPa
0cnRqZNAI3tE1JPpl9Hz39ejX1JU1ltwyzn2Lvm1u1yECm2pR5wStMKc0yFKNh+bTLs0fMK48Ltu
imuFU/PtYJaxlm7eNVlik0iccWZR68++LyQvQ+DlI/0u3yI51OKqO95AVU/Xpq71mdqtNCHJNjoS
K0uK6KIHcrzzCbiu7TudnUBWfddd9U0Z7NkK+tsB0P3k/UnzToW8PIMfaXixdf0v2nGqdP7a8Zh7
ofkLT0C/9bRpa7k5Afoyg/GdmGwIHRCRVyQaFbglh1AWSXGs9YClKrlTsHBXArKtDkM4e8GwMt2x
AMlMq6hUB+L9U5paHuCpaFR1AkNrtTnsDmUL0sdeCCNOAI3M6R9hgvoLHut+6s8MX5FG+PDFNq7Z
aW3jKb+adH1lA3PV9zWaMTePT8VmRcIZHSUGvcJ6d5iC2roMbyECkApVi1lbdduKWOD8hZxcgzZJ
M5cQKw7ODmhozzGK2G1WK1WGoYgP0RqbKBS/MG3N8LtJ0FbCf9h/8vRBE+V2MiD0BOjRcqKhs8dD
U/Plp+21TZCLQVrgqN7DhLMsn99rQ2QBG/orBNwD5Gwadn+CM+difnPWkQ5idIYXhfgOf9AEnref
8z8slGNy/Dx9bmOncmyoP6XoqfFUKuHUcKio0ihZ7h1azhKwIySbf9q977XwptxIw1NhaW324jtU
QbpTDNoT+5oEmp4ASR5HCZjRCbgfNwJW9ncL1YYclWxI7UODkd686FSD8Njfv6rUokudx/jQWgAg
TzvSlhz/RXZnb6BARtFYs+ajAhfxTVDwu+TYiFYJdlu1AP/HzPqienljWQbahiALt5vZirF93gyM
mlmvY84PbwzwkPDgW7/3oWI29oJSDA3VuGolTGau/T0ws77QciBMwlQ42+muq0d4QEP08BTMqjfq
lkzsDCfqV4kVEDUK7VBkEZ0fUgbhD0zncBHlL+BJaKbETdXrMoXhGEC0KhIWVmhxqkxN5Htm3qeK
Zxp8m3FOKU3m3rBwoVgFooct71uYgXMRoEWMDBirOuHzGMnVv9mAVOt+lABe5WTNdGUjCUDp3QDP
cbkTZNseij19tIybU1cD9kfeXutX546qoJcjaCG0KaOGpYO1j/RaA3qLanF/FhyCUgmVYDhkmCH6
xh9Ik/5vWujfSe29szzkUidjSPO4SK8yu4XxVPZAI0hY446XW7uQgByiCAaJmVn85UkFFMk5f5Ms
2PYOLLnt6vKgqY6V77eliTSSiybo4bzCD06F2qfDu5LW8hlMFkb8d3K70LYaSd10Jfwy7rCwYxxx
mqlwMVLfeVa50N8gdiiW+BlZS5UqhBZ9BPxzflbdOLuYScHpceSGPWpBHVPKZkK3bO1P1u8je24U
vdnIZFc3NmC8LFE4UeMpJE/+OaLQJRkTLp6x0YKiIwd9tmY3ilorRqG0IAps5v3qPHr0EZlHrC1y
nek6TEsRz+BdVhiCpp9kjnpW/lXfFWL51DcqSFuCxLbgddFj6keHAjHkWY4jULmpTM8TEPbGx8jD
qBXLXoGCW2OxaI+AK73TZTxRzEi5GXbsQwtPl1pZRfR5xaizJAjRto5pHxsHO/2opm23Ar8o3ujB
MDcmCIvxcbhmRVoQcDfBp3rcpoilotIehsytoogyo2LOzZnOL+XokIhIg1A6aUC9pBMlHRpefrzg
Xj0U9f4AySGBzwuoZ2iKFzqrGoZxdwuaEKP982TzBoqEAJimpKKNrrRKfDwnXnz3uFVQosez7yV+
UgKglJsb0T/GYS/YdDEOntrN4yXpcUQY+Gqxg/sq7ZbYmW8p6TaGU8qSpfCmoVr7v0uywUVJdS3F
YNH2ZYfNsEnJZc+HtFmTsgyc/xMQB0+J5Zk+OXdjsZoIa+IxROsfnh1PZViS5MoAouTzMcIafdJM
1HXVWnto+QLMKaeSp1CK5ukbyQIhLRzb+xqQGjzz8+AdyBc/1YOjYPxEZynzAUQUA+ihBylRS0tv
2dPPgO7AFsH8x4EFyA9IDJAau5BAywptFlg7vqCwhMNIWlwyTtg5WRXXJX0sePPc/ukP7H2N43qj
hGw2u+DYwoeF+6djVlI48rqkgTExs7TZLntm63VsHCgh/u24URnwN1WYxVEUnWyJnYOsOHreguzL
pXv+4aZgnlNg3pagWVfzPavbVYZLL5FwHGSsrQjdisiMhwEiheznErSbRu97JiwnkfJMK6uTXPPh
9SEwaoXEiyXW7eaxadeYjEnGoC/mPxW7i6IRtSiJGGNpCSBwfkB5vuye6f14UTpxZKzW9/dN11ja
QhMFpn4GCWCRb1Wft0O5MQzitvn4ueZy9NYn+eT8X9SaG8NUVJo2h5wCeiZPB72x8Z3Z5pQAqSlF
KFT3WOmM72iRxg8PVDDrAjfIWX54Mt4LibHIVNHt3J7YnA38Sgdl89MPovuJZ/Q6BQ00BBRj1oMe
tD4GR7MSVenyEyrbtXaTJObKHgQ5U/KaxKhZ7zXqx9ZlJAvWcnf7NRnL7OImLMG90m8dHOKzO71Q
dyAZGY9YlCDQpl3bZOT+ucEwV5r60UfqsWWOyILw6eX4cqBkTLWKlqe1FORWTvdgaxC6v2C5iyu9
UOadE6LFXl6/waFJwvQdIpMwy386IdVsUCV5bYP0tMFUFxz58ThXddDIiQNsCCMieo/YxR5WYN1Y
EpNOD5gDO0QOJftgGZIdxYObRoPWwPGVGgUc6Nid2s1Z9T+b+UZ6mED54esGdYQyZy9QWIsLiBpd
UCkpwIR5xPg0aE6duRXdvxjWdKBDBYXHMkFTy+5tUik+v1SrHbv6rYfHRHbG9M+s5e+E9mvljxmr
GEHJgzoAaGqIsFySZbWDrrxY/4jHsXaudT3cP1J9PZU4BALZmT54f0d8LJ4YWgf9/AYh7b8nWt59
ruqE+UeXvI1dBoWLFMDR87etO6eNgwkhpxJir/ee373vHCEN0YaLUDbfGd2xQ0ryqFLpJ4YEWU/O
QJJhPt+TcuT5DLwpDa1y34JTEGy/AAu8sfjPEWxZ62t4d/N1fvb92v/D1VqeoArYTOmT71In73Ek
4ZWESsTZXJdmhyJZXh6wIUqZk+hmHLU8rMyYU3Xc0T1UUjq0PNq5tFiLj7x6gmUtaHUJGv+Im4Ww
MXoQGf979UiWYr+E+DRtzMr2ooFAoA8r+2ybwLnBzmLd8dKMSXZGnYdiPnuz5VFWM1mq9Tx7Px67
3WJn1KHYprx11sjeEARnjmEqySiCpkaGQu7u7Uf4L1CKkdR0YWwcKfLoqRTQRYAihAOnFox9FUjB
qemovFpV2AQ8yqtTWKWMmZ5/uuRPm5VlCNQMJq0cVcq2qFYjZwUVnsICx4A2FmUv19ZL8Vvf1VJ9
OKVDKNi6bLnmzE+dmEX4IJnhMx/YlGogUIXW/NAqyPh/FimnvPHBAp51fG8qcCRmPIQUFAWl3bLl
FmNCeiQLCwIe7VMhXqKp3aBVKca0extIuXwt5hfcQix5J88bas9dBrE+Gudsbci2An7Au2kNO9+2
YpQHq2fYWZioGJJleeNDWsSDAKknMdhdowhd3qWQEIT5CNTjkb/X6XMAjeakp1PP3rzLxtHICG1N
+bUQwm2w5F4DpHfmwhm+KZB1BvpLkCjT5blZXjMAjAUZECJfKrkUyNKpjId1gUlfWou/7bFx6qe6
9UFV3LT6rIUCZPjhJ+fmghcXiTYQ52EPcZAfQH28OpIR2krokFLwcqwbeJ2VLtExbrmTuOMuZbTa
ru7Kr/oEEx9PRpa6loSgqcwVmmFl6WgvkveQ3a1VOkuU8kWyDbwlQDxGxfXr6nBuKwjwJqt6sptw
5GxYhKy3BbJY0BbQ7ELVYn5GEYMRJxqcobMyDUWdO9322niSI/+wljAbMbVCL9oyhH5wJbwRPIvW
W4m4J0RAWqV0vYfEC0RYRfvmJeeOP2tZbvr2Ipt5QARj7GUhNndJfSnf5JLhsKr1HRXQZQwSKpze
OKEt3v6f6ZTgluh7K7C0nS5v/sniv5n2E288P+h7e0+9EKQYzPjJZ9uk5T92VysczMnaPM5pXw+p
RXbKiqEG1OHkDfiqqurbQ+Zuo/cMy/3/4cbQfFcuUEKH0mdkfhxNRgBIB8SubJCZSAP5+k9wPT0P
2ibw6pALhr/oMM2iZFPLsVXlCkE9w/pk5pQNMXIRkBl/tIiCurYqsitb87gZSzBjPjUFITOYGeGv
Bh7oHlKwvn672pD2r2AgN8Fal3RBZuxYNrVJ9nYVtig8VTvR5a6IhP7Qx/T5TVlGeNl0S43GUVn7
2uXKFeP9aoUC/EWGCXEBl9MbAENVpWgjoHYoR83knqbWRVJ0QrlspPCflljD035O07qGxzLG039+
N6t5RtDW0pT5VfI/JvqJntg+21Itd2YYOigaT809qjSxTWI53O412F75r+Pq94D1xo0ZlgbZKzL2
PHuPCR53Rkw+AnXVXBE+33HsLBKnJ9iMDBcJZf1To+dcYC3KcRs3AN6DYe9+IxW6BQPQYMQCAdAn
inzvTwS2YTgoMgIR4dQ2+TJ2BbcR1HpDCYF/98hyLx+lsfua0SlNiV4jLPw72CLvIlnLe05VtMez
nBDcbECxmXf6gzzZLbQ6REloZBvR/ShNyc+LCC6jym3Y7gpEhoIVpwp+BXcE+pTAOOspgwxCJWkA
vxCElACE9maApCGVWVl/oogtotZCtuvvjfrUjq5Nym0PAmIG9YLvhlGg7kjNhZzpkiU0AEorHOof
RIX/wCYOI2FIiwVbaHQi/bwAWmdAfrL57pvz3sUbjUVQ24zeznMV1Rt0g2MX1vYR4aokFIIriOMF
beFuZlVwdWapodipBeX9YZx/WIEhT744pq6xbZbwm6QJsjEBwHJYy9MeidfM6Zxgggd2h5sUFTY1
fl/hQUROvUdzLZnHUyKlatYnS28kWOzPNEPBzmH7A+nAD506ybVC09BqJXVsd5HG3BNJzvJtYFaY
9KAQwvEt/uasLbTW7QaH+XKMDRbvVV3hL61Pb6Vfws445fx2ozFNwoXZvHXnV26p/iguL6wL+OU9
VQQawIB3bqTEG/qIsjA5XMMLBUz40NfovZ28Xh8lt++JEGzlFQO1peohGGdYKrLFbaNzM1+En3tw
M7wJKyy3XGoc2vJv/HSyp5fpVdkHvM0PiKvhJdsCAo8ffnRSGJI+JULVwSsEkGjb7OTKHE9FFhEG
yBzdOUWgG0BwMiwH7d/dwyTbZ29jhtLWNgJNjUOI+oqFPDHfIsLK4Fh2UnKoeAa69jh8QnCnJftg
rJ+0K/7Y5cD8BEAg7Gs3pQGex96nElnwnljiusmAi+lUv1YYcHYO1Q7x6uPdLewK7DB6GIvYfs2a
3cXZygChrROlRctaUT51E2Q3nH/ZBu2SxE6iA+xnrOIwBFrAGvfRQFvvAa/Pp6CT09dXG6bdryPu
ANzlVlLYUTPm/o13y/bZoPkptZHW0qEcRFO1tPk7H7Y44YfpDg/Gs76/5dOgNGpBLkCP2fYTjZ8z
6QYXrtPV+xYeBg2E9Yh9PVjyrs1D84EWo/haq54vDsZi97YTnSn5nD9f98mxlSnyHQShRZC6Iu1u
0iBh4XtofzY5Fe1F+fpjbgiBeBNst6WNZL48tGXtpJ+g0+MGt8KtwtqMqQBp5tX8m5TKyXMh8HIi
WBHvP0Aw3UGS+hcJWEaXOKOimWuCcsziUtbl2eqYL/AxfBm9whDvoBuQNDFnD6erAHJTopW29xph
k4VTK1CUl4fwwVzMKzwBwBSpb/BiQwffoD5Nli6KmT3hZqBcUIZNtkV01G96b0aBlVV8k1LXxUC1
d0Z5/P8O/aL2BTnJISeKBnvc44lfrenIcMllUqdqwjMDrsHYkZx4rYsJW+Gj7eVEP79edkkC/CFF
8D/tyD32pb6pYUunuWXqNQ4/H6XDhOk7bZItgzZhipXbqi43GWsUy0mPVobcfOzXq60pu0v6hlWz
5Jf35uMB9O/REbbZ0aHb/INU6ppFio22TKuWkzd5EqtiBdaOL354/OAkZsAeo8s7f6alD/7ocBUW
RiZ/disp33OlHDUTPkHI316p8xzQAt/UbTLIiYYBPEa/yThGEI2pxc/RqcjMl65aaEg4YneptIs8
zAHIBNW4nhyhOmwb7wQ1RSaM+z5rrZCIbRx+jBf+mNYXi91L6rF7fJDjJrkTp6NdoFr0At33ZuFE
prihnUu+fIqAwTZJYlVWa4WR+kzjB4heoPr9TAjcuhEtEp+m+FgSSnq6Hy4E2n8Z+qnlC2TTKgC0
MHeQXMHh5cq4XLjh5PKUbz1GQSW+0mA7efi0o5cavW3QUk+ZElUus/QS6ERXvgsE8Tot5SmkK9xx
Mv9PdfUoECPyL2rWT4Ptam5y97WytYU302mLJUknoWTEg6hv8IrdK2xhj5EGxqbusSdt+enmSeLq
so2qXjZKloRVR7j8RCC9ADdNdBc+utytFZCNEvmTR7FISbDlSkpmpfd8Gk9XpmsIf4m8rU3qnsMI
FOvuhRFGQf6WvKQa/f4bPDqfAEsgYMEg2am6ppGouACLfUbev92/VOkouEvq0FIZUreR+VrzT2E/
YCndFAmuI1eMGxIlwJPxDv6hECtB7a+UDa2WgicQCUB9YYcuCN2omT4ukadAYYFyczQy8XLYs58u
0ANRDddGD7xl5jcV4hehSHveg5yIZSV1OSN4bCIaflssY03ZLcUt9O4b5abgHnZHBhifema+EOjb
nXWRTnsbgzzRrhm7xE6OsuQ4myBECNP36MkHhnTnharm1oMWjYxOPLwq8LxEZmlfrrNIwND10Iqf
m+bZKv0Zjar3OAjXctPmZplp+xHlsEd/ja65im6AENSsMVY4BWv1GEYk6BgjQhZVJsOEp7G7NpXY
GD3MVnRuqxBxMzuCWsme3o597aR1xxOZ9/OqmufdmcrsQp/IHtRrLIBwpl4KlrxIZByn3/ko069m
oIeGeDIbEhMU+LptaV9btImOLQaAZ1lRULg2PaZpOmA1DhH/DGEq3KdsvwUgMAZEimwHu1A1dTg6
qGnBtpkbQXs7xS+XqQNweYjZUkCgSCXyZhoHI6PcmL3bnkSXL0iU17PpUnRLZJ/xzk67j93iRSNK
hIaSPY1VKsXDtN2Ev59KpIUy2dxEf0u3SUv973qHh6jx3jimbP142pTBMYmEimsuBRdgD8K7/JsI
CTvwzQMP2R0kX9FPQZ1x/uc/NEFuvxpR1QvASi25qOavRtUB28RaJLG3ezWWIrsL3LADIagNkcOA
Gb4JX6yC87ab6BdKuVVugITaiQC4g14kcZp1y9TjdU4vsT3LRuisJmvDNLfQgvCq0B+Xstz4V0D8
ymOBWX/sP+PlANuoGx5QL+Esv98b2KRTUb5yqJIjZSGlgZW7eveWffcbwGG4uw33iXSKOAuj7Eba
93Wwx3on4emF5G0SttjEhoFb9g39dF655/PY6zxx399WQhqqTxaae8JpXQY8Q07v8Qihw1p+pTlg
GU593ZlaMb8ZTKUNnk5Cxiv5uoPQ48mXCtoQASeHjLC+7RxMbWX/2eY8VlYkD8C8jGC1vIwRyBaa
FM0bwf4YOraXjsH9mhbucD7GCP+2CLNNUcxTTUBn7QJSjNoPW1o0r4jc/RWS2NgKq8Ep/OmLgHqU
z2pVlIyC8iOS4oiDr9Hr8pMAmJqaqux52ef2TXNZK9t+zuiu4OAVH8kZx4R2T1gXEeOfXnSfO10r
5rbK6HQ3N9cc10KfTBq0u3BR6wxJaOEZ/fcZ67fZ2ejtPgETeRyb2bkHIz+Uy/b96iyLR74WO2ud
LwRn3Xb47ulslZEFJsR6/TkPOLUBSo8tpmitcIXn3oNKu8ZAtg6cnaQv3RC0yb0UnyVZH+A4Roxp
VbnA9YVXfILxRKxYAZJBMq7PJdfwmcHlNOoThaP0PSVPQU1fz1e248FG2+kxZ1rJgde0yLKW1LgG
dA4PrwbiQ2rkYI7tHydjc1/8BJTc1UmAYYdjZlgqXzVinKBC86x+CkEg+Hbl3URCSRAMsThukMhS
8oG+9WKeQB5HCNHRigSxT0/9y93PeuMgdYCdJuf4AQ/9mCGQEw27HGqpMj3W/Ill/zlrwnBHPW0f
P5mIppn1fvnD0Q45c1j7pAtCD4232hG2ZjruqmuJl6ut3LmWELD2mDOT3NKjHlwI6tQcFCnKe2Xk
IbnDnyziUz8IStRb9fBWH66FqthkSIKaOFbrCziXEyvPxyY35+dfwLV+OSQv3D7239BL3VFX1GHj
NUlW3EgviMQRdPX4GSJvFDSWroxm/OxHoF+jIzEjINFtTH8MZDu59UtA3kr4gGtcYc6dHJJIMcTn
pmEq9evz81H8GggztuAxGFhWs9PALNmNTqgXMEnFSPCwg9tkXS8lHFSrwSCQWTst6SLttNgLN3H+
eux2znKIm/srNeNxDTTvSw6ouEtaFPJfmZVDukDR2ZjAEYklm4SrNbue2FPc+2uJZeR4cmYKqxqI
fCiD2blLRj1fzxS5nEIed2ZSTBCbQRWjSmfZi3Way8W8qxYTtj7zbrNVxkmjnrPTxLJIj5c3scZB
i0IqjHqvXk7Ppmv5eLOD6EY7p/SfIjwaMFWCICqPv+j243JeTF1BfrsFzgiIJT2QfHiq9HTCyE6S
2Vlg5UxLG0FRibYJIXF9L/dhiRjI2AAkkXfWxeGg0RtoNIrN8xu1UNtqyIXW2vEMU3CLnd0gJF8L
+q9dF92J1vnElk0pSrqZ8xKGH/DGoJEXZynHhC4i2kLd1ma+MG1Lcdt1JVZhtTFyT0phLIOGwPnP
NzK3RAZW9noeh7MoHlQ/uQAKLBRuLqCmN77T/dLKEKQIJtoI2GNfxkVcsFq9EJpfxmKLj3xJbM/J
YvhKmnnLNi7szbEFBEMEi4vYoULt15ZNYHtib2lF8tFxbhMd5e65m7V7HLOXbJ+1SmW+6y/BaqjQ
Owo7cS4ML+SFbC1YLTOOFrO7fedET76uQw14TAZUnXelMK9RkiQjPn0fZHLRSeqWOPcoiwX/KEqn
0fGlpLg9dtz1qABLFWIMKJHfb/mTguSy3cRRtLRRLn+yX7Cpd24MnxxBAWWtqifaAw35/wrKVlct
8XfcHogw/jqsfk8WeEsrclXt2IlGJOmrfE+leLNAOqeuQBa9/g8m68+rqfsv2dwP+p9PahVOCOcz
gFnb9ZhX3iwuXqw4CPt2cdS1cCPrSTNR+9s+m8EwGp9VaRa77stXBzcL4rEYaDoDKuzmfiQuiaP8
PfCvEMziJ+KVn/WGtRYnlUUtzTUOLZj06yNA6cUpujUt80D7JK8iozt+6HXEY+PT6u+pmb6BQPsh
wG9fXzQ5jaaiClLEMGG5cSHJcGlP2VJ3EyNbzgeB/HvYWauM42FVtFBlkmw7UE6NlwuTqFPRoSw9
xHN5vvRhRrdnE/+VJUhWNFlri4XKa8HKvpCv8/7Gi/GPkkIQlGvwokxH+U5LmBMF02mRLRQ7EhKe
kOUxaMJhITe8a5Mf+d0nqg6LFRTlfL4qg4zmqTAgfj7QZAUzVh0ZIkbAetZ8/sAX1HJrxYaaSqsa
WuMIKW3Izj6X8ILv9vQLK1GqjaQPNyk5KswyZSRlIt1+KgjgvK6DJH3vLVQ721q71Ef2gRes/H+S
bI8aRXjUzoiX8RJv3t8tCmCa577SRz90rNZwiWfRfOzsi6HDTm7bGB7/6vd4qRSc/5yTLsHJ5dal
xsw7Q2AeMYVHJLFy3PylvD4+rbiRATfn0vAVg4Z9gvotjV0o5ig86IQx2tEZ94FVqkrDdg8cueA9
esR/0KZ8ylZMpStvb1tfh4y/BGgVzj2a0fDWuYdwqlOEFeeEr7Q2CSsi1MlrmyMNy+qgM9d/xGls
gYRnL+IRrRYhJLIK/V60toQ7WZxBGsk0mgBTANoo7vUpqKfqGZxbD4z17wgMua/2Yc+8ZR4PeRz1
tZKDJfRKzO3eyJRmWF9HvIkNJ8xNB+tdAdud+naa5rWdf9nDvcnb/SYObhytW0ouMWoGOcgzd44f
ZGtau8zV+9jGgVba842pxVLe5xhWFckGy3ob7Gl8gkKZWlcY1Fcc5/lTdrfQYcpJPricoc6QcAvm
NnAGi6DIR6x0uVkdozV+s/W/ZiE4aYW7Rc6rZwR/iNenPP1OUWCfqIRMNmGzmiADpvv5v+wmgxaG
3b5MRwbmRmEyAL6VzTYhRh5mlinmJfIgMad7WtyThmeWPzc3fz9jslFkk8SEECdCtMnZJLNv0khZ
IxJ3D4xSYuEWB83NZDIZ4iHa8a9za3I2dTZrQeKArlAvRCVSqxwBN2iSSzWFE4QFIySDcn6R2kH6
mVIs53v1CFHxev6yjwrEXkBAVeuPKcfEeq8F72bjnLhJGMgqcVOjPEYReJ6njcoujE9EOwinXJFg
E3B9UarR+xzEyocRamvXXIOtMu/9mSJLLdzMUAVJIB/TMt931yXuIaQNdmQT1/qV+UMDbmF1R0Wb
u+OolAI1HCs0x0U2fzISq5xJoXv8wJ87qOyXb5I5IqfKuUwtn0DaVD7LQNf/bnv67eIGN8i3+iW7
9bknQ3l8xBuk4yPTk/jnUWcwzYFJAGJPa9GlOf2jj8cFWmcwqpGLhxpKJ/yU1x9wokdPp6urv7Ve
Y0URFDkvCPp7beNogx+6VoB372E2MthQJusSIdldSmJbogb1iZgwuOUP0X6eaN0taoyd2XuB9/UP
EeatK/4vbiovT0lPTuqgnmS9IsoWlHmq4ZNjacK5e2FW926HllU3suFj7JwvgaZxZBODxxAWz//M
IFAzmNctjo8e/J5XXqRFzM5ZbBjAO96rzDfHA5yCtgpygOAsYxPZpBy2LslZzpvQXqBzMReB5kih
P5vv/I91jeFFQBa/uBV8GuE+rR9gpVMYA34VjD+fATIaqQggEFFzNICBt3ZETRmf+PhiaSPmfGde
lEhJbt+jm9valIbDRJRubN0H9S9zs8jatsvQqRgDcgg6XFM9Npo5r6XA1YMUeZWPOIcPWei1D9Go
DYu+CWrWxASPoaw/gCduSgycvwYC0M37Wd2/J67yn2d94fcxnOr3v60YO+Q3jKqZXrHDS/BRzg6M
MORX1sRv6xNfPMR5OIyPMoJOnyU0awFz/5xjRT2ivZoeLCNdW7mnAOrHAOlHG/HxKSDquQgY6Y+v
DVttIB523T0i3mWEbljnM+489v0k/3V3x3Tf+ApfYOkNCoBxGP1yVEr5ee1TwOG94KLwXjeN9Aru
BvdNay6IGbn6u/g/FJMcBEM01VhXhH6KFSHhjG70y+CSQYAq/Scf5exw4G/PuTsCQhAi4J4QdN8C
pjRYJR8Da1EjkNMRuEVTn9iPdISRaz2NZn4CDcvJ539R5fvXe7bHeP8vhNfVdHzTC1o6pNgtUkza
g2k6LYqhlm4jz8zx9y9bJpPsrAsv4BiCaF8MlhwzQ9WL+r6lxvw//Av534xBNIY/zwWLT1RDKNVo
UV8zreKaGufCS4k8PHbRC/5KKSZTjHCIieVLuUHIpj+NUd2wLXMYYqHABFHhYhvBt+2ra3z5/vM/
blre+cNTFmtsQb+qjvNb04ZTk9TGqaRa4PIlLbh1Vu9+C8IkQtWBsoToclqr+Adz4i8QhZ9PXu/t
e5VE077G8pvxOxv1X5Vt/0mwrAQAKzQ9vaPkSVwUkQl/bsWGgqf66EkGXWxiaMhZQ6zoZME+oNo5
V6jd2k4wA6aptdsnIR4HN80Ku/9OcP9rzRSNW6FazymGkyjnQPYYrqkt7KQU5ExrkmgnW/TD4gQi
5yWLIPvtDtvkLnBHzbqYQ8/feCYyGzCsSo7efwpqD5MWpbGA3H9m3GVfukCAZjcEGiY8Kgjn/IRX
QdaW4zd6e5BvWdEnAuSOHcbUD59psCFUnpwevXzTrJvLzwbJUPVONwUK6Ww7F4D6+fJSIqgRqhco
HCy4n/qsK0g9VIp8tqoamqp7SqbUsSO/c35ybb1Z3ZQMJ6WRoTJHyV7KWIhejLuDMaF6UKB6cZGp
d98HNgWxjQ1dijaNlN0mit6iQeclB6yyilXQd3Q4mvjdjXxbIq2BHKxxxPAYDrasJL6Y0RO1KSN/
KCEt+RDSs+7SKuTpZcPPK+CswHBL+C99w8KkxMlx5oX2gConS84rj45K88OR+doy86n7blH/syE+
kyCPoynzkYLTYXpqS9mL/5Nag6uQ0r1b1Ub0I394Wk+Eu1PaZSYAEzk0kj+e1EGe5G11/tjydAsb
vV/mg6s4QQsb5WRdcSHN+xM50MIPtR0PX119dk1TxzqZF1hBXC6oQgiKvboT04zNKund+1CcbtbZ
iH3ZvoNldEH166MMKt9wahdhYpkNiveU9SkoIeBSzGkt23suZg3KkVEdEeAP2LbZxAact5zRymUX
YfOWSrslNFt+LSjllF5Hl3jmlEk1FS2K7NBZmYaLcJV7NLJ6lzP43Q9k8gg0Z+KcQtOy/7Zmn5Yc
zNl3Olj1g7Mb6cnuE7EsWf8VUEo2HQxol46NHGJE24G1czcdDyCBxX2FW7SjFot3iJgMy+ckCTwq
ECfMxFHSbv3u4buJbuPFYAonols6sgQnbyGrxZs35N6rZo7l6k4vAYFLcJljHcq06RP9XhAzsfbS
f9SLd4UiE0Ci61wu+NV/w6w7ULS9KIS8bh4tWNRyYd2jY/+7PbWWDPJq4E8wDmR6StFh5yTC8a/t
rfU+nLOKO71F+ESNpwM3kk0JLkXQbwInczckoTIMuwWx4vrwa0s7zSzJmGrMxTXlUEWryX8+YszC
Z1nT8Nf8NAFWFNor63+AWTKr+eMFfcyUzPLEcFv+36U7UHhgAyIPFltzeNjjtXzi3GLTw7aHCUoh
MUlNAq5Qv5Lwfb2SzZymTfrT6kmJO4z7hXStWu4z5b3ZyIGChbq02LmqPnzGDkb9E8V0HMRyUMoX
zhB/4aC4TDx/IQs2fle0dQnm1ia9ryOhCf/lh7lbdDjvIwqe+rI8VDvXbw3Ej5psh7MzcSTgJzyM
eJ7SdlA+miDlo97vAY0G7TPe3sUAJVkGZDX6OZgjmTfho28mvhNjQFk7OJ7M7eX517+8ZERaYBbH
5M78PB83qnj+/KYq72lQagx+qluPQF3JXC1YfCHQ7U0yHPhVmYSvwhpShRrGjFQI1U5UT+i6DN4y
n4V19OIfs5z2SJFbymp4nOJgVe/lD/vIxlMa+2KKsFS4U4sqGHFllbRN3weucN5pKWB5o9mh5fip
zoIu1kzpTKrC0G09yBnY97gvscgi+4NEesm75udV6Xjy4g3yN4BK9HafrGPMb9fQ9x9Bs7WgLfXm
7JuvvOfOBDPut/9bZbgf6LE+jW473MZ4qyfFK2x+goSGOIhb0obh0BQmERq7otqOT9tCeG/2cQai
OCiGn5rZw+yoFMc799vpHGGa2iuRqeHUw1tOqgpct5yUwA7QoVPIA9EqFFaRa6KOqnatVWDE1Yq9
qq/mGsV5qI9++ml7mwiz5VVPZBvyO2oun7Ie6lu6h5bWlm8fbudWgifjSLmBawcPBsKQ9FkWhgaP
p5jbYOLGqYhZbtrRiLy8FzRfGQM9Y+wINaPFZo+UR6rLaa64U320T2G2sVr5wWtwaa6iXWvk9pMV
1+8Qm8ZTm8JwG9HVRiRO3eRkJ90++S0Z6a2axoeiXzmWI74zlq37wdVyh+/8O1XSy43QidkI2WZx
KSRiJv/U8EG3rsXqJhNS5gZpakwpbxaQLZq3AyaynVwqnA6bPSm/9Aswq/2Vj80EsZOWhwzE/gq2
I2gXlqUHudJ+Ehi2gjcPn+ZIxfkC/PwiW71HvhhP5Cysp7mtV5s43+7WLh5vsRykJ/bZRfmWveLp
HnWeIdnC9zoIXrAlYybEeHOTq/GMx6koBxFzijNKB7FuEc/YsefeYaken63c6avwAULZmtJC1Qvd
IaXU8MPhoqCCaJyti6s3JYctf7rbsVD/OYiIs7l3bBR762UIuUZBHEus55/0Dwq5aukhT2HenRYO
20EHfKtDQ/IoAvJjyvbcfaMB1XkV8xVEc5omsxaRLOuWVBBcs87DwxTUOf9LMXuhgsk13wKRvpeu
Of531Y9+p5Q55Ss5pf6G0z56bTmSFwjSTcxZT81VlRJUNkXC58ami9suXp1EwI03o+J3KZlAm7CP
DR900P7wQH16gWUgwAM4X0VsZk3ZRNvHq3h1h7zvyGualPW798JXZGVFYK232P9sKs4NVCXW82Zo
J5d6my6crZQ6dNA44OAkjjOP1M+0AHSdP9GiD3alIEibC3l5+x8d7Wmm4ZMS9ScbJ2oAt0gTYyoi
u+GIGT3qW/zkIXprrVQ+5s8m9JREqgj71gRVDq43egcYZO8aj6060rFg2Kwfxtk2kg6M/kjdTuGy
qS0yFukE5zEdGskmcKaDN5b9hSq2+uK6yootVcTkzcK6lLWBPMYpLNOfkB0/s6XMc9U/Ktu/I9Wf
SOIXyHSoNXRPtMaAsAsty+SspXByNMHsQp/1+Xz5cESViHQ/neyHvfY/EX2+OGxcOMdH0tKId6km
3TxDkSI3EEfoT0XYj7A9+QKggAywq9qvyK8E7S/1dG3/mnQD0g+Ma3wcGSKjrlgYmwSiaKWAugXh
PwEoFKO+Ek/Cdd9FOWVMPKFdQ4c8GljTqupqbS3x8bAPiS2ubZBlhshttCyeT28LBv9uS3QNVMrc
L6m/EWvfeVnyh4o5tOUqPdNh0Up+z3MmXhKSc1wURVRB0Oq6unXpWn+viTmoFvPYrCFntSdFVxqp
1GFe+mJTdSDAvefnxqkQtHwdaAVrf9wwj1JZtLQgZlufyy0yLCFCQGgv6GX4CJvyqfLJGjNFACum
M9O312sbJtgz2TF94MFgpeYCmMI04LNW7j/e1uPgJGji29cQyJL7LZU7tJWA6h/PQXgMPVweD5UW
y1lbkR2tw3parziDG3rUZiBFN6UyutRz5KFLJ871nT8xFJ/BtyrAsFNAhQZbYfjrSDse9RmRYmZC
+zQEGdHIIwh9OZQb10KIVDUIVfpwKvqGVQwpYLLYXdWLrPV6zVAivdn9DzR6wbDyDbbZfrBAS/3a
TbEwkqXRqaUZfck6B6ICAmuu1kN8ocESWR6aoOC7UK23vkvdnCptYXIKlM5PswrfSIzUf18A3dT/
VqqJDGrqaWyjjZvIowzRgur6EI+pmreVa3nv+3hfuPRjg/U+L8n1CwY0Qx+2lxwtZqZ+UeWEXPLx
1hxEvfix0NJdiiA43oRnT+mpYXXLib8l1OlXQnTgKJtjvI2FpA66yNtIVA==
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
