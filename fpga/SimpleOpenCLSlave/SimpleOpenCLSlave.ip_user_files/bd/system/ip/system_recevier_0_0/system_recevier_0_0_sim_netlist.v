// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed May  1 16:28:07 2024
// Host        : DESKTOP-7S7UGPP running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/wkk/Desktop/OpenCL/SimpleOpenCLSlave/fpga/SimpleOpenCLSlave/SimpleOpenCLSlave.srcs/sources_1/bd/system/ip/system_recevier_0_0/system_recevier_0_0_sim_netlist.v
// Design      : system_recevier_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_recevier_0_0,recevier,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "recevier,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module system_recevier_0_0
   (clk_in,
    rst_n_in,
    bus_addr,
    bus_data,
    bus_id,
    bus_vld,
    param_addr,
    param_len,
    result_addr,
    result_len,
    calc_start);
  input clk_in;
  input rst_n_in;
  input [7:0]bus_addr;
  input [31:0]bus_data;
  input [9:0]bus_id;
  input bus_vld;
  output [31:0]param_addr;
  output [31:0]param_len;
  output [31:0]result_addr;
  output [31:0]result_len;
  output calc_start;

  wire [7:0]bus_addr;
  wire [31:0]bus_data;
  wire [9:0]bus_id;
  wire bus_vld;
  wire calc_start;
  wire clk_in;
  wire [31:0]param_addr;
  wire [31:0]param_len;
  wire [31:0]result_addr;
  wire [31:0]result_len;
  wire rst_n_in;

  system_recevier_0_0_recevier inst
       (.bus_addr(bus_addr),
        .bus_data(bus_data),
        .bus_id(bus_id),
        .bus_vld(bus_vld),
        .calc_start(calc_start),
        .clk_in(clk_in),
        .param_addr(param_addr),
        .param_len(param_len),
        .result_addr(result_addr),
        .result_len(result_len),
        .rst_n_in(rst_n_in));
endmodule

