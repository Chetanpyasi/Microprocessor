// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Sat Apr 26 17:30:49 2025
// Host        : DESKTOP-P7OTN0S running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/chetan/project/Microprocessor/Microprocessor.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_9,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
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
  blk_mem_gen_0_blk_mem_gen_v8_4_9 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20256)
`pragma protect data_block
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
Z6ek2PvvyppBBwQwQNYfhpJeWctS
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
