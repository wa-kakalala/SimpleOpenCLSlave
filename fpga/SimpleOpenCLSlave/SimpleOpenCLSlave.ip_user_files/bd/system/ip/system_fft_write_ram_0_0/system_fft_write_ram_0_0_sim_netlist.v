// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed May  1 16:28:07 2024
// Host        : DESKTOP-7S7UGPP running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/wkk/Desktop/OpenCL/SimpleOpenCLSlave/fpga/SimpleOpenCLSlave/SimpleOpenCLSlave.srcs/sources_1/bd/system/ip/system_fft_write_ram_0_0/system_fft_write_ram_0_0_sim_netlist.v
// Design      : system_fft_write_ram_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_fft_write_ram_0_0,fft_write_ram,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "fft_write_ram,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module system_fft_write_ram_0_0
   (clk_in,
    rst_n_in,
    en_in,
    data_vld,
    im_d,
    re_d,
    wr_en,
    wr_we,
    wr_addr,
    wr_d,
    ready_out);
  input clk_in;
  input rst_n_in;
  input en_in;
  input data_vld;
  input [15:0]im_d;
  input [15:0]re_d;
  output wr_en;
  output wr_we;
  output [6:0]wr_addr;
  output [31:0]wr_d;
  output ready_out;

  wire clk_in;
  wire data_vld;
  wire en_in;
  wire [15:0]im_d;
  wire [15:0]re_d;
  wire ready_out;
  wire rst_n_in;
  wire [6:0]wr_addr;
  wire wr_en;

  assign wr_d[31:16] = im_d;
  assign wr_d[15:0] = re_d;
  assign wr_we = wr_en;
  system_fft_write_ram_0_0_fft_write_ram inst
       (.Q(wr_addr),
        .clk_in(clk_in),
        .data_vld(data_vld),
        .en_in(en_in),
        .ready_out(ready_out),
        .rst_n_in(rst_n_in),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "fft_write_ram" *) 
module system_fft_write_ram_0_0_fft_write_ram
   (Q,
    wr_en,
    ready_out,
    data_vld,
    clk_in,
    rst_n_in,
    en_in);
  output [6:0]Q;
  output wr_en;
  output ready_out;
  input data_vld;
  input clk_in;
  input rst_n_in;
  input en_in;

  wire [6:0]Q;
  wire clk_in;
  wire data_vld;
  wire en_in;
  wire ready_i_1_n_0;
  wire ready_out;
  wire rst_n_in;
  wire working;
  wire working_i_1_n_0;
  wire working_i_2_n_0;
  wire \wr_addr_reg[0]_i_1_n_0 ;
  wire \wr_addr_reg[1]_i_1_n_0 ;
  wire \wr_addr_reg[2]_i_1_n_0 ;
  wire \wr_addr_reg[3]_i_1_n_0 ;
  wire \wr_addr_reg[4]_i_1_n_0 ;
  wire \wr_addr_reg[5]_i_1_n_0 ;
  wire \wr_addr_reg[6]_i_1_n_0 ;
  wire \wr_addr_reg[6]_i_2_n_0 ;
  wire \wr_addr_reg[6]_i_3_n_0 ;
  wire wr_en;

  LUT6 #(
    .INIT(64'h7222222222222222)) 
    ready_i_1
       (.I0(ready_out),
        .I1(en_in),
        .I2(Q[6]),
        .I3(\wr_addr_reg[6]_i_3_n_0 ),
        .I4(Q[5]),
        .I5(Q[4]),
        .O(ready_i_1_n_0));
  FDPE ready_reg
       (.C(clk_in),
        .CE(1'b1),
        .D(ready_i_1_n_0),
        .PRE(\wr_addr_reg[6]_i_2_n_0 ),
        .Q(ready_out));
  LUT5 #(
    .INIT(32'h8FFF8888)) 
    working_i_1
       (.I0(ready_out),
        .I1(en_in),
        .I2(Q[6]),
        .I3(working_i_2_n_0),
        .I4(working),
        .O(working_i_1_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    working_i_2
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[5]),
        .I5(Q[4]),
        .O(working_i_2_n_0));
  FDCE working_reg
       (.C(clk_in),
        .CE(1'b1),
        .CLR(\wr_addr_reg[6]_i_2_n_0 ),
        .D(working_i_1_n_0),
        .Q(working));
  LUT3 #(
    .INIT(8'h08)) 
    \wr_addr_reg[0]_i_1 
       (.I0(working),
        .I1(data_vld),
        .I2(Q[0]),
        .O(\wr_addr_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0880)) 
    \wr_addr_reg[1]_i_1 
       (.I0(working),
        .I1(data_vld),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\wr_addr_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h78000000)) 
    \wr_addr_reg[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(working),
        .I4(data_vld),
        .O(\wr_addr_reg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0888888880000000)) 
    \wr_addr_reg[3]_i_1 
       (.I0(working),
        .I1(data_vld),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[3]),
        .O(\wr_addr_reg[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \wr_addr_reg[4]_i_1 
       (.I0(wr_en),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\wr_addr_reg[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h78000000)) 
    \wr_addr_reg[5]_i_1 
       (.I0(\wr_addr_reg[6]_i_3_n_0 ),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(working),
        .I4(data_vld),
        .O(\wr_addr_reg[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0888888880000000)) 
    \wr_addr_reg[6]_i_1 
       (.I0(working),
        .I1(data_vld),
        .I2(\wr_addr_reg[6]_i_3_n_0 ),
        .I3(Q[5]),
        .I4(Q[4]),
        .I5(Q[6]),
        .O(\wr_addr_reg[6]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wr_addr_reg[6]_i_2 
       (.I0(rst_n_in),
        .O(\wr_addr_reg[6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \wr_addr_reg[6]_i_3 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .O(\wr_addr_reg[6]_i_3_n_0 ));
  FDCE \wr_addr_reg_reg[0] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(\wr_addr_reg[6]_i_2_n_0 ),
        .D(\wr_addr_reg[0]_i_1_n_0 ),
        .Q(Q[0]));
  FDCE \wr_addr_reg_reg[1] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(\wr_addr_reg[6]_i_2_n_0 ),
        .D(\wr_addr_reg[1]_i_1_n_0 ),
        .Q(Q[1]));
  FDCE \wr_addr_reg_reg[2] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(\wr_addr_reg[6]_i_2_n_0 ),
        .D(\wr_addr_reg[2]_i_1_n_0 ),
        .Q(Q[2]));
  FDCE \wr_addr_reg_reg[3] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(\wr_addr_reg[6]_i_2_n_0 ),
        .D(\wr_addr_reg[3]_i_1_n_0 ),
        .Q(Q[3]));
  FDCE \wr_addr_reg_reg[4] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(\wr_addr_reg[6]_i_2_n_0 ),
        .D(\wr_addr_reg[4]_i_1_n_0 ),
        .Q(Q[4]));
  FDCE \wr_addr_reg_reg[5] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(\wr_addr_reg[6]_i_2_n_0 ),
        .D(\wr_addr_reg[5]_i_1_n_0 ),
        .Q(Q[5]));
  FDCE \wr_addr_reg_reg[6] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(\wr_addr_reg[6]_i_2_n_0 ),
        .D(\wr_addr_reg[6]_i_1_n_0 ),
        .Q(Q[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    wr_we_INST_0
       (.I0(data_vld),
        .I1(working),
        .O(wr_en));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