(* ORIG_REF_NAME = "recevier" *) 
module system_recevier_0_0_recevier
   (param_addr,
    param_len,
    result_addr,
    result_len,
    calc_start,
    bus_data,
    clk_in,
    rst_n_in,
    bus_addr,
    bus_id,
    bus_vld);
  output [31:0]param_addr;
  output [31:0]param_len;
  output [31:0]result_addr;
  output [31:0]result_len;
  output calc_start;
  input [31:0]bus_data;
  input clk_in;
  input rst_n_in;
  input [7:0]bus_addr;
  input [9:0]bus_id;
  input bus_vld;

  wire [7:0]bus_addr;
  wire [31:0]bus_data;
  wire [9:0]bus_id;
  wire bus_vld;
  wire calc_start;
  wire calc_start0;
  wire calc_start_i_2_n_0;
  wire clk_in;
  wire csr;
  wire \csr[2][31]_i_1_n_0 ;
  wire \csr[2][31]_i_2_n_0 ;
  wire \csr[2][31]_i_3_n_0 ;
  wire \csr[2][31]_i_4_n_0 ;
  wire \csr[2][31]_i_5_n_0 ;
  wire \csr[3][31]_i_1_n_0 ;
  wire \csr[4][31]_i_1_n_0 ;
  wire \csr[4][31]_i_2_n_0 ;
  wire [31:0]param_addr;
  wire [31:0]param_len;
  wire [31:0]result_addr;
  wire [31:0]result_len;
  wire rst_n_in;

  LUT6 #(
    .INIT(64'h0000000000100000)) 
    calc_start_i_1
       (.I0(\csr[2][31]_i_2_n_0 ),
        .I1(\csr[2][31]_i_3_n_0 ),
        .I2(\csr[2][31]_i_4_n_0 ),
        .I3(bus_addr[1]),
        .I4(bus_addr[0]),
        .I5(\csr[2][31]_i_5_n_0 ),
        .O(calc_start0));
  LUT1 #(
    .INIT(2'h1)) 
    calc_start_i_2
       (.I0(rst_n_in),
        .O(calc_start_i_2_n_0));
  FDCE calc_start_reg
       (.C(clk_in),
        .CE(1'b1),
        .CLR(calc_start_i_2_n_0),
        .D(calc_start0),
        .Q(calc_start));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    \csr[2][31]_i_1 
       (.I0(\csr[2][31]_i_2_n_0 ),
        .I1(\csr[2][31]_i_3_n_0 ),
        .I2(\csr[2][31]_i_4_n_0 ),
        .I3(bus_addr[0]),
        .I4(bus_addr[1]),
        .I5(\csr[2][31]_i_5_n_0 ),
        .O(\csr[2][31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \csr[2][31]_i_2 
       (.I0(bus_id[8]),
        .I1(bus_id[6]),
        .I2(bus_id[9]),
        .I3(bus_id[1]),
        .O(\csr[2][31]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \csr[2][31]_i_3 
       (.I0(bus_id[4]),
        .I1(bus_id[2]),
        .I2(bus_id[5]),
        .I3(bus_id[3]),
        .O(\csr[2][31]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \csr[2][31]_i_4 
       (.I0(bus_id[0]),
        .I1(bus_vld),
        .I2(bus_id[7]),
        .O(\csr[2][31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \csr[2][31]_i_5 
       (.I0(bus_addr[5]),
        .I1(bus_addr[7]),
        .I2(bus_addr[4]),
        .I3(bus_addr[6]),
        .I4(bus_addr[3]),
        .I5(bus_addr[2]),
        .O(\csr[2][31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    \csr[3][31]_i_1 
       (.I0(\csr[2][31]_i_2_n_0 ),
        .I1(\csr[2][31]_i_3_n_0 ),
        .I2(\csr[2][31]_i_4_n_0 ),
        .I3(bus_addr[1]),
        .I4(bus_addr[0]),
        .I5(\csr[2][31]_i_5_n_0 ),
        .O(\csr[3][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \csr[4][31]_i_1 
       (.I0(\csr[2][31]_i_2_n_0 ),
        .I1(\csr[2][31]_i_3_n_0 ),
        .I2(\csr[2][31]_i_4_n_0 ),
        .I3(bus_addr[1]),
        .I4(bus_addr[0]),
        .I5(\csr[4][31]_i_2_n_0 ),
        .O(\csr[4][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \csr[4][31]_i_2 
       (.I0(bus_addr[5]),
        .I1(bus_addr[7]),
        .I2(bus_addr[4]),
        .I3(bus_addr[6]),
        .I4(bus_addr[2]),
        .I5(bus_addr[3]),
        .O(\csr[4][31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    \csr[5][31]_i_1 
       (.I0(\csr[2][31]_i_2_n_0 ),
        .I1(\csr[2][31]_i_3_n_0 ),
        .I2(\csr[2][31]_i_4_n_0 ),
        .I3(bus_addr[1]),
        .I4(bus_addr[0]),
        .I5(\csr[4][31]_i_2_n_0 ),
        .O(csr));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[2][0] 
       (.C(clk_in),
        .CE(\csr[2][31]_i_1_n_0 ),
        .D(bus_data[0]),
        .Q(param_addr[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[2][10] 
       (.C(clk_in),
        .CE(\csr[2][31]_i_1_n_0 ),
        .D(bus_data[10]),
        .Q(param_addr[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[2][11] 
       (.C(clk_in),
        .CE(\csr[2][31]_i_1_n_0 ),
        .D(bus_data[11]),
        .Q(param_addr[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[2][12] 
       (.C(clk_in),
        .CE(\csr[2][31]_i_1_n_0 ),
        .D(bus_data[12]),
        .Q(param_addr[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[2][13] 
       (.C(clk_in),
        .CE(\csr[2][31]_i_1_n_0 ),
        .D(bus_data[13]),
        .Q(param_addr[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[2][14] 
       (.C(clk_in),
        .CE(\csr[2][31]_i_1_n_0 ),
        .D(bus_data[14]),
        .Q(param_addr[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[2][15] 
       (.C(clk_in),
        .CE(\csr[2][31]_i_1_n_0 ),
        .D(bus_data[15]),
        .Q(param_addr[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[2][16] 
       (.C(clk_in),
        .CE(\csr[2][31]_i_1_n_0 ),
        .D(bus_data[16]),
        .Q(param_addr[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[2][17] 
       (.C(clk_in),
        .CE(\csr[2][31]_i_1_n_0 ),
        .D(bus_data[17]),
        .Q(param_addr[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[2][18] 
       (.C(clk_in),
        .CE(\csr[2][31]_i_1_n_0 ),
        .D(bus_data[18]),
        .Q(param_addr[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[2][19] 
       (.C(clk_in),
        .CE(\csr[2][31]_i_1_n_0 ),
        .D(bus_data[19]),
        .Q(param_addr[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[2][1] 
       (.C(clk_in),
        .CE(\csr[2][31]_i_1_n_0 ),
        .D(bus_data[1]),
        .Q(param_addr[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[2][20] 
       (.C(clk_in),
        .CE(\csr[2][31]_i_1_n_0 ),
        .D(bus_data[20]),
        .Q(param_addr[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[2][21] 
       (.C(clk_in),
        .CE(\csr[2][31]_i_1_n_0 ),
        .D(bus_data[21]),
        .Q(param_addr[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[2][22] 
       (.C(clk_in),
        .CE(\csr[2][31]_i_1_n_0 ),
        .D(bus_data[22]),
        .Q(param_addr[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[2][23] 
       (.C(clk_in),
        .CE(\csr[2][31]_i_1_n_0 ),
        .D(bus_data[23]),
        .Q(param_addr[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[2][24] 
       (.C(clk_in),
        .CE(\csr[2][31]_i_1_n_0 ),
        .D(bus_data[24]),
        .Q(param_addr[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[2][25] 
       (.C(clk_in),
        .CE(\csr[2][31]_i_1_n_0 ),
        .D(bus_data[25]),
        .Q(param_addr[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[2][26] 
       (.C(clk_in),
        .CE(\csr[2][31]_i_1_n_0 ),
        .D(bus_data[26]),
        .Q(param_addr[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[2][27] 
       (.C(clk_in),
        .CE(\csr[2][31]_i_1_n_0 ),
        .D(bus_data[27]),
        .Q(param_addr[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[2][28] 
       (.C(clk_in),
        .CE(\csr[2][31]_i_1_n_0 ),
        .D(bus_data[28]),
        .Q(param_addr[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[2][29] 
       (.C(clk_in),
        .CE(\csr[2][31]_i_1_n_0 ),
        .D(bus_data[29]),
        .Q(param_addr[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[2][2] 
       (.C(clk_in),
        .CE(\csr[2][31]_i_1_n_0 ),
        .D(bus_data[2]),
        .Q(param_addr[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[2][30] 
       (.C(clk_in),
        .CE(\csr[2][31]_i_1_n_0 ),
        .D(bus_data[30]),
        .Q(param_addr[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[2][31] 
       (.C(clk_in),
        .CE(\csr[2][31]_i_1_n_0 ),
        .D(bus_data[31]),
        .Q(param_addr[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[2][3] 
       (.C(clk_in),
        .CE(\csr[2][31]_i_1_n_0 ),
        .D(bus_data[3]),
        .Q(param_addr[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[2][4] 
       (.C(clk_in),
        .CE(\csr[2][31]_i_1_n_0 ),
        .D(bus_data[4]),
        .Q(param_addr[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[2][5] 
       (.C(clk_in),
        .CE(\csr[2][31]_i_1_n_0 ),
        .D(bus_data[5]),
        .Q(param_addr[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[2][6] 
       (.C(clk_in),
        .CE(\csr[2][31]_i_1_n_0 ),
        .D(bus_data[6]),
        .Q(param_addr[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[2][7] 
       (.C(clk_in),
        .CE(\csr[2][31]_i_1_n_0 ),
        .D(bus_data[7]),
        .Q(param_addr[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[2][8] 
       (.C(clk_in),
        .CE(\csr[2][31]_i_1_n_0 ),
        .D(bus_data[8]),
        .Q(param_addr[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[2][9] 
       (.C(clk_in),
        .CE(\csr[2][31]_i_1_n_0 ),
        .D(bus_data[9]),
        .Q(param_addr[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[3][0] 
       (.C(clk_in),
        .CE(\csr[3][31]_i_1_n_0 ),
        .D(bus_data[0]),
        .Q(param_len[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[3][10] 
       (.C(clk_in),
        .CE(\csr[3][31]_i_1_n_0 ),
        .D(bus_data[10]),
        .Q(param_len[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[3][11] 
       (.C(clk_in),
        .CE(\csr[3][31]_i_1_n_0 ),
        .D(bus_data[11]),
        .Q(param_len[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[3][12] 
       (.C(clk_in),
        .CE(\csr[3][31]_i_1_n_0 ),
        .D(bus_data[12]),
        .Q(param_len[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[3][13] 
       (.C(clk_in),
        .CE(\csr[3][31]_i_1_n_0 ),
        .D(bus_data[13]),
        .Q(param_len[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[3][14] 
       (.C(clk_in),
        .CE(\csr[3][31]_i_1_n_0 ),
        .D(bus_data[14]),
        .Q(param_len[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[3][15] 
       (.C(clk_in),
        .CE(\csr[3][31]_i_1_n_0 ),
        .D(bus_data[15]),
        .Q(param_len[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[3][16] 
       (.C(clk_in),
        .CE(\csr[3][31]_i_1_n_0 ),
        .D(bus_data[16]),
        .Q(param_len[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[3][17] 
       (.C(clk_in),
        .CE(\csr[3][31]_i_1_n_0 ),
        .D(bus_data[17]),
        .Q(param_len[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[3][18] 
       (.C(clk_in),
        .CE(\csr[3][31]_i_1_n_0 ),
        .D(bus_data[18]),
        .Q(param_len[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[3][19] 
       (.C(clk_in),
        .CE(\csr[3][31]_i_1_n_0 ),
        .D(bus_data[19]),
        .Q(param_len[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[3][1] 
       (.C(clk_in),
        .CE(\csr[3][31]_i_1_n_0 ),
        .D(bus_data[1]),
        .Q(param_len[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[3][20] 
       (.C(clk_in),
        .CE(\csr[3][31]_i_1_n_0 ),
        .D(bus_data[20]),
        .Q(param_len[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[3][21] 
       (.C(clk_in),
        .CE(\csr[3][31]_i_1_n_0 ),
        .D(bus_data[21]),
        .Q(param_len[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[3][22] 
       (.C(clk_in),
        .CE(\csr[3][31]_i_1_n_0 ),
        .D(bus_data[22]),
        .Q(param_len[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[3][23] 
       (.C(clk_in),
        .CE(\csr[3][31]_i_1_n_0 ),
        .D(bus_data[23]),
        .Q(param_len[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[3][24] 
       (.C(clk_in),
        .CE(\csr[3][31]_i_1_n_0 ),
        .D(bus_data[24]),
        .Q(param_len[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[3][25] 
       (.C(clk_in),
        .CE(\csr[3][31]_i_1_n_0 ),
        .D(bus_data[25]),
        .Q(param_len[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[3][26] 
       (.C(clk_in),
        .CE(\csr[3][31]_i_1_n_0 ),
        .D(bus_data[26]),
        .Q(param_len[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[3][27] 
       (.C(clk_in),
        .CE(\csr[3][31]_i_1_n_0 ),
        .D(bus_data[27]),
        .Q(param_len[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[3][28] 
       (.C(clk_in),
        .CE(\csr[3][31]_i_1_n_0 ),
        .D(bus_data[28]),
        .Q(param_len[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[3][29] 
       (.C(clk_in),
        .CE(\csr[3][31]_i_1_n_0 ),
        .D(bus_data[29]),
        .Q(param_len[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[3][2] 
       (.C(clk_in),
        .CE(\csr[3][31]_i_1_n_0 ),
        .D(bus_data[2]),
        .Q(param_len[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[3][30] 
       (.C(clk_in),
        .CE(\csr[3][31]_i_1_n_0 ),
        .D(bus_data[30]),
        .Q(param_len[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[3][31] 
       (.C(clk_in),
        .CE(\csr[3][31]_i_1_n_0 ),
        .D(bus_data[31]),
        .Q(param_len[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[3][3] 
       (.C(clk_in),
        .CE(\csr[3][31]_i_1_n_0 ),
        .D(bus_data[3]),
        .Q(param_len[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[3][4] 
       (.C(clk_in),
        .CE(\csr[3][31]_i_1_n_0 ),
        .D(bus_data[4]),
        .Q(param_len[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[3][5] 
       (.C(clk_in),
        .CE(\csr[3][31]_i_1_n_0 ),
        .D(bus_data[5]),
        .Q(param_len[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[3][6] 
       (.C(clk_in),
        .CE(\csr[3][31]_i_1_n_0 ),
        .D(bus_data[6]),
        .Q(param_len[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[3][7] 
       (.C(clk_in),
        .CE(\csr[3][31]_i_1_n_0 ),
        .D(bus_data[7]),
        .Q(param_len[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[3][8] 
       (.C(clk_in),
        .CE(\csr[3][31]_i_1_n_0 ),
        .D(bus_data[8]),
        .Q(param_len[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[3][9] 
       (.C(clk_in),
        .CE(\csr[3][31]_i_1_n_0 ),
        .D(bus_data[9]),
        .Q(param_len[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[4][0] 
       (.C(clk_in),
        .CE(\csr[4][31]_i_1_n_0 ),
        .D(bus_data[0]),
        .Q(result_addr[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[4][10] 
       (.C(clk_in),
        .CE(\csr[4][31]_i_1_n_0 ),
        .D(bus_data[10]),
        .Q(result_addr[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[4][11] 
       (.C(clk_in),
        .CE(\csr[4][31]_i_1_n_0 ),
        .D(bus_data[11]),
        .Q(result_addr[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[4][12] 
       (.C(clk_in),
        .CE(\csr[4][31]_i_1_n_0 ),
        .D(bus_data[12]),
        .Q(result_addr[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[4][13] 
       (.C(clk_in),
        .CE(\csr[4][31]_i_1_n_0 ),
        .D(bus_data[13]),
        .Q(result_addr[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[4][14] 
       (.C(clk_in),
        .CE(\csr[4][31]_i_1_n_0 ),
        .D(bus_data[14]),
        .Q(result_addr[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[4][15] 
       (.C(clk_in),
        .CE(\csr[4][31]_i_1_n_0 ),
        .D(bus_data[15]),
        .Q(result_addr[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[4][16] 
       (.C(clk_in),
        .CE(\csr[4][31]_i_1_n_0 ),
        .D(bus_data[16]),
        .Q(result_addr[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[4][17] 
       (.C(clk_in),
        .CE(\csr[4][31]_i_1_n_0 ),
        .D(bus_data[17]),
        .Q(result_addr[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[4][18] 
       (.C(clk_in),
        .CE(\csr[4][31]_i_1_n_0 ),
        .D(bus_data[18]),
        .Q(result_addr[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[4][19] 
       (.C(clk_in),
        .CE(\csr[4][31]_i_1_n_0 ),
        .D(bus_data[19]),
        .Q(result_addr[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[4][1] 
       (.C(clk_in),
        .CE(\csr[4][31]_i_1_n_0 ),
        .D(bus_data[1]),
        .Q(result_addr[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[4][20] 
       (.C(clk_in),
        .CE(\csr[4][31]_i_1_n_0 ),
        .D(bus_data[20]),
        .Q(result_addr[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[4][21] 
       (.C(clk_in),
        .CE(\csr[4][31]_i_1_n_0 ),
        .D(bus_data[21]),
        .Q(result_addr[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[4][22] 
       (.C(clk_in),
        .CE(\csr[4][31]_i_1_n_0 ),
        .D(bus_data[22]),
        .Q(result_addr[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[4][23] 
       (.C(clk_in),
        .CE(\csr[4][31]_i_1_n_0 ),
        .D(bus_data[23]),
        .Q(result_addr[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[4][24] 
       (.C(clk_in),
        .CE(\csr[4][31]_i_1_n_0 ),
        .D(bus_data[24]),
        .Q(result_addr[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[4][25] 
       (.C(clk_in),
        .CE(\csr[4][31]_i_1_n_0 ),
        .D(bus_data[25]),
        .Q(result_addr[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[4][26] 
       (.C(clk_in),
        .CE(\csr[4][31]_i_1_n_0 ),
        .D(bus_data[26]),
        .Q(result_addr[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[4][27] 
       (.C(clk_in),
        .CE(\csr[4][31]_i_1_n_0 ),
        .D(bus_data[27]),
        .Q(result_addr[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[4][28] 
       (.C(clk_in),
        .CE(\csr[4][31]_i_1_n_0 ),
        .D(bus_data[28]),
        .Q(result_addr[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[4][29] 
       (.C(clk_in),
        .CE(\csr[4][31]_i_1_n_0 ),
        .D(bus_data[29]),
        .Q(result_addr[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[4][2] 
       (.C(clk_in),
        .CE(\csr[4][31]_i_1_n_0 ),
        .D(bus_data[2]),
        .Q(result_addr[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[4][30] 
       (.C(clk_in),
        .CE(\csr[4][31]_i_1_n_0 ),
        .D(bus_data[30]),
        .Q(result_addr[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[4][31] 
       (.C(clk_in),
        .CE(\csr[4][31]_i_1_n_0 ),
        .D(bus_data[31]),
        .Q(result_addr[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[4][3] 
       (.C(clk_in),
        .CE(\csr[4][31]_i_1_n_0 ),
        .D(bus_data[3]),
        .Q(result_addr[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[4][4] 
       (.C(clk_in),
        .CE(\csr[4][31]_i_1_n_0 ),
        .D(bus_data[4]),
        .Q(result_addr[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[4][5] 
       (.C(clk_in),
        .CE(\csr[4][31]_i_1_n_0 ),
        .D(bus_data[5]),
        .Q(result_addr[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[4][6] 
       (.C(clk_in),
        .CE(\csr[4][31]_i_1_n_0 ),
        .D(bus_data[6]),
        .Q(result_addr[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[4][7] 
       (.C(clk_in),
        .CE(\csr[4][31]_i_1_n_0 ),
        .D(bus_data[7]),
        .Q(result_addr[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[4][8] 
       (.C(clk_in),
        .CE(\csr[4][31]_i_1_n_0 ),
        .D(bus_data[8]),
        .Q(result_addr[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[4][9] 
       (.C(clk_in),
        .CE(\csr[4][31]_i_1_n_0 ),
        .D(bus_data[9]),
        .Q(result_addr[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[5][0] 
       (.C(clk_in),
        .CE(csr),
        .D(bus_data[0]),
        .Q(result_len[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[5][10] 
       (.C(clk_in),
        .CE(csr),
        .D(bus_data[10]),
        .Q(result_len[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[5][11] 
       (.C(clk_in),
        .CE(csr),
        .D(bus_data[11]),
        .Q(result_len[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[5][12] 
       (.C(clk_in),
        .CE(csr),
        .D(bus_data[12]),
        .Q(result_len[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[5][13] 
       (.C(clk_in),
        .CE(csr),
        .D(bus_data[13]),
        .Q(result_len[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[5][14] 
       (.C(clk_in),
        .CE(csr),
        .D(bus_data[14]),
        .Q(result_len[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[5][15] 
       (.C(clk_in),
        .CE(csr),
        .D(bus_data[15]),
        .Q(result_len[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[5][16] 
       (.C(clk_in),
        .CE(csr),
        .D(bus_data[16]),
        .Q(result_len[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[5][17] 
       (.C(clk_in),
        .CE(csr),
        .D(bus_data[17]),
        .Q(result_len[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[5][18] 
       (.C(clk_in),
        .CE(csr),
        .D(bus_data[18]),
        .Q(result_len[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[5][19] 
       (.C(clk_in),
        .CE(csr),
        .D(bus_data[19]),
        .Q(result_len[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[5][1] 
       (.C(clk_in),
        .CE(csr),
        .D(bus_data[1]),
        .Q(result_len[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[5][20] 
       (.C(clk_in),
        .CE(csr),
        .D(bus_data[20]),
        .Q(result_len[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[5][21] 
       (.C(clk_in),
        .CE(csr),
        .D(bus_data[21]),
        .Q(result_len[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[5][22] 
       (.C(clk_in),
        .CE(csr),
        .D(bus_data[22]),
        .Q(result_len[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[5][23] 
       (.C(clk_in),
        .CE(csr),
        .D(bus_data[23]),
        .Q(result_len[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[5][24] 
       (.C(clk_in),
        .CE(csr),
        .D(bus_data[24]),
        .Q(result_len[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[5][25] 
       (.C(clk_in),
        .CE(csr),
        .D(bus_data[25]),
        .Q(result_len[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[5][26] 
       (.C(clk_in),
        .CE(csr),
        .D(bus_data[26]),
        .Q(result_len[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[5][27] 
       (.C(clk_in),
        .CE(csr),
        .D(bus_data[27]),
        .Q(result_len[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[5][28] 
       (.C(clk_in),
        .CE(csr),
        .D(bus_data[28]),
        .Q(result_len[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[5][29] 
       (.C(clk_in),
        .CE(csr),
        .D(bus_data[29]),
        .Q(result_len[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[5][2] 
       (.C(clk_in),
        .CE(csr),
        .D(bus_data[2]),
        .Q(result_len[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[5][30] 
       (.C(clk_in),
        .CE(csr),
        .D(bus_data[30]),
        .Q(result_len[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[5][31] 
       (.C(clk_in),
        .CE(csr),
        .D(bus_data[31]),
        .Q(result_len[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[5][3] 
       (.C(clk_in),
        .CE(csr),
        .D(bus_data[3]),
        .Q(result_len[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[5][4] 
       (.C(clk_in),
        .CE(csr),
        .D(bus_data[4]),
        .Q(result_len[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[5][5] 
       (.C(clk_in),
        .CE(csr),
        .D(bus_data[5]),
        .Q(result_len[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[5][6] 
       (.C(clk_in),
        .CE(csr),
        .D(bus_data[6]),
        .Q(result_len[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[5][7] 
       (.C(clk_in),
        .CE(csr),
        .D(bus_data[7]),
        .Q(result_len[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[5][8] 
       (.C(clk_in),
        .CE(csr),
        .D(bus_data[8]),
        .Q(result_len[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csr_reg[5][9] 
       (.C(clk_in),
        .CE(csr),
        .D(bus_data[9]),
        .Q(result_len[9]),
        .R(1'b0));
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
