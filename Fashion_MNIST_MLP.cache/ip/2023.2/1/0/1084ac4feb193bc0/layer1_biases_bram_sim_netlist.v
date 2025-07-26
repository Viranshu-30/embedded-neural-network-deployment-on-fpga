// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Mon Jul 14 16:09:45 2025
// Host        : LAPTOP-JNN13LQG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ layer1_biases_bram_sim_netlist.v
// Design      : layer1_biases_bram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "layer1_biases_bram,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_7 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20144)
`pragma protect data_block
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
Jphcp8Q7eJExgQIh4x5HtwdhnupTWyQ=
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
