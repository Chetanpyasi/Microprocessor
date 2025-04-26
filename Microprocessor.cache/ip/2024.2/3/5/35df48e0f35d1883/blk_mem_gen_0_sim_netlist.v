// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Sat Apr 26 17:30:48 2025
// Host        : DESKTOP-P7OTN0S running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_9,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [3:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;

  wire [3:0]addra;
  wire clka;
  wire [15:0]dina;
  wire [15:0]douta;
  wire ena;
  wire [0:0]wea;
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
  wire [15:0]NLW_U0_doutb_UNCONNECTED;
  wire [3:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.87285 mW" *) 
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
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "16" *) 
  (* C_READ_DEPTH_B = "16" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "16" *) 
  (* C_WRITE_DEPTH_B = "16" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_9 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[15:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[3:0]),
        .regcea(1'b1),
        .regceb(1'b1),
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
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
FPXllyX2NFs/RMngGqZy2bLYbZr92CdofeZrJOHklWXExpaPgHNYp2Lzm4MnflbnrfSkCmLwwKT5
zfRgEip7FKQ5Zhb73p0MAIADixBZ/ZRt4hQkJL0T9brm0waLHfanjnov2aCX6jN3LbQc3ujmDga6
Dd73k78u4xjRTDv1/P4=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kr7VKKvChFoiyRCReag+OvU3jnmG9pN0cv+BxhNmMKLthg/ksgNZyU3L+fQ7cmIQELtlUjwjkBAP
Jjq5RsCnHbJxj+Ys1GNhriiBsxLqxWCP8onhAVvgZN2xZFOih0UWpqlU8NVP8Eww1ohvkDgxTstC
3kDmYehxIUJjqCC/mgRZmuezqugrFdubYmBoz16tUvD17iA5qqCIMS9xSIXYp2LBNekmWEwrVqzu
R4koEo4UlXl/CEw0XY3QvMoHnlXgu6N/6sc+nxZtKSwjiMVvGnZE9UVvJPAC3Hn3zKFGlK53mmGO
Tj0dWzhwX0ahSYzkyJC/HLdbGZmriL2UNvDyFw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
CaLc9FGt3AdRHfNtGAsGFY/QEvHY1Vv4TvvgCDsdDMqiuDeLizFJDJeskBWjeKDoE2cufK8TxiBq
mySRQNJoeOKnxTiDdf+Rx6m0iR6h/YeswegYwgghpM5KVrl6mSwF3+4yEovPM7a+9ArDQ5vl+WT8
SilNGzyW0KnTwe7+szs=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cEnudSW1X71p0Xuq6jrXOxHnBku87IA0RA3zKqmeZHZM0r+9rEm5MSzX8RecnQ994yiqeyxbIH2l
fGEzUzr0ZzryS3fkf2LnJuB39f2YARW9eVCSiaeWaraZuY1l89T+h3vgdlurS/1LIraYLS1MyOXa
6F1LAcQp3W4OO4ctc3q1FRMZGldRS1biMsKwJ8Lxj8NEOm67UfgFrJNQAxbVXEfbWRWhKtwNxcTB
JbgC8j4EHkIA46mzoHloeBAL6KieplQUBjKXSSTb66rxglbFhWLy+mirROHcocu9J4ZbvTRYZEww
4lso1lqAllVLAoKYqa3WImZuSRoTbGDngBt9Lg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rOyI+x4PlmKcVSFoN3oKgSYpVlmYxc194Ej04il/YmBg10xopy4zmtu5sdCP/uGSNYcNGWeAiw01
mNf98KyNgTUFXruHCA38qjhhEIvl4vfWWn3W3mFRxrIuwmnreT6qTvgMaxIkCdVBDP7Iy7O6WmCf
3Va5X5hnCHhtXgX5UYniBHiLjmupv63B8XMAYDH2n6mQ3H0DF7mtb7psBafd0Z6+IWUbmzwMtKrf
ZrRJBGAhNT0i1KrEjEh/rWjN7Z7N32zQ+Pl1kc5gYCQIX5McfdTdqSaRVXZ/HF90ymS7/8d5LDyj
Er+ORdcjnOn6oAyY4PuUUl4OYUHv5k+RglTe5Q==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bJa7kPSpDipzoJoQu1APEjc8vFLqBfQZK/grZvWijD7/FgMTerFCWLUY6n8DWeGdvjXvTeyrqCHE
2rP/H57wUqPC8tIJlGm6ZYQGjZ3TgYqLrJshDE5zYMTO//q0vuSraWvZP7A7SLuW6y7tFE/nplpx
L8gbYORx6j70okGUwnamCMS9yhFr7Z2QTJne1k4GNFGvy66URk3k5cBPl5j4/1yc4xGV+aWYl6L8
q8RorRU/CltObHKrji/jdiY1WtdGrkpRyCEFc+XNPazL9xSLLu5bz6XlvKwoks+8a5KYT/VFUovM
JbM0bpAXM8Z7rGaPuXjqXtZBg5praTZLu/WNcA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PYKBDinOGc/kIVdFzXrz2wA4/QNFxLDrQfTWfR5TjYE6bm49vrZi0bawcr9HXp4OP1+XxPLB3oCP
oV5e/rYeDln531ebt8yEg27XCoSHEX4FU8oG8aBJ8fqgWayOnAMJt025WodOxuZXbhT1zPo7J3uh
6iO9Mv7RtYE2fZ1W+G8oN//FTOEJYPWlKYnt0cDeZrN3I4rHHptZHuu7l8T+df0PYea3x6U3Mvkl
ojZ+TwQtdu0NuYY5j3QNgx3+W2XYq1M773FAnEz/deW54EjE+jf1jjrBk2pl8SYxeKuutS15oPVF
eHdqXYVcJxoUY5JH8z04lITKEnZ4oq6sYS6dog==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
tl+2vFCWZ583gQGsVC7oopz2NCKBiJ9uOHYBGzJZheOHJMqI/ehNvo25l710eBx00tztXzM30AH6
ZhAJg+kJwE2jO0MV5fmG5dnwXmLqoGEJMBs7xwWxvYK7w/0z9M0AJKD7HnuC+IiLhNU/fIxyuE+I
+vWqp//RcfY0tMMp2I2J1yEW6GUahS1ve/4JchssZ7Xu7VthoSDWXMQWATbvsUsDzeSo2+Ruz8Kq
Dc05HqEU8NgBxDPPEKLCcdKLp4byglwj7iCAtCjsPy8P18qjgb2sycFjNgmaiNMMB51WqeD+hneG
hLOue9bqVdEojkrb3q4WbsGZKz0bAGsryxslOlYHP1b8vey3yI2ixA80wyERe8d3GRIeZiSxGykH
qWxsE6x/iyi8QRb5mXZPMApA+Fln8tYmn7+1rFCm8gF4gJWhr1PsSJqTi658symGrzT0Ghjvf2QL
SvvoaeNdy0pOsWs7jLBFndd4GiFA+9K6Y33sziLToU9EvvFokENIslod

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
oYiCujFRj1F3wKsGZlHR9niEtR9MLXEVAVfy+f/3xrmpW6Ye5a+fBCvm4TH+iRQefGHNdMPnzTNW
K/pEPAS9uMJjOdFiu+APT+LYrSRnEg4W0dX5buSDGM6LBWAuMseoTMjbJJoYDGLRckJgW43E30mX
ej4823nkbfwc+Ecbrup825qLyv8RTQLNHafvJA5lSapdqXwnlOIYRmcHn+sfAh5pGv9kW9aokcdh
ObR2XYxX99rYloyvz3x0pmjxD5ILW4SQMB1IUEuuyqX6eb5IQ+kZ41hjvsHIuQH29vzpCfV9Jqha
WC5yxxK1R+cleZSKD1H1gVzbTei8uFs/91Bgeg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
urNc+S8AFPj+GVFdqJE5V7P8O6QI6MA3nkwYb8NKbYbVufnXKg6voJIRYYeYr7EOa8mrqirozWbY
Lln9SLWnkaAy2LvL/N6WahoQdCt++4RH+xe768XvSrVUFPrIwZRixqMLurc/tPov4i5P/ukZKl18
ZPZvXRzUNlvCZnMPcF+5QCQihqPbjcZ0YyGgWgX/ipTGG3sNqmylGN7qLa4Rgqu/mB5a2xVyu5Wc
911+/X3VVFx697WVaP5V0SbOzYN8R8+8B8kdznwixMA+f4lSbBXyRysVOSzYjo8bKEMqyKMVBQn9
xDmEuV0DvVWXdO7VPvWA1LuJFwS07OxeI2GCcQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QcP7fsLZxaDrG29e9HQeXfu2TsKsdyW7Yc1vWct6lbmDEfXkWMU1fFWSPIjPzRc9UOnfEu0bRn+B
D+8MWokqes3WF7txljBmgUPiNGZ8arUU6ENa/IY/Wv7iaB/ZKM5PtdnFAkjDIrYyKFCTz/U6Yzwi
hBGGarK/wYQOLzeeKRewiPTiNUL7tztWuMZ1t1msxD951EeKrwjrjcXIIuf/TzrOGUOlWgjHlnrl
4Q/lfMAnRLBNTSWG+5wWewCE8jK2X/gJ5AV4p3x1WP3+JglbxpP39l3pzedXqciZPbuz2XlFnRPV
KByaUaAShzJ56p8+0HjWebibqQdieGNPiPWW0Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20272)
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
