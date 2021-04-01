// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Tue Mar 30 13:19:53 2021
// Host        : ip-172-31-9-235.eu-west-1.compute.internal running 64-bit CentOS Linux release 7.9.2009 (Core)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_5847_lut_buffer_0_sim_netlist.v
// Design      : bd_5847_lut_buffer_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcvu9p-flgb2104-2-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_5847_lut_buffer_0,lut_buffer_v2_0_0_lut_buffer,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "lut_buffer_v2_0_0_lut_buffer,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (tdi_i,
    tms_i,
    tck_i,
    drck_i,
    sel_i,
    shift_i,
    update_i,
    capture_i,
    runtest_i,
    reset_i,
    bscanid_en_i,
    tdo_o,
    tdi_o,
    tms_o,
    tck_o,
    drck_o,
    sel_o,
    shift_o,
    update_o,
    capture_o,
    runtest_o,
    reset_o,
    bscanid_en_o,
    tdo_i);
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan TDI" *) input tdi_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan TMS" *) input tms_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan TCK" *) input tck_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan DRCK" *) input drck_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan SEL" *) input sel_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan SHIFT" *) input shift_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan UPDATE" *) input update_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan CAPTURE" *) input capture_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan RUNTEST" *) input runtest_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan RESET" *) input reset_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan BSCANID_EN" *) input bscanid_en_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan TDO" *) output tdo_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan TDI" *) output tdi_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan TMS" *) output tms_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan TCK" *) output tck_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan DRCK" *) output drck_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan SEL" *) output sel_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan SHIFT" *) output shift_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan UPDATE" *) output update_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan CAPTURE" *) output capture_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan RUNTEST" *) output runtest_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan RESET" *) output reset_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan BSCANID_EN" *) output bscanid_en_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan TDO" *) input tdo_i;

  wire bscanid_en_i;
  wire bscanid_en_o;
  wire capture_i;
  wire capture_o;
  wire drck_i;
  wire drck_o;
  wire reset_i;
  wire reset_o;
  wire runtest_i;
  wire runtest_o;
  wire sel_i;
  wire sel_o;
  wire shift_i;
  wire shift_o;
  wire tck_i;
  wire tck_o;
  wire tdi_i;
  wire tdi_o;
  wire tdo_i;
  wire tdo_o;
  wire tms_i;
  wire tms_o;
  wire update_i;
  wire update_o;
  wire [31:0]NLW_inst_bscanid_o_UNCONNECTED;

  (* C_EN_BSCANID_VEC = "0" *) 
  (* DONT_TOUCH *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lut_buffer_v2_0_0_lut_buffer inst
       (.bscanid_en_i(bscanid_en_i),
        .bscanid_en_o(bscanid_en_o),
        .bscanid_i({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .bscanid_o(NLW_inst_bscanid_o_UNCONNECTED[31:0]),
        .capture_i(capture_i),
        .capture_o(capture_o),
        .drck_i(drck_i),
        .drck_o(drck_o),
        .reset_i(reset_i),
        .reset_o(reset_o),
        .runtest_i(runtest_i),
        .runtest_o(runtest_o),
        .sel_i(sel_i),
        .sel_o(sel_o),
        .shift_i(shift_i),
        .shift_o(shift_o),
        .tck_i(tck_i),
        .tck_o(tck_o),
        .tdi_i(tdi_i),
        .tdi_o(tdi_o),
        .tdo_i(tdo_i),
        .tdo_o(tdo_o),
        .tms_i(tms_i),
        .tms_o(tms_o),
        .update_i(update_i),
        .update_o(update_o));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
geSCzw9gYjFCv0Dn0YxOXxhH+GZFMePCQPK3AjT+zbjt1urPphGbRmSIP212qcXhU3u6qBayOOuP
zGTUOznyYQ==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
OnCSRn8bnLy+eSxgkIEXKk5zY3JDppSX+6N3lQVX9PeSypgnQ/2z4GTpmoL+rdMoco6U9R4G1u4m
E0xhKuM4ba9nEk7cLfAxOQqKqsWQrZaIEmzIr1ET+cp4jOMvYA/MsN4jh93kbuKcSDuJ8zN13DFX
RemIkmekhFjPkyUS5qM=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MSBAO7tnsBVh2XpVImbQvPkv1Ik+6Bw1D0e9n6H/Bw1mXnRXzm0RzPaEYAIFuluPbWglTrw4pQSr
JI/DSdCg6087Xmb+Q5zKawFvuZahx4HgmrKxTL15lZwamiIpmu3LGyxaEH/VbYGM9Ky0jp5PyDKU
Jeskyx64XVUPlRklhMjIKCtYITsgROzqjs+d1jIc494zqnDADEz0msJP38WdzHgwLDQ0NamfpodX
BUqMR71hgPx1Rvdt7HagUbkfyaG3/12LxFvpAblT7W0W6RKBFEFgFrxWRFaDw+jzj4jgl9g+sjY0
cveJYAA4UpZJwPSDIWehjmS+mOinzlnl8UP7jw==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UtIiSU3lZ1iUKAuaJuT083jLC5QokBuxbJC/zVsWXf8ozOCIDAvtpSufF02lDCCaNNheB40dXQFS
I8VBcTtdWzNr2vj/HmW17e10D6T6mqn/8t0HnWx9c3modRuXup0Too1mNTU5gTH+v3utogTO5ztm
HbJZ/+5ov0tPkaeJufJl5L/RZAfLmRnRYybtx5bbc7XiGyWaVk6KunsaWtX5zJtVnMeUOkg0N8oL
RBeyFp3tFqTN7ecNUp7zom6BjZ3fR6euRy36u1XviJsqBjcxzASI1k+bn2lDs3oEdXuMHoRvcuWL
mmMddzjwWr43L7YoB/WBz/Tw7t6iYI5B6imPUA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
AMZ17uwJyVzW4KyzjD/YjCrX2GlLIDwW9HSuEat97pn8ZQ7QpDPhFLNx09klp1fHQ8yb1KlxCqpm
IjAljp4A5oQHWcBw/s+Xhtpin6GMDGjsmd5KmAD2J5DQmzqPazc0M8vNO+pGpCJogvWarX5XrP6U
56l9vH5mfyPmbT/09Kw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
oAGTk8IFmmwAT5eT+h5xMK7MsqYCJnsMll3rq17njNu6wbVX2TAoOlVC5DzNg9T5ce7gVnuLuFG/
FgNSnTJx8TlbP73KxlDubmAVofR56G/yHzaJfJ0fwNhrfXm5AFgmFaKFPTKNkrG/qjdNuwUeA8p4
iHoj1zvPx50myVHXSpHLQ8n92DLWgMUX/57aPLbMHmYu/gsD0kHOuQ8Fr2Mi2DxufAvq1gzT0kc+
lxSntoseL+X1HLSvmKpEkR/sjaz6P9omIzqKlmOhvLeTZVEZcUtukVN1HTrlol+4/pTFDztcz0tZ
XqYZKVNB/igvn1iP/Fej8fpkaeJOrk1YgJZ6xw==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HM0OWTHTT9qkiqicwldwQlaXCXhAavOkOLtzdsXybVEqcdGTuInS8Xvu2i7fjfGdnZjc+o4ZayFd
adCXUGMQZ+7u79Rm71DMtV7WL4PMhXZmItLJgXQmNzajU211AuWse/CyD7Am9ZDJuQcIK0fcqZQI
XVJU6sMESVWiSWdCuqkcQLSuSoBY7TVLmCDoTF9n7MlYfcxCkkK6d+2Xs/gjaWO59GZ3TbWhAQLc
9hHL9YUJUTzZ8yPC8tX+DLS/YrniD3lBpquxXGcl1FxHKFTSpMG/6pTH+7Y5u1s29iqS/KYCCOfR
Pqg3ikxxR4ywBL+umX+Ijv+Hqgol6tBnCkWh/g==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DQuK/YuairmUNmnTZFN/Tbbjjk202ciTMNZWiES7z/c8BYrmlnBses/x7XzAVxFxOTns+S6gcbxv
lho3MoYQI3b1wxR93ymMpbFY2AAKqfTaYrt9nuBi+J66NUkNb4mO5Ysrmk/FyxUuVMw2JeKhCxVf
1Lkw2weXEA2RSHrWxd8764IFSbBqKoKUTMuqLxHovRaQHDy/mOdyefGG7/6ywGbKjVTlE8lXVH8E
8QodSYZ7p8uod81sVFzJL26a9Tqu+u2tOgD/WqMuxrio7zRkYYC5P+/FtxLC4GaIZ6LivaJuTLOF
bkAMneaa5dlfamLnRyzDXUCJu/DFpJtH5s1eLQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DL1JbuaDxIhP8ir0jAdx6nea42/rMQ2VXG8PZEGqMkgF/yLmK8+UcPNvmkEnUbVxq6WNxCUUYBOO
eroUXvKd3hB7aza+lE1PkczDRQpe4dZWQ8yHCUSbqj/KnUKU7sMHOSk5MiYcbBazdC+B/zdSxJsr
sUmnOLgp/SqygmZW7/oDYMIYyOExEOrIPD4CH/xXZGlvuNs4OjdmaSus7kQp/iaUxQz03NGaMv3/
EuIfORb3j+mQPwXwEBQhecy81p8ky3bmOS0LK+CPuz0LF3VVvrDnnXUSBCWa2WW6t7burmoHvgPV
oB2jrvwkS6dNjRJ7CoyGvV0N6d60kiD0LjZg6Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2960)
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
