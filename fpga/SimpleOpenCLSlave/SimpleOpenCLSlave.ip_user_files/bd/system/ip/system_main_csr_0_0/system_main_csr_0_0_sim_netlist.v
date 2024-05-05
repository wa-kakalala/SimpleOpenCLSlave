// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed May  1 16:28:07 2024
// Host        : DESKTOP-7S7UGPP running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/wkk/Desktop/OpenCL/SimpleOpenCLSlave/fpga/SimpleOpenCLSlave/SimpleOpenCLSlave.srcs/sources_1/bd/system/ip/system_main_csr_0_0/system_main_csr_0_0_sim_netlist.v
// Design      : system_main_csr_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_main_csr_0_0,main_csr,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "main_csr,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module system_main_csr_0_0
   (clk_in,
    rst_n_in,
    s_axi_write_data,
    s_axi_write_addr,
    s_axi_write_valid,
    interrupt_flag,
    config_data,
    param_addr,
    param_len,
    result_addr,
    result_len,
    calc_start);
  input clk_in;
  input rst_n_in;
  input [31:0]s_axi_write_data;
  input [7:0]s_axi_write_addr;
  input s_axi_write_valid;
  output interrupt_flag;
  output [31:0]config_data;
  output [31:0]param_addr;
  output [31:0]param_len;
  output [31:0]result_addr;
  output [31:0]result_len;
  output calc_start;

  wire \<const0> ;
  wire calc_start;
  wire clk_in;
  wire rst_n_in;
  wire [7:0]s_axi_write_addr;

  assign config_data[31] = \<const0> ;
  assign config_data[30] = \<const0> ;
  assign config_data[29] = \<const0> ;
  assign config_data[28] = \<const0> ;
  assign config_data[27] = \<const0> ;
  assign config_data[26] = \<const0> ;
  assign config_data[25] = \<const0> ;
  assign config_data[24] = \<const0> ;
  assign config_data[23] = \<const0> ;
  assign config_data[22] = \<const0> ;
  assign config_data[21] = \<const0> ;
  assign config_data[20] = \<const0> ;
  assign config_data[19] = \<const0> ;
  assign config_data[18] = \<const0> ;
  assign config_data[17] = \<const0> ;
  assign config_data[16] = \<const0> ;
  assign config_data[15] = \<const0> ;
  assign config_data[14] = \<const0> ;
  assign config_data[13] = \<const0> ;
  assign config_data[12] = \<const0> ;
  assign config_data[11] = \<const0> ;
  assign config_data[10] = \<const0> ;
  assign config_data[9] = \<const0> ;
  assign config_data[8] = \<const0> ;
  assign config_data[7] = \<const0> ;
  assign config_data[6] = \<const0> ;
  assign config_data[5] = \<const0> ;
  assign config_data[4] = \<const0> ;
  assign config_data[3] = \<const0> ;
  assign config_data[2] = \<const0> ;
  assign config_data[1] = \<const0> ;
  assign config_data[0] = \<const0> ;
  assign param_addr[31] = \<const0> ;
  assign param_addr[30] = \<const0> ;
  assign param_addr[29] = \<const0> ;
  assign param_addr[28] = \<const0> ;
  assign param_addr[27] = \<const0> ;
  assign param_addr[26] = \<const0> ;
  assign param_addr[25] = \<const0> ;
  assign param_addr[24] = \<const0> ;
  assign param_addr[23] = \<const0> ;
  assign param_addr[22] = \<const0> ;
  assign param_addr[21] = \<const0> ;
  assign param_addr[20] = \<const0> ;
  assign param_addr[19] = \<const0> ;
  assign param_addr[18] = \<const0> ;
  assign param_addr[17] = \<const0> ;
  assign param_addr[16] = \<const0> ;
  assign param_addr[15] = \<const0> ;
  assign param_addr[14] = \<const0> ;
  assign param_addr[13] = \<const0> ;
  assign param_addr[12] = \<const0> ;
  assign param_addr[11] = \<const0> ;
  assign param_addr[10] = \<const0> ;
  assign param_addr[9] = \<const0> ;
  assign param_addr[8] = \<const0> ;
  assign param_addr[7] = \<const0> ;
  assign param_addr[6] = \<const0> ;
  assign param_addr[5] = \<const0> ;
  assign param_addr[4] = \<const0> ;
  assign param_addr[3] = \<const0> ;
  assign param_addr[2] = \<const0> ;
  assign param_addr[1] = \<const0> ;
  assign param_addr[0] = \<const0> ;
  assign param_len[31] = \<const0> ;
  assign param_len[30] = \<const0> ;
  assign param_len[29] = \<const0> ;
  assign param_len[28] = \<const0> ;
  assign param_len[27] = \<const0> ;
  assign param_len[26] = \<const0> ;
  assign param_len[25] = \<const0> ;
  assign param_len[24] = \<const0> ;
  assign param_len[23] = \<const0> ;
  assign param_len[22] = \<const0> ;
  assign param_len[21] = \<const0> ;
  assign param_len[20] = \<const0> ;
  assign param_len[19] = \<const0> ;
  assign param_len[18] = \<const0> ;
  assign param_len[17] = \<const0> ;
  assign param_len[16] = \<const0> ;
  assign param_len[15] = \<const0> ;
  assign param_len[14] = \<const0> ;
  assign param_len[13] = \<const0> ;
  assign param_len[12] = \<const0> ;
  assign param_len[11] = \<const0> ;
  assign param_len[10] = \<const0> ;
  assign param_len[9] = \<const0> ;
  assign param_len[8] = \<const0> ;
  assign param_len[7] = \<const0> ;
  assign param_len[6] = \<const0> ;
  assign param_len[5] = \<const0> ;
  assign param_len[4] = \<const0> ;
  assign param_len[3] = \<const0> ;
  assign param_len[2] = \<const0> ;
  assign param_len[1] = \<const0> ;
  assign param_len[0] = \<const0> ;
  assign result_addr[31] = \<const0> ;
  assign result_addr[30] = \<const0> ;
  assign result_addr[29] = \<const0> ;
  assign result_addr[28] = \<const0> ;
  assign result_addr[27] = \<const0> ;
  assign result_addr[26] = \<const0> ;
  assign result_addr[25] = \<const0> ;
  assign result_addr[24] = \<const0> ;
  assign result_addr[23] = \<const0> ;
  assign result_addr[22] = \<const0> ;
  assign result_addr[21] = \<const0> ;
  assign result_addr[20] = \<const0> ;
  assign result_addr[19] = \<const0> ;
  assign result_addr[18] = \<const0> ;
  assign result_addr[17] = \<const0> ;
  assign result_addr[16] = \<const0> ;
  assign result_addr[15] = \<const0> ;
  assign result_addr[14] = \<const0> ;
  assign result_addr[13] = \<const0> ;
  assign result_addr[12] = \<const0> ;
  assign result_addr[11] = \<const0> ;
  assign result_addr[10] = \<const0> ;
  assign result_addr[9] = \<const0> ;
  assign result_addr[8] = \<const0> ;
  assign result_addr[7] = \<const0> ;
  assign result_addr[6] = \<const0> ;
  assign result_addr[5] = \<const0> ;
  assign result_addr[4] = \<const0> ;
  assign result_addr[3] = \<const0> ;
  assign result_addr[2] = \<const0> ;
  assign result_addr[1] = \<const0> ;
  assign result_addr[0] = \<const0> ;
  assign result_len[31] = \<const0> ;
  assign result_len[30] = \<const0> ;
  assign result_len[29] = \<const0> ;
  assign result_len[28] = \<const0> ;
  assign result_len[27] = \<const0> ;
  assign result_len[26] = \<const0> ;
  assign result_len[25] = \<const0> ;
  assign result_len[24] = \<const0> ;
  assign result_len[23] = \<const0> ;
  assign result_len[22] = \<const0> ;
  assign result_len[21] = \<const0> ;
  assign result_len[20] = \<const0> ;
  assign result_len[19] = \<const0> ;
  assign result_len[18] = \<const0> ;
  assign result_len[17] = \<const0> ;
  assign result_len[16] = \<const0> ;
  assign result_len[15] = \<const0> ;
  assign result_len[14] = \<const0> ;
  assign result_len[13] = \<const0> ;
  assign result_len[12] = \<const0> ;
  assign result_len[11] = \<const0> ;
  assign result_len[10] = \<const0> ;
  assign result_len[9] = \<const0> ;
  assign result_len[8] = \<const0> ;
  assign result_len[7] = \<const0> ;
  assign result_len[6] = \<const0> ;
  assign result_len[5] = \<const0> ;
  assign result_len[4] = \<const0> ;
  assign result_len[3] = \<const0> ;
  assign result_len[2] = \<const0> ;
  assign result_len[1] = \<const0> ;
  assign result_len[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  system_main_csr_0_0_main_csr inst
       (.calc_start(calc_start),
        .clk_in(clk_in),
        .rst_n_in(rst_n_in),
        .s_axi_write_addr(s_axi_write_addr));
endmodule

(* ORIG_REF_NAME = "main_csr" *) 
module system_main_csr_0_0_main_csr
   (calc_start,
    s_axi_write_addr,
    clk_in,
    rst_n_in);
  output calc_start;
  input [7:0]s_axi_write_addr;
  input clk_in;
  input rst_n_in;

  wire calc_start;
  wire calc_start__0;
  wire calc_start_i_2_n_0;
  wire calc_start_i_3_n_0;
  wire clk_in;
  wire rst_n_in;
  wire [7:0]s_axi_write_addr;

  LUT5 #(
    .INIT(32'h00000001)) 
    calc_start_i_1
       (.I0(s_axi_write_addr[5]),
        .I1(s_axi_write_addr[4]),
        .I2(s_axi_write_addr[6]),
        .I3(s_axi_write_addr[7]),
        .I4(calc_start_i_3_n_0),
        .O(calc_start__0));
  LUT1 #(
    .INIT(2'h1)) 
    calc_start_i_2
       (.I0(rst_n_in),
        .O(calc_start_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFEF)) 
    calc_start_i_3
       (.I0(s_axi_write_addr[0]),
        .I1(s_axi_write_addr[3]),
        .I2(s_axi_write_addr[2]),
        .I3(s_axi_write_addr[1]),
        .O(calc_start_i_3_n_0));
  FDCE calc_start_reg
       (.C(clk_in),
        .CE(1'b1),
        .CLR(calc_start_i_2_n_0),
        .D(calc_start__0),
        .Q(calc_start));
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
