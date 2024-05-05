// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed May  1 16:28:07 2024
// Host        : DESKTOP-7S7UGPP running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/wkk/Desktop/OpenCL/SimpleOpenCLSlave/fpga/SimpleOpenCLSlave/SimpleOpenCLSlave.srcs/sources_1/bd/system/ip/system_fft128_0_0/system_fft128_0_0_sim_netlist.v
// Design      : system_fft128_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_fft128_0_0,fft128,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "fft128,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module system_fft128_0_0
   (clock,
    reset,
    di_en,
    di_re,
    di_im,
    do_en,
    do_re,
    do_im);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clock CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clock, ASSOCIATED_RESET reset, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, INSERT_VIP 0" *) input clock;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  input di_en;
  input [15:0]di_re;
  input [15:0]di_im;
  output do_en;
  output [15:0]do_re;
  output [15:0]do_im;

  wire clock;
  wire di_en;
  wire [15:0]di_im;
  wire [15:0]di_re;
  wire do_en;
  wire [15:0]do_im;
  wire [15:0]do_re;
  wire reset;

  system_fft128_0_0_fft128 inst
       (.clock(clock),
        .di_en(di_en),
        .di_im(di_im),
        .di_re(di_re),
        .do_en(do_en),
        .do_im(do_im),
        .do_re(do_re),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "Butterfly" *) 
module system_fft128_0_0_Butterfly
   (sub_re,
    O,
    add_re,
    \buf_re_reg[0][14] ,
    sub_im,
    \mu_do_im_reg[15] ,
    add_im,
    \buf_im_reg[0][14] ,
    Q,
    S,
    \buf_re_reg[0][6] ,
    \buf_re_reg[0][10] ,
    \buf_re_reg[0][14]_0 ,
    \buf_re_reg[0][14]_1 ,
    \do_re_reg[2] ,
    \do_re_reg[6] ,
    \do_re_reg[10] ,
    DI,
    \do_re_reg[14] ,
    \buf_im_reg[0][14]_0 ,
    \buf_im_reg[0][2] ,
    \buf_im_reg[0][6] ,
    \buf_im_reg[0][10] ,
    \buf_im_reg[0][14]_1 ,
    \buf_im_reg[0][14]_2 ,
    \do_im_reg[2] ,
    \do_im_reg[6] ,
    \do_im_reg[10] ,
    \do_im_reg[14] ,
    \do_im_reg[14]_0 );
  output [14:0]sub_re;
  output [0:0]O;
  output [14:0]add_re;
  output [0:0]\buf_re_reg[0][14] ;
  output [14:0]sub_im;
  output [0:0]\mu_do_im_reg[15] ;
  output [14:0]add_im;
  output [0:0]\buf_im_reg[0][14] ;
  input [14:0]Q;
  input [3:0]S;
  input [3:0]\buf_re_reg[0][6] ;
  input [3:0]\buf_re_reg[0][10] ;
  input [0:0]\buf_re_reg[0][14]_0 ;
  input [3:0]\buf_re_reg[0][14]_1 ;
  input [3:0]\do_re_reg[2] ;
  input [3:0]\do_re_reg[6] ;
  input [3:0]\do_re_reg[10] ;
  input [0:0]DI;
  input [3:0]\do_re_reg[14] ;
  input [14:0]\buf_im_reg[0][14]_0 ;
  input [3:0]\buf_im_reg[0][2] ;
  input [3:0]\buf_im_reg[0][6] ;
  input [3:0]\buf_im_reg[0][10] ;
  input [0:0]\buf_im_reg[0][14]_1 ;
  input [3:0]\buf_im_reg[0][14]_2 ;
  input [3:0]\do_im_reg[2] ;
  input [3:0]\do_im_reg[6] ;
  input [3:0]\do_im_reg[10] ;
  input [0:0]\do_im_reg[14] ;
  input [3:0]\do_im_reg[14]_0 ;

  wire [0:0]DI;
  wire [0:0]O;
  wire [14:0]Q;
  wire [3:0]S;
  wire [14:0]add_im;
  wire add_im_carry__0_n_0;
  wire add_im_carry__0_n_1;
  wire add_im_carry__0_n_2;
  wire add_im_carry__0_n_3;
  wire add_im_carry__1_n_0;
  wire add_im_carry__1_n_1;
  wire add_im_carry__1_n_2;
  wire add_im_carry__1_n_3;
  wire add_im_carry__2_n_0;
  wire add_im_carry__2_n_1;
  wire add_im_carry__2_n_2;
  wire add_im_carry__2_n_3;
  wire add_im_carry_n_0;
  wire add_im_carry_n_1;
  wire add_im_carry_n_2;
  wire add_im_carry_n_3;
  wire [14:0]add_re;
  wire add_re_carry__0_n_0;
  wire add_re_carry__0_n_1;
  wire add_re_carry__0_n_2;
  wire add_re_carry__0_n_3;
  wire add_re_carry__1_n_0;
  wire add_re_carry__1_n_1;
  wire add_re_carry__1_n_2;
  wire add_re_carry__1_n_3;
  wire add_re_carry__2_n_0;
  wire add_re_carry__2_n_1;
  wire add_re_carry__2_n_2;
  wire add_re_carry__2_n_3;
  wire add_re_carry_n_0;
  wire add_re_carry_n_1;
  wire add_re_carry_n_2;
  wire add_re_carry_n_3;
  wire [3:0]\buf_im_reg[0][10] ;
  wire [0:0]\buf_im_reg[0][14] ;
  wire [14:0]\buf_im_reg[0][14]_0 ;
  wire [0:0]\buf_im_reg[0][14]_1 ;
  wire [3:0]\buf_im_reg[0][14]_2 ;
  wire [3:0]\buf_im_reg[0][2] ;
  wire [3:0]\buf_im_reg[0][6] ;
  wire [3:0]\buf_re_reg[0][10] ;
  wire [0:0]\buf_re_reg[0][14] ;
  wire [0:0]\buf_re_reg[0][14]_0 ;
  wire [3:0]\buf_re_reg[0][14]_1 ;
  wire [3:0]\buf_re_reg[0][6] ;
  wire [3:0]\do_im_reg[10] ;
  wire [0:0]\do_im_reg[14] ;
  wire [3:0]\do_im_reg[14]_0 ;
  wire [3:0]\do_im_reg[2] ;
  wire [3:0]\do_im_reg[6] ;
  wire [3:0]\do_re_reg[10] ;
  wire [3:0]\do_re_reg[14] ;
  wire [3:0]\do_re_reg[2] ;
  wire [3:0]\do_re_reg[6] ;
  wire [0:0]\mu_do_im_reg[15] ;
  wire [14:0]sub_im;
  wire sub_im_carry__0_n_0;
  wire sub_im_carry__0_n_1;
  wire sub_im_carry__0_n_2;
  wire sub_im_carry__0_n_3;
  wire sub_im_carry__1_n_0;
  wire sub_im_carry__1_n_1;
  wire sub_im_carry__1_n_2;
  wire sub_im_carry__1_n_3;
  wire sub_im_carry__2_n_0;
  wire sub_im_carry__2_n_1;
  wire sub_im_carry__2_n_2;
  wire sub_im_carry__2_n_3;
  wire sub_im_carry_n_0;
  wire sub_im_carry_n_1;
  wire sub_im_carry_n_2;
  wire sub_im_carry_n_3;
  wire [14:0]sub_re;
  wire sub_re_carry__0_n_0;
  wire sub_re_carry__0_n_1;
  wire sub_re_carry__0_n_2;
  wire sub_re_carry__0_n_3;
  wire sub_re_carry__1_n_0;
  wire sub_re_carry__1_n_1;
  wire sub_re_carry__1_n_2;
  wire sub_re_carry__1_n_3;
  wire sub_re_carry__2_n_0;
  wire sub_re_carry__2_n_1;
  wire sub_re_carry__2_n_2;
  wire sub_re_carry__2_n_3;
  wire sub_re_carry_n_0;
  wire sub_re_carry_n_1;
  wire sub_re_carry_n_2;
  wire sub_re_carry_n_3;
  wire [0:0]NLW_add_im_carry_O_UNCONNECTED;
  wire [3:0]NLW_add_im_carry__3_CO_UNCONNECTED;
  wire [3:1]NLW_add_im_carry__3_O_UNCONNECTED;
  wire [0:0]NLW_add_re_carry_O_UNCONNECTED;
  wire [3:0]NLW_add_re_carry__3_CO_UNCONNECTED;
  wire [3:1]NLW_add_re_carry__3_O_UNCONNECTED;
  wire [0:0]NLW_sub_im_carry_O_UNCONNECTED;
  wire [3:0]NLW_sub_im_carry__3_CO_UNCONNECTED;
  wire [3:1]NLW_sub_im_carry__3_O_UNCONNECTED;
  wire [0:0]NLW_sub_re_carry_O_UNCONNECTED;
  wire [3:0]NLW_sub_re_carry__3_CO_UNCONNECTED;
  wire [3:1]NLW_sub_re_carry__3_O_UNCONNECTED;

  CARRY4 add_im_carry
       (.CI(1'b0),
        .CO({add_im_carry_n_0,add_im_carry_n_1,add_im_carry_n_2,add_im_carry_n_3}),
        .CYINIT(1'b0),
        .DI(\buf_im_reg[0][14]_0 [3:0]),
        .O({add_im[2:0],NLW_add_im_carry_O_UNCONNECTED[0]}),
        .S(\do_im_reg[2] ));
  CARRY4 add_im_carry__0
       (.CI(add_im_carry_n_0),
        .CO({add_im_carry__0_n_0,add_im_carry__0_n_1,add_im_carry__0_n_2,add_im_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(\buf_im_reg[0][14]_0 [7:4]),
        .O(add_im[6:3]),
        .S(\do_im_reg[6] ));
  CARRY4 add_im_carry__1
       (.CI(add_im_carry__0_n_0),
        .CO({add_im_carry__1_n_0,add_im_carry__1_n_1,add_im_carry__1_n_2,add_im_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(\buf_im_reg[0][14]_0 [11:8]),
        .O(add_im[10:7]),
        .S(\do_im_reg[10] ));
  CARRY4 add_im_carry__2
       (.CI(add_im_carry__1_n_0),
        .CO({add_im_carry__2_n_0,add_im_carry__2_n_1,add_im_carry__2_n_2,add_im_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({\do_im_reg[14] ,\buf_im_reg[0][14]_0 [14:12]}),
        .O(add_im[14:11]),
        .S(\do_im_reg[14]_0 ));
  CARRY4 add_im_carry__3
       (.CI(add_im_carry__2_n_0),
        .CO(NLW_add_im_carry__3_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_add_im_carry__3_O_UNCONNECTED[3:1],\buf_im_reg[0][14] }),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 add_re_carry
       (.CI(1'b0),
        .CO({add_re_carry_n_0,add_re_carry_n_1,add_re_carry_n_2,add_re_carry_n_3}),
        .CYINIT(1'b0),
        .DI(Q[3:0]),
        .O({add_re[2:0],NLW_add_re_carry_O_UNCONNECTED[0]}),
        .S(\do_re_reg[2] ));
  CARRY4 add_re_carry__0
       (.CI(add_re_carry_n_0),
        .CO({add_re_carry__0_n_0,add_re_carry__0_n_1,add_re_carry__0_n_2,add_re_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O(add_re[6:3]),
        .S(\do_re_reg[6] ));
  CARRY4 add_re_carry__1
       (.CI(add_re_carry__0_n_0),
        .CO({add_re_carry__1_n_0,add_re_carry__1_n_1,add_re_carry__1_n_2,add_re_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(Q[11:8]),
        .O(add_re[10:7]),
        .S(\do_re_reg[10] ));
  CARRY4 add_re_carry__2
       (.CI(add_re_carry__1_n_0),
        .CO({add_re_carry__2_n_0,add_re_carry__2_n_1,add_re_carry__2_n_2,add_re_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({DI,Q[14:12]}),
        .O(add_re[14:11]),
        .S(\do_re_reg[14] ));
  CARRY4 add_re_carry__3
       (.CI(add_re_carry__2_n_0),
        .CO(NLW_add_re_carry__3_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_add_re_carry__3_O_UNCONNECTED[3:1],\buf_re_reg[0][14] }),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 sub_im_carry
       (.CI(1'b0),
        .CO({sub_im_carry_n_0,sub_im_carry_n_1,sub_im_carry_n_2,sub_im_carry_n_3}),
        .CYINIT(1'b1),
        .DI(\buf_im_reg[0][14]_0 [3:0]),
        .O({sub_im[2:0],NLW_sub_im_carry_O_UNCONNECTED[0]}),
        .S(\buf_im_reg[0][2] ));
  CARRY4 sub_im_carry__0
       (.CI(sub_im_carry_n_0),
        .CO({sub_im_carry__0_n_0,sub_im_carry__0_n_1,sub_im_carry__0_n_2,sub_im_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(\buf_im_reg[0][14]_0 [7:4]),
        .O(sub_im[6:3]),
        .S(\buf_im_reg[0][6] ));
  CARRY4 sub_im_carry__1
       (.CI(sub_im_carry__0_n_0),
        .CO({sub_im_carry__1_n_0,sub_im_carry__1_n_1,sub_im_carry__1_n_2,sub_im_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(\buf_im_reg[0][14]_0 [11:8]),
        .O(sub_im[10:7]),
        .S(\buf_im_reg[0][10] ));
  CARRY4 sub_im_carry__2
       (.CI(sub_im_carry__1_n_0),
        .CO({sub_im_carry__2_n_0,sub_im_carry__2_n_1,sub_im_carry__2_n_2,sub_im_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({\buf_im_reg[0][14]_1 ,\buf_im_reg[0][14]_0 [14:12]}),
        .O(sub_im[14:11]),
        .S(\buf_im_reg[0][14]_2 ));
  CARRY4 sub_im_carry__3
       (.CI(sub_im_carry__2_n_0),
        .CO(NLW_sub_im_carry__3_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_sub_im_carry__3_O_UNCONNECTED[3:1],\mu_do_im_reg[15] }),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 sub_re_carry
       (.CI(1'b0),
        .CO({sub_re_carry_n_0,sub_re_carry_n_1,sub_re_carry_n_2,sub_re_carry_n_3}),
        .CYINIT(1'b1),
        .DI(Q[3:0]),
        .O({sub_re[2:0],NLW_sub_re_carry_O_UNCONNECTED[0]}),
        .S(S));
  CARRY4 sub_re_carry__0
       (.CI(sub_re_carry_n_0),
        .CO({sub_re_carry__0_n_0,sub_re_carry__0_n_1,sub_re_carry__0_n_2,sub_re_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O(sub_re[6:3]),
        .S(\buf_re_reg[0][6] ));
  CARRY4 sub_re_carry__1
       (.CI(sub_re_carry__0_n_0),
        .CO({sub_re_carry__1_n_0,sub_re_carry__1_n_1,sub_re_carry__1_n_2,sub_re_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(Q[11:8]),
        .O(sub_re[10:7]),
        .S(\buf_re_reg[0][10] ));
  CARRY4 sub_re_carry__2
       (.CI(sub_re_carry__1_n_0),
        .CO({sub_re_carry__2_n_0,sub_re_carry__2_n_1,sub_re_carry__2_n_2,sub_re_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({\buf_re_reg[0][14]_0 ,Q[14:12]}),
        .O(sub_re[14:11]),
        .S(\buf_re_reg[0][14]_1 ));
  CARRY4 sub_re_carry__3
       (.CI(sub_re_carry__2_n_0),
        .CO(NLW_sub_re_carry__3_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_sub_re_carry__3_O_UNCONNECTED[3:1],O}),
        .S({1'b0,1'b0,1'b0,1'b1}));
endmodule

(* ORIG_REF_NAME = "Butterfly" *) 
module system_fft128_0_0_Butterfly_0
   (sub_re,
    \mu_do_re_reg[15] ,
    \mu_do_re_reg[15]_0 ,
    sub_im,
    \mu_do_im_reg[15] ,
    \mu_do_im_reg[15]_0 ,
    add_re,
    CO,
    add_im,
    \buf_im_reg[3][14]__0 ,
    DI,
    \buf_re_reg[2][0]_srl3_i_1 ,
    \bf1_do_re_reg[6] ,
    \buf_re_reg[2][3]_srl3_i_1 ,
    \bf1_do_re_reg[10] ,
    \buf_re_reg[2][7]_srl3_i_1 ,
    \buf_re_reg[2][11]_srl3_i_1 ,
    \buf_re_reg[2][11]_srl3_i_1_0 ,
    \bf1_do_im_reg[2] ,
    \buf_im_reg[2][0]_srl3_i_1 ,
    \bf1_do_im_reg[6] ,
    \buf_im_reg[2][3]_srl3_i_1 ,
    \bf1_do_im_reg[10] ,
    \buf_im_reg[2][7]_srl3_i_1 ,
    \buf_im_reg[2][11]_srl3_i_1 ,
    \buf_im_reg[2][11]_srl3_i_1_0 ,
    S,
    \bf1_do_re_reg[6]_0 ,
    \bf1_do_re_reg[10]_0 ,
    \bf1_do_re_reg[14] ,
    \bf1_do_re_reg[14]_0 ,
    \bf1_do_im_reg[2]_0 ,
    \bf1_do_im_reg[6]_0 ,
    \bf1_do_im_reg[10]_0 ,
    \bf1_do_im_reg[14] ,
    \bf1_do_im_reg[14]_0 );
  output [10:0]sub_re;
  output [3:0]\mu_do_re_reg[15] ;
  output [0:0]\mu_do_re_reg[15]_0 ;
  output [10:0]sub_im;
  output [3:0]\mu_do_im_reg[15] ;
  output [0:0]\mu_do_im_reg[15]_0 ;
  output [14:0]add_re;
  output [0:0]CO;
  output [14:0]add_im;
  output [0:0]\buf_im_reg[3][14]__0 ;
  input [3:0]DI;
  input [3:0]\buf_re_reg[2][0]_srl3_i_1 ;
  input [3:0]\bf1_do_re_reg[6] ;
  input [3:0]\buf_re_reg[2][3]_srl3_i_1 ;
  input [3:0]\bf1_do_re_reg[10] ;
  input [3:0]\buf_re_reg[2][7]_srl3_i_1 ;
  input [3:0]\buf_re_reg[2][11]_srl3_i_1 ;
  input [3:0]\buf_re_reg[2][11]_srl3_i_1_0 ;
  input [3:0]\bf1_do_im_reg[2] ;
  input [3:0]\buf_im_reg[2][0]_srl3_i_1 ;
  input [3:0]\bf1_do_im_reg[6] ;
  input [3:0]\buf_im_reg[2][3]_srl3_i_1 ;
  input [3:0]\bf1_do_im_reg[10] ;
  input [3:0]\buf_im_reg[2][7]_srl3_i_1 ;
  input [3:0]\buf_im_reg[2][11]_srl3_i_1 ;
  input [3:0]\buf_im_reg[2][11]_srl3_i_1_0 ;
  input [3:0]S;
  input [3:0]\bf1_do_re_reg[6]_0 ;
  input [3:0]\bf1_do_re_reg[10]_0 ;
  input [0:0]\bf1_do_re_reg[14] ;
  input [3:0]\bf1_do_re_reg[14]_0 ;
  input [3:0]\bf1_do_im_reg[2]_0 ;
  input [3:0]\bf1_do_im_reg[6]_0 ;
  input [3:0]\bf1_do_im_reg[10]_0 ;
  input [0:0]\bf1_do_im_reg[14] ;
  input [3:0]\bf1_do_im_reg[14]_0 ;

  wire [0:0]CO;
  wire [3:0]DI;
  wire [3:0]S;
  wire [14:0]add_im;
  wire add_im_carry__0_n_0;
  wire add_im_carry__0_n_1;
  wire add_im_carry__0_n_2;
  wire add_im_carry__0_n_3;
  wire add_im_carry__1_n_0;
  wire add_im_carry__1_n_1;
  wire add_im_carry__1_n_2;
  wire add_im_carry__1_n_3;
  wire add_im_carry__2_n_1;
  wire add_im_carry__2_n_2;
  wire add_im_carry__2_n_3;
  wire add_im_carry_n_0;
  wire add_im_carry_n_1;
  wire add_im_carry_n_2;
  wire add_im_carry_n_3;
  wire [14:0]add_re;
  wire add_re_carry__0_n_0;
  wire add_re_carry__0_n_1;
  wire add_re_carry__0_n_2;
  wire add_re_carry__0_n_3;
  wire add_re_carry__1_n_0;
  wire add_re_carry__1_n_1;
  wire add_re_carry__1_n_2;
  wire add_re_carry__1_n_3;
  wire add_re_carry__2_n_1;
  wire add_re_carry__2_n_2;
  wire add_re_carry__2_n_3;
  wire add_re_carry_n_0;
  wire add_re_carry_n_1;
  wire add_re_carry_n_2;
  wire add_re_carry_n_3;
  wire [3:0]\bf1_do_im_reg[10] ;
  wire [3:0]\bf1_do_im_reg[10]_0 ;
  wire [0:0]\bf1_do_im_reg[14] ;
  wire [3:0]\bf1_do_im_reg[14]_0 ;
  wire [3:0]\bf1_do_im_reg[2] ;
  wire [3:0]\bf1_do_im_reg[2]_0 ;
  wire [3:0]\bf1_do_im_reg[6] ;
  wire [3:0]\bf1_do_im_reg[6]_0 ;
  wire [3:0]\bf1_do_re_reg[10] ;
  wire [3:0]\bf1_do_re_reg[10]_0 ;
  wire [0:0]\bf1_do_re_reg[14] ;
  wire [3:0]\bf1_do_re_reg[14]_0 ;
  wire [3:0]\bf1_do_re_reg[6] ;
  wire [3:0]\bf1_do_re_reg[6]_0 ;
  wire [3:0]\buf_im_reg[2][0]_srl3_i_1 ;
  wire [3:0]\buf_im_reg[2][11]_srl3_i_1 ;
  wire [3:0]\buf_im_reg[2][11]_srl3_i_1_0 ;
  wire [3:0]\buf_im_reg[2][3]_srl3_i_1 ;
  wire [3:0]\buf_im_reg[2][7]_srl3_i_1 ;
  wire [0:0]\buf_im_reg[3][14]__0 ;
  wire [3:0]\buf_re_reg[2][0]_srl3_i_1 ;
  wire [3:0]\buf_re_reg[2][11]_srl3_i_1 ;
  wire [3:0]\buf_re_reg[2][11]_srl3_i_1_0 ;
  wire [3:0]\buf_re_reg[2][3]_srl3_i_1 ;
  wire [3:0]\buf_re_reg[2][7]_srl3_i_1 ;
  wire [3:0]\mu_do_im_reg[15] ;
  wire [0:0]\mu_do_im_reg[15]_0 ;
  wire [3:0]\mu_do_re_reg[15] ;
  wire [0:0]\mu_do_re_reg[15]_0 ;
  wire [10:0]sub_im;
  wire sub_im_carry__0_n_0;
  wire sub_im_carry__0_n_1;
  wire sub_im_carry__0_n_2;
  wire sub_im_carry__0_n_3;
  wire sub_im_carry__1_n_0;
  wire sub_im_carry__1_n_1;
  wire sub_im_carry__1_n_2;
  wire sub_im_carry__1_n_3;
  wire sub_im_carry__2_n_0;
  wire sub_im_carry__2_n_1;
  wire sub_im_carry__2_n_2;
  wire sub_im_carry__2_n_3;
  wire sub_im_carry_n_0;
  wire sub_im_carry_n_1;
  wire sub_im_carry_n_2;
  wire sub_im_carry_n_3;
  wire [10:0]sub_re;
  wire sub_re_carry__0_n_0;
  wire sub_re_carry__0_n_1;
  wire sub_re_carry__0_n_2;
  wire sub_re_carry__0_n_3;
  wire sub_re_carry__1_n_0;
  wire sub_re_carry__1_n_1;
  wire sub_re_carry__1_n_2;
  wire sub_re_carry__1_n_3;
  wire sub_re_carry__2_n_0;
  wire sub_re_carry__2_n_1;
  wire sub_re_carry__2_n_2;
  wire sub_re_carry__2_n_3;
  wire sub_re_carry_n_0;
  wire sub_re_carry_n_1;
  wire sub_re_carry_n_2;
  wire sub_re_carry_n_3;
  wire [0:0]NLW_add_im_carry_O_UNCONNECTED;
  wire [0:0]NLW_add_re_carry_O_UNCONNECTED;
  wire [0:0]NLW_sub_im_carry_O_UNCONNECTED;
  wire [3:0]NLW_sub_im_carry__3_CO_UNCONNECTED;
  wire [3:1]NLW_sub_im_carry__3_O_UNCONNECTED;
  wire [0:0]NLW_sub_re_carry_O_UNCONNECTED;
  wire [3:0]NLW_sub_re_carry__3_CO_UNCONNECTED;
  wire [3:1]NLW_sub_re_carry__3_O_UNCONNECTED;

  CARRY4 add_im_carry
       (.CI(1'b0),
        .CO({add_im_carry_n_0,add_im_carry_n_1,add_im_carry_n_2,add_im_carry_n_3}),
        .CYINIT(1'b0),
        .DI(\bf1_do_im_reg[2] ),
        .O({add_im[2:0],NLW_add_im_carry_O_UNCONNECTED[0]}),
        .S(\bf1_do_im_reg[2]_0 ));
  CARRY4 add_im_carry__0
       (.CI(add_im_carry_n_0),
        .CO({add_im_carry__0_n_0,add_im_carry__0_n_1,add_im_carry__0_n_2,add_im_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(\bf1_do_im_reg[6] ),
        .O(add_im[6:3]),
        .S(\bf1_do_im_reg[6]_0 ));
  CARRY4 add_im_carry__1
       (.CI(add_im_carry__0_n_0),
        .CO({add_im_carry__1_n_0,add_im_carry__1_n_1,add_im_carry__1_n_2,add_im_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(\bf1_do_im_reg[10] ),
        .O(add_im[10:7]),
        .S(\bf1_do_im_reg[10]_0 ));
  CARRY4 add_im_carry__2
       (.CI(add_im_carry__1_n_0),
        .CO({\buf_im_reg[3][14]__0 ,add_im_carry__2_n_1,add_im_carry__2_n_2,add_im_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({\bf1_do_im_reg[14] ,\buf_im_reg[2][11]_srl3_i_1 [2:0]}),
        .O(add_im[14:11]),
        .S(\bf1_do_im_reg[14]_0 ));
  CARRY4 add_re_carry
       (.CI(1'b0),
        .CO({add_re_carry_n_0,add_re_carry_n_1,add_re_carry_n_2,add_re_carry_n_3}),
        .CYINIT(1'b0),
        .DI(DI),
        .O({add_re[2:0],NLW_add_re_carry_O_UNCONNECTED[0]}),
        .S(S));
  CARRY4 add_re_carry__0
       (.CI(add_re_carry_n_0),
        .CO({add_re_carry__0_n_0,add_re_carry__0_n_1,add_re_carry__0_n_2,add_re_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(\bf1_do_re_reg[6] ),
        .O(add_re[6:3]),
        .S(\bf1_do_re_reg[6]_0 ));
  CARRY4 add_re_carry__1
       (.CI(add_re_carry__0_n_0),
        .CO({add_re_carry__1_n_0,add_re_carry__1_n_1,add_re_carry__1_n_2,add_re_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(\bf1_do_re_reg[10] ),
        .O(add_re[10:7]),
        .S(\bf1_do_re_reg[10]_0 ));
  CARRY4 add_re_carry__2
       (.CI(add_re_carry__1_n_0),
        .CO({CO,add_re_carry__2_n_1,add_re_carry__2_n_2,add_re_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({\bf1_do_re_reg[14] ,\buf_re_reg[2][11]_srl3_i_1 [2:0]}),
        .O(add_re[14:11]),
        .S(\bf1_do_re_reg[14]_0 ));
  CARRY4 sub_im_carry
       (.CI(1'b0),
        .CO({sub_im_carry_n_0,sub_im_carry_n_1,sub_im_carry_n_2,sub_im_carry_n_3}),
        .CYINIT(1'b1),
        .DI(\bf1_do_im_reg[2] ),
        .O({sub_im[2:0],NLW_sub_im_carry_O_UNCONNECTED[0]}),
        .S(\buf_im_reg[2][0]_srl3_i_1 ));
  CARRY4 sub_im_carry__0
       (.CI(sub_im_carry_n_0),
        .CO({sub_im_carry__0_n_0,sub_im_carry__0_n_1,sub_im_carry__0_n_2,sub_im_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(\bf1_do_im_reg[6] ),
        .O(sub_im[6:3]),
        .S(\buf_im_reg[2][3]_srl3_i_1 ));
  CARRY4 sub_im_carry__1
       (.CI(sub_im_carry__0_n_0),
        .CO({sub_im_carry__1_n_0,sub_im_carry__1_n_1,sub_im_carry__1_n_2,sub_im_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(\bf1_do_im_reg[10] ),
        .O(sub_im[10:7]),
        .S(\buf_im_reg[2][7]_srl3_i_1 ));
  CARRY4 sub_im_carry__2
       (.CI(sub_im_carry__1_n_0),
        .CO({sub_im_carry__2_n_0,sub_im_carry__2_n_1,sub_im_carry__2_n_2,sub_im_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(\buf_im_reg[2][11]_srl3_i_1 ),
        .O(\mu_do_im_reg[15] ),
        .S(\buf_im_reg[2][11]_srl3_i_1_0 ));
  CARRY4 sub_im_carry__3
       (.CI(sub_im_carry__2_n_0),
        .CO(NLW_sub_im_carry__3_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_sub_im_carry__3_O_UNCONNECTED[3:1],\mu_do_im_reg[15]_0 }),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 sub_re_carry
       (.CI(1'b0),
        .CO({sub_re_carry_n_0,sub_re_carry_n_1,sub_re_carry_n_2,sub_re_carry_n_3}),
        .CYINIT(1'b1),
        .DI(DI),
        .O({sub_re[2:0],NLW_sub_re_carry_O_UNCONNECTED[0]}),
        .S(\buf_re_reg[2][0]_srl3_i_1 ));
  CARRY4 sub_re_carry__0
       (.CI(sub_re_carry_n_0),
        .CO({sub_re_carry__0_n_0,sub_re_carry__0_n_1,sub_re_carry__0_n_2,sub_re_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(\bf1_do_re_reg[6] ),
        .O(sub_re[6:3]),
        .S(\buf_re_reg[2][3]_srl3_i_1 ));
  CARRY4 sub_re_carry__1
       (.CI(sub_re_carry__0_n_0),
        .CO({sub_re_carry__1_n_0,sub_re_carry__1_n_1,sub_re_carry__1_n_2,sub_re_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(\bf1_do_re_reg[10] ),
        .O(sub_re[10:7]),
        .S(\buf_re_reg[2][7]_srl3_i_1 ));
  CARRY4 sub_re_carry__2
       (.CI(sub_re_carry__1_n_0),
        .CO({sub_re_carry__2_n_0,sub_re_carry__2_n_1,sub_re_carry__2_n_2,sub_re_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(\buf_re_reg[2][11]_srl3_i_1 ),
        .O(\mu_do_re_reg[15] ),
        .S(\buf_re_reg[2][11]_srl3_i_1_0 ));
  CARRY4 sub_re_carry__3
       (.CI(sub_re_carry__2_n_0),
        .CO(NLW_sub_re_carry__3_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_sub_re_carry__3_O_UNCONNECTED[3:1],\mu_do_re_reg[15]_0 }),
        .S({1'b0,1'b0,1'b0,1'b1}));
endmodule

(* ORIG_REF_NAME = "Butterfly" *) 
module system_fft128_0_0_Butterfly_1
   (sub_re,
    \mu_do_re_reg[15] ,
    O,
    sub_im,
    \mu_do_im_reg[15] ,
    \mu_do_im_reg[15]_0 ,
    add_re,
    CO,
    add_im,
    \buf_im_reg[15][14]__0 ,
    DI,
    S,
    \bf1_do_re_reg[6] ,
    \buf_re_reg[14][3]_srl15_i_1 ,
    \bf1_do_re_reg[10] ,
    \buf_re_reg[14][7]_srl15_i_1 ,
    \buf_re_reg[14][11]_srl15_i_1 ,
    \buf_re_reg[14][11]_srl15_i_1_0 ,
    \bf1_do_im_reg[2] ,
    \buf_im_reg[14][0]_srl15_i_1 ,
    \bf1_do_im_reg[6] ,
    \buf_im_reg[14][3]_srl15_i_1 ,
    \bf1_do_im_reg[10] ,
    \buf_im_reg[14][7]_srl15_i_1 ,
    \buf_im_reg[14][11]_srl15_i_1 ,
    \buf_im_reg[14][11]_srl15_i_1_0 ,
    \bf1_do_re_reg[2] ,
    \bf1_do_re_reg[6]_0 ,
    \bf1_do_re_reg[10]_0 ,
    \bf1_do_re_reg[14] ,
    \bf1_do_re_reg[14]_0 ,
    \bf1_do_im_reg[2]_0 ,
    \bf1_do_im_reg[6]_0 ,
    \bf1_do_im_reg[10]_0 ,
    \bf1_do_im_reg[14] ,
    \bf1_do_im_reg[14]_0 );
  output [10:0]sub_re;
  output [3:0]\mu_do_re_reg[15] ;
  output [0:0]O;
  output [10:0]sub_im;
  output [3:0]\mu_do_im_reg[15] ;
  output [0:0]\mu_do_im_reg[15]_0 ;
  output [14:0]add_re;
  output [0:0]CO;
  output [14:0]add_im;
  output [0:0]\buf_im_reg[15][14]__0 ;
  input [3:0]DI;
  input [3:0]S;
  input [3:0]\bf1_do_re_reg[6] ;
  input [3:0]\buf_re_reg[14][3]_srl15_i_1 ;
  input [3:0]\bf1_do_re_reg[10] ;
  input [3:0]\buf_re_reg[14][7]_srl15_i_1 ;
  input [3:0]\buf_re_reg[14][11]_srl15_i_1 ;
  input [3:0]\buf_re_reg[14][11]_srl15_i_1_0 ;
  input [3:0]\bf1_do_im_reg[2] ;
  input [3:0]\buf_im_reg[14][0]_srl15_i_1 ;
  input [3:0]\bf1_do_im_reg[6] ;
  input [3:0]\buf_im_reg[14][3]_srl15_i_1 ;
  input [3:0]\bf1_do_im_reg[10] ;
  input [3:0]\buf_im_reg[14][7]_srl15_i_1 ;
  input [3:0]\buf_im_reg[14][11]_srl15_i_1 ;
  input [3:0]\buf_im_reg[14][11]_srl15_i_1_0 ;
  input [3:0]\bf1_do_re_reg[2] ;
  input [3:0]\bf1_do_re_reg[6]_0 ;
  input [3:0]\bf1_do_re_reg[10]_0 ;
  input [0:0]\bf1_do_re_reg[14] ;
  input [3:0]\bf1_do_re_reg[14]_0 ;
  input [3:0]\bf1_do_im_reg[2]_0 ;
  input [3:0]\bf1_do_im_reg[6]_0 ;
  input [3:0]\bf1_do_im_reg[10]_0 ;
  input [0:0]\bf1_do_im_reg[14] ;
  input [3:0]\bf1_do_im_reg[14]_0 ;

  wire [0:0]CO;
  wire [3:0]DI;
  wire [0:0]O;
  wire [3:0]S;
  wire [14:0]add_im;
  wire add_im_carry__0_n_0;
  wire add_im_carry__0_n_1;
  wire add_im_carry__0_n_2;
  wire add_im_carry__0_n_3;
  wire add_im_carry__1_n_0;
  wire add_im_carry__1_n_1;
  wire add_im_carry__1_n_2;
  wire add_im_carry__1_n_3;
  wire add_im_carry__2_n_1;
  wire add_im_carry__2_n_2;
  wire add_im_carry__2_n_3;
  wire add_im_carry_n_0;
  wire add_im_carry_n_1;
  wire add_im_carry_n_2;
  wire add_im_carry_n_3;
  wire [14:0]add_re;
  wire add_re_carry__0_n_0;
  wire add_re_carry__0_n_1;
  wire add_re_carry__0_n_2;
  wire add_re_carry__0_n_3;
  wire add_re_carry__1_n_0;
  wire add_re_carry__1_n_1;
  wire add_re_carry__1_n_2;
  wire add_re_carry__1_n_3;
  wire add_re_carry__2_n_1;
  wire add_re_carry__2_n_2;
  wire add_re_carry__2_n_3;
  wire add_re_carry_n_0;
  wire add_re_carry_n_1;
  wire add_re_carry_n_2;
  wire add_re_carry_n_3;
  wire [3:0]\bf1_do_im_reg[10] ;
  wire [3:0]\bf1_do_im_reg[10]_0 ;
  wire [0:0]\bf1_do_im_reg[14] ;
  wire [3:0]\bf1_do_im_reg[14]_0 ;
  wire [3:0]\bf1_do_im_reg[2] ;
  wire [3:0]\bf1_do_im_reg[2]_0 ;
  wire [3:0]\bf1_do_im_reg[6] ;
  wire [3:0]\bf1_do_im_reg[6]_0 ;
  wire [3:0]\bf1_do_re_reg[10] ;
  wire [3:0]\bf1_do_re_reg[10]_0 ;
  wire [0:0]\bf1_do_re_reg[14] ;
  wire [3:0]\bf1_do_re_reg[14]_0 ;
  wire [3:0]\bf1_do_re_reg[2] ;
  wire [3:0]\bf1_do_re_reg[6] ;
  wire [3:0]\bf1_do_re_reg[6]_0 ;
  wire [3:0]\buf_im_reg[14][0]_srl15_i_1 ;
  wire [3:0]\buf_im_reg[14][11]_srl15_i_1 ;
  wire [3:0]\buf_im_reg[14][11]_srl15_i_1_0 ;
  wire [3:0]\buf_im_reg[14][3]_srl15_i_1 ;
  wire [3:0]\buf_im_reg[14][7]_srl15_i_1 ;
  wire [0:0]\buf_im_reg[15][14]__0 ;
  wire [3:0]\buf_re_reg[14][11]_srl15_i_1 ;
  wire [3:0]\buf_re_reg[14][11]_srl15_i_1_0 ;
  wire [3:0]\buf_re_reg[14][3]_srl15_i_1 ;
  wire [3:0]\buf_re_reg[14][7]_srl15_i_1 ;
  wire [3:0]\mu_do_im_reg[15] ;
  wire [0:0]\mu_do_im_reg[15]_0 ;
  wire [3:0]\mu_do_re_reg[15] ;
  wire [10:0]sub_im;
  wire sub_im_carry__0_n_0;
  wire sub_im_carry__0_n_1;
  wire sub_im_carry__0_n_2;
  wire sub_im_carry__0_n_3;
  wire sub_im_carry__1_n_0;
  wire sub_im_carry__1_n_1;
  wire sub_im_carry__1_n_2;
  wire sub_im_carry__1_n_3;
  wire sub_im_carry__2_n_0;
  wire sub_im_carry__2_n_1;
  wire sub_im_carry__2_n_2;
  wire sub_im_carry__2_n_3;
  wire sub_im_carry_n_0;
  wire sub_im_carry_n_1;
  wire sub_im_carry_n_2;
  wire sub_im_carry_n_3;
  wire [10:0]sub_re;
  wire sub_re_carry__0_n_0;
  wire sub_re_carry__0_n_1;
  wire sub_re_carry__0_n_2;
  wire sub_re_carry__0_n_3;
  wire sub_re_carry__1_n_0;
  wire sub_re_carry__1_n_1;
  wire sub_re_carry__1_n_2;
  wire sub_re_carry__1_n_3;
  wire sub_re_carry__2_n_0;
  wire sub_re_carry__2_n_1;
  wire sub_re_carry__2_n_2;
  wire sub_re_carry__2_n_3;
  wire sub_re_carry_n_0;
  wire sub_re_carry_n_1;
  wire sub_re_carry_n_2;
  wire sub_re_carry_n_3;
  wire [0:0]NLW_add_im_carry_O_UNCONNECTED;
  wire [0:0]NLW_add_re_carry_O_UNCONNECTED;
  wire [0:0]NLW_sub_im_carry_O_UNCONNECTED;
  wire [3:0]NLW_sub_im_carry__3_CO_UNCONNECTED;
  wire [3:1]NLW_sub_im_carry__3_O_UNCONNECTED;
  wire [0:0]NLW_sub_re_carry_O_UNCONNECTED;
  wire [3:0]NLW_sub_re_carry__3_CO_UNCONNECTED;
  wire [3:1]NLW_sub_re_carry__3_O_UNCONNECTED;

  CARRY4 add_im_carry
       (.CI(1'b0),
        .CO({add_im_carry_n_0,add_im_carry_n_1,add_im_carry_n_2,add_im_carry_n_3}),
        .CYINIT(1'b0),
        .DI(\bf1_do_im_reg[2] ),
        .O({add_im[2:0],NLW_add_im_carry_O_UNCONNECTED[0]}),
        .S(\bf1_do_im_reg[2]_0 ));
  CARRY4 add_im_carry__0
       (.CI(add_im_carry_n_0),
        .CO({add_im_carry__0_n_0,add_im_carry__0_n_1,add_im_carry__0_n_2,add_im_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(\bf1_do_im_reg[6] ),
        .O(add_im[6:3]),
        .S(\bf1_do_im_reg[6]_0 ));
  CARRY4 add_im_carry__1
       (.CI(add_im_carry__0_n_0),
        .CO({add_im_carry__1_n_0,add_im_carry__1_n_1,add_im_carry__1_n_2,add_im_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(\bf1_do_im_reg[10] ),
        .O(add_im[10:7]),
        .S(\bf1_do_im_reg[10]_0 ));
  CARRY4 add_im_carry__2
       (.CI(add_im_carry__1_n_0),
        .CO({\buf_im_reg[15][14]__0 ,add_im_carry__2_n_1,add_im_carry__2_n_2,add_im_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({\bf1_do_im_reg[14] ,\buf_im_reg[14][11]_srl15_i_1 [2:0]}),
        .O(add_im[14:11]),
        .S(\bf1_do_im_reg[14]_0 ));
  CARRY4 add_re_carry
       (.CI(1'b0),
        .CO({add_re_carry_n_0,add_re_carry_n_1,add_re_carry_n_2,add_re_carry_n_3}),
        .CYINIT(1'b0),
        .DI(DI),
        .O({add_re[2:0],NLW_add_re_carry_O_UNCONNECTED[0]}),
        .S(\bf1_do_re_reg[2] ));
  CARRY4 add_re_carry__0
       (.CI(add_re_carry_n_0),
        .CO({add_re_carry__0_n_0,add_re_carry__0_n_1,add_re_carry__0_n_2,add_re_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(\bf1_do_re_reg[6] ),
        .O(add_re[6:3]),
        .S(\bf1_do_re_reg[6]_0 ));
  CARRY4 add_re_carry__1
       (.CI(add_re_carry__0_n_0),
        .CO({add_re_carry__1_n_0,add_re_carry__1_n_1,add_re_carry__1_n_2,add_re_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(\bf1_do_re_reg[10] ),
        .O(add_re[10:7]),
        .S(\bf1_do_re_reg[10]_0 ));
  CARRY4 add_re_carry__2
       (.CI(add_re_carry__1_n_0),
        .CO({CO,add_re_carry__2_n_1,add_re_carry__2_n_2,add_re_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({\bf1_do_re_reg[14] ,\buf_re_reg[14][11]_srl15_i_1 [2:0]}),
        .O(add_re[14:11]),
        .S(\bf1_do_re_reg[14]_0 ));
  CARRY4 sub_im_carry
       (.CI(1'b0),
        .CO({sub_im_carry_n_0,sub_im_carry_n_1,sub_im_carry_n_2,sub_im_carry_n_3}),
        .CYINIT(1'b1),
        .DI(\bf1_do_im_reg[2] ),
        .O({sub_im[2:0],NLW_sub_im_carry_O_UNCONNECTED[0]}),
        .S(\buf_im_reg[14][0]_srl15_i_1 ));
  CARRY4 sub_im_carry__0
       (.CI(sub_im_carry_n_0),
        .CO({sub_im_carry__0_n_0,sub_im_carry__0_n_1,sub_im_carry__0_n_2,sub_im_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(\bf1_do_im_reg[6] ),
        .O(sub_im[6:3]),
        .S(\buf_im_reg[14][3]_srl15_i_1 ));
  CARRY4 sub_im_carry__1
       (.CI(sub_im_carry__0_n_0),
        .CO({sub_im_carry__1_n_0,sub_im_carry__1_n_1,sub_im_carry__1_n_2,sub_im_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(\bf1_do_im_reg[10] ),
        .O(sub_im[10:7]),
        .S(\buf_im_reg[14][7]_srl15_i_1 ));
  CARRY4 sub_im_carry__2
       (.CI(sub_im_carry__1_n_0),
        .CO({sub_im_carry__2_n_0,sub_im_carry__2_n_1,sub_im_carry__2_n_2,sub_im_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(\buf_im_reg[14][11]_srl15_i_1 ),
        .O(\mu_do_im_reg[15] ),
        .S(\buf_im_reg[14][11]_srl15_i_1_0 ));
  CARRY4 sub_im_carry__3
       (.CI(sub_im_carry__2_n_0),
        .CO(NLW_sub_im_carry__3_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_sub_im_carry__3_O_UNCONNECTED[3:1],\mu_do_im_reg[15]_0 }),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 sub_re_carry
       (.CI(1'b0),
        .CO({sub_re_carry_n_0,sub_re_carry_n_1,sub_re_carry_n_2,sub_re_carry_n_3}),
        .CYINIT(1'b1),
        .DI(DI),
        .O({sub_re[2:0],NLW_sub_re_carry_O_UNCONNECTED[0]}),
        .S(S));
  CARRY4 sub_re_carry__0
       (.CI(sub_re_carry_n_0),
        .CO({sub_re_carry__0_n_0,sub_re_carry__0_n_1,sub_re_carry__0_n_2,sub_re_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(\bf1_do_re_reg[6] ),
        .O(sub_re[6:3]),
        .S(\buf_re_reg[14][3]_srl15_i_1 ));
  CARRY4 sub_re_carry__1
       (.CI(sub_re_carry__0_n_0),
        .CO({sub_re_carry__1_n_0,sub_re_carry__1_n_1,sub_re_carry__1_n_2,sub_re_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(\bf1_do_re_reg[10] ),
        .O(sub_re[10:7]),
        .S(\buf_re_reg[14][7]_srl15_i_1 ));
  CARRY4 sub_re_carry__2
       (.CI(sub_re_carry__1_n_0),
        .CO({sub_re_carry__2_n_0,sub_re_carry__2_n_1,sub_re_carry__2_n_2,sub_re_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(\buf_re_reg[14][11]_srl15_i_1 ),
        .O(\mu_do_re_reg[15] ),
        .S(\buf_re_reg[14][11]_srl15_i_1_0 ));
  CARRY4 sub_re_carry__3
       (.CI(sub_re_carry__2_n_0),
        .CO(NLW_sub_re_carry__3_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_sub_re_carry__3_O_UNCONNECTED[3:1],O}),
        .S({1'b0,1'b0,1'b0,1'b1}));
endmodule

(* ORIG_REF_NAME = "Butterfly" *) 
module system_fft128_0_0_Butterfly_5
   (sub_re_0,
    O,
    sub_im_1,
    \di_im[15] ,
    add_re_2,
    CO,
    add_im_3,
    \buf_im_reg[63][14]__0 ,
    \buf_re_reg[63]_0 ,
    S,
    \buf_re_reg[31][3]_srl32_i_1 ,
    \buf_re_reg[31][7]_srl32_i_1 ,
    di_re,
    \buf_re_reg[31][11]_srl32_i_1 ,
    \buf_im_reg[63]_1 ,
    \buf_im_reg[31][0]_srl32_i_1 ,
    \buf_im_reg[31][3]_srl32_i_1 ,
    \buf_im_reg[31][7]_srl32_i_1 ,
    di_im,
    \buf_im_reg[31][11]_srl32_i_1 ,
    \bf1_do_re_reg[2] ,
    \bf1_do_re_reg[6] ,
    \bf1_do_re_reg[10] ,
    DI,
    \bf1_do_re_reg[14] ,
    \bf1_do_im_reg[2] ,
    \bf1_do_im_reg[6] ,
    \bf1_do_im_reg[10] ,
    \bf1_do_im_reg[14] ,
    \bf1_do_im_reg[14]_0 );
  output [14:0]sub_re_0;
  output [0:0]O;
  output [14:0]sub_im_1;
  output [0:0]\di_im[15] ;
  output [14:0]add_re_2;
  output [0:0]CO;
  output [14:0]add_im_3;
  output [0:0]\buf_im_reg[63][14]__0 ;
  input [14:0]\buf_re_reg[63]_0 ;
  input [3:0]S;
  input [3:0]\buf_re_reg[31][3]_srl32_i_1 ;
  input [3:0]\buf_re_reg[31][7]_srl32_i_1 ;
  input [0:0]di_re;
  input [3:0]\buf_re_reg[31][11]_srl32_i_1 ;
  input [14:0]\buf_im_reg[63]_1 ;
  input [3:0]\buf_im_reg[31][0]_srl32_i_1 ;
  input [3:0]\buf_im_reg[31][3]_srl32_i_1 ;
  input [3:0]\buf_im_reg[31][7]_srl32_i_1 ;
  input [0:0]di_im;
  input [3:0]\buf_im_reg[31][11]_srl32_i_1 ;
  input [3:0]\bf1_do_re_reg[2] ;
  input [3:0]\bf1_do_re_reg[6] ;
  input [3:0]\bf1_do_re_reg[10] ;
  input [0:0]DI;
  input [3:0]\bf1_do_re_reg[14] ;
  input [3:0]\bf1_do_im_reg[2] ;
  input [3:0]\bf1_do_im_reg[6] ;
  input [3:0]\bf1_do_im_reg[10] ;
  input [0:0]\bf1_do_im_reg[14] ;
  input [3:0]\bf1_do_im_reg[14]_0 ;

  wire [0:0]CO;
  wire [0:0]DI;
  wire [0:0]O;
  wire [3:0]S;
  wire [14:0]add_im_3;
  wire add_im_carry__0_n_0;
  wire add_im_carry__0_n_1;
  wire add_im_carry__0_n_2;
  wire add_im_carry__0_n_3;
  wire add_im_carry__1_n_0;
  wire add_im_carry__1_n_1;
  wire add_im_carry__1_n_2;
  wire add_im_carry__1_n_3;
  wire add_im_carry__2_n_1;
  wire add_im_carry__2_n_2;
  wire add_im_carry__2_n_3;
  wire add_im_carry_n_0;
  wire add_im_carry_n_1;
  wire add_im_carry_n_2;
  wire add_im_carry_n_3;
  wire [14:0]add_re_2;
  wire add_re_carry__0_n_0;
  wire add_re_carry__0_n_1;
  wire add_re_carry__0_n_2;
  wire add_re_carry__0_n_3;
  wire add_re_carry__1_n_0;
  wire add_re_carry__1_n_1;
  wire add_re_carry__1_n_2;
  wire add_re_carry__1_n_3;
  wire add_re_carry__2_n_1;
  wire add_re_carry__2_n_2;
  wire add_re_carry__2_n_3;
  wire add_re_carry_n_0;
  wire add_re_carry_n_1;
  wire add_re_carry_n_2;
  wire add_re_carry_n_3;
  wire [3:0]\bf1_do_im_reg[10] ;
  wire [0:0]\bf1_do_im_reg[14] ;
  wire [3:0]\bf1_do_im_reg[14]_0 ;
  wire [3:0]\bf1_do_im_reg[2] ;
  wire [3:0]\bf1_do_im_reg[6] ;
  wire [3:0]\bf1_do_re_reg[10] ;
  wire [3:0]\bf1_do_re_reg[14] ;
  wire [3:0]\bf1_do_re_reg[2] ;
  wire [3:0]\bf1_do_re_reg[6] ;
  wire [3:0]\buf_im_reg[31][0]_srl32_i_1 ;
  wire [3:0]\buf_im_reg[31][11]_srl32_i_1 ;
  wire [3:0]\buf_im_reg[31][3]_srl32_i_1 ;
  wire [3:0]\buf_im_reg[31][7]_srl32_i_1 ;
  wire [0:0]\buf_im_reg[63][14]__0 ;
  wire [14:0]\buf_im_reg[63]_1 ;
  wire [3:0]\buf_re_reg[31][11]_srl32_i_1 ;
  wire [3:0]\buf_re_reg[31][3]_srl32_i_1 ;
  wire [3:0]\buf_re_reg[31][7]_srl32_i_1 ;
  wire [14:0]\buf_re_reg[63]_0 ;
  wire [0:0]di_im;
  wire [0:0]\di_im[15] ;
  wire [0:0]di_re;
  wire [14:0]sub_im_1;
  wire sub_im_carry__0_n_0;
  wire sub_im_carry__0_n_1;
  wire sub_im_carry__0_n_2;
  wire sub_im_carry__0_n_3;
  wire sub_im_carry__1_n_0;
  wire sub_im_carry__1_n_1;
  wire sub_im_carry__1_n_2;
  wire sub_im_carry__1_n_3;
  wire sub_im_carry__2_n_0;
  wire sub_im_carry__2_n_1;
  wire sub_im_carry__2_n_2;
  wire sub_im_carry__2_n_3;
  wire sub_im_carry_n_0;
  wire sub_im_carry_n_1;
  wire sub_im_carry_n_2;
  wire sub_im_carry_n_3;
  wire [14:0]sub_re_0;
  wire sub_re_carry__0_n_0;
  wire sub_re_carry__0_n_1;
  wire sub_re_carry__0_n_2;
  wire sub_re_carry__0_n_3;
  wire sub_re_carry__1_n_0;
  wire sub_re_carry__1_n_1;
  wire sub_re_carry__1_n_2;
  wire sub_re_carry__1_n_3;
  wire sub_re_carry__2_n_0;
  wire sub_re_carry__2_n_1;
  wire sub_re_carry__2_n_2;
  wire sub_re_carry__2_n_3;
  wire sub_re_carry_n_0;
  wire sub_re_carry_n_1;
  wire sub_re_carry_n_2;
  wire sub_re_carry_n_3;
  wire [0:0]NLW_add_im_carry_O_UNCONNECTED;
  wire [0:0]NLW_add_re_carry_O_UNCONNECTED;
  wire [0:0]NLW_sub_im_carry_O_UNCONNECTED;
  wire [3:0]NLW_sub_im_carry__3_CO_UNCONNECTED;
  wire [3:1]NLW_sub_im_carry__3_O_UNCONNECTED;
  wire [0:0]NLW_sub_re_carry_O_UNCONNECTED;
  wire [3:0]NLW_sub_re_carry__3_CO_UNCONNECTED;
  wire [3:1]NLW_sub_re_carry__3_O_UNCONNECTED;

  CARRY4 add_im_carry
       (.CI(1'b0),
        .CO({add_im_carry_n_0,add_im_carry_n_1,add_im_carry_n_2,add_im_carry_n_3}),
        .CYINIT(1'b0),
        .DI(\buf_im_reg[63]_1 [3:0]),
        .O({add_im_3[2:0],NLW_add_im_carry_O_UNCONNECTED[0]}),
        .S(\bf1_do_im_reg[2] ));
  CARRY4 add_im_carry__0
       (.CI(add_im_carry_n_0),
        .CO({add_im_carry__0_n_0,add_im_carry__0_n_1,add_im_carry__0_n_2,add_im_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(\buf_im_reg[63]_1 [7:4]),
        .O(add_im_3[6:3]),
        .S(\bf1_do_im_reg[6] ));
  CARRY4 add_im_carry__1
       (.CI(add_im_carry__0_n_0),
        .CO({add_im_carry__1_n_0,add_im_carry__1_n_1,add_im_carry__1_n_2,add_im_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(\buf_im_reg[63]_1 [11:8]),
        .O(add_im_3[10:7]),
        .S(\bf1_do_im_reg[10] ));
  CARRY4 add_im_carry__2
       (.CI(add_im_carry__1_n_0),
        .CO({\buf_im_reg[63][14]__0 ,add_im_carry__2_n_1,add_im_carry__2_n_2,add_im_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({\bf1_do_im_reg[14] ,\buf_im_reg[63]_1 [14:12]}),
        .O(add_im_3[14:11]),
        .S(\bf1_do_im_reg[14]_0 ));
  CARRY4 add_re_carry
       (.CI(1'b0),
        .CO({add_re_carry_n_0,add_re_carry_n_1,add_re_carry_n_2,add_re_carry_n_3}),
        .CYINIT(1'b0),
        .DI(\buf_re_reg[63]_0 [3:0]),
        .O({add_re_2[2:0],NLW_add_re_carry_O_UNCONNECTED[0]}),
        .S(\bf1_do_re_reg[2] ));
  CARRY4 add_re_carry__0
       (.CI(add_re_carry_n_0),
        .CO({add_re_carry__0_n_0,add_re_carry__0_n_1,add_re_carry__0_n_2,add_re_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(\buf_re_reg[63]_0 [7:4]),
        .O(add_re_2[6:3]),
        .S(\bf1_do_re_reg[6] ));
  CARRY4 add_re_carry__1
       (.CI(add_re_carry__0_n_0),
        .CO({add_re_carry__1_n_0,add_re_carry__1_n_1,add_re_carry__1_n_2,add_re_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(\buf_re_reg[63]_0 [11:8]),
        .O(add_re_2[10:7]),
        .S(\bf1_do_re_reg[10] ));
  CARRY4 add_re_carry__2
       (.CI(add_re_carry__1_n_0),
        .CO({CO,add_re_carry__2_n_1,add_re_carry__2_n_2,add_re_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({DI,\buf_re_reg[63]_0 [14:12]}),
        .O(add_re_2[14:11]),
        .S(\bf1_do_re_reg[14] ));
  CARRY4 sub_im_carry
       (.CI(1'b0),
        .CO({sub_im_carry_n_0,sub_im_carry_n_1,sub_im_carry_n_2,sub_im_carry_n_3}),
        .CYINIT(1'b1),
        .DI(\buf_im_reg[63]_1 [3:0]),
        .O({sub_im_1[2:0],NLW_sub_im_carry_O_UNCONNECTED[0]}),
        .S(\buf_im_reg[31][0]_srl32_i_1 ));
  CARRY4 sub_im_carry__0
       (.CI(sub_im_carry_n_0),
        .CO({sub_im_carry__0_n_0,sub_im_carry__0_n_1,sub_im_carry__0_n_2,sub_im_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(\buf_im_reg[63]_1 [7:4]),
        .O(sub_im_1[6:3]),
        .S(\buf_im_reg[31][3]_srl32_i_1 ));
  CARRY4 sub_im_carry__1
       (.CI(sub_im_carry__0_n_0),
        .CO({sub_im_carry__1_n_0,sub_im_carry__1_n_1,sub_im_carry__1_n_2,sub_im_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(\buf_im_reg[63]_1 [11:8]),
        .O(sub_im_1[10:7]),
        .S(\buf_im_reg[31][7]_srl32_i_1 ));
  CARRY4 sub_im_carry__2
       (.CI(sub_im_carry__1_n_0),
        .CO({sub_im_carry__2_n_0,sub_im_carry__2_n_1,sub_im_carry__2_n_2,sub_im_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({di_im,\buf_im_reg[63]_1 [14:12]}),
        .O(sub_im_1[14:11]),
        .S(\buf_im_reg[31][11]_srl32_i_1 ));
  CARRY4 sub_im_carry__3
       (.CI(sub_im_carry__2_n_0),
        .CO(NLW_sub_im_carry__3_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_sub_im_carry__3_O_UNCONNECTED[3:1],\di_im[15] }),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 sub_re_carry
       (.CI(1'b0),
        .CO({sub_re_carry_n_0,sub_re_carry_n_1,sub_re_carry_n_2,sub_re_carry_n_3}),
        .CYINIT(1'b1),
        .DI(\buf_re_reg[63]_0 [3:0]),
        .O({sub_re_0[2:0],NLW_sub_re_carry_O_UNCONNECTED[0]}),
        .S(S));
  CARRY4 sub_re_carry__0
       (.CI(sub_re_carry_n_0),
        .CO({sub_re_carry__0_n_0,sub_re_carry__0_n_1,sub_re_carry__0_n_2,sub_re_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(\buf_re_reg[63]_0 [7:4]),
        .O(sub_re_0[6:3]),
        .S(\buf_re_reg[31][3]_srl32_i_1 ));
  CARRY4 sub_re_carry__1
       (.CI(sub_re_carry__0_n_0),
        .CO({sub_re_carry__1_n_0,sub_re_carry__1_n_1,sub_re_carry__1_n_2,sub_re_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(\buf_re_reg[63]_0 [11:8]),
        .O(sub_re_0[10:7]),
        .S(\buf_re_reg[31][7]_srl32_i_1 ));
  CARRY4 sub_re_carry__2
       (.CI(sub_re_carry__1_n_0),
        .CO({sub_re_carry__2_n_0,sub_re_carry__2_n_1,sub_re_carry__2_n_2,sub_re_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({di_re,\buf_re_reg[63]_0 [14:12]}),
        .O(sub_re_0[14:11]),
        .S(\buf_re_reg[31][11]_srl32_i_1 ));
  CARRY4 sub_re_carry__3
       (.CI(sub_re_carry__2_n_0),
        .CO(NLW_sub_re_carry__3_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_sub_re_carry__3_O_UNCONNECTED[3:1],O}),
        .S({1'b0,1'b0,1'b0,1'b1}));
endmodule

(* ORIG_REF_NAME = "Butterfly" *) 
module system_fft128_0_0_Butterfly__parameterized0
   (y1_re0,
    y0_re0,
    y1_im0,
    y0_im0,
    Q,
    S,
    y1_re0__47_carry_0,
    y1_re0__47_carry__0_0,
    y1_re0__47_carry__1_0,
    y1_re0__47_carry__1_1,
    y0_re0__47_carry_0,
    y0_re0__47_carry_1,
    y0_re0__47_carry__0_0,
    DI,
    y0_re0__47_carry__1_0,
    y0_im0__47_carry__1_0,
    y1_im0__47_carry_0,
    y1_im0__47_carry_1,
    y1_im0__47_carry__0_0,
    y1_im0__47_carry__1_0,
    y1_im0__47_carry__1_1,
    y0_im0__47_carry_0,
    y0_im0__47_carry_1,
    y0_im0__47_carry__0_0,
    y0_im0__47_carry__1_1,
    y0_im0__47_carry__1_2);
  output [15:0]y1_re0;
  output [15:0]y0_re0;
  output [15:0]y1_im0;
  output [15:0]y0_im0;
  input [14:0]Q;
  input [3:0]S;
  input [3:0]y1_re0__47_carry_0;
  input [3:0]y1_re0__47_carry__0_0;
  input [0:0]y1_re0__47_carry__1_0;
  input [3:0]y1_re0__47_carry__1_1;
  input [3:0]y0_re0__47_carry_0;
  input [3:0]y0_re0__47_carry_1;
  input [3:0]y0_re0__47_carry__0_0;
  input [0:0]DI;
  input [3:0]y0_re0__47_carry__1_0;
  input [14:0]y0_im0__47_carry__1_0;
  input [3:0]y1_im0__47_carry_0;
  input [3:0]y1_im0__47_carry_1;
  input [3:0]y1_im0__47_carry__0_0;
  input [0:0]y1_im0__47_carry__1_0;
  input [3:0]y1_im0__47_carry__1_1;
  input [3:0]y0_im0__47_carry_0;
  input [3:0]y0_im0__47_carry_1;
  input [3:0]y0_im0__47_carry__0_0;
  input [0:0]y0_im0__47_carry__1_1;
  input [3:0]y0_im0__47_carry__1_2;

  wire [0:0]DI;
  wire [14:0]Q;
  wire [3:0]S;
  wire [16:0]add_im__1;
  wire [16:0]add_re__1;
  wire [16:0]sub_im__1;
  wire [16:0]sub_re__1;
  wire [15:0]y0_im0;
  wire [3:0]y0_im0__47_carry_0;
  wire [3:0]y0_im0__47_carry_1;
  wire [3:0]y0_im0__47_carry__0_0;
  wire y0_im0__47_carry__0_n_0;
  wire y0_im0__47_carry__0_n_1;
  wire y0_im0__47_carry__0_n_2;
  wire y0_im0__47_carry__0_n_3;
  wire [14:0]y0_im0__47_carry__1_0;
  wire [0:0]y0_im0__47_carry__1_1;
  wire [3:0]y0_im0__47_carry__1_2;
  wire y0_im0__47_carry__1_n_0;
  wire y0_im0__47_carry__1_n_1;
  wire y0_im0__47_carry__1_n_2;
  wire y0_im0__47_carry__1_n_3;
  wire y0_im0__47_carry__2_n_1;
  wire y0_im0__47_carry__2_n_2;
  wire y0_im0__47_carry__2_n_3;
  wire y0_im0__47_carry_n_0;
  wire y0_im0__47_carry_n_1;
  wire y0_im0__47_carry_n_2;
  wire y0_im0__47_carry_n_3;
  wire y0_im0_carry__0_n_0;
  wire y0_im0_carry__0_n_1;
  wire y0_im0_carry__0_n_2;
  wire y0_im0_carry__0_n_3;
  wire y0_im0_carry__1_n_0;
  wire y0_im0_carry__1_n_1;
  wire y0_im0_carry__1_n_2;
  wire y0_im0_carry__1_n_3;
  wire y0_im0_carry__2_n_0;
  wire y0_im0_carry__2_n_1;
  wire y0_im0_carry__2_n_2;
  wire y0_im0_carry__2_n_3;
  wire y0_im0_carry_n_0;
  wire y0_im0_carry_n_1;
  wire y0_im0_carry_n_2;
  wire y0_im0_carry_n_3;
  wire [15:0]y0_re0;
  wire [3:0]y0_re0__47_carry_0;
  wire [3:0]y0_re0__47_carry_1;
  wire [3:0]y0_re0__47_carry__0_0;
  wire y0_re0__47_carry__0_n_0;
  wire y0_re0__47_carry__0_n_1;
  wire y0_re0__47_carry__0_n_2;
  wire y0_re0__47_carry__0_n_3;
  wire [3:0]y0_re0__47_carry__1_0;
  wire y0_re0__47_carry__1_n_0;
  wire y0_re0__47_carry__1_n_1;
  wire y0_re0__47_carry__1_n_2;
  wire y0_re0__47_carry__1_n_3;
  wire y0_re0__47_carry__2_n_1;
  wire y0_re0__47_carry__2_n_2;
  wire y0_re0__47_carry__2_n_3;
  wire y0_re0__47_carry_n_0;
  wire y0_re0__47_carry_n_1;
  wire y0_re0__47_carry_n_2;
  wire y0_re0__47_carry_n_3;
  wire y0_re0_carry__0_n_0;
  wire y0_re0_carry__0_n_1;
  wire y0_re0_carry__0_n_2;
  wire y0_re0_carry__0_n_3;
  wire y0_re0_carry__1_n_0;
  wire y0_re0_carry__1_n_1;
  wire y0_re0_carry__1_n_2;
  wire y0_re0_carry__1_n_3;
  wire y0_re0_carry__2_n_0;
  wire y0_re0_carry__2_n_1;
  wire y0_re0_carry__2_n_2;
  wire y0_re0_carry__2_n_3;
  wire y0_re0_carry_n_0;
  wire y0_re0_carry_n_1;
  wire y0_re0_carry_n_2;
  wire y0_re0_carry_n_3;
  wire [15:0]y1_im0;
  wire [3:0]y1_im0__47_carry_0;
  wire [3:0]y1_im0__47_carry_1;
  wire [3:0]y1_im0__47_carry__0_0;
  wire y1_im0__47_carry__0_n_0;
  wire y1_im0__47_carry__0_n_1;
  wire y1_im0__47_carry__0_n_2;
  wire y1_im0__47_carry__0_n_3;
  wire [0:0]y1_im0__47_carry__1_0;
  wire [3:0]y1_im0__47_carry__1_1;
  wire y1_im0__47_carry__1_n_0;
  wire y1_im0__47_carry__1_n_1;
  wire y1_im0__47_carry__1_n_2;
  wire y1_im0__47_carry__1_n_3;
  wire y1_im0__47_carry__2_n_1;
  wire y1_im0__47_carry__2_n_2;
  wire y1_im0__47_carry__2_n_3;
  wire y1_im0__47_carry_n_0;
  wire y1_im0__47_carry_n_1;
  wire y1_im0__47_carry_n_2;
  wire y1_im0__47_carry_n_3;
  wire y1_im0_carry__0_n_0;
  wire y1_im0_carry__0_n_1;
  wire y1_im0_carry__0_n_2;
  wire y1_im0_carry__0_n_3;
  wire y1_im0_carry__1_n_0;
  wire y1_im0_carry__1_n_1;
  wire y1_im0_carry__1_n_2;
  wire y1_im0_carry__1_n_3;
  wire y1_im0_carry__2_n_0;
  wire y1_im0_carry__2_n_1;
  wire y1_im0_carry__2_n_2;
  wire y1_im0_carry__2_n_3;
  wire y1_im0_carry_n_0;
  wire y1_im0_carry_n_1;
  wire y1_im0_carry_n_2;
  wire y1_im0_carry_n_3;
  wire [15:0]y1_re0;
  wire [3:0]y1_re0__47_carry_0;
  wire [3:0]y1_re0__47_carry__0_0;
  wire y1_re0__47_carry__0_n_0;
  wire y1_re0__47_carry__0_n_1;
  wire y1_re0__47_carry__0_n_2;
  wire y1_re0__47_carry__0_n_3;
  wire [0:0]y1_re0__47_carry__1_0;
  wire [3:0]y1_re0__47_carry__1_1;
  wire y1_re0__47_carry__1_n_0;
  wire y1_re0__47_carry__1_n_1;
  wire y1_re0__47_carry__1_n_2;
  wire y1_re0__47_carry__1_n_3;
  wire y1_re0__47_carry__2_n_1;
  wire y1_re0__47_carry__2_n_2;
  wire y1_re0__47_carry__2_n_3;
  wire y1_re0__47_carry_n_0;
  wire y1_re0__47_carry_n_1;
  wire y1_re0__47_carry_n_2;
  wire y1_re0__47_carry_n_3;
  wire y1_re0_carry__0_n_0;
  wire y1_re0_carry__0_n_1;
  wire y1_re0_carry__0_n_2;
  wire y1_re0_carry__0_n_3;
  wire y1_re0_carry__1_n_0;
  wire y1_re0_carry__1_n_1;
  wire y1_re0_carry__1_n_2;
  wire y1_re0_carry__1_n_3;
  wire y1_re0_carry__2_n_0;
  wire y1_re0_carry__2_n_1;
  wire y1_re0_carry__2_n_2;
  wire y1_re0_carry__2_n_3;
  wire y1_re0_carry_n_0;
  wire y1_re0_carry_n_1;
  wire y1_re0_carry_n_2;
  wire y1_re0_carry_n_3;
  wire [3:3]NLW_y0_im0__47_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_y0_im0_carry__3_CO_UNCONNECTED;
  wire [3:1]NLW_y0_im0_carry__3_O_UNCONNECTED;
  wire [3:3]NLW_y0_re0__47_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_y0_re0_carry__3_CO_UNCONNECTED;
  wire [3:1]NLW_y0_re0_carry__3_O_UNCONNECTED;
  wire [3:3]NLW_y1_im0__47_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_y1_im0_carry__3_CO_UNCONNECTED;
  wire [3:1]NLW_y1_im0_carry__3_O_UNCONNECTED;
  wire [3:3]NLW_y1_re0__47_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_y1_re0_carry__3_CO_UNCONNECTED;
  wire [3:1]NLW_y1_re0_carry__3_O_UNCONNECTED;

  CARRY4 y0_im0__47_carry
       (.CI(1'b0),
        .CO({y0_im0__47_carry_n_0,y0_im0__47_carry_n_1,y0_im0__47_carry_n_2,y0_im0__47_carry_n_3}),
        .CYINIT(add_im__1[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(y0_im0[3:0]),
        .S(add_im__1[4:1]));
  CARRY4 y0_im0__47_carry__0
       (.CI(y0_im0__47_carry_n_0),
        .CO({y0_im0__47_carry__0_n_0,y0_im0__47_carry__0_n_1,y0_im0__47_carry__0_n_2,y0_im0__47_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(y0_im0[7:4]),
        .S(add_im__1[8:5]));
  CARRY4 y0_im0__47_carry__1
       (.CI(y0_im0__47_carry__0_n_0),
        .CO({y0_im0__47_carry__1_n_0,y0_im0__47_carry__1_n_1,y0_im0__47_carry__1_n_2,y0_im0__47_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(y0_im0[11:8]),
        .S(add_im__1[12:9]));
  CARRY4 y0_im0__47_carry__2
       (.CI(y0_im0__47_carry__1_n_0),
        .CO({NLW_y0_im0__47_carry__2_CO_UNCONNECTED[3],y0_im0__47_carry__2_n_1,y0_im0__47_carry__2_n_2,y0_im0__47_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(y0_im0[15:12]),
        .S(add_im__1[16:13]));
  CARRY4 y0_im0_carry
       (.CI(1'b0),
        .CO({y0_im0_carry_n_0,y0_im0_carry_n_1,y0_im0_carry_n_2,y0_im0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(y0_im0__47_carry__1_0[3:0]),
        .O(add_im__1[3:0]),
        .S(y0_im0__47_carry_0));
  CARRY4 y0_im0_carry__0
       (.CI(y0_im0_carry_n_0),
        .CO({y0_im0_carry__0_n_0,y0_im0_carry__0_n_1,y0_im0_carry__0_n_2,y0_im0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(y0_im0__47_carry__1_0[7:4]),
        .O(add_im__1[7:4]),
        .S(y0_im0__47_carry_1));
  CARRY4 y0_im0_carry__1
       (.CI(y0_im0_carry__0_n_0),
        .CO({y0_im0_carry__1_n_0,y0_im0_carry__1_n_1,y0_im0_carry__1_n_2,y0_im0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(y0_im0__47_carry__1_0[11:8]),
        .O(add_im__1[11:8]),
        .S(y0_im0__47_carry__0_0));
  CARRY4 y0_im0_carry__2
       (.CI(y0_im0_carry__1_n_0),
        .CO({y0_im0_carry__2_n_0,y0_im0_carry__2_n_1,y0_im0_carry__2_n_2,y0_im0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({y0_im0__47_carry__1_1,y0_im0__47_carry__1_0[14:12]}),
        .O(add_im__1[15:12]),
        .S(y0_im0__47_carry__1_2));
  CARRY4 y0_im0_carry__3
       (.CI(y0_im0_carry__2_n_0),
        .CO(NLW_y0_im0_carry__3_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_y0_im0_carry__3_O_UNCONNECTED[3:1],add_im__1[16]}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 y0_re0__47_carry
       (.CI(1'b0),
        .CO({y0_re0__47_carry_n_0,y0_re0__47_carry_n_1,y0_re0__47_carry_n_2,y0_re0__47_carry_n_3}),
        .CYINIT(add_re__1[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(y0_re0[3:0]),
        .S(add_re__1[4:1]));
  CARRY4 y0_re0__47_carry__0
       (.CI(y0_re0__47_carry_n_0),
        .CO({y0_re0__47_carry__0_n_0,y0_re0__47_carry__0_n_1,y0_re0__47_carry__0_n_2,y0_re0__47_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(y0_re0[7:4]),
        .S(add_re__1[8:5]));
  CARRY4 y0_re0__47_carry__1
       (.CI(y0_re0__47_carry__0_n_0),
        .CO({y0_re0__47_carry__1_n_0,y0_re0__47_carry__1_n_1,y0_re0__47_carry__1_n_2,y0_re0__47_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(y0_re0[11:8]),
        .S(add_re__1[12:9]));
  CARRY4 y0_re0__47_carry__2
       (.CI(y0_re0__47_carry__1_n_0),
        .CO({NLW_y0_re0__47_carry__2_CO_UNCONNECTED[3],y0_re0__47_carry__2_n_1,y0_re0__47_carry__2_n_2,y0_re0__47_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(y0_re0[15:12]),
        .S(add_re__1[16:13]));
  CARRY4 y0_re0_carry
       (.CI(1'b0),
        .CO({y0_re0_carry_n_0,y0_re0_carry_n_1,y0_re0_carry_n_2,y0_re0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(Q[3:0]),
        .O(add_re__1[3:0]),
        .S(y0_re0__47_carry_0));
  CARRY4 y0_re0_carry__0
       (.CI(y0_re0_carry_n_0),
        .CO({y0_re0_carry__0_n_0,y0_re0_carry__0_n_1,y0_re0_carry__0_n_2,y0_re0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O(add_re__1[7:4]),
        .S(y0_re0__47_carry_1));
  CARRY4 y0_re0_carry__1
       (.CI(y0_re0_carry__0_n_0),
        .CO({y0_re0_carry__1_n_0,y0_re0_carry__1_n_1,y0_re0_carry__1_n_2,y0_re0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(Q[11:8]),
        .O(add_re__1[11:8]),
        .S(y0_re0__47_carry__0_0));
  CARRY4 y0_re0_carry__2
       (.CI(y0_re0_carry__1_n_0),
        .CO({y0_re0_carry__2_n_0,y0_re0_carry__2_n_1,y0_re0_carry__2_n_2,y0_re0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({DI,Q[14:12]}),
        .O(add_re__1[15:12]),
        .S(y0_re0__47_carry__1_0));
  CARRY4 y0_re0_carry__3
       (.CI(y0_re0_carry__2_n_0),
        .CO(NLW_y0_re0_carry__3_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_y0_re0_carry__3_O_UNCONNECTED[3:1],add_re__1[16]}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 y1_im0__47_carry
       (.CI(1'b0),
        .CO({y1_im0__47_carry_n_0,y1_im0__47_carry_n_1,y1_im0__47_carry_n_2,y1_im0__47_carry_n_3}),
        .CYINIT(sub_im__1[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(y1_im0[3:0]),
        .S(sub_im__1[4:1]));
  CARRY4 y1_im0__47_carry__0
       (.CI(y1_im0__47_carry_n_0),
        .CO({y1_im0__47_carry__0_n_0,y1_im0__47_carry__0_n_1,y1_im0__47_carry__0_n_2,y1_im0__47_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(y1_im0[7:4]),
        .S(sub_im__1[8:5]));
  CARRY4 y1_im0__47_carry__1
       (.CI(y1_im0__47_carry__0_n_0),
        .CO({y1_im0__47_carry__1_n_0,y1_im0__47_carry__1_n_1,y1_im0__47_carry__1_n_2,y1_im0__47_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(y1_im0[11:8]),
        .S(sub_im__1[12:9]));
  CARRY4 y1_im0__47_carry__2
       (.CI(y1_im0__47_carry__1_n_0),
        .CO({NLW_y1_im0__47_carry__2_CO_UNCONNECTED[3],y1_im0__47_carry__2_n_1,y1_im0__47_carry__2_n_2,y1_im0__47_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(y1_im0[15:12]),
        .S(sub_im__1[16:13]));
  CARRY4 y1_im0_carry
       (.CI(1'b0),
        .CO({y1_im0_carry_n_0,y1_im0_carry_n_1,y1_im0_carry_n_2,y1_im0_carry_n_3}),
        .CYINIT(1'b1),
        .DI(y0_im0__47_carry__1_0[3:0]),
        .O(sub_im__1[3:0]),
        .S(y1_im0__47_carry_0));
  CARRY4 y1_im0_carry__0
       (.CI(y1_im0_carry_n_0),
        .CO({y1_im0_carry__0_n_0,y1_im0_carry__0_n_1,y1_im0_carry__0_n_2,y1_im0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(y0_im0__47_carry__1_0[7:4]),
        .O(sub_im__1[7:4]),
        .S(y1_im0__47_carry_1));
  CARRY4 y1_im0_carry__1
       (.CI(y1_im0_carry__0_n_0),
        .CO({y1_im0_carry__1_n_0,y1_im0_carry__1_n_1,y1_im0_carry__1_n_2,y1_im0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(y0_im0__47_carry__1_0[11:8]),
        .O(sub_im__1[11:8]),
        .S(y1_im0__47_carry__0_0));
  CARRY4 y1_im0_carry__2
       (.CI(y1_im0_carry__1_n_0),
        .CO({y1_im0_carry__2_n_0,y1_im0_carry__2_n_1,y1_im0_carry__2_n_2,y1_im0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({y1_im0__47_carry__1_0,y0_im0__47_carry__1_0[14:12]}),
        .O(sub_im__1[15:12]),
        .S(y1_im0__47_carry__1_1));
  CARRY4 y1_im0_carry__3
       (.CI(y1_im0_carry__2_n_0),
        .CO(NLW_y1_im0_carry__3_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_y1_im0_carry__3_O_UNCONNECTED[3:1],sub_im__1[16]}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 y1_re0__47_carry
       (.CI(1'b0),
        .CO({y1_re0__47_carry_n_0,y1_re0__47_carry_n_1,y1_re0__47_carry_n_2,y1_re0__47_carry_n_3}),
        .CYINIT(sub_re__1[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(y1_re0[3:0]),
        .S(sub_re__1[4:1]));
  CARRY4 y1_re0__47_carry__0
       (.CI(y1_re0__47_carry_n_0),
        .CO({y1_re0__47_carry__0_n_0,y1_re0__47_carry__0_n_1,y1_re0__47_carry__0_n_2,y1_re0__47_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(y1_re0[7:4]),
        .S(sub_re__1[8:5]));
  CARRY4 y1_re0__47_carry__1
       (.CI(y1_re0__47_carry__0_n_0),
        .CO({y1_re0__47_carry__1_n_0,y1_re0__47_carry__1_n_1,y1_re0__47_carry__1_n_2,y1_re0__47_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(y1_re0[11:8]),
        .S(sub_re__1[12:9]));
  CARRY4 y1_re0__47_carry__2
       (.CI(y1_re0__47_carry__1_n_0),
        .CO({NLW_y1_re0__47_carry__2_CO_UNCONNECTED[3],y1_re0__47_carry__2_n_1,y1_re0__47_carry__2_n_2,y1_re0__47_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(y1_re0[15:12]),
        .S(sub_re__1[16:13]));
  CARRY4 y1_re0_carry
       (.CI(1'b0),
        .CO({y1_re0_carry_n_0,y1_re0_carry_n_1,y1_re0_carry_n_2,y1_re0_carry_n_3}),
        .CYINIT(1'b1),
        .DI(Q[3:0]),
        .O(sub_re__1[3:0]),
        .S(S));
  CARRY4 y1_re0_carry__0
       (.CI(y1_re0_carry_n_0),
        .CO({y1_re0_carry__0_n_0,y1_re0_carry__0_n_1,y1_re0_carry__0_n_2,y1_re0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O(sub_re__1[7:4]),
        .S(y1_re0__47_carry_0));
  CARRY4 y1_re0_carry__1
       (.CI(y1_re0_carry__0_n_0),
        .CO({y1_re0_carry__1_n_0,y1_re0_carry__1_n_1,y1_re0_carry__1_n_2,y1_re0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(Q[11:8]),
        .O(sub_re__1[11:8]),
        .S(y1_re0__47_carry__0_0));
  CARRY4 y1_re0_carry__2
       (.CI(y1_re0_carry__1_n_0),
        .CO({y1_re0_carry__2_n_0,y1_re0_carry__2_n_1,y1_re0_carry__2_n_2,y1_re0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({y1_re0__47_carry__1_0,Q[14:12]}),
        .O(sub_re__1[15:12]),
        .S(y1_re0__47_carry__1_1));
  CARRY4 y1_re0_carry__3
       (.CI(y1_re0_carry__2_n_0),
        .CO(NLW_y1_re0_carry__3_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_y1_re0_carry__3_O_UNCONNECTED[3:1],sub_re__1[16]}),
        .S({1'b0,1'b0,1'b0,1'b1}));
endmodule

(* ORIG_REF_NAME = "Butterfly" *) 
module system_fft128_0_0_Butterfly__parameterized0_2
   (y1_re0,
    y0_re0,
    y1_im0,
    y0_im0,
    y0_re0__47_carry_0,
    y0_re0__47_carry_1,
    y0_re0__47_carry_2,
    y0_re0__47_carry_3,
    S,
    y0_re0__47_carry_4,
    y0_re0__47_carry_5,
    y0_re0__47_carry_6,
    y0_re0__47_carry_7,
    y1_re0__47_carry_0,
    y0_re0__47_carry__0_0,
    y0_re0__47_carry__0_1,
    y0_re0__47_carry__0_2,
    y0_re0__47_carry__0_3,
    y1_re0__47_carry__0_0,
    Q,
    y0_re0__47_carry__1_0,
    y0_re0__47_carry__1_1,
    y0_re0__47_carry__1_2,
    y1_re0__47_carry__1_0,
    y0_re0__47_carry_8,
    y0_re0__47_carry_9,
    y0_re0__47_carry__0_4,
    DI,
    y0_re0__47_carry__1_3,
    y0_im0__47_carry_0,
    y0_im0__47_carry_1,
    y0_im0__47_carry_2,
    y0_im0__47_carry_3,
    y1_im0__47_carry_0,
    y0_im0__47_carry_4,
    y0_im0__47_carry_5,
    y0_im0__47_carry_6,
    y0_im0__47_carry_7,
    y1_im0__47_carry_1,
    y0_im0__47_carry__0_0,
    y0_im0__47_carry__0_1,
    y0_im0__47_carry__0_2,
    y0_im0__47_carry__0_3,
    y1_im0__47_carry__0_0,
    y1_im0__47_carry__1_0,
    y0_im0__47_carry__1_0,
    y0_im0__47_carry__1_1,
    y0_im0__47_carry__1_2,
    y1_im0__47_carry__1_1,
    y0_im0__47_carry_8,
    y0_im0__47_carry_9,
    y0_im0__47_carry__0_4,
    y0_im0__47_carry__1_3,
    y0_im0__47_carry__1_4);
  output [15:0]y1_re0;
  output [15:0]y0_re0;
  output [15:0]y1_im0;
  output [15:0]y0_im0;
  input y0_re0__47_carry_0;
  input y0_re0__47_carry_1;
  input y0_re0__47_carry_2;
  input y0_re0__47_carry_3;
  input [3:0]S;
  input y0_re0__47_carry_4;
  input y0_re0__47_carry_5;
  input y0_re0__47_carry_6;
  input y0_re0__47_carry_7;
  input [3:0]y1_re0__47_carry_0;
  input y0_re0__47_carry__0_0;
  input y0_re0__47_carry__0_1;
  input y0_re0__47_carry__0_2;
  input y0_re0__47_carry__0_3;
  input [3:0]y1_re0__47_carry__0_0;
  input [0:0]Q;
  input y0_re0__47_carry__1_0;
  input y0_re0__47_carry__1_1;
  input y0_re0__47_carry__1_2;
  input [3:0]y1_re0__47_carry__1_0;
  input [3:0]y0_re0__47_carry_8;
  input [3:0]y0_re0__47_carry_9;
  input [3:0]y0_re0__47_carry__0_4;
  input [0:0]DI;
  input [3:0]y0_re0__47_carry__1_3;
  input y0_im0__47_carry_0;
  input y0_im0__47_carry_1;
  input y0_im0__47_carry_2;
  input y0_im0__47_carry_3;
  input [3:0]y1_im0__47_carry_0;
  input y0_im0__47_carry_4;
  input y0_im0__47_carry_5;
  input y0_im0__47_carry_6;
  input y0_im0__47_carry_7;
  input [3:0]y1_im0__47_carry_1;
  input y0_im0__47_carry__0_0;
  input y0_im0__47_carry__0_1;
  input y0_im0__47_carry__0_2;
  input y0_im0__47_carry__0_3;
  input [3:0]y1_im0__47_carry__0_0;
  input [0:0]y1_im0__47_carry__1_0;
  input y0_im0__47_carry__1_0;
  input y0_im0__47_carry__1_1;
  input y0_im0__47_carry__1_2;
  input [3:0]y1_im0__47_carry__1_1;
  input [3:0]y0_im0__47_carry_8;
  input [3:0]y0_im0__47_carry_9;
  input [3:0]y0_im0__47_carry__0_4;
  input [0:0]y0_im0__47_carry__1_3;
  input [3:0]y0_im0__47_carry__1_4;

  wire [0:0]DI;
  wire [0:0]Q;
  wire [3:0]S;
  wire [16:0]add_im__0;
  wire [16:0]add_re__0;
  wire [16:0]sub_im__0;
  wire [16:0]sub_re__0;
  wire [15:0]y0_im0;
  wire y0_im0__47_carry_0;
  wire y0_im0__47_carry_1;
  wire y0_im0__47_carry_2;
  wire y0_im0__47_carry_3;
  wire y0_im0__47_carry_4;
  wire y0_im0__47_carry_5;
  wire y0_im0__47_carry_6;
  wire y0_im0__47_carry_7;
  wire [3:0]y0_im0__47_carry_8;
  wire [3:0]y0_im0__47_carry_9;
  wire y0_im0__47_carry__0_0;
  wire y0_im0__47_carry__0_1;
  wire y0_im0__47_carry__0_2;
  wire y0_im0__47_carry__0_3;
  wire [3:0]y0_im0__47_carry__0_4;
  wire y0_im0__47_carry__0_n_0;
  wire y0_im0__47_carry__0_n_1;
  wire y0_im0__47_carry__0_n_2;
  wire y0_im0__47_carry__0_n_3;
  wire y0_im0__47_carry__1_0;
  wire y0_im0__47_carry__1_1;
  wire y0_im0__47_carry__1_2;
  wire [0:0]y0_im0__47_carry__1_3;
  wire [3:0]y0_im0__47_carry__1_4;
  wire y0_im0__47_carry__1_n_0;
  wire y0_im0__47_carry__1_n_1;
  wire y0_im0__47_carry__1_n_2;
  wire y0_im0__47_carry__1_n_3;
  wire y0_im0__47_carry__2_n_1;
  wire y0_im0__47_carry__2_n_2;
  wire y0_im0__47_carry__2_n_3;
  wire y0_im0__47_carry_n_0;
  wire y0_im0__47_carry_n_1;
  wire y0_im0__47_carry_n_2;
  wire y0_im0__47_carry_n_3;
  wire y0_im0_carry__0_n_0;
  wire y0_im0_carry__0_n_1;
  wire y0_im0_carry__0_n_2;
  wire y0_im0_carry__0_n_3;
  wire y0_im0_carry__1_n_0;
  wire y0_im0_carry__1_n_1;
  wire y0_im0_carry__1_n_2;
  wire y0_im0_carry__1_n_3;
  wire y0_im0_carry__2_n_0;
  wire y0_im0_carry__2_n_1;
  wire y0_im0_carry__2_n_2;
  wire y0_im0_carry__2_n_3;
  wire y0_im0_carry_n_0;
  wire y0_im0_carry_n_1;
  wire y0_im0_carry_n_2;
  wire y0_im0_carry_n_3;
  wire [15:0]y0_re0;
  wire y0_re0__47_carry_0;
  wire y0_re0__47_carry_1;
  wire y0_re0__47_carry_2;
  wire y0_re0__47_carry_3;
  wire y0_re0__47_carry_4;
  wire y0_re0__47_carry_5;
  wire y0_re0__47_carry_6;
  wire y0_re0__47_carry_7;
  wire [3:0]y0_re0__47_carry_8;
  wire [3:0]y0_re0__47_carry_9;
  wire y0_re0__47_carry__0_0;
  wire y0_re0__47_carry__0_1;
  wire y0_re0__47_carry__0_2;
  wire y0_re0__47_carry__0_3;
  wire [3:0]y0_re0__47_carry__0_4;
  wire y0_re0__47_carry__0_n_0;
  wire y0_re0__47_carry__0_n_1;
  wire y0_re0__47_carry__0_n_2;
  wire y0_re0__47_carry__0_n_3;
  wire y0_re0__47_carry__1_0;
  wire y0_re0__47_carry__1_1;
  wire y0_re0__47_carry__1_2;
  wire [3:0]y0_re0__47_carry__1_3;
  wire y0_re0__47_carry__1_n_0;
  wire y0_re0__47_carry__1_n_1;
  wire y0_re0__47_carry__1_n_2;
  wire y0_re0__47_carry__1_n_3;
  wire y0_re0__47_carry__2_n_1;
  wire y0_re0__47_carry__2_n_2;
  wire y0_re0__47_carry__2_n_3;
  wire y0_re0__47_carry_n_0;
  wire y0_re0__47_carry_n_1;
  wire y0_re0__47_carry_n_2;
  wire y0_re0__47_carry_n_3;
  wire y0_re0_carry__0_n_0;
  wire y0_re0_carry__0_n_1;
  wire y0_re0_carry__0_n_2;
  wire y0_re0_carry__0_n_3;
  wire y0_re0_carry__1_n_0;
  wire y0_re0_carry__1_n_1;
  wire y0_re0_carry__1_n_2;
  wire y0_re0_carry__1_n_3;
  wire y0_re0_carry__2_n_0;
  wire y0_re0_carry__2_n_1;
  wire y0_re0_carry__2_n_2;
  wire y0_re0_carry__2_n_3;
  wire y0_re0_carry_n_0;
  wire y0_re0_carry_n_1;
  wire y0_re0_carry_n_2;
  wire y0_re0_carry_n_3;
  wire [15:0]y1_im0;
  wire [3:0]y1_im0__47_carry_0;
  wire [3:0]y1_im0__47_carry_1;
  wire [3:0]y1_im0__47_carry__0_0;
  wire y1_im0__47_carry__0_n_0;
  wire y1_im0__47_carry__0_n_1;
  wire y1_im0__47_carry__0_n_2;
  wire y1_im0__47_carry__0_n_3;
  wire [0:0]y1_im0__47_carry__1_0;
  wire [3:0]y1_im0__47_carry__1_1;
  wire y1_im0__47_carry__1_n_0;
  wire y1_im0__47_carry__1_n_1;
  wire y1_im0__47_carry__1_n_2;
  wire y1_im0__47_carry__1_n_3;
  wire y1_im0__47_carry__2_n_1;
  wire y1_im0__47_carry__2_n_2;
  wire y1_im0__47_carry__2_n_3;
  wire y1_im0__47_carry_n_0;
  wire y1_im0__47_carry_n_1;
  wire y1_im0__47_carry_n_2;
  wire y1_im0__47_carry_n_3;
  wire y1_im0_carry__0_n_0;
  wire y1_im0_carry__0_n_1;
  wire y1_im0_carry__0_n_2;
  wire y1_im0_carry__0_n_3;
  wire y1_im0_carry__1_n_0;
  wire y1_im0_carry__1_n_1;
  wire y1_im0_carry__1_n_2;
  wire y1_im0_carry__1_n_3;
  wire y1_im0_carry__2_n_0;
  wire y1_im0_carry__2_n_1;
  wire y1_im0_carry__2_n_2;
  wire y1_im0_carry__2_n_3;
  wire y1_im0_carry_n_0;
  wire y1_im0_carry_n_1;
  wire y1_im0_carry_n_2;
  wire y1_im0_carry_n_3;
  wire [15:0]y1_re0;
  wire [3:0]y1_re0__47_carry_0;
  wire [3:0]y1_re0__47_carry__0_0;
  wire y1_re0__47_carry__0_n_0;
  wire y1_re0__47_carry__0_n_1;
  wire y1_re0__47_carry__0_n_2;
  wire y1_re0__47_carry__0_n_3;
  wire [3:0]y1_re0__47_carry__1_0;
  wire y1_re0__47_carry__1_n_0;
  wire y1_re0__47_carry__1_n_1;
  wire y1_re0__47_carry__1_n_2;
  wire y1_re0__47_carry__1_n_3;
  wire y1_re0__47_carry__2_n_1;
  wire y1_re0__47_carry__2_n_2;
  wire y1_re0__47_carry__2_n_3;
  wire y1_re0__47_carry_n_0;
  wire y1_re0__47_carry_n_1;
  wire y1_re0__47_carry_n_2;
  wire y1_re0__47_carry_n_3;
  wire y1_re0_carry__0_n_0;
  wire y1_re0_carry__0_n_1;
  wire y1_re0_carry__0_n_2;
  wire y1_re0_carry__0_n_3;
  wire y1_re0_carry__1_n_0;
  wire y1_re0_carry__1_n_1;
  wire y1_re0_carry__1_n_2;
  wire y1_re0_carry__1_n_3;
  wire y1_re0_carry__2_n_0;
  wire y1_re0_carry__2_n_1;
  wire y1_re0_carry__2_n_2;
  wire y1_re0_carry__2_n_3;
  wire y1_re0_carry_n_0;
  wire y1_re0_carry_n_1;
  wire y1_re0_carry_n_2;
  wire y1_re0_carry_n_3;
  wire [3:3]NLW_y0_im0__47_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_y0_im0_carry__3_CO_UNCONNECTED;
  wire [3:1]NLW_y0_im0_carry__3_O_UNCONNECTED;
  wire [3:3]NLW_y0_re0__47_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_y0_re0_carry__3_CO_UNCONNECTED;
  wire [3:1]NLW_y0_re0_carry__3_O_UNCONNECTED;
  wire [3:3]NLW_y1_im0__47_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_y1_im0_carry__3_CO_UNCONNECTED;
  wire [3:1]NLW_y1_im0_carry__3_O_UNCONNECTED;
  wire [3:3]NLW_y1_re0__47_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_y1_re0_carry__3_CO_UNCONNECTED;
  wire [3:1]NLW_y1_re0_carry__3_O_UNCONNECTED;

  CARRY4 y0_im0__47_carry
       (.CI(1'b0),
        .CO({y0_im0__47_carry_n_0,y0_im0__47_carry_n_1,y0_im0__47_carry_n_2,y0_im0__47_carry_n_3}),
        .CYINIT(add_im__0[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(y0_im0[3:0]),
        .S(add_im__0[4:1]));
  CARRY4 y0_im0__47_carry__0
       (.CI(y0_im0__47_carry_n_0),
        .CO({y0_im0__47_carry__0_n_0,y0_im0__47_carry__0_n_1,y0_im0__47_carry__0_n_2,y0_im0__47_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(y0_im0[7:4]),
        .S(add_im__0[8:5]));
  CARRY4 y0_im0__47_carry__1
       (.CI(y0_im0__47_carry__0_n_0),
        .CO({y0_im0__47_carry__1_n_0,y0_im0__47_carry__1_n_1,y0_im0__47_carry__1_n_2,y0_im0__47_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(y0_im0[11:8]),
        .S(add_im__0[12:9]));
  CARRY4 y0_im0__47_carry__2
       (.CI(y0_im0__47_carry__1_n_0),
        .CO({NLW_y0_im0__47_carry__2_CO_UNCONNECTED[3],y0_im0__47_carry__2_n_1,y0_im0__47_carry__2_n_2,y0_im0__47_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(y0_im0[15:12]),
        .S(add_im__0[16:13]));
  CARRY4 y0_im0_carry
       (.CI(1'b0),
        .CO({y0_im0_carry_n_0,y0_im0_carry_n_1,y0_im0_carry_n_2,y0_im0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({y0_im0__47_carry_0,y0_im0__47_carry_1,y0_im0__47_carry_2,y0_im0__47_carry_3}),
        .O(add_im__0[3:0]),
        .S(y0_im0__47_carry_8));
  CARRY4 y0_im0_carry__0
       (.CI(y0_im0_carry_n_0),
        .CO({y0_im0_carry__0_n_0,y0_im0_carry__0_n_1,y0_im0_carry__0_n_2,y0_im0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({y0_im0__47_carry_4,y0_im0__47_carry_5,y0_im0__47_carry_6,y0_im0__47_carry_7}),
        .O(add_im__0[7:4]),
        .S(y0_im0__47_carry_9));
  CARRY4 y0_im0_carry__1
       (.CI(y0_im0_carry__0_n_0),
        .CO({y0_im0_carry__1_n_0,y0_im0_carry__1_n_1,y0_im0_carry__1_n_2,y0_im0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({y0_im0__47_carry__0_0,y0_im0__47_carry__0_1,y0_im0__47_carry__0_2,y0_im0__47_carry__0_3}),
        .O(add_im__0[11:8]),
        .S(y0_im0__47_carry__0_4));
  CARRY4 y0_im0_carry__2
       (.CI(y0_im0_carry__1_n_0),
        .CO({y0_im0_carry__2_n_0,y0_im0_carry__2_n_1,y0_im0_carry__2_n_2,y0_im0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({y0_im0__47_carry__1_3,y0_im0__47_carry__1_0,y0_im0__47_carry__1_1,y0_im0__47_carry__1_2}),
        .O(add_im__0[15:12]),
        .S(y0_im0__47_carry__1_4));
  CARRY4 y0_im0_carry__3
       (.CI(y0_im0_carry__2_n_0),
        .CO(NLW_y0_im0_carry__3_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_y0_im0_carry__3_O_UNCONNECTED[3:1],add_im__0[16]}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 y0_re0__47_carry
       (.CI(1'b0),
        .CO({y0_re0__47_carry_n_0,y0_re0__47_carry_n_1,y0_re0__47_carry_n_2,y0_re0__47_carry_n_3}),
        .CYINIT(add_re__0[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(y0_re0[3:0]),
        .S(add_re__0[4:1]));
  CARRY4 y0_re0__47_carry__0
       (.CI(y0_re0__47_carry_n_0),
        .CO({y0_re0__47_carry__0_n_0,y0_re0__47_carry__0_n_1,y0_re0__47_carry__0_n_2,y0_re0__47_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(y0_re0[7:4]),
        .S(add_re__0[8:5]));
  CARRY4 y0_re0__47_carry__1
       (.CI(y0_re0__47_carry__0_n_0),
        .CO({y0_re0__47_carry__1_n_0,y0_re0__47_carry__1_n_1,y0_re0__47_carry__1_n_2,y0_re0__47_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(y0_re0[11:8]),
        .S(add_re__0[12:9]));
  CARRY4 y0_re0__47_carry__2
       (.CI(y0_re0__47_carry__1_n_0),
        .CO({NLW_y0_re0__47_carry__2_CO_UNCONNECTED[3],y0_re0__47_carry__2_n_1,y0_re0__47_carry__2_n_2,y0_re0__47_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(y0_re0[15:12]),
        .S(add_re__0[16:13]));
  CARRY4 y0_re0_carry
       (.CI(1'b0),
        .CO({y0_re0_carry_n_0,y0_re0_carry_n_1,y0_re0_carry_n_2,y0_re0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({y0_re0__47_carry_0,y0_re0__47_carry_1,y0_re0__47_carry_2,y0_re0__47_carry_3}),
        .O(add_re__0[3:0]),
        .S(y0_re0__47_carry_8));
  CARRY4 y0_re0_carry__0
       (.CI(y0_re0_carry_n_0),
        .CO({y0_re0_carry__0_n_0,y0_re0_carry__0_n_1,y0_re0_carry__0_n_2,y0_re0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({y0_re0__47_carry_4,y0_re0__47_carry_5,y0_re0__47_carry_6,y0_re0__47_carry_7}),
        .O(add_re__0[7:4]),
        .S(y0_re0__47_carry_9));
  CARRY4 y0_re0_carry__1
       (.CI(y0_re0_carry__0_n_0),
        .CO({y0_re0_carry__1_n_0,y0_re0_carry__1_n_1,y0_re0_carry__1_n_2,y0_re0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({y0_re0__47_carry__0_0,y0_re0__47_carry__0_1,y0_re0__47_carry__0_2,y0_re0__47_carry__0_3}),
        .O(add_re__0[11:8]),
        .S(y0_re0__47_carry__0_4));
  CARRY4 y0_re0_carry__2
       (.CI(y0_re0_carry__1_n_0),
        .CO({y0_re0_carry__2_n_0,y0_re0_carry__2_n_1,y0_re0_carry__2_n_2,y0_re0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({DI,y0_re0__47_carry__1_0,y0_re0__47_carry__1_1,y0_re0__47_carry__1_2}),
        .O(add_re__0[15:12]),
        .S(y0_re0__47_carry__1_3));
  CARRY4 y0_re0_carry__3
       (.CI(y0_re0_carry__2_n_0),
        .CO(NLW_y0_re0_carry__3_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_y0_re0_carry__3_O_UNCONNECTED[3:1],add_re__0[16]}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 y1_im0__47_carry
       (.CI(1'b0),
        .CO({y1_im0__47_carry_n_0,y1_im0__47_carry_n_1,y1_im0__47_carry_n_2,y1_im0__47_carry_n_3}),
        .CYINIT(sub_im__0[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(y1_im0[3:0]),
        .S(sub_im__0[4:1]));
  CARRY4 y1_im0__47_carry__0
       (.CI(y1_im0__47_carry_n_0),
        .CO({y1_im0__47_carry__0_n_0,y1_im0__47_carry__0_n_1,y1_im0__47_carry__0_n_2,y1_im0__47_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(y1_im0[7:4]),
        .S(sub_im__0[8:5]));
  CARRY4 y1_im0__47_carry__1
       (.CI(y1_im0__47_carry__0_n_0),
        .CO({y1_im0__47_carry__1_n_0,y1_im0__47_carry__1_n_1,y1_im0__47_carry__1_n_2,y1_im0__47_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(y1_im0[11:8]),
        .S(sub_im__0[12:9]));
  CARRY4 y1_im0__47_carry__2
       (.CI(y1_im0__47_carry__1_n_0),
        .CO({NLW_y1_im0__47_carry__2_CO_UNCONNECTED[3],y1_im0__47_carry__2_n_1,y1_im0__47_carry__2_n_2,y1_im0__47_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(y1_im0[15:12]),
        .S(sub_im__0[16:13]));
  CARRY4 y1_im0_carry
       (.CI(1'b0),
        .CO({y1_im0_carry_n_0,y1_im0_carry_n_1,y1_im0_carry_n_2,y1_im0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({y0_im0__47_carry_0,y0_im0__47_carry_1,y0_im0__47_carry_2,y0_im0__47_carry_3}),
        .O(sub_im__0[3:0]),
        .S(y1_im0__47_carry_0));
  CARRY4 y1_im0_carry__0
       (.CI(y1_im0_carry_n_0),
        .CO({y1_im0_carry__0_n_0,y1_im0_carry__0_n_1,y1_im0_carry__0_n_2,y1_im0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({y0_im0__47_carry_4,y0_im0__47_carry_5,y0_im0__47_carry_6,y0_im0__47_carry_7}),
        .O(sub_im__0[7:4]),
        .S(y1_im0__47_carry_1));
  CARRY4 y1_im0_carry__1
       (.CI(y1_im0_carry__0_n_0),
        .CO({y1_im0_carry__1_n_0,y1_im0_carry__1_n_1,y1_im0_carry__1_n_2,y1_im0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({y0_im0__47_carry__0_0,y0_im0__47_carry__0_1,y0_im0__47_carry__0_2,y0_im0__47_carry__0_3}),
        .O(sub_im__0[11:8]),
        .S(y1_im0__47_carry__0_0));
  CARRY4 y1_im0_carry__2
       (.CI(y1_im0_carry__1_n_0),
        .CO({y1_im0_carry__2_n_0,y1_im0_carry__2_n_1,y1_im0_carry__2_n_2,y1_im0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({y1_im0__47_carry__1_0,y0_im0__47_carry__1_0,y0_im0__47_carry__1_1,y0_im0__47_carry__1_2}),
        .O(sub_im__0[15:12]),
        .S(y1_im0__47_carry__1_1));
  CARRY4 y1_im0_carry__3
       (.CI(y1_im0_carry__2_n_0),
        .CO(NLW_y1_im0_carry__3_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_y1_im0_carry__3_O_UNCONNECTED[3:1],sub_im__0[16]}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 y1_re0__47_carry
       (.CI(1'b0),
        .CO({y1_re0__47_carry_n_0,y1_re0__47_carry_n_1,y1_re0__47_carry_n_2,y1_re0__47_carry_n_3}),
        .CYINIT(sub_re__0[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(y1_re0[3:0]),
        .S(sub_re__0[4:1]));
  CARRY4 y1_re0__47_carry__0
       (.CI(y1_re0__47_carry_n_0),
        .CO({y1_re0__47_carry__0_n_0,y1_re0__47_carry__0_n_1,y1_re0__47_carry__0_n_2,y1_re0__47_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(y1_re0[7:4]),
        .S(sub_re__0[8:5]));
  CARRY4 y1_re0__47_carry__1
       (.CI(y1_re0__47_carry__0_n_0),
        .CO({y1_re0__47_carry__1_n_0,y1_re0__47_carry__1_n_1,y1_re0__47_carry__1_n_2,y1_re0__47_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(y1_re0[11:8]),
        .S(sub_re__0[12:9]));
  CARRY4 y1_re0__47_carry__2
       (.CI(y1_re0__47_carry__1_n_0),
        .CO({NLW_y1_re0__47_carry__2_CO_UNCONNECTED[3],y1_re0__47_carry__2_n_1,y1_re0__47_carry__2_n_2,y1_re0__47_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(y1_re0[15:12]),
        .S(sub_re__0[16:13]));
  CARRY4 y1_re0_carry
       (.CI(1'b0),
        .CO({y1_re0_carry_n_0,y1_re0_carry_n_1,y1_re0_carry_n_2,y1_re0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({y0_re0__47_carry_0,y0_re0__47_carry_1,y0_re0__47_carry_2,y0_re0__47_carry_3}),
        .O(sub_re__0[3:0]),
        .S(S));
  CARRY4 y1_re0_carry__0
       (.CI(y1_re0_carry_n_0),
        .CO({y1_re0_carry__0_n_0,y1_re0_carry__0_n_1,y1_re0_carry__0_n_2,y1_re0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({y0_re0__47_carry_4,y0_re0__47_carry_5,y0_re0__47_carry_6,y0_re0__47_carry_7}),
        .O(sub_re__0[7:4]),
        .S(y1_re0__47_carry_0));
  CARRY4 y1_re0_carry__1
       (.CI(y1_re0_carry__0_n_0),
        .CO({y1_re0_carry__1_n_0,y1_re0_carry__1_n_1,y1_re0_carry__1_n_2,y1_re0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({y0_re0__47_carry__0_0,y0_re0__47_carry__0_1,y0_re0__47_carry__0_2,y0_re0__47_carry__0_3}),
        .O(sub_re__0[11:8]),
        .S(y1_re0__47_carry__0_0));
  CARRY4 y1_re0_carry__2
       (.CI(y1_re0_carry__1_n_0),
        .CO({y1_re0_carry__2_n_0,y1_re0_carry__2_n_1,y1_re0_carry__2_n_2,y1_re0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({Q,y0_re0__47_carry__1_0,y0_re0__47_carry__1_1,y0_re0__47_carry__1_2}),
        .O(sub_re__0[15:12]),
        .S(y1_re0__47_carry__1_0));
  CARRY4 y1_re0_carry__3
       (.CI(y1_re0_carry__2_n_0),
        .CO(NLW_y1_re0_carry__3_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_y1_re0_carry__3_O_UNCONNECTED[3:1],sub_re__0[16]}),
        .S({1'b0,1'b0,1'b0,1'b1}));
endmodule

(* ORIG_REF_NAME = "Butterfly" *) 
module system_fft128_0_0_Butterfly__parameterized0_6
   (y1_re0,
    y0_re0,
    y1_im0,
    y0_im0,
    y0_re0__47_carry_0,
    y0_re0__47_carry_1,
    y0_re0__47_carry_2,
    y0_re0__47_carry_3,
    S,
    y0_re0__47_carry_4,
    y0_re0__47_carry_5,
    y0_re0__47_carry_6,
    y0_re0__47_carry_7,
    y1_re0__47_carry_0,
    y0_re0__47_carry__0_0,
    y0_re0__47_carry__0_1,
    y0_re0__47_carry__0_2,
    y0_re0__47_carry__0_3,
    y1_re0__47_carry__0_0,
    Q,
    y0_re0__47_carry__1_0,
    y0_re0__47_carry__1_1,
    y0_re0__47_carry__1_2,
    y1_re0__47_carry__1_0,
    y0_re0__47_carry_8,
    y0_re0__47_carry_9,
    y0_re0__47_carry__0_4,
    DI,
    y0_re0__47_carry__1_3,
    y0_im0__47_carry_0,
    y0_im0__47_carry_1,
    y0_im0__47_carry_2,
    y0_im0__47_carry_3,
    y1_im0__47_carry_0,
    y0_im0__47_carry_4,
    y0_im0__47_carry_5,
    y0_im0__47_carry_6,
    y0_im0__47_carry_7,
    y1_im0__47_carry_1,
    y0_im0__47_carry__0_0,
    y0_im0__47_carry__0_1,
    y0_im0__47_carry__0_2,
    y0_im0__47_carry__0_3,
    y1_im0__47_carry__0_0,
    y1_im0__47_carry__1_0,
    y0_im0__47_carry__1_0,
    y0_im0__47_carry__1_1,
    y0_im0__47_carry__1_2,
    y1_im0__47_carry__1_1,
    y0_im0__47_carry_8,
    y0_im0__47_carry_9,
    y0_im0__47_carry__0_4,
    y0_im0__47_carry__1_3,
    y0_im0__47_carry__1_4);
  output [15:0]y1_re0;
  output [15:0]y0_re0;
  output [15:0]y1_im0;
  output [15:0]y0_im0;
  input y0_re0__47_carry_0;
  input y0_re0__47_carry_1;
  input y0_re0__47_carry_2;
  input y0_re0__47_carry_3;
  input [3:0]S;
  input y0_re0__47_carry_4;
  input y0_re0__47_carry_5;
  input y0_re0__47_carry_6;
  input y0_re0__47_carry_7;
  input [3:0]y1_re0__47_carry_0;
  input y0_re0__47_carry__0_0;
  input y0_re0__47_carry__0_1;
  input y0_re0__47_carry__0_2;
  input y0_re0__47_carry__0_3;
  input [3:0]y1_re0__47_carry__0_0;
  input [0:0]Q;
  input y0_re0__47_carry__1_0;
  input y0_re0__47_carry__1_1;
  input y0_re0__47_carry__1_2;
  input [3:0]y1_re0__47_carry__1_0;
  input [3:0]y0_re0__47_carry_8;
  input [3:0]y0_re0__47_carry_9;
  input [3:0]y0_re0__47_carry__0_4;
  input [0:0]DI;
  input [3:0]y0_re0__47_carry__1_3;
  input y0_im0__47_carry_0;
  input y0_im0__47_carry_1;
  input y0_im0__47_carry_2;
  input y0_im0__47_carry_3;
  input [3:0]y1_im0__47_carry_0;
  input y0_im0__47_carry_4;
  input y0_im0__47_carry_5;
  input y0_im0__47_carry_6;
  input y0_im0__47_carry_7;
  input [3:0]y1_im0__47_carry_1;
  input y0_im0__47_carry__0_0;
  input y0_im0__47_carry__0_1;
  input y0_im0__47_carry__0_2;
  input y0_im0__47_carry__0_3;
  input [3:0]y1_im0__47_carry__0_0;
  input [0:0]y1_im0__47_carry__1_0;
  input y0_im0__47_carry__1_0;
  input y0_im0__47_carry__1_1;
  input y0_im0__47_carry__1_2;
  input [3:0]y1_im0__47_carry__1_1;
  input [3:0]y0_im0__47_carry_8;
  input [3:0]y0_im0__47_carry_9;
  input [3:0]y0_im0__47_carry__0_4;
  input [0:0]y0_im0__47_carry__1_3;
  input [3:0]y0_im0__47_carry__1_4;

  wire [0:0]DI;
  wire [0:0]Q;
  wire [3:0]S;
  wire [16:0]add_im;
  wire [16:0]add_re;
  wire [16:0]sub_im;
  wire [16:0]sub_re;
  wire [15:0]y0_im0;
  wire y0_im0__47_carry_0;
  wire y0_im0__47_carry_1;
  wire y0_im0__47_carry_2;
  wire y0_im0__47_carry_3;
  wire y0_im0__47_carry_4;
  wire y0_im0__47_carry_5;
  wire y0_im0__47_carry_6;
  wire y0_im0__47_carry_7;
  wire [3:0]y0_im0__47_carry_8;
  wire [3:0]y0_im0__47_carry_9;
  wire y0_im0__47_carry__0_0;
  wire y0_im0__47_carry__0_1;
  wire y0_im0__47_carry__0_2;
  wire y0_im0__47_carry__0_3;
  wire [3:0]y0_im0__47_carry__0_4;
  wire y0_im0__47_carry__0_n_0;
  wire y0_im0__47_carry__0_n_1;
  wire y0_im0__47_carry__0_n_2;
  wire y0_im0__47_carry__0_n_3;
  wire y0_im0__47_carry__1_0;
  wire y0_im0__47_carry__1_1;
  wire y0_im0__47_carry__1_2;
  wire [0:0]y0_im0__47_carry__1_3;
  wire [3:0]y0_im0__47_carry__1_4;
  wire y0_im0__47_carry__1_n_0;
  wire y0_im0__47_carry__1_n_1;
  wire y0_im0__47_carry__1_n_2;
  wire y0_im0__47_carry__1_n_3;
  wire y0_im0__47_carry__2_n_1;
  wire y0_im0__47_carry__2_n_2;
  wire y0_im0__47_carry__2_n_3;
  wire y0_im0__47_carry_n_0;
  wire y0_im0__47_carry_n_1;
  wire y0_im0__47_carry_n_2;
  wire y0_im0__47_carry_n_3;
  wire y0_im0_carry__0_n_0;
  wire y0_im0_carry__0_n_1;
  wire y0_im0_carry__0_n_2;
  wire y0_im0_carry__0_n_3;
  wire y0_im0_carry__1_n_0;
  wire y0_im0_carry__1_n_1;
  wire y0_im0_carry__1_n_2;
  wire y0_im0_carry__1_n_3;
  wire y0_im0_carry__2_n_0;
  wire y0_im0_carry__2_n_1;
  wire y0_im0_carry__2_n_2;
  wire y0_im0_carry__2_n_3;
  wire y0_im0_carry_n_0;
  wire y0_im0_carry_n_1;
  wire y0_im0_carry_n_2;
  wire y0_im0_carry_n_3;
  wire [15:0]y0_re0;
  wire y0_re0__47_carry_0;
  wire y0_re0__47_carry_1;
  wire y0_re0__47_carry_2;
  wire y0_re0__47_carry_3;
  wire y0_re0__47_carry_4;
  wire y0_re0__47_carry_5;
  wire y0_re0__47_carry_6;
  wire y0_re0__47_carry_7;
  wire [3:0]y0_re0__47_carry_8;
  wire [3:0]y0_re0__47_carry_9;
  wire y0_re0__47_carry__0_0;
  wire y0_re0__47_carry__0_1;
  wire y0_re0__47_carry__0_2;
  wire y0_re0__47_carry__0_3;
  wire [3:0]y0_re0__47_carry__0_4;
  wire y0_re0__47_carry__0_n_0;
  wire y0_re0__47_carry__0_n_1;
  wire y0_re0__47_carry__0_n_2;
  wire y0_re0__47_carry__0_n_3;
  wire y0_re0__47_carry__1_0;
  wire y0_re0__47_carry__1_1;
  wire y0_re0__47_carry__1_2;
  wire [3:0]y0_re0__47_carry__1_3;
  wire y0_re0__47_carry__1_n_0;
  wire y0_re0__47_carry__1_n_1;
  wire y0_re0__47_carry__1_n_2;
  wire y0_re0__47_carry__1_n_3;
  wire y0_re0__47_carry__2_n_1;
  wire y0_re0__47_carry__2_n_2;
  wire y0_re0__47_carry__2_n_3;
  wire y0_re0__47_carry_n_0;
  wire y0_re0__47_carry_n_1;
  wire y0_re0__47_carry_n_2;
  wire y0_re0__47_carry_n_3;
  wire y0_re0_carry__0_n_0;
  wire y0_re0_carry__0_n_1;
  wire y0_re0_carry__0_n_2;
  wire y0_re0_carry__0_n_3;
  wire y0_re0_carry__1_n_0;
  wire y0_re0_carry__1_n_1;
  wire y0_re0_carry__1_n_2;
  wire y0_re0_carry__1_n_3;
  wire y0_re0_carry__2_n_0;
  wire y0_re0_carry__2_n_1;
  wire y0_re0_carry__2_n_2;
  wire y0_re0_carry__2_n_3;
  wire y0_re0_carry_n_0;
  wire y0_re0_carry_n_1;
  wire y0_re0_carry_n_2;
  wire y0_re0_carry_n_3;
  wire [15:0]y1_im0;
  wire [3:0]y1_im0__47_carry_0;
  wire [3:0]y1_im0__47_carry_1;
  wire [3:0]y1_im0__47_carry__0_0;
  wire y1_im0__47_carry__0_n_0;
  wire y1_im0__47_carry__0_n_1;
  wire y1_im0__47_carry__0_n_2;
  wire y1_im0__47_carry__0_n_3;
  wire [0:0]y1_im0__47_carry__1_0;
  wire [3:0]y1_im0__47_carry__1_1;
  wire y1_im0__47_carry__1_n_0;
  wire y1_im0__47_carry__1_n_1;
  wire y1_im0__47_carry__1_n_2;
  wire y1_im0__47_carry__1_n_3;
  wire y1_im0__47_carry__2_n_1;
  wire y1_im0__47_carry__2_n_2;
  wire y1_im0__47_carry__2_n_3;
  wire y1_im0__47_carry_n_0;
  wire y1_im0__47_carry_n_1;
  wire y1_im0__47_carry_n_2;
  wire y1_im0__47_carry_n_3;
  wire y1_im0_carry__0_n_0;
  wire y1_im0_carry__0_n_1;
  wire y1_im0_carry__0_n_2;
  wire y1_im0_carry__0_n_3;
  wire y1_im0_carry__1_n_0;
  wire y1_im0_carry__1_n_1;
  wire y1_im0_carry__1_n_2;
  wire y1_im0_carry__1_n_3;
  wire y1_im0_carry__2_n_0;
  wire y1_im0_carry__2_n_1;
  wire y1_im0_carry__2_n_2;
  wire y1_im0_carry__2_n_3;
  wire y1_im0_carry_n_0;
  wire y1_im0_carry_n_1;
  wire y1_im0_carry_n_2;
  wire y1_im0_carry_n_3;
  wire [15:0]y1_re0;
  wire [3:0]y1_re0__47_carry_0;
  wire [3:0]y1_re0__47_carry__0_0;
  wire y1_re0__47_carry__0_n_0;
  wire y1_re0__47_carry__0_n_1;
  wire y1_re0__47_carry__0_n_2;
  wire y1_re0__47_carry__0_n_3;
  wire [3:0]y1_re0__47_carry__1_0;
  wire y1_re0__47_carry__1_n_0;
  wire y1_re0__47_carry__1_n_1;
  wire y1_re0__47_carry__1_n_2;
  wire y1_re0__47_carry__1_n_3;
  wire y1_re0__47_carry__2_n_1;
  wire y1_re0__47_carry__2_n_2;
  wire y1_re0__47_carry__2_n_3;
  wire y1_re0__47_carry_n_0;
  wire y1_re0__47_carry_n_1;
  wire y1_re0__47_carry_n_2;
  wire y1_re0__47_carry_n_3;
  wire y1_re0_carry__0_n_0;
  wire y1_re0_carry__0_n_1;
  wire y1_re0_carry__0_n_2;
  wire y1_re0_carry__0_n_3;
  wire y1_re0_carry__1_n_0;
  wire y1_re0_carry__1_n_1;
  wire y1_re0_carry__1_n_2;
  wire y1_re0_carry__1_n_3;
  wire y1_re0_carry__2_n_0;
  wire y1_re0_carry__2_n_1;
  wire y1_re0_carry__2_n_2;
  wire y1_re0_carry__2_n_3;
  wire y1_re0_carry_n_0;
  wire y1_re0_carry_n_1;
  wire y1_re0_carry_n_2;
  wire y1_re0_carry_n_3;
  wire [3:3]NLW_y0_im0__47_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_y0_im0_carry__3_CO_UNCONNECTED;
  wire [3:1]NLW_y0_im0_carry__3_O_UNCONNECTED;
  wire [3:3]NLW_y0_re0__47_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_y0_re0_carry__3_CO_UNCONNECTED;
  wire [3:1]NLW_y0_re0_carry__3_O_UNCONNECTED;
  wire [3:3]NLW_y1_im0__47_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_y1_im0_carry__3_CO_UNCONNECTED;
  wire [3:1]NLW_y1_im0_carry__3_O_UNCONNECTED;
  wire [3:3]NLW_y1_re0__47_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_y1_re0_carry__3_CO_UNCONNECTED;
  wire [3:1]NLW_y1_re0_carry__3_O_UNCONNECTED;

  CARRY4 y0_im0__47_carry
       (.CI(1'b0),
        .CO({y0_im0__47_carry_n_0,y0_im0__47_carry_n_1,y0_im0__47_carry_n_2,y0_im0__47_carry_n_3}),
        .CYINIT(add_im[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(y0_im0[3:0]),
        .S(add_im[4:1]));
  CARRY4 y0_im0__47_carry__0
       (.CI(y0_im0__47_carry_n_0),
        .CO({y0_im0__47_carry__0_n_0,y0_im0__47_carry__0_n_1,y0_im0__47_carry__0_n_2,y0_im0__47_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(y0_im0[7:4]),
        .S(add_im[8:5]));
  CARRY4 y0_im0__47_carry__1
       (.CI(y0_im0__47_carry__0_n_0),
        .CO({y0_im0__47_carry__1_n_0,y0_im0__47_carry__1_n_1,y0_im0__47_carry__1_n_2,y0_im0__47_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(y0_im0[11:8]),
        .S(add_im[12:9]));
  CARRY4 y0_im0__47_carry__2
       (.CI(y0_im0__47_carry__1_n_0),
        .CO({NLW_y0_im0__47_carry__2_CO_UNCONNECTED[3],y0_im0__47_carry__2_n_1,y0_im0__47_carry__2_n_2,y0_im0__47_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(y0_im0[15:12]),
        .S(add_im[16:13]));
  CARRY4 y0_im0_carry
       (.CI(1'b0),
        .CO({y0_im0_carry_n_0,y0_im0_carry_n_1,y0_im0_carry_n_2,y0_im0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({y0_im0__47_carry_0,y0_im0__47_carry_1,y0_im0__47_carry_2,y0_im0__47_carry_3}),
        .O(add_im[3:0]),
        .S(y0_im0__47_carry_8));
  CARRY4 y0_im0_carry__0
       (.CI(y0_im0_carry_n_0),
        .CO({y0_im0_carry__0_n_0,y0_im0_carry__0_n_1,y0_im0_carry__0_n_2,y0_im0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({y0_im0__47_carry_4,y0_im0__47_carry_5,y0_im0__47_carry_6,y0_im0__47_carry_7}),
        .O(add_im[7:4]),
        .S(y0_im0__47_carry_9));
  CARRY4 y0_im0_carry__1
       (.CI(y0_im0_carry__0_n_0),
        .CO({y0_im0_carry__1_n_0,y0_im0_carry__1_n_1,y0_im0_carry__1_n_2,y0_im0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({y0_im0__47_carry__0_0,y0_im0__47_carry__0_1,y0_im0__47_carry__0_2,y0_im0__47_carry__0_3}),
        .O(add_im[11:8]),
        .S(y0_im0__47_carry__0_4));
  CARRY4 y0_im0_carry__2
       (.CI(y0_im0_carry__1_n_0),
        .CO({y0_im0_carry__2_n_0,y0_im0_carry__2_n_1,y0_im0_carry__2_n_2,y0_im0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({y0_im0__47_carry__1_3,y0_im0__47_carry__1_0,y0_im0__47_carry__1_1,y0_im0__47_carry__1_2}),
        .O(add_im[15:12]),
        .S(y0_im0__47_carry__1_4));
  CARRY4 y0_im0_carry__3
       (.CI(y0_im0_carry__2_n_0),
        .CO(NLW_y0_im0_carry__3_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_y0_im0_carry__3_O_UNCONNECTED[3:1],add_im[16]}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 y0_re0__47_carry
       (.CI(1'b0),
        .CO({y0_re0__47_carry_n_0,y0_re0__47_carry_n_1,y0_re0__47_carry_n_2,y0_re0__47_carry_n_3}),
        .CYINIT(add_re[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(y0_re0[3:0]),
        .S(add_re[4:1]));
  CARRY4 y0_re0__47_carry__0
       (.CI(y0_re0__47_carry_n_0),
        .CO({y0_re0__47_carry__0_n_0,y0_re0__47_carry__0_n_1,y0_re0__47_carry__0_n_2,y0_re0__47_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(y0_re0[7:4]),
        .S(add_re[8:5]));
  CARRY4 y0_re0__47_carry__1
       (.CI(y0_re0__47_carry__0_n_0),
        .CO({y0_re0__47_carry__1_n_0,y0_re0__47_carry__1_n_1,y0_re0__47_carry__1_n_2,y0_re0__47_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(y0_re0[11:8]),
        .S(add_re[12:9]));
  CARRY4 y0_re0__47_carry__2
       (.CI(y0_re0__47_carry__1_n_0),
        .CO({NLW_y0_re0__47_carry__2_CO_UNCONNECTED[3],y0_re0__47_carry__2_n_1,y0_re0__47_carry__2_n_2,y0_re0__47_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(y0_re0[15:12]),
        .S(add_re[16:13]));
  CARRY4 y0_re0_carry
       (.CI(1'b0),
        .CO({y0_re0_carry_n_0,y0_re0_carry_n_1,y0_re0_carry_n_2,y0_re0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({y0_re0__47_carry_0,y0_re0__47_carry_1,y0_re0__47_carry_2,y0_re0__47_carry_3}),
        .O(add_re[3:0]),
        .S(y0_re0__47_carry_8));
  CARRY4 y0_re0_carry__0
       (.CI(y0_re0_carry_n_0),
        .CO({y0_re0_carry__0_n_0,y0_re0_carry__0_n_1,y0_re0_carry__0_n_2,y0_re0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({y0_re0__47_carry_4,y0_re0__47_carry_5,y0_re0__47_carry_6,y0_re0__47_carry_7}),
        .O(add_re[7:4]),
        .S(y0_re0__47_carry_9));
  CARRY4 y0_re0_carry__1
       (.CI(y0_re0_carry__0_n_0),
        .CO({y0_re0_carry__1_n_0,y0_re0_carry__1_n_1,y0_re0_carry__1_n_2,y0_re0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({y0_re0__47_carry__0_0,y0_re0__47_carry__0_1,y0_re0__47_carry__0_2,y0_re0__47_carry__0_3}),
        .O(add_re[11:8]),
        .S(y0_re0__47_carry__0_4));
  CARRY4 y0_re0_carry__2
       (.CI(y0_re0_carry__1_n_0),
        .CO({y0_re0_carry__2_n_0,y0_re0_carry__2_n_1,y0_re0_carry__2_n_2,y0_re0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({DI,y0_re0__47_carry__1_0,y0_re0__47_carry__1_1,y0_re0__47_carry__1_2}),
        .O(add_re[15:12]),
        .S(y0_re0__47_carry__1_3));
  CARRY4 y0_re0_carry__3
       (.CI(y0_re0_carry__2_n_0),
        .CO(NLW_y0_re0_carry__3_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_y0_re0_carry__3_O_UNCONNECTED[3:1],add_re[16]}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 y1_im0__47_carry
       (.CI(1'b0),
        .CO({y1_im0__47_carry_n_0,y1_im0__47_carry_n_1,y1_im0__47_carry_n_2,y1_im0__47_carry_n_3}),
        .CYINIT(sub_im[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(y1_im0[3:0]),
        .S(sub_im[4:1]));
  CARRY4 y1_im0__47_carry__0
       (.CI(y1_im0__47_carry_n_0),
        .CO({y1_im0__47_carry__0_n_0,y1_im0__47_carry__0_n_1,y1_im0__47_carry__0_n_2,y1_im0__47_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(y1_im0[7:4]),
        .S(sub_im[8:5]));
  CARRY4 y1_im0__47_carry__1
       (.CI(y1_im0__47_carry__0_n_0),
        .CO({y1_im0__47_carry__1_n_0,y1_im0__47_carry__1_n_1,y1_im0__47_carry__1_n_2,y1_im0__47_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(y1_im0[11:8]),
        .S(sub_im[12:9]));
  CARRY4 y1_im0__47_carry__2
       (.CI(y1_im0__47_carry__1_n_0),
        .CO({NLW_y1_im0__47_carry__2_CO_UNCONNECTED[3],y1_im0__47_carry__2_n_1,y1_im0__47_carry__2_n_2,y1_im0__47_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(y1_im0[15:12]),
        .S(sub_im[16:13]));
  CARRY4 y1_im0_carry
       (.CI(1'b0),
        .CO({y1_im0_carry_n_0,y1_im0_carry_n_1,y1_im0_carry_n_2,y1_im0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({y0_im0__47_carry_0,y0_im0__47_carry_1,y0_im0__47_carry_2,y0_im0__47_carry_3}),
        .O(sub_im[3:0]),
        .S(y1_im0__47_carry_0));
  CARRY4 y1_im0_carry__0
       (.CI(y1_im0_carry_n_0),
        .CO({y1_im0_carry__0_n_0,y1_im0_carry__0_n_1,y1_im0_carry__0_n_2,y1_im0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({y0_im0__47_carry_4,y0_im0__47_carry_5,y0_im0__47_carry_6,y0_im0__47_carry_7}),
        .O(sub_im[7:4]),
        .S(y1_im0__47_carry_1));
  CARRY4 y1_im0_carry__1
       (.CI(y1_im0_carry__0_n_0),
        .CO({y1_im0_carry__1_n_0,y1_im0_carry__1_n_1,y1_im0_carry__1_n_2,y1_im0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({y0_im0__47_carry__0_0,y0_im0__47_carry__0_1,y0_im0__47_carry__0_2,y0_im0__47_carry__0_3}),
        .O(sub_im[11:8]),
        .S(y1_im0__47_carry__0_0));
  CARRY4 y1_im0_carry__2
       (.CI(y1_im0_carry__1_n_0),
        .CO({y1_im0_carry__2_n_0,y1_im0_carry__2_n_1,y1_im0_carry__2_n_2,y1_im0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({y1_im0__47_carry__1_0,y0_im0__47_carry__1_0,y0_im0__47_carry__1_1,y0_im0__47_carry__1_2}),
        .O(sub_im[15:12]),
        .S(y1_im0__47_carry__1_1));
  CARRY4 y1_im0_carry__3
       (.CI(y1_im0_carry__2_n_0),
        .CO(NLW_y1_im0_carry__3_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_y1_im0_carry__3_O_UNCONNECTED[3:1],sub_im[16]}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 y1_re0__47_carry
       (.CI(1'b0),
        .CO({y1_re0__47_carry_n_0,y1_re0__47_carry_n_1,y1_re0__47_carry_n_2,y1_re0__47_carry_n_3}),
        .CYINIT(sub_re[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(y1_re0[3:0]),
        .S(sub_re[4:1]));
  CARRY4 y1_re0__47_carry__0
       (.CI(y1_re0__47_carry_n_0),
        .CO({y1_re0__47_carry__0_n_0,y1_re0__47_carry__0_n_1,y1_re0__47_carry__0_n_2,y1_re0__47_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(y1_re0[7:4]),
        .S(sub_re[8:5]));
  CARRY4 y1_re0__47_carry__1
       (.CI(y1_re0__47_carry__0_n_0),
        .CO({y1_re0__47_carry__1_n_0,y1_re0__47_carry__1_n_1,y1_re0__47_carry__1_n_2,y1_re0__47_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(y1_re0[11:8]),
        .S(sub_re[12:9]));
  CARRY4 y1_re0__47_carry__2
       (.CI(y1_re0__47_carry__1_n_0),
        .CO({NLW_y1_re0__47_carry__2_CO_UNCONNECTED[3],y1_re0__47_carry__2_n_1,y1_re0__47_carry__2_n_2,y1_re0__47_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(y1_re0[15:12]),
        .S(sub_re[16:13]));
  CARRY4 y1_re0_carry
       (.CI(1'b0),
        .CO({y1_re0_carry_n_0,y1_re0_carry_n_1,y1_re0_carry_n_2,y1_re0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({y0_re0__47_carry_0,y0_re0__47_carry_1,y0_re0__47_carry_2,y0_re0__47_carry_3}),
        .O(sub_re[3:0]),
        .S(S));
  CARRY4 y1_re0_carry__0
       (.CI(y1_re0_carry_n_0),
        .CO({y1_re0_carry__0_n_0,y1_re0_carry__0_n_1,y1_re0_carry__0_n_2,y1_re0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({y0_re0__47_carry_4,y0_re0__47_carry_5,y0_re0__47_carry_6,y0_re0__47_carry_7}),
        .O(sub_re[7:4]),
        .S(y1_re0__47_carry_0));
  CARRY4 y1_re0_carry__1
       (.CI(y1_re0_carry__0_n_0),
        .CO({y1_re0_carry__1_n_0,y1_re0_carry__1_n_1,y1_re0_carry__1_n_2,y1_re0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({y0_re0__47_carry__0_0,y0_re0__47_carry__0_1,y0_re0__47_carry__0_2,y0_re0__47_carry__0_3}),
        .O(sub_re[11:8]),
        .S(y1_re0__47_carry__0_0));
  CARRY4 y1_re0_carry__2
       (.CI(y1_re0_carry__1_n_0),
        .CO({y1_re0_carry__2_n_0,y1_re0_carry__2_n_1,y1_re0_carry__2_n_2,y1_re0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({Q,y0_re0__47_carry__1_0,y0_re0__47_carry__1_1,y0_re0__47_carry__1_2}),
        .O(sub_re[15:12]),
        .S(y1_re0__47_carry__1_0));
  CARRY4 y1_re0_carry__3
       (.CI(y1_re0_carry__2_n_0),
        .CO(NLW_y1_re0_carry__3_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_y1_re0_carry__3_O_UNCONNECTED[3:1],sub_re[16]}),
        .S({1'b0,1'b0,1'b0,1'b1}));
endmodule

(* ORIG_REF_NAME = "DelayBuffer" *) 
module system_fft128_0_0_DelayBuffer
   (\buf_re_reg[63][14]__0_0 ,
    \buf_im_reg[63][14]__0_0 ,
    S,
    \di_re[7] ,
    \di_re[11] ,
    \di_re[15] ,
    \di_im[3] ,
    \di_im[7] ,
    \di_im[11] ,
    \di_im[15] ,
    \mu_do_re_reg[3] ,
    \mu_do_re_reg[7] ,
    \mu_do_re_reg[11] ,
    \mu_do_re_reg[15] ,
    \mu_do_im_reg[3] ,
    \mu_do_im_reg[7] ,
    \mu_do_im_reg[11] ,
    \mu_do_im_reg[15] ,
    \buf_re_reg[63][15]__0_0 ,
    \buf_im_reg[63][15]__0_0 ,
    \buf_im_reg[63][15]__0_1 ,
    D,
    \bf1_count_reg[5] ,
    db1_di_re,
    db1_di_im,
    DI,
    \buf_re_reg[63][3]__0_0 ,
    \buf_re_reg[63][7]__0_0 ,
    \buf_re_reg[63][11]__0_0 ,
    \buf_im_reg[63][3]__0_0 ,
    \buf_im_reg[63][7]__0_0 ,
    \buf_im_reg[63][11]__0_0 ,
    clock,
    di_re,
    di_im,
    Q,
    \buf_re_reg[15]_2 ,
    \buf_im_reg[15][15]__0 ,
    \buf_im_reg[15]_3 ,
    O,
    \bf1_do_re_reg[15] ,
    sub_re_0,
    \buf_im_reg[31][15]_srl32_0 ,
    sub_im_1,
    \bf1_do_re_reg[15]_0 ,
    add_im_3,
    add_re_2,
    \buf_re_reg[15][15]__0 ,
    \buf_im_reg[15][11]__0 ,
    \buf_re_reg[15][14]__0 ,
    \buf_im_reg[15][15]__0_0 ,
    \buf_im_reg[15][14]__0 ,
    CO,
    \bf1_do_im_reg[15] );
  output [14:0]\buf_re_reg[63][14]__0_0 ;
  output [14:0]\buf_im_reg[63][14]__0_0 ;
  output [3:0]S;
  output [3:0]\di_re[7] ;
  output [3:0]\di_re[11] ;
  output [3:0]\di_re[15] ;
  output [3:0]\di_im[3] ;
  output [3:0]\di_im[7] ;
  output [3:0]\di_im[11] ;
  output [3:0]\di_im[15] ;
  output [3:0]\mu_do_re_reg[3] ;
  output [3:0]\mu_do_re_reg[7] ;
  output [3:0]\mu_do_re_reg[11] ;
  output [3:0]\mu_do_re_reg[15] ;
  output [3:0]\mu_do_im_reg[3] ;
  output [3:0]\mu_do_im_reg[7] ;
  output [3:0]\mu_do_im_reg[11] ;
  output [3:0]\mu_do_im_reg[15] ;
  output [3:0]\buf_re_reg[63][15]__0_0 ;
  output [3:0]\buf_im_reg[63][15]__0_0 ;
  output [0:0]\buf_im_reg[63][15]__0_1 ;
  output [15:0]D;
  output [15:0]\bf1_count_reg[5] ;
  output [4:0]db1_di_re;
  output [4:0]db1_di_im;
  output [0:0]DI;
  output [3:0]\buf_re_reg[63][3]__0_0 ;
  output [3:0]\buf_re_reg[63][7]__0_0 ;
  output [3:0]\buf_re_reg[63][11]__0_0 ;
  output [3:0]\buf_im_reg[63][3]__0_0 ;
  output [3:0]\buf_im_reg[63][7]__0_0 ;
  output [3:0]\buf_im_reg[63][11]__0_0 ;
  input clock;
  input [15:0]di_re;
  input [15:0]di_im;
  input [15:0]Q;
  input [15:0]\buf_re_reg[15]_2 ;
  input [15:0]\buf_im_reg[15][15]__0 ;
  input [15:0]\buf_im_reg[15]_3 ;
  input [0:0]O;
  input [0:0]\bf1_do_re_reg[15] ;
  input [14:0]sub_re_0;
  input [0:0]\buf_im_reg[31][15]_srl32_0 ;
  input [14:0]sub_im_1;
  input [1:0]\bf1_do_re_reg[15]_0 ;
  input [14:0]add_im_3;
  input [14:0]add_re_2;
  input [0:0]\buf_re_reg[15][15]__0 ;
  input [0:0]\buf_im_reg[15][11]__0 ;
  input [3:0]\buf_re_reg[15][14]__0 ;
  input [0:0]\buf_im_reg[15][15]__0_0 ;
  input [3:0]\buf_im_reg[15][14]__0 ;
  input [0:0]CO;
  input [0:0]\bf1_do_im_reg[15] ;

  wire [0:0]CO;
  wire [15:0]D;
  wire [0:0]DI;
  wire [0:0]O;
  wire [15:0]Q;
  wire [3:0]S;
  wire [14:0]add_im_3;
  wire [14:0]add_re_2;
  wire [15:0]\bf1_count_reg[5] ;
  wire \bf1_do_im[12]_i_3__1_n_0 ;
  wire \bf1_do_im[12]_i_4__1_n_0 ;
  wire \bf1_do_im[12]_i_5__1_n_0 ;
  wire \bf1_do_im[12]_i_6__1_n_0 ;
  wire \bf1_do_im[15]_i_4__1_n_0 ;
  wire \bf1_do_im[15]_i_5__1_n_0 ;
  wire \bf1_do_im[15]_i_6__1_n_0 ;
  wire \bf1_do_im[4]_i_3__1_n_0 ;
  wire \bf1_do_im[4]_i_4__1_n_0 ;
  wire \bf1_do_im[4]_i_5__1_n_0 ;
  wire \bf1_do_im[4]_i_6__1_n_0 ;
  wire \bf1_do_im[4]_i_7__1_n_0 ;
  wire \bf1_do_im[8]_i_3__1_n_0 ;
  wire \bf1_do_im[8]_i_4__1_n_0 ;
  wire \bf1_do_im[8]_i_5__1_n_0 ;
  wire \bf1_do_im[8]_i_6__1_n_0 ;
  wire \bf1_do_im_reg[12]_i_2_n_0 ;
  wire \bf1_do_im_reg[12]_i_2_n_1 ;
  wire \bf1_do_im_reg[12]_i_2_n_2 ;
  wire \bf1_do_im_reg[12]_i_2_n_3 ;
  wire [0:0]\bf1_do_im_reg[15] ;
  wire \bf1_do_im_reg[15]_i_2_n_2 ;
  wire \bf1_do_im_reg[15]_i_2_n_3 ;
  wire \bf1_do_im_reg[15]_i_3_n_3 ;
  wire \bf1_do_im_reg[4]_i_2_n_0 ;
  wire \bf1_do_im_reg[4]_i_2_n_1 ;
  wire \bf1_do_im_reg[4]_i_2_n_2 ;
  wire \bf1_do_im_reg[4]_i_2_n_3 ;
  wire \bf1_do_im_reg[8]_i_2_n_0 ;
  wire \bf1_do_im_reg[8]_i_2_n_1 ;
  wire \bf1_do_im_reg[8]_i_2_n_2 ;
  wire \bf1_do_im_reg[8]_i_2_n_3 ;
  wire [0:0]\bf1_do_re_reg[15] ;
  wire [1:0]\bf1_do_re_reg[15]_0 ;
  wire \bf1_do_re_reg[15]_i_2_n_3 ;
  wire [15:1]bf1_sp_im1;
  wire [0:0]\buf_im_reg[15][11]__0 ;
  wire [3:0]\buf_im_reg[15][14]__0 ;
  wire [15:0]\buf_im_reg[15][15]__0 ;
  wire [0:0]\buf_im_reg[15][15]__0_0 ;
  wire [15:0]\buf_im_reg[15]_3 ;
  wire \buf_im_reg[31][0]_srl32_n_1 ;
  wire \buf_im_reg[31][10]_srl32_n_1 ;
  wire \buf_im_reg[31][11]_srl32_n_1 ;
  wire \buf_im_reg[31][12]_srl32_n_1 ;
  wire \buf_im_reg[31][13]_srl32_n_1 ;
  wire \buf_im_reg[31][14]_srl32_n_1 ;
  wire [0:0]\buf_im_reg[31][15]_srl32_0 ;
  wire \buf_im_reg[31][15]_srl32_n_1 ;
  wire \buf_im_reg[31][1]_srl32_n_1 ;
  wire \buf_im_reg[31][2]_srl32_n_1 ;
  wire \buf_im_reg[31][3]_srl32_n_1 ;
  wire \buf_im_reg[31][4]_srl32_n_1 ;
  wire \buf_im_reg[31][5]_srl32_n_1 ;
  wire \buf_im_reg[31][6]_srl32_n_1 ;
  wire \buf_im_reg[31][7]_srl32_n_1 ;
  wire \buf_im_reg[31][8]_srl32_n_1 ;
  wire \buf_im_reg[31][9]_srl32_n_1 ;
  wire \buf_im_reg[62][0]_srl31_n_0 ;
  wire \buf_im_reg[62][10]_srl31_n_0 ;
  wire \buf_im_reg[62][11]_srl31_n_0 ;
  wire \buf_im_reg[62][12]_srl31_n_0 ;
  wire \buf_im_reg[62][13]_srl31_n_0 ;
  wire \buf_im_reg[62][14]_srl31_n_0 ;
  wire \buf_im_reg[62][15]_srl31_n_0 ;
  wire \buf_im_reg[62][1]_srl31_n_0 ;
  wire \buf_im_reg[62][2]_srl31_n_0 ;
  wire \buf_im_reg[62][3]_srl31_n_0 ;
  wire \buf_im_reg[62][4]_srl31_n_0 ;
  wire \buf_im_reg[62][5]_srl31_n_0 ;
  wire \buf_im_reg[62][6]_srl31_n_0 ;
  wire \buf_im_reg[62][7]_srl31_n_0 ;
  wire \buf_im_reg[62][8]_srl31_n_0 ;
  wire \buf_im_reg[62][9]_srl31_n_0 ;
  wire [3:0]\buf_im_reg[63][11]__0_0 ;
  wire [14:0]\buf_im_reg[63][14]__0_0 ;
  wire [3:0]\buf_im_reg[63][15]__0_0 ;
  wire [0:0]\buf_im_reg[63][15]__0_1 ;
  wire [3:0]\buf_im_reg[63][3]__0_0 ;
  wire [3:0]\buf_im_reg[63][7]__0_0 ;
  wire [15:15]\buf_im_reg[63]_1 ;
  wire [3:0]\buf_re_reg[15][14]__0 ;
  wire [0:0]\buf_re_reg[15][15]__0 ;
  wire [15:0]\buf_re_reg[15]_2 ;
  wire \buf_re_reg[31][0]_srl32_n_1 ;
  wire \buf_re_reg[31][10]_srl32_n_1 ;
  wire \buf_re_reg[31][11]_srl32_n_1 ;
  wire \buf_re_reg[31][12]_srl32_n_1 ;
  wire \buf_re_reg[31][13]_srl32_n_1 ;
  wire \buf_re_reg[31][14]_srl32_n_1 ;
  wire \buf_re_reg[31][15]_srl32_n_1 ;
  wire \buf_re_reg[31][1]_srl32_n_1 ;
  wire \buf_re_reg[31][2]_srl32_n_1 ;
  wire \buf_re_reg[31][3]_srl32_n_1 ;
  wire \buf_re_reg[31][4]_srl32_n_1 ;
  wire \buf_re_reg[31][5]_srl32_n_1 ;
  wire \buf_re_reg[31][6]_srl32_n_1 ;
  wire \buf_re_reg[31][7]_srl32_n_1 ;
  wire \buf_re_reg[31][8]_srl32_n_1 ;
  wire \buf_re_reg[31][9]_srl32_n_1 ;
  wire \buf_re_reg[62][0]_srl31_n_0 ;
  wire \buf_re_reg[62][10]_srl31_n_0 ;
  wire \buf_re_reg[62][11]_srl31_n_0 ;
  wire \buf_re_reg[62][12]_srl31_n_0 ;
  wire \buf_re_reg[62][13]_srl31_n_0 ;
  wire \buf_re_reg[62][14]_srl31_n_0 ;
  wire \buf_re_reg[62][15]_srl31_n_0 ;
  wire \buf_re_reg[62][1]_srl31_n_0 ;
  wire \buf_re_reg[62][2]_srl31_n_0 ;
  wire \buf_re_reg[62][3]_srl31_n_0 ;
  wire \buf_re_reg[62][4]_srl31_n_0 ;
  wire \buf_re_reg[62][5]_srl31_n_0 ;
  wire \buf_re_reg[62][6]_srl31_n_0 ;
  wire \buf_re_reg[62][7]_srl31_n_0 ;
  wire \buf_re_reg[62][8]_srl31_n_0 ;
  wire \buf_re_reg[62][9]_srl31_n_0 ;
  wire [3:0]\buf_re_reg[63][11]__0_0 ;
  wire [14:0]\buf_re_reg[63][14]__0_0 ;
  wire [3:0]\buf_re_reg[63][15]__0_0 ;
  wire [3:0]\buf_re_reg[63][3]__0_0 ;
  wire [3:0]\buf_re_reg[63][7]__0_0 ;
  wire [15:15]\buf_re_reg[63]_0 ;
  wire clock;
  wire [4:0]db1_di_im;
  wire [15:0]db1_di_im_5;
  wire [4:0]db1_di_re;
  wire [15:0]db1_di_re_4;
  wire [15:0]di_im;
  wire [3:0]\di_im[11] ;
  wire [3:0]\di_im[15] ;
  wire [3:0]\di_im[3] ;
  wire [3:0]\di_im[7] ;
  wire [15:0]di_re;
  wire [3:0]\di_re[11] ;
  wire [3:0]\di_re[15] ;
  wire [3:0]\di_re[7] ;
  wire [3:0]\mu_do_im_reg[11] ;
  wire [3:0]\mu_do_im_reg[15] ;
  wire [3:0]\mu_do_im_reg[3] ;
  wire [3:0]\mu_do_im_reg[7] ;
  wire [3:0]\mu_do_re_reg[11] ;
  wire [3:0]\mu_do_re_reg[15] ;
  wire [3:0]\mu_do_re_reg[3] ;
  wire [3:0]\mu_do_re_reg[7] ;
  wire [14:0]sub_im_1;
  wire [14:0]sub_re_0;
  wire [3:2]\NLW_bf1_do_im_reg[15]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_bf1_do_im_reg[15]_i_2_O_UNCONNECTED ;
  wire [3:1]\NLW_bf1_do_im_reg[15]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_bf1_do_im_reg[15]_i_3_O_UNCONNECTED ;
  wire [3:1]\NLW_bf1_do_re_reg[15]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_bf1_do_re_reg[15]_i_2_O_UNCONNECTED ;
  wire \NLW_buf_im_reg[31][0]_srl32_Q_UNCONNECTED ;
  wire \NLW_buf_im_reg[31][10]_srl32_Q_UNCONNECTED ;
  wire \NLW_buf_im_reg[31][11]_srl32_Q_UNCONNECTED ;
  wire \NLW_buf_im_reg[31][12]_srl32_Q_UNCONNECTED ;
  wire \NLW_buf_im_reg[31][13]_srl32_Q_UNCONNECTED ;
  wire \NLW_buf_im_reg[31][14]_srl32_Q_UNCONNECTED ;
  wire \NLW_buf_im_reg[31][15]_srl32_Q_UNCONNECTED ;
  wire \NLW_buf_im_reg[31][1]_srl32_Q_UNCONNECTED ;
  wire \NLW_buf_im_reg[31][2]_srl32_Q_UNCONNECTED ;
  wire \NLW_buf_im_reg[31][3]_srl32_Q_UNCONNECTED ;
  wire \NLW_buf_im_reg[31][4]_srl32_Q_UNCONNECTED ;
  wire \NLW_buf_im_reg[31][5]_srl32_Q_UNCONNECTED ;
  wire \NLW_buf_im_reg[31][6]_srl32_Q_UNCONNECTED ;
  wire \NLW_buf_im_reg[31][7]_srl32_Q_UNCONNECTED ;
  wire \NLW_buf_im_reg[31][8]_srl32_Q_UNCONNECTED ;
  wire \NLW_buf_im_reg[31][9]_srl32_Q_UNCONNECTED ;
  wire \NLW_buf_im_reg[62][0]_srl31_Q31_UNCONNECTED ;
  wire \NLW_buf_im_reg[62][10]_srl31_Q31_UNCONNECTED ;
  wire \NLW_buf_im_reg[62][11]_srl31_Q31_UNCONNECTED ;
  wire \NLW_buf_im_reg[62][12]_srl31_Q31_UNCONNECTED ;
  wire \NLW_buf_im_reg[62][13]_srl31_Q31_UNCONNECTED ;
  wire \NLW_buf_im_reg[62][14]_srl31_Q31_UNCONNECTED ;
  wire \NLW_buf_im_reg[62][15]_srl31_Q31_UNCONNECTED ;
  wire \NLW_buf_im_reg[62][1]_srl31_Q31_UNCONNECTED ;
  wire \NLW_buf_im_reg[62][2]_srl31_Q31_UNCONNECTED ;
  wire \NLW_buf_im_reg[62][3]_srl31_Q31_UNCONNECTED ;
  wire \NLW_buf_im_reg[62][4]_srl31_Q31_UNCONNECTED ;
  wire \NLW_buf_im_reg[62][5]_srl31_Q31_UNCONNECTED ;
  wire \NLW_buf_im_reg[62][6]_srl31_Q31_UNCONNECTED ;
  wire \NLW_buf_im_reg[62][7]_srl31_Q31_UNCONNECTED ;
  wire \NLW_buf_im_reg[62][8]_srl31_Q31_UNCONNECTED ;
  wire \NLW_buf_im_reg[62][9]_srl31_Q31_UNCONNECTED ;
  wire \NLW_buf_re_reg[31][0]_srl32_Q_UNCONNECTED ;
  wire \NLW_buf_re_reg[31][10]_srl32_Q_UNCONNECTED ;
  wire \NLW_buf_re_reg[31][11]_srl32_Q_UNCONNECTED ;
  wire \NLW_buf_re_reg[31][12]_srl32_Q_UNCONNECTED ;
  wire \NLW_buf_re_reg[31][13]_srl32_Q_UNCONNECTED ;
  wire \NLW_buf_re_reg[31][14]_srl32_Q_UNCONNECTED ;
  wire \NLW_buf_re_reg[31][15]_srl32_Q_UNCONNECTED ;
  wire \NLW_buf_re_reg[31][1]_srl32_Q_UNCONNECTED ;
  wire \NLW_buf_re_reg[31][2]_srl32_Q_UNCONNECTED ;
  wire \NLW_buf_re_reg[31][3]_srl32_Q_UNCONNECTED ;
  wire \NLW_buf_re_reg[31][4]_srl32_Q_UNCONNECTED ;
  wire \NLW_buf_re_reg[31][5]_srl32_Q_UNCONNECTED ;
  wire \NLW_buf_re_reg[31][6]_srl32_Q_UNCONNECTED ;
  wire \NLW_buf_re_reg[31][7]_srl32_Q_UNCONNECTED ;
  wire \NLW_buf_re_reg[31][8]_srl32_Q_UNCONNECTED ;
  wire \NLW_buf_re_reg[31][9]_srl32_Q_UNCONNECTED ;
  wire \NLW_buf_re_reg[62][0]_srl31_Q31_UNCONNECTED ;
  wire \NLW_buf_re_reg[62][10]_srl31_Q31_UNCONNECTED ;
  wire \NLW_buf_re_reg[62][11]_srl31_Q31_UNCONNECTED ;
  wire \NLW_buf_re_reg[62][12]_srl31_Q31_UNCONNECTED ;
  wire \NLW_buf_re_reg[62][13]_srl31_Q31_UNCONNECTED ;
  wire \NLW_buf_re_reg[62][14]_srl31_Q31_UNCONNECTED ;
  wire \NLW_buf_re_reg[62][15]_srl31_Q31_UNCONNECTED ;
  wire \NLW_buf_re_reg[62][1]_srl31_Q31_UNCONNECTED ;
  wire \NLW_buf_re_reg[62][2]_srl31_Q31_UNCONNECTED ;
  wire \NLW_buf_re_reg[62][3]_srl31_Q31_UNCONNECTED ;
  wire \NLW_buf_re_reg[62][4]_srl31_Q31_UNCONNECTED ;
  wire \NLW_buf_re_reg[62][5]_srl31_Q31_UNCONNECTED ;
  wire \NLW_buf_re_reg[62][6]_srl31_Q31_UNCONNECTED ;
  wire \NLW_buf_re_reg[62][7]_srl31_Q31_UNCONNECTED ;
  wire \NLW_buf_re_reg[62][8]_srl31_Q31_UNCONNECTED ;
  wire \NLW_buf_re_reg[62][9]_srl31_Q31_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h6)) 
    add_im_carry__0_i_1__0
       (.I0(\buf_im_reg[63][14]__0_0 [7]),
        .I1(di_im[7]),
        .O(\buf_im_reg[63][7]__0_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    add_im_carry__0_i_2__0
       (.I0(\buf_im_reg[63][14]__0_0 [6]),
        .I1(di_im[6]),
        .O(\buf_im_reg[63][7]__0_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    add_im_carry__0_i_3__0
       (.I0(\buf_im_reg[63][14]__0_0 [5]),
        .I1(di_im[5]),
        .O(\buf_im_reg[63][7]__0_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    add_im_carry__0_i_4__0
       (.I0(\buf_im_reg[63][14]__0_0 [4]),
        .I1(di_im[4]),
        .O(\buf_im_reg[63][7]__0_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    add_im_carry__1_i_1__0
       (.I0(\buf_im_reg[63][14]__0_0 [11]),
        .I1(di_im[11]),
        .O(\buf_im_reg[63][11]__0_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    add_im_carry__1_i_2__0
       (.I0(\buf_im_reg[63][14]__0_0 [10]),
        .I1(di_im[10]),
        .O(\buf_im_reg[63][11]__0_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    add_im_carry__1_i_3__0
       (.I0(\buf_im_reg[63][14]__0_0 [9]),
        .I1(di_im[9]),
        .O(\buf_im_reg[63][11]__0_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    add_im_carry__1_i_4__0
       (.I0(\buf_im_reg[63][14]__0_0 [8]),
        .I1(di_im[8]),
        .O(\buf_im_reg[63][11]__0_0 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    add_im_carry__2_i_1__2
       (.I0(\buf_im_reg[63]_1 ),
        .O(\buf_im_reg[63][15]__0_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    add_im_carry__2_i_2__2
       (.I0(\buf_im_reg[63]_1 ),
        .I1(di_im[15]),
        .O(\buf_im_reg[63][15]__0_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    add_im_carry__2_i_3__0
       (.I0(\buf_im_reg[63][14]__0_0 [14]),
        .I1(di_im[14]),
        .O(\buf_im_reg[63][15]__0_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    add_im_carry__2_i_4__0
       (.I0(\buf_im_reg[63][14]__0_0 [13]),
        .I1(di_im[13]),
        .O(\buf_im_reg[63][15]__0_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    add_im_carry__2_i_5__0
       (.I0(\buf_im_reg[63][14]__0_0 [12]),
        .I1(di_im[12]),
        .O(\buf_im_reg[63][15]__0_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    add_im_carry_i_1__0
       (.I0(\buf_im_reg[63][14]__0_0 [3]),
        .I1(di_im[3]),
        .O(\buf_im_reg[63][3]__0_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    add_im_carry_i_2__0
       (.I0(\buf_im_reg[63][14]__0_0 [2]),
        .I1(di_im[2]),
        .O(\buf_im_reg[63][3]__0_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    add_im_carry_i_3__0
       (.I0(\buf_im_reg[63][14]__0_0 [1]),
        .I1(di_im[1]),
        .O(\buf_im_reg[63][3]__0_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    add_im_carry_i_4__0
       (.I0(\buf_im_reg[63][14]__0_0 [0]),
        .I1(di_im[0]),
        .O(\buf_im_reg[63][3]__0_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    add_re_carry__0_i_1__0
       (.I0(\buf_re_reg[63][14]__0_0 [7]),
        .I1(di_re[7]),
        .O(\buf_re_reg[63][7]__0_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    add_re_carry__0_i_2__0
       (.I0(\buf_re_reg[63][14]__0_0 [6]),
        .I1(di_re[6]),
        .O(\buf_re_reg[63][7]__0_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    add_re_carry__0_i_3__0
       (.I0(\buf_re_reg[63][14]__0_0 [5]),
        .I1(di_re[5]),
        .O(\buf_re_reg[63][7]__0_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    add_re_carry__0_i_4__0
       (.I0(\buf_re_reg[63][14]__0_0 [4]),
        .I1(di_re[4]),
        .O(\buf_re_reg[63][7]__0_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    add_re_carry__1_i_1__0
       (.I0(\buf_re_reg[63][14]__0_0 [11]),
        .I1(di_re[11]),
        .O(\buf_re_reg[63][11]__0_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    add_re_carry__1_i_2__0
       (.I0(\buf_re_reg[63][14]__0_0 [10]),
        .I1(di_re[10]),
        .O(\buf_re_reg[63][11]__0_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    add_re_carry__1_i_3__0
       (.I0(\buf_re_reg[63][14]__0_0 [9]),
        .I1(di_re[9]),
        .O(\buf_re_reg[63][11]__0_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    add_re_carry__1_i_4__0
       (.I0(\buf_re_reg[63][14]__0_0 [8]),
        .I1(di_re[8]),
        .O(\buf_re_reg[63][11]__0_0 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    add_re_carry__2_i_1__0
       (.I0(\buf_re_reg[63]_0 ),
        .O(DI));
  LUT2 #(
    .INIT(4'h6)) 
    add_re_carry__2_i_2__2
       (.I0(\buf_re_reg[63]_0 ),
        .I1(di_re[15]),
        .O(\buf_re_reg[63][15]__0_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    add_re_carry__2_i_3__0
       (.I0(\buf_re_reg[63][14]__0_0 [14]),
        .I1(di_re[14]),
        .O(\buf_re_reg[63][15]__0_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    add_re_carry__2_i_4__0
       (.I0(\buf_re_reg[63][14]__0_0 [13]),
        .I1(di_re[13]),
        .O(\buf_re_reg[63][15]__0_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    add_re_carry__2_i_5__0
       (.I0(\buf_re_reg[63][14]__0_0 [12]),
        .I1(di_re[12]),
        .O(\buf_re_reg[63][15]__0_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    add_re_carry_i_1__0
       (.I0(\buf_re_reg[63][14]__0_0 [3]),
        .I1(di_re[3]),
        .O(\buf_re_reg[63][3]__0_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    add_re_carry_i_2__0
       (.I0(\buf_re_reg[63][14]__0_0 [2]),
        .I1(di_re[2]),
        .O(\buf_re_reg[63][3]__0_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    add_re_carry_i_3__0
       (.I0(\buf_re_reg[63][14]__0_0 [1]),
        .I1(di_re[1]),
        .O(\buf_re_reg[63][3]__0_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    add_re_carry_i_4__0
       (.I0(\buf_re_reg[63][14]__0_0 [0]),
        .I1(di_re[0]),
        .O(\buf_re_reg[63][3]__0_0 [0]));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_im[0]_i_1 
       (.I0(\bf1_do_re_reg[15]_0 [0]),
        .I1(\bf1_do_re_reg[15]_0 [1]),
        .I2(\buf_im_reg[63][14]__0_0 [0]),
        .I3(\buf_re_reg[63][14]__0_0 [0]),
        .I4(\bf1_do_re_reg[15] ),
        .I5(add_im_3[0]),
        .O(\bf1_count_reg[5] [0]));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_im[10]_i_1 
       (.I0(\bf1_do_re_reg[15]_0 [0]),
        .I1(\bf1_do_re_reg[15]_0 [1]),
        .I2(\buf_im_reg[63][14]__0_0 [10]),
        .I3(bf1_sp_im1[10]),
        .I4(\bf1_do_re_reg[15] ),
        .I5(add_im_3[10]),
        .O(\bf1_count_reg[5] [10]));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_im[11]_i_1 
       (.I0(\bf1_do_re_reg[15]_0 [0]),
        .I1(\bf1_do_re_reg[15]_0 [1]),
        .I2(\buf_im_reg[63][14]__0_0 [11]),
        .I3(bf1_sp_im1[11]),
        .I4(\bf1_do_re_reg[15] ),
        .I5(add_im_3[11]),
        .O(\bf1_count_reg[5] [11]));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_im[12]_i_1 
       (.I0(\bf1_do_re_reg[15]_0 [0]),
        .I1(\bf1_do_re_reg[15]_0 [1]),
        .I2(\buf_im_reg[63][14]__0_0 [12]),
        .I3(bf1_sp_im1[12]),
        .I4(\bf1_do_re_reg[15] ),
        .I5(add_im_3[12]),
        .O(\bf1_count_reg[5] [12]));
  LUT1 #(
    .INIT(2'h1)) 
    \bf1_do_im[12]_i_3__1 
       (.I0(\buf_re_reg[63][14]__0_0 [12]),
        .O(\bf1_do_im[12]_i_3__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bf1_do_im[12]_i_4__1 
       (.I0(\buf_re_reg[63][14]__0_0 [11]),
        .O(\bf1_do_im[12]_i_4__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bf1_do_im[12]_i_5__1 
       (.I0(\buf_re_reg[63][14]__0_0 [10]),
        .O(\bf1_do_im[12]_i_5__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bf1_do_im[12]_i_6__1 
       (.I0(\buf_re_reg[63][14]__0_0 [9]),
        .O(\bf1_do_im[12]_i_6__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_im[13]_i_1 
       (.I0(\bf1_do_re_reg[15]_0 [0]),
        .I1(\bf1_do_re_reg[15]_0 [1]),
        .I2(\buf_im_reg[63][14]__0_0 [13]),
        .I3(bf1_sp_im1[13]),
        .I4(\bf1_do_re_reg[15] ),
        .I5(add_im_3[13]),
        .O(\bf1_count_reg[5] [13]));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_im[14]_i_1 
       (.I0(\bf1_do_re_reg[15]_0 [0]),
        .I1(\bf1_do_re_reg[15]_0 [1]),
        .I2(\buf_im_reg[63][14]__0_0 [14]),
        .I3(bf1_sp_im1[14]),
        .I4(\bf1_do_re_reg[15] ),
        .I5(add_im_3[14]),
        .O(\bf1_count_reg[5] [14]));
  LUT6 #(
    .INIT(64'h0000FFFFF870F870)) 
    \bf1_do_im[15]_i_1 
       (.I0(\bf1_do_re_reg[15]_0 [0]),
        .I1(\bf1_do_re_reg[15]_0 [1]),
        .I2(\buf_im_reg[63]_1 ),
        .I3(bf1_sp_im1[15]),
        .I4(\bf1_do_im_reg[15]_i_3_n_3 ),
        .I5(\bf1_do_re_reg[15] ),
        .O(\bf1_count_reg[5] [15]));
  LUT1 #(
    .INIT(2'h1)) 
    \bf1_do_im[15]_i_4__1 
       (.I0(\buf_re_reg[63]_0 ),
        .O(\bf1_do_im[15]_i_4__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bf1_do_im[15]_i_5__1 
       (.I0(\buf_re_reg[63][14]__0_0 [14]),
        .O(\bf1_do_im[15]_i_5__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bf1_do_im[15]_i_6__1 
       (.I0(\buf_re_reg[63][14]__0_0 [13]),
        .O(\bf1_do_im[15]_i_6__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_im[1]_i_1 
       (.I0(\bf1_do_re_reg[15]_0 [0]),
        .I1(\bf1_do_re_reg[15]_0 [1]),
        .I2(\buf_im_reg[63][14]__0_0 [1]),
        .I3(bf1_sp_im1[1]),
        .I4(\bf1_do_re_reg[15] ),
        .I5(add_im_3[1]),
        .O(\bf1_count_reg[5] [1]));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_im[2]_i_1 
       (.I0(\bf1_do_re_reg[15]_0 [0]),
        .I1(\bf1_do_re_reg[15]_0 [1]),
        .I2(\buf_im_reg[63][14]__0_0 [2]),
        .I3(bf1_sp_im1[2]),
        .I4(\bf1_do_re_reg[15] ),
        .I5(add_im_3[2]),
        .O(\bf1_count_reg[5] [2]));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_im[3]_i_1 
       (.I0(\bf1_do_re_reg[15]_0 [0]),
        .I1(\bf1_do_re_reg[15]_0 [1]),
        .I2(\buf_im_reg[63][14]__0_0 [3]),
        .I3(bf1_sp_im1[3]),
        .I4(\bf1_do_re_reg[15] ),
        .I5(add_im_3[3]),
        .O(\bf1_count_reg[5] [3]));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_im[4]_i_1 
       (.I0(\bf1_do_re_reg[15]_0 [0]),
        .I1(\bf1_do_re_reg[15]_0 [1]),
        .I2(\buf_im_reg[63][14]__0_0 [4]),
        .I3(bf1_sp_im1[4]),
        .I4(\bf1_do_re_reg[15] ),
        .I5(add_im_3[4]),
        .O(\bf1_count_reg[5] [4]));
  LUT1 #(
    .INIT(2'h1)) 
    \bf1_do_im[4]_i_3__1 
       (.I0(\buf_re_reg[63][14]__0_0 [0]),
        .O(\bf1_do_im[4]_i_3__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bf1_do_im[4]_i_4__1 
       (.I0(\buf_re_reg[63][14]__0_0 [4]),
        .O(\bf1_do_im[4]_i_4__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bf1_do_im[4]_i_5__1 
       (.I0(\buf_re_reg[63][14]__0_0 [3]),
        .O(\bf1_do_im[4]_i_5__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bf1_do_im[4]_i_6__1 
       (.I0(\buf_re_reg[63][14]__0_0 [2]),
        .O(\bf1_do_im[4]_i_6__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bf1_do_im[4]_i_7__1 
       (.I0(\buf_re_reg[63][14]__0_0 [1]),
        .O(\bf1_do_im[4]_i_7__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_im[5]_i_1 
       (.I0(\bf1_do_re_reg[15]_0 [0]),
        .I1(\bf1_do_re_reg[15]_0 [1]),
        .I2(\buf_im_reg[63][14]__0_0 [5]),
        .I3(bf1_sp_im1[5]),
        .I4(\bf1_do_re_reg[15] ),
        .I5(add_im_3[5]),
        .O(\bf1_count_reg[5] [5]));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_im[6]_i_1 
       (.I0(\bf1_do_re_reg[15]_0 [0]),
        .I1(\bf1_do_re_reg[15]_0 [1]),
        .I2(\buf_im_reg[63][14]__0_0 [6]),
        .I3(bf1_sp_im1[6]),
        .I4(\bf1_do_re_reg[15] ),
        .I5(add_im_3[6]),
        .O(\bf1_count_reg[5] [6]));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_im[7]_i_1 
       (.I0(\bf1_do_re_reg[15]_0 [0]),
        .I1(\bf1_do_re_reg[15]_0 [1]),
        .I2(\buf_im_reg[63][14]__0_0 [7]),
        .I3(bf1_sp_im1[7]),
        .I4(\bf1_do_re_reg[15] ),
        .I5(add_im_3[7]),
        .O(\bf1_count_reg[5] [7]));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_im[8]_i_1 
       (.I0(\bf1_do_re_reg[15]_0 [0]),
        .I1(\bf1_do_re_reg[15]_0 [1]),
        .I2(\buf_im_reg[63][14]__0_0 [8]),
        .I3(bf1_sp_im1[8]),
        .I4(\bf1_do_re_reg[15] ),
        .I5(add_im_3[8]),
        .O(\bf1_count_reg[5] [8]));
  LUT1 #(
    .INIT(2'h1)) 
    \bf1_do_im[8]_i_3__1 
       (.I0(\buf_re_reg[63][14]__0_0 [8]),
        .O(\bf1_do_im[8]_i_3__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bf1_do_im[8]_i_4__1 
       (.I0(\buf_re_reg[63][14]__0_0 [7]),
        .O(\bf1_do_im[8]_i_4__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bf1_do_im[8]_i_5__1 
       (.I0(\buf_re_reg[63][14]__0_0 [6]),
        .O(\bf1_do_im[8]_i_5__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bf1_do_im[8]_i_6__1 
       (.I0(\buf_re_reg[63][14]__0_0 [5]),
        .O(\bf1_do_im[8]_i_6__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_im[9]_i_1 
       (.I0(\bf1_do_re_reg[15]_0 [0]),
        .I1(\bf1_do_re_reg[15]_0 [1]),
        .I2(\buf_im_reg[63][14]__0_0 [9]),
        .I3(bf1_sp_im1[9]),
        .I4(\bf1_do_re_reg[15] ),
        .I5(add_im_3[9]),
        .O(\bf1_count_reg[5] [9]));
  CARRY4 \bf1_do_im_reg[12]_i_2 
       (.CI(\bf1_do_im_reg[8]_i_2_n_0 ),
        .CO({\bf1_do_im_reg[12]_i_2_n_0 ,\bf1_do_im_reg[12]_i_2_n_1 ,\bf1_do_im_reg[12]_i_2_n_2 ,\bf1_do_im_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(bf1_sp_im1[12:9]),
        .S({\bf1_do_im[12]_i_3__1_n_0 ,\bf1_do_im[12]_i_4__1_n_0 ,\bf1_do_im[12]_i_5__1_n_0 ,\bf1_do_im[12]_i_6__1_n_0 }));
  CARRY4 \bf1_do_im_reg[15]_i_2 
       (.CI(\bf1_do_im_reg[12]_i_2_n_0 ),
        .CO({\NLW_bf1_do_im_reg[15]_i_2_CO_UNCONNECTED [3:2],\bf1_do_im_reg[15]_i_2_n_2 ,\bf1_do_im_reg[15]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_bf1_do_im_reg[15]_i_2_O_UNCONNECTED [3],bf1_sp_im1[15:13]}),
        .S({1'b0,\bf1_do_im[15]_i_4__1_n_0 ,\bf1_do_im[15]_i_5__1_n_0 ,\bf1_do_im[15]_i_6__1_n_0 }));
  CARRY4 \bf1_do_im_reg[15]_i_3 
       (.CI(\bf1_do_im_reg[15] ),
        .CO({\NLW_bf1_do_im_reg[15]_i_3_CO_UNCONNECTED [3:1],\bf1_do_im_reg[15]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_bf1_do_im_reg[15]_i_3_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 \bf1_do_im_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\bf1_do_im_reg[4]_i_2_n_0 ,\bf1_do_im_reg[4]_i_2_n_1 ,\bf1_do_im_reg[4]_i_2_n_2 ,\bf1_do_im_reg[4]_i_2_n_3 }),
        .CYINIT(\bf1_do_im[4]_i_3__1_n_0 ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(bf1_sp_im1[4:1]),
        .S({\bf1_do_im[4]_i_4__1_n_0 ,\bf1_do_im[4]_i_5__1_n_0 ,\bf1_do_im[4]_i_6__1_n_0 ,\bf1_do_im[4]_i_7__1_n_0 }));
  CARRY4 \bf1_do_im_reg[8]_i_2 
       (.CI(\bf1_do_im_reg[4]_i_2_n_0 ),
        .CO({\bf1_do_im_reg[8]_i_2_n_0 ,\bf1_do_im_reg[8]_i_2_n_1 ,\bf1_do_im_reg[8]_i_2_n_2 ,\bf1_do_im_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(bf1_sp_im1[8:5]),
        .S({\bf1_do_im[8]_i_3__1_n_0 ,\bf1_do_im[8]_i_4__1_n_0 ,\bf1_do_im[8]_i_5__1_n_0 ,\bf1_do_im[8]_i_6__1_n_0 }));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_re[0]_i_1 
       (.I0(\bf1_do_re_reg[15]_0 [0]),
        .I1(\bf1_do_re_reg[15]_0 [1]),
        .I2(\buf_re_reg[63][14]__0_0 [0]),
        .I3(\buf_im_reg[63][14]__0_0 [0]),
        .I4(\bf1_do_re_reg[15] ),
        .I5(add_re_2[0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_re[10]_i_1 
       (.I0(\bf1_do_re_reg[15]_0 [0]),
        .I1(\bf1_do_re_reg[15]_0 [1]),
        .I2(\buf_re_reg[63][14]__0_0 [10]),
        .I3(\buf_im_reg[63][14]__0_0 [10]),
        .I4(\bf1_do_re_reg[15] ),
        .I5(add_re_2[10]),
        .O(D[10]));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_re[11]_i_1 
       (.I0(\bf1_do_re_reg[15]_0 [0]),
        .I1(\bf1_do_re_reg[15]_0 [1]),
        .I2(\buf_re_reg[63][14]__0_0 [11]),
        .I3(\buf_im_reg[63][14]__0_0 [11]),
        .I4(\bf1_do_re_reg[15] ),
        .I5(add_re_2[11]),
        .O(D[11]));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_re[12]_i_1 
       (.I0(\bf1_do_re_reg[15]_0 [0]),
        .I1(\bf1_do_re_reg[15]_0 [1]),
        .I2(\buf_re_reg[63][14]__0_0 [12]),
        .I3(\buf_im_reg[63][14]__0_0 [12]),
        .I4(\bf1_do_re_reg[15] ),
        .I5(add_re_2[12]),
        .O(D[12]));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_re[13]_i_1 
       (.I0(\bf1_do_re_reg[15]_0 [0]),
        .I1(\bf1_do_re_reg[15]_0 [1]),
        .I2(\buf_re_reg[63][14]__0_0 [13]),
        .I3(\buf_im_reg[63][14]__0_0 [13]),
        .I4(\bf1_do_re_reg[15] ),
        .I5(add_re_2[13]),
        .O(D[13]));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_re[14]_i_1 
       (.I0(\bf1_do_re_reg[15]_0 [0]),
        .I1(\bf1_do_re_reg[15]_0 [1]),
        .I2(\buf_re_reg[63][14]__0_0 [14]),
        .I3(\buf_im_reg[63][14]__0_0 [14]),
        .I4(\bf1_do_re_reg[15] ),
        .I5(add_re_2[14]),
        .O(D[14]));
  LUT6 #(
    .INIT(64'h0000FFFFF870F870)) 
    \bf1_do_re[15]_i_1 
       (.I0(\bf1_do_re_reg[15]_0 [0]),
        .I1(\bf1_do_re_reg[15]_0 [1]),
        .I2(\buf_re_reg[63]_0 ),
        .I3(\buf_im_reg[63]_1 ),
        .I4(\bf1_do_re_reg[15]_i_2_n_3 ),
        .I5(\bf1_do_re_reg[15] ),
        .O(D[15]));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_re[1]_i_1 
       (.I0(\bf1_do_re_reg[15]_0 [0]),
        .I1(\bf1_do_re_reg[15]_0 [1]),
        .I2(\buf_re_reg[63][14]__0_0 [1]),
        .I3(\buf_im_reg[63][14]__0_0 [1]),
        .I4(\bf1_do_re_reg[15] ),
        .I5(add_re_2[1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_re[2]_i_1 
       (.I0(\bf1_do_re_reg[15]_0 [0]),
        .I1(\bf1_do_re_reg[15]_0 [1]),
        .I2(\buf_re_reg[63][14]__0_0 [2]),
        .I3(\buf_im_reg[63][14]__0_0 [2]),
        .I4(\bf1_do_re_reg[15] ),
        .I5(add_re_2[2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_re[3]_i_1 
       (.I0(\bf1_do_re_reg[15]_0 [0]),
        .I1(\bf1_do_re_reg[15]_0 [1]),
        .I2(\buf_re_reg[63][14]__0_0 [3]),
        .I3(\buf_im_reg[63][14]__0_0 [3]),
        .I4(\bf1_do_re_reg[15] ),
        .I5(add_re_2[3]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_re[4]_i_1 
       (.I0(\bf1_do_re_reg[15]_0 [0]),
        .I1(\bf1_do_re_reg[15]_0 [1]),
        .I2(\buf_re_reg[63][14]__0_0 [4]),
        .I3(\buf_im_reg[63][14]__0_0 [4]),
        .I4(\bf1_do_re_reg[15] ),
        .I5(add_re_2[4]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_re[5]_i_1 
       (.I0(\bf1_do_re_reg[15]_0 [0]),
        .I1(\bf1_do_re_reg[15]_0 [1]),
        .I2(\buf_re_reg[63][14]__0_0 [5]),
        .I3(\buf_im_reg[63][14]__0_0 [5]),
        .I4(\bf1_do_re_reg[15] ),
        .I5(add_re_2[5]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_re[6]_i_1 
       (.I0(\bf1_do_re_reg[15]_0 [0]),
        .I1(\bf1_do_re_reg[15]_0 [1]),
        .I2(\buf_re_reg[63][14]__0_0 [6]),
        .I3(\buf_im_reg[63][14]__0_0 [6]),
        .I4(\bf1_do_re_reg[15] ),
        .I5(add_re_2[6]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_re[7]_i_1 
       (.I0(\bf1_do_re_reg[15]_0 [0]),
        .I1(\bf1_do_re_reg[15]_0 [1]),
        .I2(\buf_re_reg[63][14]__0_0 [7]),
        .I3(\buf_im_reg[63][14]__0_0 [7]),
        .I4(\bf1_do_re_reg[15] ),
        .I5(add_re_2[7]),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_re[8]_i_1 
       (.I0(\bf1_do_re_reg[15]_0 [0]),
        .I1(\bf1_do_re_reg[15]_0 [1]),
        .I2(\buf_re_reg[63][14]__0_0 [8]),
        .I3(\buf_im_reg[63][14]__0_0 [8]),
        .I4(\bf1_do_re_reg[15] ),
        .I5(add_re_2[8]),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_re[9]_i_1 
       (.I0(\bf1_do_re_reg[15]_0 [0]),
        .I1(\bf1_do_re_reg[15]_0 [1]),
        .I2(\buf_re_reg[63][14]__0_0 [9]),
        .I3(\buf_im_reg[63][14]__0_0 [9]),
        .I4(\bf1_do_re_reg[15] ),
        .I5(add_re_2[9]),
        .O(D[9]));
  CARRY4 \bf1_do_re_reg[15]_i_2 
       (.CI(CO),
        .CO({\NLW_bf1_do_re_reg[15]_i_2_CO_UNCONNECTED [3:1],\bf1_do_re_reg[15]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_bf1_do_re_reg[15]_i_2_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im_reg[14][11]_srl15_i_1 
       (.I0(\buf_im_reg[15][14]__0 [0]),
        .I1(\buf_im_reg[15][11]__0 ),
        .I2(\buf_im_reg[15][15]__0 [11]),
        .O(db1_di_im[0]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im_reg[14][12]_srl15_i_1 
       (.I0(\buf_im_reg[15][14]__0 [1]),
        .I1(\buf_im_reg[15][11]__0 ),
        .I2(\buf_im_reg[15][15]__0 [12]),
        .O(db1_di_im[1]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im_reg[14][13]_srl15_i_1 
       (.I0(\buf_im_reg[15][14]__0 [2]),
        .I1(\buf_im_reg[15][11]__0 ),
        .I2(\buf_im_reg[15][15]__0 [13]),
        .O(db1_di_im[2]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im_reg[14][14]_srl15_i_1 
       (.I0(\buf_im_reg[15][14]__0 [3]),
        .I1(\buf_im_reg[15][11]__0 ),
        .I2(\buf_im_reg[15][15]__0 [14]),
        .O(db1_di_im[3]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im_reg[14][15]_srl15_i_1 
       (.I0(\buf_im_reg[15][15]__0_0 ),
        .I1(\buf_im_reg[15][11]__0 ),
        .I2(\buf_im_reg[15][15]__0 [15]),
        .O(db1_di_im[4]));
  (* srl_bus_name = "\inst/SU1/DB1/buf_im_reg[31] " *) 
  (* srl_name = "\inst/SU1/DB1/buf_im_reg[31][0]_srl32 " *) 
  SRLC32E \buf_im_reg[31][0]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clock),
        .D(db1_di_im_5[0]),
        .Q(\NLW_buf_im_reg[31][0]_srl32_Q_UNCONNECTED ),
        .Q31(\buf_im_reg[31][0]_srl32_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im_reg[31][0]_srl32_i_1 
       (.I0(sub_im_1[0]),
        .I1(\bf1_do_re_reg[15] ),
        .I2(di_im[0]),
        .O(db1_di_im_5[0]));
  (* srl_bus_name = "\inst/SU1/DB1/buf_im_reg[31] " *) 
  (* srl_name = "\inst/SU1/DB1/buf_im_reg[31][10]_srl32 " *) 
  SRLC32E \buf_im_reg[31][10]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clock),
        .D(db1_di_im_5[10]),
        .Q(\NLW_buf_im_reg[31][10]_srl32_Q_UNCONNECTED ),
        .Q31(\buf_im_reg[31][10]_srl32_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im_reg[31][10]_srl32_i_1 
       (.I0(sub_im_1[10]),
        .I1(\bf1_do_re_reg[15] ),
        .I2(di_im[10]),
        .O(db1_di_im_5[10]));
  (* srl_bus_name = "\inst/SU1/DB1/buf_im_reg[31] " *) 
  (* srl_name = "\inst/SU1/DB1/buf_im_reg[31][11]_srl32 " *) 
  SRLC32E \buf_im_reg[31][11]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clock),
        .D(db1_di_im_5[11]),
        .Q(\NLW_buf_im_reg[31][11]_srl32_Q_UNCONNECTED ),
        .Q31(\buf_im_reg[31][11]_srl32_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im_reg[31][11]_srl32_i_1 
       (.I0(sub_im_1[11]),
        .I1(\bf1_do_re_reg[15] ),
        .I2(di_im[11]),
        .O(db1_di_im_5[11]));
  (* srl_bus_name = "\inst/SU1/DB1/buf_im_reg[31] " *) 
  (* srl_name = "\inst/SU1/DB1/buf_im_reg[31][12]_srl32 " *) 
  SRLC32E \buf_im_reg[31][12]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clock),
        .D(db1_di_im_5[12]),
        .Q(\NLW_buf_im_reg[31][12]_srl32_Q_UNCONNECTED ),
        .Q31(\buf_im_reg[31][12]_srl32_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im_reg[31][12]_srl32_i_1 
       (.I0(sub_im_1[12]),
        .I1(\bf1_do_re_reg[15] ),
        .I2(di_im[12]),
        .O(db1_di_im_5[12]));
  (* srl_bus_name = "\inst/SU1/DB1/buf_im_reg[31] " *) 
  (* srl_name = "\inst/SU1/DB1/buf_im_reg[31][13]_srl32 " *) 
  SRLC32E \buf_im_reg[31][13]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clock),
        .D(db1_di_im_5[13]),
        .Q(\NLW_buf_im_reg[31][13]_srl32_Q_UNCONNECTED ),
        .Q31(\buf_im_reg[31][13]_srl32_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im_reg[31][13]_srl32_i_1 
       (.I0(sub_im_1[13]),
        .I1(\bf1_do_re_reg[15] ),
        .I2(di_im[13]),
        .O(db1_di_im_5[13]));
  (* srl_bus_name = "\inst/SU1/DB1/buf_im_reg[31] " *) 
  (* srl_name = "\inst/SU1/DB1/buf_im_reg[31][14]_srl32 " *) 
  SRLC32E \buf_im_reg[31][14]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clock),
        .D(db1_di_im_5[14]),
        .Q(\NLW_buf_im_reg[31][14]_srl32_Q_UNCONNECTED ),
        .Q31(\buf_im_reg[31][14]_srl32_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im_reg[31][14]_srl32_i_1 
       (.I0(sub_im_1[14]),
        .I1(\bf1_do_re_reg[15] ),
        .I2(di_im[14]),
        .O(db1_di_im_5[14]));
  (* srl_bus_name = "\inst/SU1/DB1/buf_im_reg[31] " *) 
  (* srl_name = "\inst/SU1/DB1/buf_im_reg[31][15]_srl32 " *) 
  SRLC32E \buf_im_reg[31][15]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clock),
        .D(db1_di_im_5[15]),
        .Q(\NLW_buf_im_reg[31][15]_srl32_Q_UNCONNECTED ),
        .Q31(\buf_im_reg[31][15]_srl32_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im_reg[31][15]_srl32_i_1 
       (.I0(\buf_im_reg[31][15]_srl32_0 ),
        .I1(\bf1_do_re_reg[15] ),
        .I2(di_im[15]),
        .O(db1_di_im_5[15]));
  (* srl_bus_name = "\inst/SU1/DB1/buf_im_reg[31] " *) 
  (* srl_name = "\inst/SU1/DB1/buf_im_reg[31][1]_srl32 " *) 
  SRLC32E \buf_im_reg[31][1]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clock),
        .D(db1_di_im_5[1]),
        .Q(\NLW_buf_im_reg[31][1]_srl32_Q_UNCONNECTED ),
        .Q31(\buf_im_reg[31][1]_srl32_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im_reg[31][1]_srl32_i_1 
       (.I0(sub_im_1[1]),
        .I1(\bf1_do_re_reg[15] ),
        .I2(di_im[1]),
        .O(db1_di_im_5[1]));
  (* srl_bus_name = "\inst/SU1/DB1/buf_im_reg[31] " *) 
  (* srl_name = "\inst/SU1/DB1/buf_im_reg[31][2]_srl32 " *) 
  SRLC32E \buf_im_reg[31][2]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clock),
        .D(db1_di_im_5[2]),
        .Q(\NLW_buf_im_reg[31][2]_srl32_Q_UNCONNECTED ),
        .Q31(\buf_im_reg[31][2]_srl32_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im_reg[31][2]_srl32_i_1 
       (.I0(sub_im_1[2]),
        .I1(\bf1_do_re_reg[15] ),
        .I2(di_im[2]),
        .O(db1_di_im_5[2]));
  (* srl_bus_name = "\inst/SU1/DB1/buf_im_reg[31] " *) 
  (* srl_name = "\inst/SU1/DB1/buf_im_reg[31][3]_srl32 " *) 
  SRLC32E \buf_im_reg[31][3]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clock),
        .D(db1_di_im_5[3]),
        .Q(\NLW_buf_im_reg[31][3]_srl32_Q_UNCONNECTED ),
        .Q31(\buf_im_reg[31][3]_srl32_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im_reg[31][3]_srl32_i_1 
       (.I0(sub_im_1[3]),
        .I1(\bf1_do_re_reg[15] ),
        .I2(di_im[3]),
        .O(db1_di_im_5[3]));
  (* srl_bus_name = "\inst/SU1/DB1/buf_im_reg[31] " *) 
  (* srl_name = "\inst/SU1/DB1/buf_im_reg[31][4]_srl32 " *) 
  SRLC32E \buf_im_reg[31][4]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clock),
        .D(db1_di_im_5[4]),
        .Q(\NLW_buf_im_reg[31][4]_srl32_Q_UNCONNECTED ),
        .Q31(\buf_im_reg[31][4]_srl32_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im_reg[31][4]_srl32_i_1 
       (.I0(sub_im_1[4]),
        .I1(\bf1_do_re_reg[15] ),
        .I2(di_im[4]),
        .O(db1_di_im_5[4]));
  (* srl_bus_name = "\inst/SU1/DB1/buf_im_reg[31] " *) 
  (* srl_name = "\inst/SU1/DB1/buf_im_reg[31][5]_srl32 " *) 
  SRLC32E \buf_im_reg[31][5]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clock),
        .D(db1_di_im_5[5]),
        .Q(\NLW_buf_im_reg[31][5]_srl32_Q_UNCONNECTED ),
        .Q31(\buf_im_reg[31][5]_srl32_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im_reg[31][5]_srl32_i_1 
       (.I0(sub_im_1[5]),
        .I1(\bf1_do_re_reg[15] ),
        .I2(di_im[5]),
        .O(db1_di_im_5[5]));
  (* srl_bus_name = "\inst/SU1/DB1/buf_im_reg[31] " *) 
  (* srl_name = "\inst/SU1/DB1/buf_im_reg[31][6]_srl32 " *) 
  SRLC32E \buf_im_reg[31][6]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clock),
        .D(db1_di_im_5[6]),
        .Q(\NLW_buf_im_reg[31][6]_srl32_Q_UNCONNECTED ),
        .Q31(\buf_im_reg[31][6]_srl32_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im_reg[31][6]_srl32_i_1 
       (.I0(sub_im_1[6]),
        .I1(\bf1_do_re_reg[15] ),
        .I2(di_im[6]),
        .O(db1_di_im_5[6]));
  (* srl_bus_name = "\inst/SU1/DB1/buf_im_reg[31] " *) 
  (* srl_name = "\inst/SU1/DB1/buf_im_reg[31][7]_srl32 " *) 
  SRLC32E \buf_im_reg[31][7]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clock),
        .D(db1_di_im_5[7]),
        .Q(\NLW_buf_im_reg[31][7]_srl32_Q_UNCONNECTED ),
        .Q31(\buf_im_reg[31][7]_srl32_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im_reg[31][7]_srl32_i_1 
       (.I0(sub_im_1[7]),
        .I1(\bf1_do_re_reg[15] ),
        .I2(di_im[7]),
        .O(db1_di_im_5[7]));
  (* srl_bus_name = "\inst/SU1/DB1/buf_im_reg[31] " *) 
  (* srl_name = "\inst/SU1/DB1/buf_im_reg[31][8]_srl32 " *) 
  SRLC32E \buf_im_reg[31][8]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clock),
        .D(db1_di_im_5[8]),
        .Q(\NLW_buf_im_reg[31][8]_srl32_Q_UNCONNECTED ),
        .Q31(\buf_im_reg[31][8]_srl32_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im_reg[31][8]_srl32_i_1 
       (.I0(sub_im_1[8]),
        .I1(\bf1_do_re_reg[15] ),
        .I2(di_im[8]),
        .O(db1_di_im_5[8]));
  (* srl_bus_name = "\inst/SU1/DB1/buf_im_reg[31] " *) 
  (* srl_name = "\inst/SU1/DB1/buf_im_reg[31][9]_srl32 " *) 
  SRLC32E \buf_im_reg[31][9]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clock),
        .D(db1_di_im_5[9]),
        .Q(\NLW_buf_im_reg[31][9]_srl32_Q_UNCONNECTED ),
        .Q31(\buf_im_reg[31][9]_srl32_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im_reg[31][9]_srl32_i_1 
       (.I0(sub_im_1[9]),
        .I1(\bf1_do_re_reg[15] ),
        .I2(di_im[9]),
        .O(db1_di_im_5[9]));
  (* srl_bus_name = "\inst/SU1/DB1/buf_im_reg[62] " *) 
  (* srl_name = "\inst/SU1/DB1/buf_im_reg[62][0]_srl31 " *) 
  SRLC32E \buf_im_reg[62][0]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(clock),
        .D(\buf_im_reg[31][0]_srl32_n_1 ),
        .Q(\buf_im_reg[62][0]_srl31_n_0 ),
        .Q31(\NLW_buf_im_reg[62][0]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/SU1/DB1/buf_im_reg[62] " *) 
  (* srl_name = "\inst/SU1/DB1/buf_im_reg[62][10]_srl31 " *) 
  SRLC32E \buf_im_reg[62][10]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(clock),
        .D(\buf_im_reg[31][10]_srl32_n_1 ),
        .Q(\buf_im_reg[62][10]_srl31_n_0 ),
        .Q31(\NLW_buf_im_reg[62][10]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/SU1/DB1/buf_im_reg[62] " *) 
  (* srl_name = "\inst/SU1/DB1/buf_im_reg[62][11]_srl31 " *) 
  SRLC32E \buf_im_reg[62][11]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(clock),
        .D(\buf_im_reg[31][11]_srl32_n_1 ),
        .Q(\buf_im_reg[62][11]_srl31_n_0 ),
        .Q31(\NLW_buf_im_reg[62][11]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/SU1/DB1/buf_im_reg[62] " *) 
  (* srl_name = "\inst/SU1/DB1/buf_im_reg[62][12]_srl31 " *) 
  SRLC32E \buf_im_reg[62][12]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(clock),
        .D(\buf_im_reg[31][12]_srl32_n_1 ),
        .Q(\buf_im_reg[62][12]_srl31_n_0 ),
        .Q31(\NLW_buf_im_reg[62][12]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/SU1/DB1/buf_im_reg[62] " *) 
  (* srl_name = "\inst/SU1/DB1/buf_im_reg[62][13]_srl31 " *) 
  SRLC32E \buf_im_reg[62][13]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(clock),
        .D(\buf_im_reg[31][13]_srl32_n_1 ),
        .Q(\buf_im_reg[62][13]_srl31_n_0 ),
        .Q31(\NLW_buf_im_reg[62][13]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/SU1/DB1/buf_im_reg[62] " *) 
  (* srl_name = "\inst/SU1/DB1/buf_im_reg[62][14]_srl31 " *) 
  SRLC32E \buf_im_reg[62][14]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(clock),
        .D(\buf_im_reg[31][14]_srl32_n_1 ),
        .Q(\buf_im_reg[62][14]_srl31_n_0 ),
        .Q31(\NLW_buf_im_reg[62][14]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/SU1/DB1/buf_im_reg[62] " *) 
  (* srl_name = "\inst/SU1/DB1/buf_im_reg[62][15]_srl31 " *) 
  SRLC32E \buf_im_reg[62][15]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(clock),
        .D(\buf_im_reg[31][15]_srl32_n_1 ),
        .Q(\buf_im_reg[62][15]_srl31_n_0 ),
        .Q31(\NLW_buf_im_reg[62][15]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/SU1/DB1/buf_im_reg[62] " *) 
  (* srl_name = "\inst/SU1/DB1/buf_im_reg[62][1]_srl31 " *) 
  SRLC32E \buf_im_reg[62][1]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(clock),
        .D(\buf_im_reg[31][1]_srl32_n_1 ),
        .Q(\buf_im_reg[62][1]_srl31_n_0 ),
        .Q31(\NLW_buf_im_reg[62][1]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/SU1/DB1/buf_im_reg[62] " *) 
  (* srl_name = "\inst/SU1/DB1/buf_im_reg[62][2]_srl31 " *) 
  SRLC32E \buf_im_reg[62][2]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(clock),
        .D(\buf_im_reg[31][2]_srl32_n_1 ),
        .Q(\buf_im_reg[62][2]_srl31_n_0 ),
        .Q31(\NLW_buf_im_reg[62][2]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/SU1/DB1/buf_im_reg[62] " *) 
  (* srl_name = "\inst/SU1/DB1/buf_im_reg[62][3]_srl31 " *) 
  SRLC32E \buf_im_reg[62][3]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(clock),
        .D(\buf_im_reg[31][3]_srl32_n_1 ),
        .Q(\buf_im_reg[62][3]_srl31_n_0 ),
        .Q31(\NLW_buf_im_reg[62][3]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/SU1/DB1/buf_im_reg[62] " *) 
  (* srl_name = "\inst/SU1/DB1/buf_im_reg[62][4]_srl31 " *) 
  SRLC32E \buf_im_reg[62][4]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(clock),
        .D(\buf_im_reg[31][4]_srl32_n_1 ),
        .Q(\buf_im_reg[62][4]_srl31_n_0 ),
        .Q31(\NLW_buf_im_reg[62][4]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/SU1/DB1/buf_im_reg[62] " *) 
  (* srl_name = "\inst/SU1/DB1/buf_im_reg[62][5]_srl31 " *) 
  SRLC32E \buf_im_reg[62][5]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(clock),
        .D(\buf_im_reg[31][5]_srl32_n_1 ),
        .Q(\buf_im_reg[62][5]_srl31_n_0 ),
        .Q31(\NLW_buf_im_reg[62][5]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/SU1/DB1/buf_im_reg[62] " *) 
  (* srl_name = "\inst/SU1/DB1/buf_im_reg[62][6]_srl31 " *) 
  SRLC32E \buf_im_reg[62][6]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(clock),
        .D(\buf_im_reg[31][6]_srl32_n_1 ),
        .Q(\buf_im_reg[62][6]_srl31_n_0 ),
        .Q31(\NLW_buf_im_reg[62][6]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/SU1/DB1/buf_im_reg[62] " *) 
  (* srl_name = "\inst/SU1/DB1/buf_im_reg[62][7]_srl31 " *) 
  SRLC32E \buf_im_reg[62][7]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(clock),
        .D(\buf_im_reg[31][7]_srl32_n_1 ),
        .Q(\buf_im_reg[62][7]_srl31_n_0 ),
        .Q31(\NLW_buf_im_reg[62][7]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/SU1/DB1/buf_im_reg[62] " *) 
  (* srl_name = "\inst/SU1/DB1/buf_im_reg[62][8]_srl31 " *) 
  SRLC32E \buf_im_reg[62][8]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(clock),
        .D(\buf_im_reg[31][8]_srl32_n_1 ),
        .Q(\buf_im_reg[62][8]_srl31_n_0 ),
        .Q31(\NLW_buf_im_reg[62][8]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/SU1/DB1/buf_im_reg[62] " *) 
  (* srl_name = "\inst/SU1/DB1/buf_im_reg[62][9]_srl31 " *) 
  SRLC32E \buf_im_reg[62][9]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(clock),
        .D(\buf_im_reg[31][9]_srl32_n_1 ),
        .Q(\buf_im_reg[62][9]_srl31_n_0 ),
        .Q31(\NLW_buf_im_reg[62][9]_srl31_Q31_UNCONNECTED ));
  FDRE \buf_im_reg[63][0]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[62][0]_srl31_n_0 ),
        .Q(\buf_im_reg[63][14]__0_0 [0]),
        .R(1'b0));
  FDRE \buf_im_reg[63][10]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[62][10]_srl31_n_0 ),
        .Q(\buf_im_reg[63][14]__0_0 [10]),
        .R(1'b0));
  FDRE \buf_im_reg[63][11]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[62][11]_srl31_n_0 ),
        .Q(\buf_im_reg[63][14]__0_0 [11]),
        .R(1'b0));
  FDRE \buf_im_reg[63][12]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[62][12]_srl31_n_0 ),
        .Q(\buf_im_reg[63][14]__0_0 [12]),
        .R(1'b0));
  FDRE \buf_im_reg[63][13]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[62][13]_srl31_n_0 ),
        .Q(\buf_im_reg[63][14]__0_0 [13]),
        .R(1'b0));
  FDRE \buf_im_reg[63][14]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[62][14]_srl31_n_0 ),
        .Q(\buf_im_reg[63][14]__0_0 [14]),
        .R(1'b0));
  FDRE \buf_im_reg[63][15]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[62][15]_srl31_n_0 ),
        .Q(\buf_im_reg[63]_1 ),
        .R(1'b0));
  FDRE \buf_im_reg[63][1]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[62][1]_srl31_n_0 ),
        .Q(\buf_im_reg[63][14]__0_0 [1]),
        .R(1'b0));
  FDRE \buf_im_reg[63][2]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[62][2]_srl31_n_0 ),
        .Q(\buf_im_reg[63][14]__0_0 [2]),
        .R(1'b0));
  FDRE \buf_im_reg[63][3]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[62][3]_srl31_n_0 ),
        .Q(\buf_im_reg[63][14]__0_0 [3]),
        .R(1'b0));
  FDRE \buf_im_reg[63][4]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[62][4]_srl31_n_0 ),
        .Q(\buf_im_reg[63][14]__0_0 [4]),
        .R(1'b0));
  FDRE \buf_im_reg[63][5]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[62][5]_srl31_n_0 ),
        .Q(\buf_im_reg[63][14]__0_0 [5]),
        .R(1'b0));
  FDRE \buf_im_reg[63][6]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[62][6]_srl31_n_0 ),
        .Q(\buf_im_reg[63][14]__0_0 [6]),
        .R(1'b0));
  FDRE \buf_im_reg[63][7]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[62][7]_srl31_n_0 ),
        .Q(\buf_im_reg[63][14]__0_0 [7]),
        .R(1'b0));
  FDRE \buf_im_reg[63][8]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[62][8]_srl31_n_0 ),
        .Q(\buf_im_reg[63][14]__0_0 [8]),
        .R(1'b0));
  FDRE \buf_im_reg[63][9]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[62][9]_srl31_n_0 ),
        .Q(\buf_im_reg[63][14]__0_0 [9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re_reg[14][11]_srl15_i_1 
       (.I0(\buf_re_reg[15][14]__0 [0]),
        .I1(\buf_im_reg[15][11]__0 ),
        .I2(Q[11]),
        .O(db1_di_re[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re_reg[14][12]_srl15_i_1 
       (.I0(\buf_re_reg[15][14]__0 [1]),
        .I1(\buf_im_reg[15][11]__0 ),
        .I2(Q[12]),
        .O(db1_di_re[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re_reg[14][13]_srl15_i_1 
       (.I0(\buf_re_reg[15][14]__0 [2]),
        .I1(\buf_im_reg[15][11]__0 ),
        .I2(Q[13]),
        .O(db1_di_re[2]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re_reg[14][14]_srl15_i_1 
       (.I0(\buf_re_reg[15][14]__0 [3]),
        .I1(\buf_im_reg[15][11]__0 ),
        .I2(Q[14]),
        .O(db1_di_re[3]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re_reg[14][15]_srl15_i_1 
       (.I0(\buf_re_reg[15][15]__0 ),
        .I1(\buf_im_reg[15][11]__0 ),
        .I2(Q[15]),
        .O(db1_di_re[4]));
  (* srl_bus_name = "\inst/SU1/DB1/buf_re_reg[31] " *) 
  (* srl_name = "\inst/SU1/DB1/buf_re_reg[31][0]_srl32 " *) 
  SRLC32E \buf_re_reg[31][0]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clock),
        .D(db1_di_re_4[0]),
        .Q(\NLW_buf_re_reg[31][0]_srl32_Q_UNCONNECTED ),
        .Q31(\buf_re_reg[31][0]_srl32_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re_reg[31][0]_srl32_i_1 
       (.I0(sub_re_0[0]),
        .I1(\bf1_do_re_reg[15] ),
        .I2(di_re[0]),
        .O(db1_di_re_4[0]));
  (* srl_bus_name = "\inst/SU1/DB1/buf_re_reg[31] " *) 
  (* srl_name = "\inst/SU1/DB1/buf_re_reg[31][10]_srl32 " *) 
  SRLC32E \buf_re_reg[31][10]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clock),
        .D(db1_di_re_4[10]),
        .Q(\NLW_buf_re_reg[31][10]_srl32_Q_UNCONNECTED ),
        .Q31(\buf_re_reg[31][10]_srl32_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re_reg[31][10]_srl32_i_1 
       (.I0(sub_re_0[10]),
        .I1(\bf1_do_re_reg[15] ),
        .I2(di_re[10]),
        .O(db1_di_re_4[10]));
  (* srl_bus_name = "\inst/SU1/DB1/buf_re_reg[31] " *) 
  (* srl_name = "\inst/SU1/DB1/buf_re_reg[31][11]_srl32 " *) 
  SRLC32E \buf_re_reg[31][11]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clock),
        .D(db1_di_re_4[11]),
        .Q(\NLW_buf_re_reg[31][11]_srl32_Q_UNCONNECTED ),
        .Q31(\buf_re_reg[31][11]_srl32_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re_reg[31][11]_srl32_i_1 
       (.I0(sub_re_0[11]),
        .I1(\bf1_do_re_reg[15] ),
        .I2(di_re[11]),
        .O(db1_di_re_4[11]));
  (* srl_bus_name = "\inst/SU1/DB1/buf_re_reg[31] " *) 
  (* srl_name = "\inst/SU1/DB1/buf_re_reg[31][12]_srl32 " *) 
  SRLC32E \buf_re_reg[31][12]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clock),
        .D(db1_di_re_4[12]),
        .Q(\NLW_buf_re_reg[31][12]_srl32_Q_UNCONNECTED ),
        .Q31(\buf_re_reg[31][12]_srl32_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re_reg[31][12]_srl32_i_1 
       (.I0(sub_re_0[12]),
        .I1(\bf1_do_re_reg[15] ),
        .I2(di_re[12]),
        .O(db1_di_re_4[12]));
  (* srl_bus_name = "\inst/SU1/DB1/buf_re_reg[31] " *) 
  (* srl_name = "\inst/SU1/DB1/buf_re_reg[31][13]_srl32 " *) 
  SRLC32E \buf_re_reg[31][13]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clock),
        .D(db1_di_re_4[13]),
        .Q(\NLW_buf_re_reg[31][13]_srl32_Q_UNCONNECTED ),
        .Q31(\buf_re_reg[31][13]_srl32_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re_reg[31][13]_srl32_i_1 
       (.I0(sub_re_0[13]),
        .I1(\bf1_do_re_reg[15] ),
        .I2(di_re[13]),
        .O(db1_di_re_4[13]));
  (* srl_bus_name = "\inst/SU1/DB1/buf_re_reg[31] " *) 
  (* srl_name = "\inst/SU1/DB1/buf_re_reg[31][14]_srl32 " *) 
  SRLC32E \buf_re_reg[31][14]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clock),
        .D(db1_di_re_4[14]),
        .Q(\NLW_buf_re_reg[31][14]_srl32_Q_UNCONNECTED ),
        .Q31(\buf_re_reg[31][14]_srl32_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re_reg[31][14]_srl32_i_1 
       (.I0(sub_re_0[14]),
        .I1(\bf1_do_re_reg[15] ),
        .I2(di_re[14]),
        .O(db1_di_re_4[14]));
  (* srl_bus_name = "\inst/SU1/DB1/buf_re_reg[31] " *) 
  (* srl_name = "\inst/SU1/DB1/buf_re_reg[31][15]_srl32 " *) 
  SRLC32E \buf_re_reg[31][15]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clock),
        .D(db1_di_re_4[15]),
        .Q(\NLW_buf_re_reg[31][15]_srl32_Q_UNCONNECTED ),
        .Q31(\buf_re_reg[31][15]_srl32_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re_reg[31][15]_srl32_i_1 
       (.I0(O),
        .I1(\bf1_do_re_reg[15] ),
        .I2(di_re[15]),
        .O(db1_di_re_4[15]));
  (* srl_bus_name = "\inst/SU1/DB1/buf_re_reg[31] " *) 
  (* srl_name = "\inst/SU1/DB1/buf_re_reg[31][1]_srl32 " *) 
  SRLC32E \buf_re_reg[31][1]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clock),
        .D(db1_di_re_4[1]),
        .Q(\NLW_buf_re_reg[31][1]_srl32_Q_UNCONNECTED ),
        .Q31(\buf_re_reg[31][1]_srl32_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re_reg[31][1]_srl32_i_1 
       (.I0(sub_re_0[1]),
        .I1(\bf1_do_re_reg[15] ),
        .I2(di_re[1]),
        .O(db1_di_re_4[1]));
  (* srl_bus_name = "\inst/SU1/DB1/buf_re_reg[31] " *) 
  (* srl_name = "\inst/SU1/DB1/buf_re_reg[31][2]_srl32 " *) 
  SRLC32E \buf_re_reg[31][2]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clock),
        .D(db1_di_re_4[2]),
        .Q(\NLW_buf_re_reg[31][2]_srl32_Q_UNCONNECTED ),
        .Q31(\buf_re_reg[31][2]_srl32_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re_reg[31][2]_srl32_i_1 
       (.I0(sub_re_0[2]),
        .I1(\bf1_do_re_reg[15] ),
        .I2(di_re[2]),
        .O(db1_di_re_4[2]));
  (* srl_bus_name = "\inst/SU1/DB1/buf_re_reg[31] " *) 
  (* srl_name = "\inst/SU1/DB1/buf_re_reg[31][3]_srl32 " *) 
  SRLC32E \buf_re_reg[31][3]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clock),
        .D(db1_di_re_4[3]),
        .Q(\NLW_buf_re_reg[31][3]_srl32_Q_UNCONNECTED ),
        .Q31(\buf_re_reg[31][3]_srl32_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re_reg[31][3]_srl32_i_1 
       (.I0(sub_re_0[3]),
        .I1(\bf1_do_re_reg[15] ),
        .I2(di_re[3]),
        .O(db1_di_re_4[3]));
  (* srl_bus_name = "\inst/SU1/DB1/buf_re_reg[31] " *) 
  (* srl_name = "\inst/SU1/DB1/buf_re_reg[31][4]_srl32 " *) 
  SRLC32E \buf_re_reg[31][4]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clock),
        .D(db1_di_re_4[4]),
        .Q(\NLW_buf_re_reg[31][4]_srl32_Q_UNCONNECTED ),
        .Q31(\buf_re_reg[31][4]_srl32_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re_reg[31][4]_srl32_i_1 
       (.I0(sub_re_0[4]),
        .I1(\bf1_do_re_reg[15] ),
        .I2(di_re[4]),
        .O(db1_di_re_4[4]));
  (* srl_bus_name = "\inst/SU1/DB1/buf_re_reg[31] " *) 
  (* srl_name = "\inst/SU1/DB1/buf_re_reg[31][5]_srl32 " *) 
  SRLC32E \buf_re_reg[31][5]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clock),
        .D(db1_di_re_4[5]),
        .Q(\NLW_buf_re_reg[31][5]_srl32_Q_UNCONNECTED ),
        .Q31(\buf_re_reg[31][5]_srl32_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re_reg[31][5]_srl32_i_1 
       (.I0(sub_re_0[5]),
        .I1(\bf1_do_re_reg[15] ),
        .I2(di_re[5]),
        .O(db1_di_re_4[5]));
  (* srl_bus_name = "\inst/SU1/DB1/buf_re_reg[31] " *) 
  (* srl_name = "\inst/SU1/DB1/buf_re_reg[31][6]_srl32 " *) 
  SRLC32E \buf_re_reg[31][6]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clock),
        .D(db1_di_re_4[6]),
        .Q(\NLW_buf_re_reg[31][6]_srl32_Q_UNCONNECTED ),
        .Q31(\buf_re_reg[31][6]_srl32_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re_reg[31][6]_srl32_i_1 
       (.I0(sub_re_0[6]),
        .I1(\bf1_do_re_reg[15] ),
        .I2(di_re[6]),
        .O(db1_di_re_4[6]));
  (* srl_bus_name = "\inst/SU1/DB1/buf_re_reg[31] " *) 
  (* srl_name = "\inst/SU1/DB1/buf_re_reg[31][7]_srl32 " *) 
  SRLC32E \buf_re_reg[31][7]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clock),
        .D(db1_di_re_4[7]),
        .Q(\NLW_buf_re_reg[31][7]_srl32_Q_UNCONNECTED ),
        .Q31(\buf_re_reg[31][7]_srl32_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re_reg[31][7]_srl32_i_1 
       (.I0(sub_re_0[7]),
        .I1(\bf1_do_re_reg[15] ),
        .I2(di_re[7]),
        .O(db1_di_re_4[7]));
  (* srl_bus_name = "\inst/SU1/DB1/buf_re_reg[31] " *) 
  (* srl_name = "\inst/SU1/DB1/buf_re_reg[31][8]_srl32 " *) 
  SRLC32E \buf_re_reg[31][8]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clock),
        .D(db1_di_re_4[8]),
        .Q(\NLW_buf_re_reg[31][8]_srl32_Q_UNCONNECTED ),
        .Q31(\buf_re_reg[31][8]_srl32_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re_reg[31][8]_srl32_i_1 
       (.I0(sub_re_0[8]),
        .I1(\bf1_do_re_reg[15] ),
        .I2(di_re[8]),
        .O(db1_di_re_4[8]));
  (* srl_bus_name = "\inst/SU1/DB1/buf_re_reg[31] " *) 
  (* srl_name = "\inst/SU1/DB1/buf_re_reg[31][9]_srl32 " *) 
  SRLC32E \buf_re_reg[31][9]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clock),
        .D(db1_di_re_4[9]),
        .Q(\NLW_buf_re_reg[31][9]_srl32_Q_UNCONNECTED ),
        .Q31(\buf_re_reg[31][9]_srl32_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re_reg[31][9]_srl32_i_1 
       (.I0(sub_re_0[9]),
        .I1(\bf1_do_re_reg[15] ),
        .I2(di_re[9]),
        .O(db1_di_re_4[9]));
  (* srl_bus_name = "\inst/SU1/DB1/buf_re_reg[62] " *) 
  (* srl_name = "\inst/SU1/DB1/buf_re_reg[62][0]_srl31 " *) 
  SRLC32E \buf_re_reg[62][0]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(clock),
        .D(\buf_re_reg[31][0]_srl32_n_1 ),
        .Q(\buf_re_reg[62][0]_srl31_n_0 ),
        .Q31(\NLW_buf_re_reg[62][0]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/SU1/DB1/buf_re_reg[62] " *) 
  (* srl_name = "\inst/SU1/DB1/buf_re_reg[62][10]_srl31 " *) 
  SRLC32E \buf_re_reg[62][10]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(clock),
        .D(\buf_re_reg[31][10]_srl32_n_1 ),
        .Q(\buf_re_reg[62][10]_srl31_n_0 ),
        .Q31(\NLW_buf_re_reg[62][10]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/SU1/DB1/buf_re_reg[62] " *) 
  (* srl_name = "\inst/SU1/DB1/buf_re_reg[62][11]_srl31 " *) 
  SRLC32E \buf_re_reg[62][11]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(clock),
        .D(\buf_re_reg[31][11]_srl32_n_1 ),
        .Q(\buf_re_reg[62][11]_srl31_n_0 ),
        .Q31(\NLW_buf_re_reg[62][11]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/SU1/DB1/buf_re_reg[62] " *) 
  (* srl_name = "\inst/SU1/DB1/buf_re_reg[62][12]_srl31 " *) 
  SRLC32E \buf_re_reg[62][12]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(clock),
        .D(\buf_re_reg[31][12]_srl32_n_1 ),
        .Q(\buf_re_reg[62][12]_srl31_n_0 ),
        .Q31(\NLW_buf_re_reg[62][12]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/SU1/DB1/buf_re_reg[62] " *) 
  (* srl_name = "\inst/SU1/DB1/buf_re_reg[62][13]_srl31 " *) 
  SRLC32E \buf_re_reg[62][13]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(clock),
        .D(\buf_re_reg[31][13]_srl32_n_1 ),
        .Q(\buf_re_reg[62][13]_srl31_n_0 ),
        .Q31(\NLW_buf_re_reg[62][13]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/SU1/DB1/buf_re_reg[62] " *) 
  (* srl_name = "\inst/SU1/DB1/buf_re_reg[62][14]_srl31 " *) 
  SRLC32E \buf_re_reg[62][14]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(clock),
        .D(\buf_re_reg[31][14]_srl32_n_1 ),
        .Q(\buf_re_reg[62][14]_srl31_n_0 ),
        .Q31(\NLW_buf_re_reg[62][14]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/SU1/DB1/buf_re_reg[62] " *) 
  (* srl_name = "\inst/SU1/DB1/buf_re_reg[62][15]_srl31 " *) 
  SRLC32E \buf_re_reg[62][15]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(clock),
        .D(\buf_re_reg[31][15]_srl32_n_1 ),
        .Q(\buf_re_reg[62][15]_srl31_n_0 ),
        .Q31(\NLW_buf_re_reg[62][15]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/SU1/DB1/buf_re_reg[62] " *) 
  (* srl_name = "\inst/SU1/DB1/buf_re_reg[62][1]_srl31 " *) 
  SRLC32E \buf_re_reg[62][1]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(clock),
        .D(\buf_re_reg[31][1]_srl32_n_1 ),
        .Q(\buf_re_reg[62][1]_srl31_n_0 ),
        .Q31(\NLW_buf_re_reg[62][1]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/SU1/DB1/buf_re_reg[62] " *) 
  (* srl_name = "\inst/SU1/DB1/buf_re_reg[62][2]_srl31 " *) 
  SRLC32E \buf_re_reg[62][2]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(clock),
        .D(\buf_re_reg[31][2]_srl32_n_1 ),
        .Q(\buf_re_reg[62][2]_srl31_n_0 ),
        .Q31(\NLW_buf_re_reg[62][2]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/SU1/DB1/buf_re_reg[62] " *) 
  (* srl_name = "\inst/SU1/DB1/buf_re_reg[62][3]_srl31 " *) 
  SRLC32E \buf_re_reg[62][3]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(clock),
        .D(\buf_re_reg[31][3]_srl32_n_1 ),
        .Q(\buf_re_reg[62][3]_srl31_n_0 ),
        .Q31(\NLW_buf_re_reg[62][3]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/SU1/DB1/buf_re_reg[62] " *) 
  (* srl_name = "\inst/SU1/DB1/buf_re_reg[62][4]_srl31 " *) 
  SRLC32E \buf_re_reg[62][4]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(clock),
        .D(\buf_re_reg[31][4]_srl32_n_1 ),
        .Q(\buf_re_reg[62][4]_srl31_n_0 ),
        .Q31(\NLW_buf_re_reg[62][4]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/SU1/DB1/buf_re_reg[62] " *) 
  (* srl_name = "\inst/SU1/DB1/buf_re_reg[62][5]_srl31 " *) 
  SRLC32E \buf_re_reg[62][5]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(clock),
        .D(\buf_re_reg[31][5]_srl32_n_1 ),
        .Q(\buf_re_reg[62][5]_srl31_n_0 ),
        .Q31(\NLW_buf_re_reg[62][5]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/SU1/DB1/buf_re_reg[62] " *) 
  (* srl_name = "\inst/SU1/DB1/buf_re_reg[62][6]_srl31 " *) 
  SRLC32E \buf_re_reg[62][6]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(clock),
        .D(\buf_re_reg[31][6]_srl32_n_1 ),
        .Q(\buf_re_reg[62][6]_srl31_n_0 ),
        .Q31(\NLW_buf_re_reg[62][6]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/SU1/DB1/buf_re_reg[62] " *) 
  (* srl_name = "\inst/SU1/DB1/buf_re_reg[62][7]_srl31 " *) 
  SRLC32E \buf_re_reg[62][7]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(clock),
        .D(\buf_re_reg[31][7]_srl32_n_1 ),
        .Q(\buf_re_reg[62][7]_srl31_n_0 ),
        .Q31(\NLW_buf_re_reg[62][7]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/SU1/DB1/buf_re_reg[62] " *) 
  (* srl_name = "\inst/SU1/DB1/buf_re_reg[62][8]_srl31 " *) 
  SRLC32E \buf_re_reg[62][8]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(clock),
        .D(\buf_re_reg[31][8]_srl32_n_1 ),
        .Q(\buf_re_reg[62][8]_srl31_n_0 ),
        .Q31(\NLW_buf_re_reg[62][8]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/SU1/DB1/buf_re_reg[62] " *) 
  (* srl_name = "\inst/SU1/DB1/buf_re_reg[62][9]_srl31 " *) 
  SRLC32E \buf_re_reg[62][9]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(clock),
        .D(\buf_re_reg[31][9]_srl32_n_1 ),
        .Q(\buf_re_reg[62][9]_srl31_n_0 ),
        .Q31(\NLW_buf_re_reg[62][9]_srl31_Q31_UNCONNECTED ));
  FDRE \buf_re_reg[63][0]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg[62][0]_srl31_n_0 ),
        .Q(\buf_re_reg[63][14]__0_0 [0]),
        .R(1'b0));
  FDRE \buf_re_reg[63][10]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg[62][10]_srl31_n_0 ),
        .Q(\buf_re_reg[63][14]__0_0 [10]),
        .R(1'b0));
  FDRE \buf_re_reg[63][11]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg[62][11]_srl31_n_0 ),
        .Q(\buf_re_reg[63][14]__0_0 [11]),
        .R(1'b0));
  FDRE \buf_re_reg[63][12]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg[62][12]_srl31_n_0 ),
        .Q(\buf_re_reg[63][14]__0_0 [12]),
        .R(1'b0));
  FDRE \buf_re_reg[63][13]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg[62][13]_srl31_n_0 ),
        .Q(\buf_re_reg[63][14]__0_0 [13]),
        .R(1'b0));
  FDRE \buf_re_reg[63][14]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg[62][14]_srl31_n_0 ),
        .Q(\buf_re_reg[63][14]__0_0 [14]),
        .R(1'b0));
  FDRE \buf_re_reg[63][15]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg[62][15]_srl31_n_0 ),
        .Q(\buf_re_reg[63]_0 ),
        .R(1'b0));
  FDRE \buf_re_reg[63][1]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg[62][1]_srl31_n_0 ),
        .Q(\buf_re_reg[63][14]__0_0 [1]),
        .R(1'b0));
  FDRE \buf_re_reg[63][2]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg[62][2]_srl31_n_0 ),
        .Q(\buf_re_reg[63][14]__0_0 [2]),
        .R(1'b0));
  FDRE \buf_re_reg[63][3]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg[62][3]_srl31_n_0 ),
        .Q(\buf_re_reg[63][14]__0_0 [3]),
        .R(1'b0));
  FDRE \buf_re_reg[63][4]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg[62][4]_srl31_n_0 ),
        .Q(\buf_re_reg[63][14]__0_0 [4]),
        .R(1'b0));
  FDRE \buf_re_reg[63][5]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg[62][5]_srl31_n_0 ),
        .Q(\buf_re_reg[63][14]__0_0 [5]),
        .R(1'b0));
  FDRE \buf_re_reg[63][6]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg[62][6]_srl31_n_0 ),
        .Q(\buf_re_reg[63][14]__0_0 [6]),
        .R(1'b0));
  FDRE \buf_re_reg[63][7]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg[62][7]_srl31_n_0 ),
        .Q(\buf_re_reg[63][14]__0_0 [7]),
        .R(1'b0));
  FDRE \buf_re_reg[63][8]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg[62][8]_srl31_n_0 ),
        .Q(\buf_re_reg[63][14]__0_0 [8]),
        .R(1'b0));
  FDRE \buf_re_reg[63][9]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg[62][9]_srl31_n_0 ),
        .Q(\buf_re_reg[63][14]__0_0 [9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_im_carry__0_i_1__0
       (.I0(di_im[7]),
        .I1(\buf_im_reg[63][14]__0_0 [7]),
        .O(\di_im[7] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_im_carry__0_i_1__1
       (.I0(\buf_im_reg[15][15]__0 [7]),
        .I1(\buf_im_reg[15]_3 [7]),
        .O(\mu_do_im_reg[7] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_im_carry__0_i_2__0
       (.I0(di_im[6]),
        .I1(\buf_im_reg[63][14]__0_0 [6]),
        .O(\di_im[7] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_im_carry__0_i_2__1
       (.I0(\buf_im_reg[15][15]__0 [6]),
        .I1(\buf_im_reg[15]_3 [6]),
        .O(\mu_do_im_reg[7] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_im_carry__0_i_3__0
       (.I0(di_im[5]),
        .I1(\buf_im_reg[63][14]__0_0 [5]),
        .O(\di_im[7] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_im_carry__0_i_3__1
       (.I0(\buf_im_reg[15][15]__0 [5]),
        .I1(\buf_im_reg[15]_3 [5]),
        .O(\mu_do_im_reg[7] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_im_carry__0_i_4__0
       (.I0(di_im[4]),
        .I1(\buf_im_reg[63][14]__0_0 [4]),
        .O(\di_im[7] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_im_carry__0_i_4__1
       (.I0(\buf_im_reg[15][15]__0 [4]),
        .I1(\buf_im_reg[15]_3 [4]),
        .O(\mu_do_im_reg[7] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_im_carry__1_i_1__0
       (.I0(di_im[11]),
        .I1(\buf_im_reg[63][14]__0_0 [11]),
        .O(\di_im[11] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_im_carry__1_i_1__1
       (.I0(\buf_im_reg[15][15]__0 [11]),
        .I1(\buf_im_reg[15]_3 [11]),
        .O(\mu_do_im_reg[11] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_im_carry__1_i_2__0
       (.I0(di_im[10]),
        .I1(\buf_im_reg[63][14]__0_0 [10]),
        .O(\di_im[11] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_im_carry__1_i_2__1
       (.I0(\buf_im_reg[15][15]__0 [10]),
        .I1(\buf_im_reg[15]_3 [10]),
        .O(\mu_do_im_reg[11] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_im_carry__1_i_3__0
       (.I0(di_im[9]),
        .I1(\buf_im_reg[63][14]__0_0 [9]),
        .O(\di_im[11] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_im_carry__1_i_3__1
       (.I0(\buf_im_reg[15][15]__0 [9]),
        .I1(\buf_im_reg[15]_3 [9]),
        .O(\mu_do_im_reg[11] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_im_carry__1_i_4__0
       (.I0(di_im[8]),
        .I1(\buf_im_reg[63][14]__0_0 [8]),
        .O(\di_im[11] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_im_carry__1_i_4__1
       (.I0(\buf_im_reg[15][15]__0 [8]),
        .I1(\buf_im_reg[15]_3 [8]),
        .O(\mu_do_im_reg[11] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_im_carry__2_i_1__1
       (.I0(\buf_im_reg[15][15]__0 [15]),
        .I1(\buf_im_reg[15]_3 [15]),
        .O(\mu_do_im_reg[15] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_im_carry__2_i_1__2
       (.I0(di_im[15]),
        .I1(\buf_im_reg[63]_1 ),
        .O(\di_im[15] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_im_carry__2_i_2__0
       (.I0(di_im[14]),
        .I1(\buf_im_reg[63][14]__0_0 [14]),
        .O(\di_im[15] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_im_carry__2_i_2__1
       (.I0(\buf_im_reg[15][15]__0 [14]),
        .I1(\buf_im_reg[15]_3 [14]),
        .O(\mu_do_im_reg[15] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_im_carry__2_i_3__0
       (.I0(di_im[13]),
        .I1(\buf_im_reg[63][14]__0_0 [13]),
        .O(\di_im[15] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_im_carry__2_i_3__1
       (.I0(\buf_im_reg[15][15]__0 [13]),
        .I1(\buf_im_reg[15]_3 [13]),
        .O(\mu_do_im_reg[15] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_im_carry__2_i_4__0
       (.I0(di_im[12]),
        .I1(\buf_im_reg[63][14]__0_0 [12]),
        .O(\di_im[15] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_im_carry__2_i_4__1
       (.I0(\buf_im_reg[15][15]__0 [12]),
        .I1(\buf_im_reg[15]_3 [12]),
        .O(\mu_do_im_reg[15] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_im_carry_i_1__0
       (.I0(di_im[3]),
        .I1(\buf_im_reg[63][14]__0_0 [3]),
        .O(\di_im[3] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_im_carry_i_1__1
       (.I0(\buf_im_reg[15][15]__0 [3]),
        .I1(\buf_im_reg[15]_3 [3]),
        .O(\mu_do_im_reg[3] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_im_carry_i_2__0
       (.I0(di_im[2]),
        .I1(\buf_im_reg[63][14]__0_0 [2]),
        .O(\di_im[3] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_im_carry_i_2__1
       (.I0(\buf_im_reg[15][15]__0 [2]),
        .I1(\buf_im_reg[15]_3 [2]),
        .O(\mu_do_im_reg[3] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_im_carry_i_3__0
       (.I0(di_im[1]),
        .I1(\buf_im_reg[63][14]__0_0 [1]),
        .O(\di_im[3] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_im_carry_i_3__1
       (.I0(\buf_im_reg[15][15]__0 [1]),
        .I1(\buf_im_reg[15]_3 [1]),
        .O(\mu_do_im_reg[3] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_im_carry_i_4__0
       (.I0(di_im[0]),
        .I1(\buf_im_reg[63][14]__0_0 [0]),
        .O(\di_im[3] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_im_carry_i_4__1
       (.I0(\buf_im_reg[15][15]__0 [0]),
        .I1(\buf_im_reg[15]_3 [0]),
        .O(\mu_do_im_reg[3] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_re_carry__0_i_1__0
       (.I0(di_re[7]),
        .I1(\buf_re_reg[63][14]__0_0 [7]),
        .O(\di_re[7] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_re_carry__0_i_1__1
       (.I0(Q[7]),
        .I1(\buf_re_reg[15]_2 [7]),
        .O(\mu_do_re_reg[7] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_re_carry__0_i_2__0
       (.I0(di_re[6]),
        .I1(\buf_re_reg[63][14]__0_0 [6]),
        .O(\di_re[7] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_re_carry__0_i_2__1
       (.I0(Q[6]),
        .I1(\buf_re_reg[15]_2 [6]),
        .O(\mu_do_re_reg[7] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_re_carry__0_i_3__0
       (.I0(di_re[5]),
        .I1(\buf_re_reg[63][14]__0_0 [5]),
        .O(\di_re[7] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_re_carry__0_i_3__1
       (.I0(Q[5]),
        .I1(\buf_re_reg[15]_2 [5]),
        .O(\mu_do_re_reg[7] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_re_carry__0_i_4__0
       (.I0(di_re[4]),
        .I1(\buf_re_reg[63][14]__0_0 [4]),
        .O(\di_re[7] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_re_carry__0_i_4__1
       (.I0(Q[4]),
        .I1(\buf_re_reg[15]_2 [4]),
        .O(\mu_do_re_reg[7] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_re_carry__1_i_1__0
       (.I0(di_re[11]),
        .I1(\buf_re_reg[63][14]__0_0 [11]),
        .O(\di_re[11] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_re_carry__1_i_1__1
       (.I0(Q[11]),
        .I1(\buf_re_reg[15]_2 [11]),
        .O(\mu_do_re_reg[11] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_re_carry__1_i_2__0
       (.I0(di_re[10]),
        .I1(\buf_re_reg[63][14]__0_0 [10]),
        .O(\di_re[11] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_re_carry__1_i_2__1
       (.I0(Q[10]),
        .I1(\buf_re_reg[15]_2 [10]),
        .O(\mu_do_re_reg[11] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_re_carry__1_i_3__0
       (.I0(di_re[9]),
        .I1(\buf_re_reg[63][14]__0_0 [9]),
        .O(\di_re[11] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_re_carry__1_i_3__1
       (.I0(Q[9]),
        .I1(\buf_re_reg[15]_2 [9]),
        .O(\mu_do_re_reg[11] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_re_carry__1_i_4__0
       (.I0(di_re[8]),
        .I1(\buf_re_reg[63][14]__0_0 [8]),
        .O(\di_re[11] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_re_carry__1_i_4__1
       (.I0(Q[8]),
        .I1(\buf_re_reg[15]_2 [8]),
        .O(\mu_do_re_reg[11] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_re_carry__2_i_1__1
       (.I0(Q[15]),
        .I1(\buf_re_reg[15]_2 [15]),
        .O(\mu_do_re_reg[15] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_re_carry__2_i_1__2
       (.I0(di_re[15]),
        .I1(\buf_re_reg[63]_0 ),
        .O(\di_re[15] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_re_carry__2_i_2__0
       (.I0(di_re[14]),
        .I1(\buf_re_reg[63][14]__0_0 [14]),
        .O(\di_re[15] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_re_carry__2_i_2__1
       (.I0(Q[14]),
        .I1(\buf_re_reg[15]_2 [14]),
        .O(\mu_do_re_reg[15] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_re_carry__2_i_3__0
       (.I0(di_re[13]),
        .I1(\buf_re_reg[63][14]__0_0 [13]),
        .O(\di_re[15] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_re_carry__2_i_3__1
       (.I0(Q[13]),
        .I1(\buf_re_reg[15]_2 [13]),
        .O(\mu_do_re_reg[15] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_re_carry__2_i_4__0
       (.I0(di_re[12]),
        .I1(\buf_re_reg[63][14]__0_0 [12]),
        .O(\di_re[15] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_re_carry__2_i_4__1
       (.I0(Q[12]),
        .I1(\buf_re_reg[15]_2 [12]),
        .O(\mu_do_re_reg[15] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_re_carry_i_1__0
       (.I0(di_re[3]),
        .I1(\buf_re_reg[63][14]__0_0 [3]),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_re_carry_i_1__1
       (.I0(Q[3]),
        .I1(\buf_re_reg[15]_2 [3]),
        .O(\mu_do_re_reg[3] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_re_carry_i_2__0
       (.I0(di_re[2]),
        .I1(\buf_re_reg[63][14]__0_0 [2]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_re_carry_i_2__1
       (.I0(Q[2]),
        .I1(\buf_re_reg[15]_2 [2]),
        .O(\mu_do_re_reg[3] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_re_carry_i_3__0
       (.I0(di_re[1]),
        .I1(\buf_re_reg[63][14]__0_0 [1]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_re_carry_i_3__1
       (.I0(Q[1]),
        .I1(\buf_re_reg[15]_2 [1]),
        .O(\mu_do_re_reg[3] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_re_carry_i_4__0
       (.I0(di_re[0]),
        .I1(\buf_re_reg[63][14]__0_0 [0]),
        .O(S[0]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_re_carry_i_4__1
       (.I0(Q[0]),
        .I1(\buf_re_reg[15]_2 [0]),
        .O(\mu_do_re_reg[3] [0]));
endmodule

(* ORIG_REF_NAME = "DelayBuffer" *) 
module system_fft128_0_0_DelayBuffer__parameterized0
   (\buf_re_reg[31][15]__0_0 ,
    \buf_re_reg[31][14]__0_0 ,
    \buf_re_reg[31][13]__0_0 ,
    \buf_re_reg[31][12]__0_0 ,
    \buf_re_reg[31][11]__0_0 ,
    \buf_re_reg[31][10]__0_0 ,
    \buf_re_reg[31][9]__0_0 ,
    \buf_re_reg[31][8]__0_0 ,
    \buf_re_reg[31][7]__0_0 ,
    \buf_re_reg[31][6]__0_0 ,
    \buf_re_reg[31][5]__0_0 ,
    \buf_re_reg[31][4]__0_0 ,
    \buf_re_reg[31][3]__0_0 ,
    \buf_re_reg[31][2]__0_0 ,
    \buf_re_reg[31][1]__0_0 ,
    \buf_re_reg[31][0]__0_0 ,
    \buf_im_reg[31][15]__0_0 ,
    \buf_im_reg[31][14]__0_0 ,
    \buf_im_reg[31][13]__0_0 ,
    \buf_im_reg[31][12]__0_0 ,
    \buf_im_reg[31][11]__0_0 ,
    \buf_im_reg[31][10]__0_0 ,
    \buf_im_reg[31][9]__0_0 ,
    \buf_im_reg[31][8]__0_0 ,
    \buf_im_reg[31][7]__0_0 ,
    \buf_im_reg[31][6]__0_0 ,
    \buf_im_reg[31][5]__0_0 ,
    \buf_im_reg[31][4]__0_0 ,
    \buf_im_reg[31][3]__0_0 ,
    \buf_im_reg[31][2]__0_0 ,
    \buf_im_reg[31][1]__0_0 ,
    \buf_im_reg[31][0]__0_0 ,
    S,
    \bf1_do_re_reg[7] ,
    \bf1_do_re_reg[11] ,
    \bf1_do_re_reg[15] ,
    \bf1_do_im_reg[3] ,
    \bf1_do_im_reg[7] ,
    \bf1_do_im_reg[11] ,
    \bf1_do_im_reg[15] ,
    \buf_re_reg[31][15]__0_1 ,
    \buf_im_reg[31][15]__0_1 ,
    \buf_re_reg[31][3]__0_1 ,
    \buf_re_reg[31][7]__0_1 ,
    \buf_re_reg[31][11]__0_1 ,
    \buf_im_reg[31][3]__0_1 ,
    \buf_im_reg[31][7]__0_1 ,
    \buf_im_reg[31][11]__0_1 ,
    DI,
    \buf_im_reg[31][15]__0_2 ,
    db2_di_re,
    clock,
    db2_di_im,
    Q,
    y0_im0_carry__2);
  output \buf_re_reg[31][15]__0_0 ;
  output \buf_re_reg[31][14]__0_0 ;
  output \buf_re_reg[31][13]__0_0 ;
  output \buf_re_reg[31][12]__0_0 ;
  output \buf_re_reg[31][11]__0_0 ;
  output \buf_re_reg[31][10]__0_0 ;
  output \buf_re_reg[31][9]__0_0 ;
  output \buf_re_reg[31][8]__0_0 ;
  output \buf_re_reg[31][7]__0_0 ;
  output \buf_re_reg[31][6]__0_0 ;
  output \buf_re_reg[31][5]__0_0 ;
  output \buf_re_reg[31][4]__0_0 ;
  output \buf_re_reg[31][3]__0_0 ;
  output \buf_re_reg[31][2]__0_0 ;
  output \buf_re_reg[31][1]__0_0 ;
  output \buf_re_reg[31][0]__0_0 ;
  output \buf_im_reg[31][15]__0_0 ;
  output \buf_im_reg[31][14]__0_0 ;
  output \buf_im_reg[31][13]__0_0 ;
  output \buf_im_reg[31][12]__0_0 ;
  output \buf_im_reg[31][11]__0_0 ;
  output \buf_im_reg[31][10]__0_0 ;
  output \buf_im_reg[31][9]__0_0 ;
  output \buf_im_reg[31][8]__0_0 ;
  output \buf_im_reg[31][7]__0_0 ;
  output \buf_im_reg[31][6]__0_0 ;
  output \buf_im_reg[31][5]__0_0 ;
  output \buf_im_reg[31][4]__0_0 ;
  output \buf_im_reg[31][3]__0_0 ;
  output \buf_im_reg[31][2]__0_0 ;
  output \buf_im_reg[31][1]__0_0 ;
  output \buf_im_reg[31][0]__0_0 ;
  output [3:0]S;
  output [3:0]\bf1_do_re_reg[7] ;
  output [3:0]\bf1_do_re_reg[11] ;
  output [3:0]\bf1_do_re_reg[15] ;
  output [3:0]\bf1_do_im_reg[3] ;
  output [3:0]\bf1_do_im_reg[7] ;
  output [3:0]\bf1_do_im_reg[11] ;
  output [3:0]\bf1_do_im_reg[15] ;
  output [3:0]\buf_re_reg[31][15]__0_1 ;
  output [3:0]\buf_im_reg[31][15]__0_1 ;
  output [3:0]\buf_re_reg[31][3]__0_1 ;
  output [3:0]\buf_re_reg[31][7]__0_1 ;
  output [3:0]\buf_re_reg[31][11]__0_1 ;
  output [3:0]\buf_im_reg[31][3]__0_1 ;
  output [3:0]\buf_im_reg[31][7]__0_1 ;
  output [3:0]\buf_im_reg[31][11]__0_1 ;
  output [0:0]DI;
  output [0:0]\buf_im_reg[31][15]__0_2 ;
  input [15:0]db2_di_re;
  input clock;
  input [15:0]db2_di_im;
  input [15:0]Q;
  input [15:0]y0_im0_carry__2;

  wire [0:0]DI;
  wire [15:0]Q;
  wire [3:0]S;
  wire [3:0]\bf1_do_im_reg[11] ;
  wire [3:0]\bf1_do_im_reg[15] ;
  wire [3:0]\bf1_do_im_reg[3] ;
  wire [3:0]\bf1_do_im_reg[7] ;
  wire [3:0]\bf1_do_re_reg[11] ;
  wire [3:0]\bf1_do_re_reg[15] ;
  wire [3:0]\bf1_do_re_reg[7] ;
  wire \buf_im_reg[30][0]_srl31_n_0 ;
  wire \buf_im_reg[30][10]_srl31_n_0 ;
  wire \buf_im_reg[30][11]_srl31_n_0 ;
  wire \buf_im_reg[30][12]_srl31_n_0 ;
  wire \buf_im_reg[30][13]_srl31_n_0 ;
  wire \buf_im_reg[30][14]_srl31_n_0 ;
  wire \buf_im_reg[30][15]_srl31_n_0 ;
  wire \buf_im_reg[30][1]_srl31_n_0 ;
  wire \buf_im_reg[30][2]_srl31_n_0 ;
  wire \buf_im_reg[30][3]_srl31_n_0 ;
  wire \buf_im_reg[30][4]_srl31_n_0 ;
  wire \buf_im_reg[30][5]_srl31_n_0 ;
  wire \buf_im_reg[30][6]_srl31_n_0 ;
  wire \buf_im_reg[30][7]_srl31_n_0 ;
  wire \buf_im_reg[30][8]_srl31_n_0 ;
  wire \buf_im_reg[30][9]_srl31_n_0 ;
  wire \buf_im_reg[31][0]__0_0 ;
  wire \buf_im_reg[31][10]__0_0 ;
  wire \buf_im_reg[31][11]__0_0 ;
  wire [3:0]\buf_im_reg[31][11]__0_1 ;
  wire \buf_im_reg[31][12]__0_0 ;
  wire \buf_im_reg[31][13]__0_0 ;
  wire \buf_im_reg[31][14]__0_0 ;
  wire \buf_im_reg[31][15]__0_0 ;
  wire [3:0]\buf_im_reg[31][15]__0_1 ;
  wire [0:0]\buf_im_reg[31][15]__0_2 ;
  wire \buf_im_reg[31][1]__0_0 ;
  wire \buf_im_reg[31][2]__0_0 ;
  wire \buf_im_reg[31][3]__0_0 ;
  wire [3:0]\buf_im_reg[31][3]__0_1 ;
  wire \buf_im_reg[31][4]__0_0 ;
  wire \buf_im_reg[31][5]__0_0 ;
  wire \buf_im_reg[31][6]__0_0 ;
  wire \buf_im_reg[31][7]__0_0 ;
  wire [3:0]\buf_im_reg[31][7]__0_1 ;
  wire \buf_im_reg[31][8]__0_0 ;
  wire \buf_im_reg[31][9]__0_0 ;
  wire \buf_re_reg[30][0]_srl31_n_0 ;
  wire \buf_re_reg[30][10]_srl31_n_0 ;
  wire \buf_re_reg[30][11]_srl31_n_0 ;
  wire \buf_re_reg[30][12]_srl31_n_0 ;
  wire \buf_re_reg[30][13]_srl31_n_0 ;
  wire \buf_re_reg[30][14]_srl31_n_0 ;
  wire \buf_re_reg[30][15]_srl31_n_0 ;
  wire \buf_re_reg[30][1]_srl31_n_0 ;
  wire \buf_re_reg[30][2]_srl31_n_0 ;
  wire \buf_re_reg[30][3]_srl31_n_0 ;
  wire \buf_re_reg[30][4]_srl31_n_0 ;
  wire \buf_re_reg[30][5]_srl31_n_0 ;
  wire \buf_re_reg[30][6]_srl31_n_0 ;
  wire \buf_re_reg[30][7]_srl31_n_0 ;
  wire \buf_re_reg[30][8]_srl31_n_0 ;
  wire \buf_re_reg[30][9]_srl31_n_0 ;
  wire \buf_re_reg[31][0]__0_0 ;
  wire \buf_re_reg[31][10]__0_0 ;
  wire \buf_re_reg[31][11]__0_0 ;
  wire [3:0]\buf_re_reg[31][11]__0_1 ;
  wire \buf_re_reg[31][12]__0_0 ;
  wire \buf_re_reg[31][13]__0_0 ;
  wire \buf_re_reg[31][14]__0_0 ;
  wire \buf_re_reg[31][15]__0_0 ;
  wire [3:0]\buf_re_reg[31][15]__0_1 ;
  wire \buf_re_reg[31][1]__0_0 ;
  wire \buf_re_reg[31][2]__0_0 ;
  wire \buf_re_reg[31][3]__0_0 ;
  wire [3:0]\buf_re_reg[31][3]__0_1 ;
  wire \buf_re_reg[31][4]__0_0 ;
  wire \buf_re_reg[31][5]__0_0 ;
  wire \buf_re_reg[31][6]__0_0 ;
  wire \buf_re_reg[31][7]__0_0 ;
  wire [3:0]\buf_re_reg[31][7]__0_1 ;
  wire \buf_re_reg[31][8]__0_0 ;
  wire \buf_re_reg[31][9]__0_0 ;
  wire clock;
  wire [15:0]db2_di_im;
  wire [15:0]db2_di_re;
  wire [15:0]y0_im0_carry__2;
  wire \NLW_buf_im_reg[30][0]_srl31_Q31_UNCONNECTED ;
  wire \NLW_buf_im_reg[30][10]_srl31_Q31_UNCONNECTED ;
  wire \NLW_buf_im_reg[30][11]_srl31_Q31_UNCONNECTED ;
  wire \NLW_buf_im_reg[30][12]_srl31_Q31_UNCONNECTED ;
  wire \NLW_buf_im_reg[30][13]_srl31_Q31_UNCONNECTED ;
  wire \NLW_buf_im_reg[30][14]_srl31_Q31_UNCONNECTED ;
  wire \NLW_buf_im_reg[30][15]_srl31_Q31_UNCONNECTED ;
  wire \NLW_buf_im_reg[30][1]_srl31_Q31_UNCONNECTED ;
  wire \NLW_buf_im_reg[30][2]_srl31_Q31_UNCONNECTED ;
  wire \NLW_buf_im_reg[30][3]_srl31_Q31_UNCONNECTED ;
  wire \NLW_buf_im_reg[30][4]_srl31_Q31_UNCONNECTED ;
  wire \NLW_buf_im_reg[30][5]_srl31_Q31_UNCONNECTED ;
  wire \NLW_buf_im_reg[30][6]_srl31_Q31_UNCONNECTED ;
  wire \NLW_buf_im_reg[30][7]_srl31_Q31_UNCONNECTED ;
  wire \NLW_buf_im_reg[30][8]_srl31_Q31_UNCONNECTED ;
  wire \NLW_buf_im_reg[30][9]_srl31_Q31_UNCONNECTED ;
  wire \NLW_buf_re_reg[30][0]_srl31_Q31_UNCONNECTED ;
  wire \NLW_buf_re_reg[30][10]_srl31_Q31_UNCONNECTED ;
  wire \NLW_buf_re_reg[30][11]_srl31_Q31_UNCONNECTED ;
  wire \NLW_buf_re_reg[30][12]_srl31_Q31_UNCONNECTED ;
  wire \NLW_buf_re_reg[30][13]_srl31_Q31_UNCONNECTED ;
  wire \NLW_buf_re_reg[30][14]_srl31_Q31_UNCONNECTED ;
  wire \NLW_buf_re_reg[30][15]_srl31_Q31_UNCONNECTED ;
  wire \NLW_buf_re_reg[30][1]_srl31_Q31_UNCONNECTED ;
  wire \NLW_buf_re_reg[30][2]_srl31_Q31_UNCONNECTED ;
  wire \NLW_buf_re_reg[30][3]_srl31_Q31_UNCONNECTED ;
  wire \NLW_buf_re_reg[30][4]_srl31_Q31_UNCONNECTED ;
  wire \NLW_buf_re_reg[30][5]_srl31_Q31_UNCONNECTED ;
  wire \NLW_buf_re_reg[30][6]_srl31_Q31_UNCONNECTED ;
  wire \NLW_buf_re_reg[30][7]_srl31_Q31_UNCONNECTED ;
  wire \NLW_buf_re_reg[30][8]_srl31_Q31_UNCONNECTED ;
  wire \NLW_buf_re_reg[30][9]_srl31_Q31_UNCONNECTED ;

  (* srl_bus_name = "\inst/SU1/DB2/buf_im_reg[30] " *) 
  (* srl_name = "\inst/SU1/DB2/buf_im_reg[30][0]_srl31 " *) 
  SRLC32E \buf_im_reg[30][0]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(clock),
        .D(db2_di_im[0]),
        .Q(\buf_im_reg[30][0]_srl31_n_0 ),
        .Q31(\NLW_buf_im_reg[30][0]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/SU1/DB2/buf_im_reg[30] " *) 
  (* srl_name = "\inst/SU1/DB2/buf_im_reg[30][10]_srl31 " *) 
  SRLC32E \buf_im_reg[30][10]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(clock),
        .D(db2_di_im[10]),
        .Q(\buf_im_reg[30][10]_srl31_n_0 ),
        .Q31(\NLW_buf_im_reg[30][10]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/SU1/DB2/buf_im_reg[30] " *) 
  (* srl_name = "\inst/SU1/DB2/buf_im_reg[30][11]_srl31 " *) 
  SRLC32E \buf_im_reg[30][11]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(clock),
        .D(db2_di_im[11]),
        .Q(\buf_im_reg[30][11]_srl31_n_0 ),
        .Q31(\NLW_buf_im_reg[30][11]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/SU1/DB2/buf_im_reg[30] " *) 
  (* srl_name = "\inst/SU1/DB2/buf_im_reg[30][12]_srl31 " *) 
  SRLC32E \buf_im_reg[30][12]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(clock),
        .D(db2_di_im[12]),
        .Q(\buf_im_reg[30][12]_srl31_n_0 ),
        .Q31(\NLW_buf_im_reg[30][12]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/SU1/DB2/buf_im_reg[30] " *) 
  (* srl_name = "\inst/SU1/DB2/buf_im_reg[30][13]_srl31 " *) 
  SRLC32E \buf_im_reg[30][13]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(clock),
        .D(db2_di_im[13]),
        .Q(\buf_im_reg[30][13]_srl31_n_0 ),
        .Q31(\NLW_buf_im_reg[30][13]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/SU1/DB2/buf_im_reg[30] " *) 
  (* srl_name = "\inst/SU1/DB2/buf_im_reg[30][14]_srl31 " *) 
  SRLC32E \buf_im_reg[30][14]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(clock),
        .D(db2_di_im[14]),
        .Q(\buf_im_reg[30][14]_srl31_n_0 ),
        .Q31(\NLW_buf_im_reg[30][14]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/SU1/DB2/buf_im_reg[30] " *) 
  (* srl_name = "\inst/SU1/DB2/buf_im_reg[30][15]_srl31 " *) 
  SRLC32E \buf_im_reg[30][15]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(clock),
        .D(db2_di_im[15]),
        .Q(\buf_im_reg[30][15]_srl31_n_0 ),
        .Q31(\NLW_buf_im_reg[30][15]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/SU1/DB2/buf_im_reg[30] " *) 
  (* srl_name = "\inst/SU1/DB2/buf_im_reg[30][1]_srl31 " *) 
  SRLC32E \buf_im_reg[30][1]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(clock),
        .D(db2_di_im[1]),
        .Q(\buf_im_reg[30][1]_srl31_n_0 ),
        .Q31(\NLW_buf_im_reg[30][1]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/SU1/DB2/buf_im_reg[30] " *) 
  (* srl_name = "\inst/SU1/DB2/buf_im_reg[30][2]_srl31 " *) 
  SRLC32E \buf_im_reg[30][2]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(clock),
        .D(db2_di_im[2]),
        .Q(\buf_im_reg[30][2]_srl31_n_0 ),
        .Q31(\NLW_buf_im_reg[30][2]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/SU1/DB2/buf_im_reg[30] " *) 
  (* srl_name = "\inst/SU1/DB2/buf_im_reg[30][3]_srl31 " *) 
  SRLC32E \buf_im_reg[30][3]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(clock),
        .D(db2_di_im[3]),
        .Q(\buf_im_reg[30][3]_srl31_n_0 ),
        .Q31(\NLW_buf_im_reg[30][3]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/SU1/DB2/buf_im_reg[30] " *) 
  (* srl_name = "\inst/SU1/DB2/buf_im_reg[30][4]_srl31 " *) 
  SRLC32E \buf_im_reg[30][4]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(clock),
        .D(db2_di_im[4]),
        .Q(\buf_im_reg[30][4]_srl31_n_0 ),
        .Q31(\NLW_buf_im_reg[30][4]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/SU1/DB2/buf_im_reg[30] " *) 
  (* srl_name = "\inst/SU1/DB2/buf_im_reg[30][5]_srl31 " *) 
  SRLC32E \buf_im_reg[30][5]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(clock),
        .D(db2_di_im[5]),
        .Q(\buf_im_reg[30][5]_srl31_n_0 ),
        .Q31(\NLW_buf_im_reg[30][5]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/SU1/DB2/buf_im_reg[30] " *) 
  (* srl_name = "\inst/SU1/DB2/buf_im_reg[30][6]_srl31 " *) 
  SRLC32E \buf_im_reg[30][6]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(clock),
        .D(db2_di_im[6]),
        .Q(\buf_im_reg[30][6]_srl31_n_0 ),
        .Q31(\NLW_buf_im_reg[30][6]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/SU1/DB2/buf_im_reg[30] " *) 
  (* srl_name = "\inst/SU1/DB2/buf_im_reg[30][7]_srl31 " *) 
  SRLC32E \buf_im_reg[30][7]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(clock),
        .D(db2_di_im[7]),
        .Q(\buf_im_reg[30][7]_srl31_n_0 ),
        .Q31(\NLW_buf_im_reg[30][7]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/SU1/DB2/buf_im_reg[30] " *) 
  (* srl_name = "\inst/SU1/DB2/buf_im_reg[30][8]_srl31 " *) 
  SRLC32E \buf_im_reg[30][8]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(clock),
        .D(db2_di_im[8]),
        .Q(\buf_im_reg[30][8]_srl31_n_0 ),
        .Q31(\NLW_buf_im_reg[30][8]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/SU1/DB2/buf_im_reg[30] " *) 
  (* srl_name = "\inst/SU1/DB2/buf_im_reg[30][9]_srl31 " *) 
  SRLC32E \buf_im_reg[30][9]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(clock),
        .D(db2_di_im[9]),
        .Q(\buf_im_reg[30][9]_srl31_n_0 ),
        .Q31(\NLW_buf_im_reg[30][9]_srl31_Q31_UNCONNECTED ));
  FDRE \buf_im_reg[31][0]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[30][0]_srl31_n_0 ),
        .Q(\buf_im_reg[31][0]__0_0 ),
        .R(1'b0));
  FDRE \buf_im_reg[31][10]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[30][10]_srl31_n_0 ),
        .Q(\buf_im_reg[31][10]__0_0 ),
        .R(1'b0));
  FDRE \buf_im_reg[31][11]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[30][11]_srl31_n_0 ),
        .Q(\buf_im_reg[31][11]__0_0 ),
        .R(1'b0));
  FDRE \buf_im_reg[31][12]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[30][12]_srl31_n_0 ),
        .Q(\buf_im_reg[31][12]__0_0 ),
        .R(1'b0));
  FDRE \buf_im_reg[31][13]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[30][13]_srl31_n_0 ),
        .Q(\buf_im_reg[31][13]__0_0 ),
        .R(1'b0));
  FDRE \buf_im_reg[31][14]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[30][14]_srl31_n_0 ),
        .Q(\buf_im_reg[31][14]__0_0 ),
        .R(1'b0));
  FDRE \buf_im_reg[31][15]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[30][15]_srl31_n_0 ),
        .Q(\buf_im_reg[31][15]__0_0 ),
        .R(1'b0));
  FDRE \buf_im_reg[31][1]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[30][1]_srl31_n_0 ),
        .Q(\buf_im_reg[31][1]__0_0 ),
        .R(1'b0));
  FDRE \buf_im_reg[31][2]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[30][2]_srl31_n_0 ),
        .Q(\buf_im_reg[31][2]__0_0 ),
        .R(1'b0));
  FDRE \buf_im_reg[31][3]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[30][3]_srl31_n_0 ),
        .Q(\buf_im_reg[31][3]__0_0 ),
        .R(1'b0));
  FDRE \buf_im_reg[31][4]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[30][4]_srl31_n_0 ),
        .Q(\buf_im_reg[31][4]__0_0 ),
        .R(1'b0));
  FDRE \buf_im_reg[31][5]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[30][5]_srl31_n_0 ),
        .Q(\buf_im_reg[31][5]__0_0 ),
        .R(1'b0));
  FDRE \buf_im_reg[31][6]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[30][6]_srl31_n_0 ),
        .Q(\buf_im_reg[31][6]__0_0 ),
        .R(1'b0));
  FDRE \buf_im_reg[31][7]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[30][7]_srl31_n_0 ),
        .Q(\buf_im_reg[31][7]__0_0 ),
        .R(1'b0));
  FDRE \buf_im_reg[31][8]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[30][8]_srl31_n_0 ),
        .Q(\buf_im_reg[31][8]__0_0 ),
        .R(1'b0));
  FDRE \buf_im_reg[31][9]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[30][9]_srl31_n_0 ),
        .Q(\buf_im_reg[31][9]__0_0 ),
        .R(1'b0));
  (* srl_bus_name = "\inst/SU1/DB2/buf_re_reg[30] " *) 
  (* srl_name = "\inst/SU1/DB2/buf_re_reg[30][0]_srl31 " *) 
  SRLC32E \buf_re_reg[30][0]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(clock),
        .D(db2_di_re[0]),
        .Q(\buf_re_reg[30][0]_srl31_n_0 ),
        .Q31(\NLW_buf_re_reg[30][0]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/SU1/DB2/buf_re_reg[30] " *) 
  (* srl_name = "\inst/SU1/DB2/buf_re_reg[30][10]_srl31 " *) 
  SRLC32E \buf_re_reg[30][10]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(clock),
        .D(db2_di_re[10]),
        .Q(\buf_re_reg[30][10]_srl31_n_0 ),
        .Q31(\NLW_buf_re_reg[30][10]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/SU1/DB2/buf_re_reg[30] " *) 
  (* srl_name = "\inst/SU1/DB2/buf_re_reg[30][11]_srl31 " *) 
  SRLC32E \buf_re_reg[30][11]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(clock),
        .D(db2_di_re[11]),
        .Q(\buf_re_reg[30][11]_srl31_n_0 ),
        .Q31(\NLW_buf_re_reg[30][11]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/SU1/DB2/buf_re_reg[30] " *) 
  (* srl_name = "\inst/SU1/DB2/buf_re_reg[30][12]_srl31 " *) 
  SRLC32E \buf_re_reg[30][12]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(clock),
        .D(db2_di_re[12]),
        .Q(\buf_re_reg[30][12]_srl31_n_0 ),
        .Q31(\NLW_buf_re_reg[30][12]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/SU1/DB2/buf_re_reg[30] " *) 
  (* srl_name = "\inst/SU1/DB2/buf_re_reg[30][13]_srl31 " *) 
  SRLC32E \buf_re_reg[30][13]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(clock),
        .D(db2_di_re[13]),
        .Q(\buf_re_reg[30][13]_srl31_n_0 ),
        .Q31(\NLW_buf_re_reg[30][13]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/SU1/DB2/buf_re_reg[30] " *) 
  (* srl_name = "\inst/SU1/DB2/buf_re_reg[30][14]_srl31 " *) 
  SRLC32E \buf_re_reg[30][14]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(clock),
        .D(db2_di_re[14]),
        .Q(\buf_re_reg[30][14]_srl31_n_0 ),
        .Q31(\NLW_buf_re_reg[30][14]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/SU1/DB2/buf_re_reg[30] " *) 
  (* srl_name = "\inst/SU1/DB2/buf_re_reg[30][15]_srl31 " *) 
  SRLC32E \buf_re_reg[30][15]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(clock),
        .D(db2_di_re[15]),
        .Q(\buf_re_reg[30][15]_srl31_n_0 ),
        .Q31(\NLW_buf_re_reg[30][15]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/SU1/DB2/buf_re_reg[30] " *) 
  (* srl_name = "\inst/SU1/DB2/buf_re_reg[30][1]_srl31 " *) 
  SRLC32E \buf_re_reg[30][1]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(clock),
        .D(db2_di_re[1]),
        .Q(\buf_re_reg[30][1]_srl31_n_0 ),
        .Q31(\NLW_buf_re_reg[30][1]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/SU1/DB2/buf_re_reg[30] " *) 
  (* srl_name = "\inst/SU1/DB2/buf_re_reg[30][2]_srl31 " *) 
  SRLC32E \buf_re_reg[30][2]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(clock),
        .D(db2_di_re[2]),
        .Q(\buf_re_reg[30][2]_srl31_n_0 ),
        .Q31(\NLW_buf_re_reg[30][2]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/SU1/DB2/buf_re_reg[30] " *) 
  (* srl_name = "\inst/SU1/DB2/buf_re_reg[30][3]_srl31 " *) 
  SRLC32E \buf_re_reg[30][3]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(clock),
        .D(db2_di_re[3]),
        .Q(\buf_re_reg[30][3]_srl31_n_0 ),
        .Q31(\NLW_buf_re_reg[30][3]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/SU1/DB2/buf_re_reg[30] " *) 
  (* srl_name = "\inst/SU1/DB2/buf_re_reg[30][4]_srl31 " *) 
  SRLC32E \buf_re_reg[30][4]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(clock),
        .D(db2_di_re[4]),
        .Q(\buf_re_reg[30][4]_srl31_n_0 ),
        .Q31(\NLW_buf_re_reg[30][4]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/SU1/DB2/buf_re_reg[30] " *) 
  (* srl_name = "\inst/SU1/DB2/buf_re_reg[30][5]_srl31 " *) 
  SRLC32E \buf_re_reg[30][5]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(clock),
        .D(db2_di_re[5]),
        .Q(\buf_re_reg[30][5]_srl31_n_0 ),
        .Q31(\NLW_buf_re_reg[30][5]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/SU1/DB2/buf_re_reg[30] " *) 
  (* srl_name = "\inst/SU1/DB2/buf_re_reg[30][6]_srl31 " *) 
  SRLC32E \buf_re_reg[30][6]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(clock),
        .D(db2_di_re[6]),
        .Q(\buf_re_reg[30][6]_srl31_n_0 ),
        .Q31(\NLW_buf_re_reg[30][6]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/SU1/DB2/buf_re_reg[30] " *) 
  (* srl_name = "\inst/SU1/DB2/buf_re_reg[30][7]_srl31 " *) 
  SRLC32E \buf_re_reg[30][7]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(clock),
        .D(db2_di_re[7]),
        .Q(\buf_re_reg[30][7]_srl31_n_0 ),
        .Q31(\NLW_buf_re_reg[30][7]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/SU1/DB2/buf_re_reg[30] " *) 
  (* srl_name = "\inst/SU1/DB2/buf_re_reg[30][8]_srl31 " *) 
  SRLC32E \buf_re_reg[30][8]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(clock),
        .D(db2_di_re[8]),
        .Q(\buf_re_reg[30][8]_srl31_n_0 ),
        .Q31(\NLW_buf_re_reg[30][8]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/SU1/DB2/buf_re_reg[30] " *) 
  (* srl_name = "\inst/SU1/DB2/buf_re_reg[30][9]_srl31 " *) 
  SRLC32E \buf_re_reg[30][9]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(clock),
        .D(db2_di_re[9]),
        .Q(\buf_re_reg[30][9]_srl31_n_0 ),
        .Q31(\NLW_buf_re_reg[30][9]_srl31_Q31_UNCONNECTED ));
  FDRE \buf_re_reg[31][0]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg[30][0]_srl31_n_0 ),
        .Q(\buf_re_reg[31][0]__0_0 ),
        .R(1'b0));
  FDRE \buf_re_reg[31][10]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg[30][10]_srl31_n_0 ),
        .Q(\buf_re_reg[31][10]__0_0 ),
        .R(1'b0));
  FDRE \buf_re_reg[31][11]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg[30][11]_srl31_n_0 ),
        .Q(\buf_re_reg[31][11]__0_0 ),
        .R(1'b0));
  FDRE \buf_re_reg[31][12]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg[30][12]_srl31_n_0 ),
        .Q(\buf_re_reg[31][12]__0_0 ),
        .R(1'b0));
  FDRE \buf_re_reg[31][13]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg[30][13]_srl31_n_0 ),
        .Q(\buf_re_reg[31][13]__0_0 ),
        .R(1'b0));
  FDRE \buf_re_reg[31][14]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg[30][14]_srl31_n_0 ),
        .Q(\buf_re_reg[31][14]__0_0 ),
        .R(1'b0));
  FDRE \buf_re_reg[31][15]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg[30][15]_srl31_n_0 ),
        .Q(\buf_re_reg[31][15]__0_0 ),
        .R(1'b0));
  FDRE \buf_re_reg[31][1]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg[30][1]_srl31_n_0 ),
        .Q(\buf_re_reg[31][1]__0_0 ),
        .R(1'b0));
  FDRE \buf_re_reg[31][2]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg[30][2]_srl31_n_0 ),
        .Q(\buf_re_reg[31][2]__0_0 ),
        .R(1'b0));
  FDRE \buf_re_reg[31][3]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg[30][3]_srl31_n_0 ),
        .Q(\buf_re_reg[31][3]__0_0 ),
        .R(1'b0));
  FDRE \buf_re_reg[31][4]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg[30][4]_srl31_n_0 ),
        .Q(\buf_re_reg[31][4]__0_0 ),
        .R(1'b0));
  FDRE \buf_re_reg[31][5]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg[30][5]_srl31_n_0 ),
        .Q(\buf_re_reg[31][5]__0_0 ),
        .R(1'b0));
  FDRE \buf_re_reg[31][6]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg[30][6]_srl31_n_0 ),
        .Q(\buf_re_reg[31][6]__0_0 ),
        .R(1'b0));
  FDRE \buf_re_reg[31][7]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg[30][7]_srl31_n_0 ),
        .Q(\buf_re_reg[31][7]__0_0 ),
        .R(1'b0));
  FDRE \buf_re_reg[31][8]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg[30][8]_srl31_n_0 ),
        .Q(\buf_re_reg[31][8]__0_0 ),
        .R(1'b0));
  FDRE \buf_re_reg[31][9]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg[30][9]_srl31_n_0 ),
        .Q(\buf_re_reg[31][9]__0_0 ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    y0_im0_carry__0_i_1
       (.I0(\buf_im_reg[31][7]__0_0 ),
        .I1(y0_im0_carry__2[7]),
        .O(\buf_im_reg[31][7]__0_1 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_im0_carry__0_i_2
       (.I0(\buf_im_reg[31][6]__0_0 ),
        .I1(y0_im0_carry__2[6]),
        .O(\buf_im_reg[31][7]__0_1 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_im0_carry__0_i_3
       (.I0(\buf_im_reg[31][5]__0_0 ),
        .I1(y0_im0_carry__2[5]),
        .O(\buf_im_reg[31][7]__0_1 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_im0_carry__0_i_4
       (.I0(\buf_im_reg[31][4]__0_0 ),
        .I1(y0_im0_carry__2[4]),
        .O(\buf_im_reg[31][7]__0_1 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_im0_carry__1_i_1
       (.I0(\buf_im_reg[31][11]__0_0 ),
        .I1(y0_im0_carry__2[11]),
        .O(\buf_im_reg[31][11]__0_1 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_im0_carry__1_i_2
       (.I0(\buf_im_reg[31][10]__0_0 ),
        .I1(y0_im0_carry__2[10]),
        .O(\buf_im_reg[31][11]__0_1 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_im0_carry__1_i_3
       (.I0(\buf_im_reg[31][9]__0_0 ),
        .I1(y0_im0_carry__2[9]),
        .O(\buf_im_reg[31][11]__0_1 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_im0_carry__1_i_4
       (.I0(\buf_im_reg[31][8]__0_0 ),
        .I1(y0_im0_carry__2[8]),
        .O(\buf_im_reg[31][11]__0_1 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    y0_im0_carry__2_i_1
       (.I0(\buf_im_reg[31][15]__0_0 ),
        .O(\buf_im_reg[31][15]__0_2 ));
  LUT2 #(
    .INIT(4'h6)) 
    y0_im0_carry__2_i_2
       (.I0(\buf_im_reg[31][15]__0_0 ),
        .I1(y0_im0_carry__2[15]),
        .O(\buf_im_reg[31][15]__0_1 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_im0_carry__2_i_3
       (.I0(\buf_im_reg[31][14]__0_0 ),
        .I1(y0_im0_carry__2[14]),
        .O(\buf_im_reg[31][15]__0_1 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_im0_carry__2_i_4
       (.I0(\buf_im_reg[31][13]__0_0 ),
        .I1(y0_im0_carry__2[13]),
        .O(\buf_im_reg[31][15]__0_1 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_im0_carry__2_i_5
       (.I0(\buf_im_reg[31][12]__0_0 ),
        .I1(y0_im0_carry__2[12]),
        .O(\buf_im_reg[31][15]__0_1 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_im0_carry_i_1
       (.I0(\buf_im_reg[31][3]__0_0 ),
        .I1(y0_im0_carry__2[3]),
        .O(\buf_im_reg[31][3]__0_1 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_im0_carry_i_2
       (.I0(\buf_im_reg[31][2]__0_0 ),
        .I1(y0_im0_carry__2[2]),
        .O(\buf_im_reg[31][3]__0_1 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_im0_carry_i_3
       (.I0(\buf_im_reg[31][1]__0_0 ),
        .I1(y0_im0_carry__2[1]),
        .O(\buf_im_reg[31][3]__0_1 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_im0_carry_i_4
       (.I0(\buf_im_reg[31][0]__0_0 ),
        .I1(y0_im0_carry__2[0]),
        .O(\buf_im_reg[31][3]__0_1 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_re0_carry__0_i_1
       (.I0(\buf_re_reg[31][7]__0_0 ),
        .I1(Q[7]),
        .O(\buf_re_reg[31][7]__0_1 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_re0_carry__0_i_2
       (.I0(\buf_re_reg[31][6]__0_0 ),
        .I1(Q[6]),
        .O(\buf_re_reg[31][7]__0_1 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_re0_carry__0_i_3
       (.I0(\buf_re_reg[31][5]__0_0 ),
        .I1(Q[5]),
        .O(\buf_re_reg[31][7]__0_1 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_re0_carry__0_i_4
       (.I0(\buf_re_reg[31][4]__0_0 ),
        .I1(Q[4]),
        .O(\buf_re_reg[31][7]__0_1 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_re0_carry__1_i_1
       (.I0(\buf_re_reg[31][11]__0_0 ),
        .I1(Q[11]),
        .O(\buf_re_reg[31][11]__0_1 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_re0_carry__1_i_2
       (.I0(\buf_re_reg[31][10]__0_0 ),
        .I1(Q[10]),
        .O(\buf_re_reg[31][11]__0_1 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_re0_carry__1_i_3
       (.I0(\buf_re_reg[31][9]__0_0 ),
        .I1(Q[9]),
        .O(\buf_re_reg[31][11]__0_1 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_re0_carry__1_i_4
       (.I0(\buf_re_reg[31][8]__0_0 ),
        .I1(Q[8]),
        .O(\buf_re_reg[31][11]__0_1 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    y0_re0_carry__2_i_1
       (.I0(\buf_re_reg[31][15]__0_0 ),
        .O(DI));
  LUT2 #(
    .INIT(4'h6)) 
    y0_re0_carry__2_i_2
       (.I0(\buf_re_reg[31][15]__0_0 ),
        .I1(Q[15]),
        .O(\buf_re_reg[31][15]__0_1 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_re0_carry__2_i_3
       (.I0(\buf_re_reg[31][14]__0_0 ),
        .I1(Q[14]),
        .O(\buf_re_reg[31][15]__0_1 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_re0_carry__2_i_4
       (.I0(\buf_re_reg[31][13]__0_0 ),
        .I1(Q[13]),
        .O(\buf_re_reg[31][15]__0_1 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_re0_carry__2_i_5
       (.I0(\buf_re_reg[31][12]__0_0 ),
        .I1(Q[12]),
        .O(\buf_re_reg[31][15]__0_1 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_re0_carry_i_1
       (.I0(\buf_re_reg[31][3]__0_0 ),
        .I1(Q[3]),
        .O(\buf_re_reg[31][3]__0_1 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_re0_carry_i_2
       (.I0(\buf_re_reg[31][2]__0_0 ),
        .I1(Q[2]),
        .O(\buf_re_reg[31][3]__0_1 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_re0_carry_i_3
       (.I0(\buf_re_reg[31][1]__0_0 ),
        .I1(Q[1]),
        .O(\buf_re_reg[31][3]__0_1 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_re0_carry_i_4
       (.I0(\buf_re_reg[31][0]__0_0 ),
        .I1(Q[0]),
        .O(\buf_re_reg[31][3]__0_1 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_im0_carry__0_i_1
       (.I0(y0_im0_carry__2[7]),
        .I1(\buf_im_reg[31][7]__0_0 ),
        .O(\bf1_do_im_reg[7] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_im0_carry__0_i_2
       (.I0(y0_im0_carry__2[6]),
        .I1(\buf_im_reg[31][6]__0_0 ),
        .O(\bf1_do_im_reg[7] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_im0_carry__0_i_3
       (.I0(y0_im0_carry__2[5]),
        .I1(\buf_im_reg[31][5]__0_0 ),
        .O(\bf1_do_im_reg[7] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_im0_carry__0_i_4
       (.I0(y0_im0_carry__2[4]),
        .I1(\buf_im_reg[31][4]__0_0 ),
        .O(\bf1_do_im_reg[7] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_im0_carry__1_i_1
       (.I0(y0_im0_carry__2[11]),
        .I1(\buf_im_reg[31][11]__0_0 ),
        .O(\bf1_do_im_reg[11] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_im0_carry__1_i_2
       (.I0(y0_im0_carry__2[10]),
        .I1(\buf_im_reg[31][10]__0_0 ),
        .O(\bf1_do_im_reg[11] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_im0_carry__1_i_3
       (.I0(y0_im0_carry__2[9]),
        .I1(\buf_im_reg[31][9]__0_0 ),
        .O(\bf1_do_im_reg[11] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_im0_carry__1_i_4
       (.I0(y0_im0_carry__2[8]),
        .I1(\buf_im_reg[31][8]__0_0 ),
        .O(\bf1_do_im_reg[11] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_im0_carry__2_i_1
       (.I0(y0_im0_carry__2[15]),
        .I1(\buf_im_reg[31][15]__0_0 ),
        .O(\bf1_do_im_reg[15] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_im0_carry__2_i_2
       (.I0(y0_im0_carry__2[14]),
        .I1(\buf_im_reg[31][14]__0_0 ),
        .O(\bf1_do_im_reg[15] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_im0_carry__2_i_3
       (.I0(y0_im0_carry__2[13]),
        .I1(\buf_im_reg[31][13]__0_0 ),
        .O(\bf1_do_im_reg[15] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_im0_carry__2_i_4
       (.I0(y0_im0_carry__2[12]),
        .I1(\buf_im_reg[31][12]__0_0 ),
        .O(\bf1_do_im_reg[15] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_im0_carry_i_1
       (.I0(y0_im0_carry__2[3]),
        .I1(\buf_im_reg[31][3]__0_0 ),
        .O(\bf1_do_im_reg[3] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_im0_carry_i_2
       (.I0(y0_im0_carry__2[2]),
        .I1(\buf_im_reg[31][2]__0_0 ),
        .O(\bf1_do_im_reg[3] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_im0_carry_i_3
       (.I0(y0_im0_carry__2[1]),
        .I1(\buf_im_reg[31][1]__0_0 ),
        .O(\bf1_do_im_reg[3] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_im0_carry_i_4
       (.I0(y0_im0_carry__2[0]),
        .I1(\buf_im_reg[31][0]__0_0 ),
        .O(\bf1_do_im_reg[3] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_re0_carry__0_i_1
       (.I0(Q[7]),
        .I1(\buf_re_reg[31][7]__0_0 ),
        .O(\bf1_do_re_reg[7] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_re0_carry__0_i_2
       (.I0(Q[6]),
        .I1(\buf_re_reg[31][6]__0_0 ),
        .O(\bf1_do_re_reg[7] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_re0_carry__0_i_3
       (.I0(Q[5]),
        .I1(\buf_re_reg[31][5]__0_0 ),
        .O(\bf1_do_re_reg[7] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_re0_carry__0_i_4
       (.I0(Q[4]),
        .I1(\buf_re_reg[31][4]__0_0 ),
        .O(\bf1_do_re_reg[7] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_re0_carry__1_i_1
       (.I0(Q[11]),
        .I1(\buf_re_reg[31][11]__0_0 ),
        .O(\bf1_do_re_reg[11] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_re0_carry__1_i_2
       (.I0(Q[10]),
        .I1(\buf_re_reg[31][10]__0_0 ),
        .O(\bf1_do_re_reg[11] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_re0_carry__1_i_3
       (.I0(Q[9]),
        .I1(\buf_re_reg[31][9]__0_0 ),
        .O(\bf1_do_re_reg[11] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_re0_carry__1_i_4
       (.I0(Q[8]),
        .I1(\buf_re_reg[31][8]__0_0 ),
        .O(\bf1_do_re_reg[11] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_re0_carry__2_i_1
       (.I0(Q[15]),
        .I1(\buf_re_reg[31][15]__0_0 ),
        .O(\bf1_do_re_reg[15] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_re0_carry__2_i_2
       (.I0(Q[14]),
        .I1(\buf_re_reg[31][14]__0_0 ),
        .O(\bf1_do_re_reg[15] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_re0_carry__2_i_3
       (.I0(Q[13]),
        .I1(\buf_re_reg[31][13]__0_0 ),
        .O(\bf1_do_re_reg[15] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_re0_carry__2_i_4
       (.I0(Q[12]),
        .I1(\buf_re_reg[31][12]__0_0 ),
        .O(\bf1_do_re_reg[15] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_re0_carry_i_1
       (.I0(Q[3]),
        .I1(\buf_re_reg[31][3]__0_0 ),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_re0_carry_i_2
       (.I0(Q[2]),
        .I1(\buf_re_reg[31][2]__0_0 ),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_re0_carry_i_3
       (.I0(Q[1]),
        .I1(\buf_re_reg[31][1]__0_0 ),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_re0_carry_i_4
       (.I0(Q[0]),
        .I1(\buf_re_reg[31][0]__0_0 ),
        .O(S[0]));
endmodule

(* ORIG_REF_NAME = "DelayBuffer" *) 
module system_fft128_0_0_DelayBuffer__parameterized1
   (\buf_re_reg[15][15]__0_0 ,
    \buf_re_reg[15][14]__0_0 ,
    \buf_re_reg[15][11]__0_0 ,
    \buf_re_reg[15][7]__0_0 ,
    DI,
    \buf_im_reg[15][15]__0_0 ,
    \buf_im_reg[15][14]__0_0 ,
    \buf_im_reg[15][11]__0_0 ,
    \buf_im_reg[15][7]__0_0 ,
    \buf_im_reg[15][3]__0_0 ,
    \mu_do_re_reg[3] ,
    \mu_do_re_reg[7] ,
    \mu_do_re_reg[11] ,
    \mu_do_re_reg[15] ,
    \mu_do_im_reg[3] ,
    \mu_do_im_reg[7] ,
    \mu_do_im_reg[11] ,
    \mu_do_im_reg[15] ,
    \buf_re_reg[15][15]__0_1 ,
    \buf_im_reg[15][15]__0_1 ,
    \buf_im_reg[15][15]__0_2 ,
    D,
    \bf1_count_reg[3] ,
    db1_di_re,
    db1_di_im,
    \buf_re_reg[15][15]__0_2 ,
    \buf_re_reg[15][3]__0_0 ,
    \buf_re_reg[15][7]__0_1 ,
    \buf_re_reg[15][11]__0_1 ,
    \buf_im_reg[15][3]__0_1 ,
    \buf_im_reg[15][7]__0_1 ,
    \buf_im_reg[15][11]__0_1 ,
    \buf_re_reg[15][15]__0_3 ,
    clock,
    \buf_im_reg[15][15]__0_3 ,
    \buf_re_reg[3][15]__0 ,
    \buf_re_reg[3]_4 ,
    \buf_im_reg[3][15]__0 ,
    \buf_im_reg[3]_5 ,
    Q,
    add_im_carry__2,
    sub_re,
    \bf1_do_re_reg[14] ,
    sub_im,
    \bf1_do_re_reg[15] ,
    add_im,
    add_re,
    \buf_re_reg[3][15]__0_0 ,
    \buf_im_reg[3][11]__0 ,
    \buf_re_reg[3][14]__0 ,
    \buf_im_reg[3][15]__0_0 ,
    \buf_im_reg[3][14]__0 ,
    CO,
    \bf1_do_im_reg[15] );
  output \buf_re_reg[15][15]__0_0 ;
  output [2:0]\buf_re_reg[15][14]__0_0 ;
  output [3:0]\buf_re_reg[15][11]__0_0 ;
  output [3:0]\buf_re_reg[15][7]__0_0 ;
  output [3:0]DI;
  output \buf_im_reg[15][15]__0_0 ;
  output [2:0]\buf_im_reg[15][14]__0_0 ;
  output [3:0]\buf_im_reg[15][11]__0_0 ;
  output [3:0]\buf_im_reg[15][7]__0_0 ;
  output [3:0]\buf_im_reg[15][3]__0_0 ;
  output [3:0]\mu_do_re_reg[3] ;
  output [3:0]\mu_do_re_reg[7] ;
  output [3:0]\mu_do_re_reg[11] ;
  output [3:0]\mu_do_re_reg[15] ;
  output [3:0]\mu_do_im_reg[3] ;
  output [3:0]\mu_do_im_reg[7] ;
  output [3:0]\mu_do_im_reg[11] ;
  output [3:0]\mu_do_im_reg[15] ;
  output [3:0]\buf_re_reg[15][15]__0_1 ;
  output [3:0]\buf_im_reg[15][15]__0_1 ;
  output [0:0]\buf_im_reg[15][15]__0_2 ;
  output [15:0]D;
  output [15:0]\bf1_count_reg[3] ;
  output [4:0]db1_di_re;
  output [4:0]db1_di_im;
  output [0:0]\buf_re_reg[15][15]__0_2 ;
  output [3:0]\buf_re_reg[15][3]__0_0 ;
  output [3:0]\buf_re_reg[15][7]__0_1 ;
  output [3:0]\buf_re_reg[15][11]__0_1 ;
  output [3:0]\buf_im_reg[15][3]__0_1 ;
  output [3:0]\buf_im_reg[15][7]__0_1 ;
  output [3:0]\buf_im_reg[15][11]__0_1 ;
  input [4:0]\buf_re_reg[15][15]__0_3 ;
  input clock;
  input [4:0]\buf_im_reg[15][15]__0_3 ;
  input [15:0]\buf_re_reg[3][15]__0 ;
  input [15:0]\buf_re_reg[3]_4 ;
  input [15:0]\buf_im_reg[3][15]__0 ;
  input [15:0]\buf_im_reg[3]_5 ;
  input [15:0]Q;
  input [15:0]add_im_carry__2;
  input [10:0]sub_re;
  input [0:0]\bf1_do_re_reg[14] ;
  input [10:0]sub_im;
  input [1:0]\bf1_do_re_reg[15] ;
  input [14:0]add_im;
  input [14:0]add_re;
  input [0:0]\buf_re_reg[3][15]__0_0 ;
  input [0:0]\buf_im_reg[3][11]__0 ;
  input [3:0]\buf_re_reg[3][14]__0 ;
  input [0:0]\buf_im_reg[3][15]__0_0 ;
  input [3:0]\buf_im_reg[3][14]__0 ;
  input [0:0]CO;
  input [0:0]\bf1_do_im_reg[15] ;

  wire [0:0]CO;
  wire [15:0]D;
  wire [3:0]DI;
  wire [15:0]Q;
  wire [14:0]add_im;
  wire [15:0]add_im_carry__2;
  wire [14:0]add_re;
  wire [15:0]\bf1_count_reg[3] ;
  wire \bf1_do_im[12]_i_3__0_n_0 ;
  wire \bf1_do_im[12]_i_4__0_n_0 ;
  wire \bf1_do_im[12]_i_5__0_n_0 ;
  wire \bf1_do_im[12]_i_6__0_n_0 ;
  wire \bf1_do_im[15]_i_4__0_n_0 ;
  wire \bf1_do_im[15]_i_5__0_n_0 ;
  wire \bf1_do_im[15]_i_6__0_n_0 ;
  wire \bf1_do_im[4]_i_3__0_n_0 ;
  wire \bf1_do_im[4]_i_4__0_n_0 ;
  wire \bf1_do_im[4]_i_5__0_n_0 ;
  wire \bf1_do_im[4]_i_6__0_n_0 ;
  wire \bf1_do_im[4]_i_7__0_n_0 ;
  wire \bf1_do_im[8]_i_3__0_n_0 ;
  wire \bf1_do_im[8]_i_4__0_n_0 ;
  wire \bf1_do_im[8]_i_5__0_n_0 ;
  wire \bf1_do_im[8]_i_6__0_n_0 ;
  wire \bf1_do_im_reg[12]_i_2__0_n_0 ;
  wire \bf1_do_im_reg[12]_i_2__0_n_1 ;
  wire \bf1_do_im_reg[12]_i_2__0_n_2 ;
  wire \bf1_do_im_reg[12]_i_2__0_n_3 ;
  wire [0:0]\bf1_do_im_reg[15] ;
  wire \bf1_do_im_reg[15]_i_2__0_n_2 ;
  wire \bf1_do_im_reg[15]_i_2__0_n_3 ;
  wire \bf1_do_im_reg[15]_i_3__0_n_3 ;
  wire \bf1_do_im_reg[4]_i_2__0_n_0 ;
  wire \bf1_do_im_reg[4]_i_2__0_n_1 ;
  wire \bf1_do_im_reg[4]_i_2__0_n_2 ;
  wire \bf1_do_im_reg[4]_i_2__0_n_3 ;
  wire \bf1_do_im_reg[8]_i_2__0_n_0 ;
  wire \bf1_do_im_reg[8]_i_2__0_n_1 ;
  wire \bf1_do_im_reg[8]_i_2__0_n_2 ;
  wire \bf1_do_im_reg[8]_i_2__0_n_3 ;
  wire [0:0]\bf1_do_re_reg[14] ;
  wire [1:0]\bf1_do_re_reg[15] ;
  wire \bf1_do_re_reg[15]_i_2__0_n_3 ;
  wire [15:1]bf1_sp_im1;
  wire \buf_im_reg[14][0]_srl15_n_0 ;
  wire \buf_im_reg[14][10]_srl15_n_0 ;
  wire \buf_im_reg[14][11]_srl15_n_0 ;
  wire \buf_im_reg[14][12]_srl15_n_0 ;
  wire \buf_im_reg[14][13]_srl15_n_0 ;
  wire \buf_im_reg[14][14]_srl15_n_0 ;
  wire \buf_im_reg[14][15]_srl15_n_0 ;
  wire \buf_im_reg[14][1]_srl15_n_0 ;
  wire \buf_im_reg[14][2]_srl15_n_0 ;
  wire \buf_im_reg[14][3]_srl15_n_0 ;
  wire \buf_im_reg[14][4]_srl15_n_0 ;
  wire \buf_im_reg[14][5]_srl15_n_0 ;
  wire \buf_im_reg[14][6]_srl15_n_0 ;
  wire \buf_im_reg[14][7]_srl15_n_0 ;
  wire \buf_im_reg[14][8]_srl15_n_0 ;
  wire \buf_im_reg[14][9]_srl15_n_0 ;
  wire [3:0]\buf_im_reg[15][11]__0_0 ;
  wire [3:0]\buf_im_reg[15][11]__0_1 ;
  wire [2:0]\buf_im_reg[15][14]__0_0 ;
  wire \buf_im_reg[15][15]__0_0 ;
  wire [3:0]\buf_im_reg[15][15]__0_1 ;
  wire [0:0]\buf_im_reg[15][15]__0_2 ;
  wire [4:0]\buf_im_reg[15][15]__0_3 ;
  wire [3:0]\buf_im_reg[15][3]__0_0 ;
  wire [3:0]\buf_im_reg[15][3]__0_1 ;
  wire [3:0]\buf_im_reg[15][7]__0_0 ;
  wire [3:0]\buf_im_reg[15][7]__0_1 ;
  wire [0:0]\buf_im_reg[3][11]__0 ;
  wire [3:0]\buf_im_reg[3][14]__0 ;
  wire [15:0]\buf_im_reg[3][15]__0 ;
  wire [0:0]\buf_im_reg[3][15]__0_0 ;
  wire [15:0]\buf_im_reg[3]_5 ;
  wire \buf_re_reg[14][0]_srl15_n_0 ;
  wire \buf_re_reg[14][10]_srl15_n_0 ;
  wire \buf_re_reg[14][11]_srl15_n_0 ;
  wire \buf_re_reg[14][12]_srl15_n_0 ;
  wire \buf_re_reg[14][13]_srl15_n_0 ;
  wire \buf_re_reg[14][14]_srl15_n_0 ;
  wire \buf_re_reg[14][15]_srl15_n_0 ;
  wire \buf_re_reg[14][1]_srl15_n_0 ;
  wire \buf_re_reg[14][2]_srl15_n_0 ;
  wire \buf_re_reg[14][3]_srl15_n_0 ;
  wire \buf_re_reg[14][4]_srl15_n_0 ;
  wire \buf_re_reg[14][5]_srl15_n_0 ;
  wire \buf_re_reg[14][6]_srl15_n_0 ;
  wire \buf_re_reg[14][7]_srl15_n_0 ;
  wire \buf_re_reg[14][8]_srl15_n_0 ;
  wire \buf_re_reg[14][9]_srl15_n_0 ;
  wire [3:0]\buf_re_reg[15][11]__0_0 ;
  wire [3:0]\buf_re_reg[15][11]__0_1 ;
  wire [2:0]\buf_re_reg[15][14]__0_0 ;
  wire \buf_re_reg[15][15]__0_0 ;
  wire [3:0]\buf_re_reg[15][15]__0_1 ;
  wire [0:0]\buf_re_reg[15][15]__0_2 ;
  wire [4:0]\buf_re_reg[15][15]__0_3 ;
  wire [3:0]\buf_re_reg[15][3]__0_0 ;
  wire [3:0]\buf_re_reg[15][7]__0_0 ;
  wire [3:0]\buf_re_reg[15][7]__0_1 ;
  wire [3:0]\buf_re_reg[3][14]__0 ;
  wire [15:0]\buf_re_reg[3][15]__0 ;
  wire [0:0]\buf_re_reg[3][15]__0_0 ;
  wire [15:0]\buf_re_reg[3]_4 ;
  wire clock;
  wire [4:0]db1_di_im;
  wire [10:0]db1_di_im_1;
  wire [4:0]db1_di_re;
  wire [10:0]db1_di_re_0;
  wire [3:0]\mu_do_im_reg[11] ;
  wire [3:0]\mu_do_im_reg[15] ;
  wire [3:0]\mu_do_im_reg[3] ;
  wire [3:0]\mu_do_im_reg[7] ;
  wire [3:0]\mu_do_re_reg[11] ;
  wire [3:0]\mu_do_re_reg[15] ;
  wire [3:0]\mu_do_re_reg[3] ;
  wire [3:0]\mu_do_re_reg[7] ;
  wire [10:0]sub_im;
  wire [10:0]sub_re;
  wire [3:2]\NLW_bf1_do_im_reg[15]_i_2__0_CO_UNCONNECTED ;
  wire [3:3]\NLW_bf1_do_im_reg[15]_i_2__0_O_UNCONNECTED ;
  wire [3:1]\NLW_bf1_do_im_reg[15]_i_3__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_bf1_do_im_reg[15]_i_3__0_O_UNCONNECTED ;
  wire [3:1]\NLW_bf1_do_re_reg[15]_i_2__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_bf1_do_re_reg[15]_i_2__0_O_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h6)) 
    add_im_carry__0_i_1__1
       (.I0(\buf_im_reg[15][7]__0_0 [3]),
        .I1(add_im_carry__2[7]),
        .O(\buf_im_reg[15][7]__0_1 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    add_im_carry__0_i_2__1
       (.I0(\buf_im_reg[15][7]__0_0 [2]),
        .I1(add_im_carry__2[6]),
        .O(\buf_im_reg[15][7]__0_1 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    add_im_carry__0_i_3__1
       (.I0(\buf_im_reg[15][7]__0_0 [1]),
        .I1(add_im_carry__2[5]),
        .O(\buf_im_reg[15][7]__0_1 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    add_im_carry__0_i_4__1
       (.I0(\buf_im_reg[15][7]__0_0 [0]),
        .I1(add_im_carry__2[4]),
        .O(\buf_im_reg[15][7]__0_1 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    add_im_carry__1_i_1__1
       (.I0(\buf_im_reg[15][11]__0_0 [3]),
        .I1(add_im_carry__2[11]),
        .O(\buf_im_reg[15][11]__0_1 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    add_im_carry__1_i_2__1
       (.I0(\buf_im_reg[15][11]__0_0 [2]),
        .I1(add_im_carry__2[10]),
        .O(\buf_im_reg[15][11]__0_1 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    add_im_carry__1_i_3__1
       (.I0(\buf_im_reg[15][11]__0_0 [1]),
        .I1(add_im_carry__2[9]),
        .O(\buf_im_reg[15][11]__0_1 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    add_im_carry__1_i_4__1
       (.I0(\buf_im_reg[15][11]__0_0 [0]),
        .I1(add_im_carry__2[8]),
        .O(\buf_im_reg[15][11]__0_1 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    add_im_carry__2_i_1__1
       (.I0(\buf_im_reg[15][15]__0_0 ),
        .O(\buf_im_reg[15][15]__0_2 ));
  LUT2 #(
    .INIT(4'h6)) 
    add_im_carry__2_i_2__1
       (.I0(\buf_im_reg[15][15]__0_0 ),
        .I1(add_im_carry__2[15]),
        .O(\buf_im_reg[15][15]__0_1 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    add_im_carry__2_i_3__1
       (.I0(\buf_im_reg[15][14]__0_0 [2]),
        .I1(add_im_carry__2[14]),
        .O(\buf_im_reg[15][15]__0_1 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    add_im_carry__2_i_4__1
       (.I0(\buf_im_reg[15][14]__0_0 [1]),
        .I1(add_im_carry__2[13]),
        .O(\buf_im_reg[15][15]__0_1 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    add_im_carry__2_i_5__1
       (.I0(\buf_im_reg[15][14]__0_0 [0]),
        .I1(add_im_carry__2[12]),
        .O(\buf_im_reg[15][15]__0_1 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    add_im_carry_i_1__1
       (.I0(\buf_im_reg[15][3]__0_0 [3]),
        .I1(add_im_carry__2[3]),
        .O(\buf_im_reg[15][3]__0_1 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    add_im_carry_i_2__1
       (.I0(\buf_im_reg[15][3]__0_0 [2]),
        .I1(add_im_carry__2[2]),
        .O(\buf_im_reg[15][3]__0_1 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    add_im_carry_i_3__1
       (.I0(\buf_im_reg[15][3]__0_0 [1]),
        .I1(add_im_carry__2[1]),
        .O(\buf_im_reg[15][3]__0_1 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    add_im_carry_i_4__1
       (.I0(\buf_im_reg[15][3]__0_0 [0]),
        .I1(add_im_carry__2[0]),
        .O(\buf_im_reg[15][3]__0_1 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    add_re_carry__0_i_1__1
       (.I0(\buf_re_reg[15][7]__0_0 [3]),
        .I1(Q[7]),
        .O(\buf_re_reg[15][7]__0_1 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    add_re_carry__0_i_2__1
       (.I0(\buf_re_reg[15][7]__0_0 [2]),
        .I1(Q[6]),
        .O(\buf_re_reg[15][7]__0_1 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    add_re_carry__0_i_3__1
       (.I0(\buf_re_reg[15][7]__0_0 [1]),
        .I1(Q[5]),
        .O(\buf_re_reg[15][7]__0_1 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    add_re_carry__0_i_4__1
       (.I0(\buf_re_reg[15][7]__0_0 [0]),
        .I1(Q[4]),
        .O(\buf_re_reg[15][7]__0_1 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    add_re_carry__1_i_1__1
       (.I0(\buf_re_reg[15][11]__0_0 [3]),
        .I1(Q[11]),
        .O(\buf_re_reg[15][11]__0_1 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    add_re_carry__1_i_2__1
       (.I0(\buf_re_reg[15][11]__0_0 [2]),
        .I1(Q[10]),
        .O(\buf_re_reg[15][11]__0_1 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    add_re_carry__1_i_3__1
       (.I0(\buf_re_reg[15][11]__0_0 [1]),
        .I1(Q[9]),
        .O(\buf_re_reg[15][11]__0_1 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    add_re_carry__1_i_4__1
       (.I0(\buf_re_reg[15][11]__0_0 [0]),
        .I1(Q[8]),
        .O(\buf_re_reg[15][11]__0_1 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    add_re_carry__2_i_1__1
       (.I0(\buf_re_reg[15][15]__0_0 ),
        .O(\buf_re_reg[15][15]__0_2 ));
  LUT2 #(
    .INIT(4'h6)) 
    add_re_carry__2_i_2__1
       (.I0(\buf_re_reg[15][15]__0_0 ),
        .I1(Q[15]),
        .O(\buf_re_reg[15][15]__0_1 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    add_re_carry__2_i_3__1
       (.I0(\buf_re_reg[15][14]__0_0 [2]),
        .I1(Q[14]),
        .O(\buf_re_reg[15][15]__0_1 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    add_re_carry__2_i_4__1
       (.I0(\buf_re_reg[15][14]__0_0 [1]),
        .I1(Q[13]),
        .O(\buf_re_reg[15][15]__0_1 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    add_re_carry__2_i_5__1
       (.I0(\buf_re_reg[15][14]__0_0 [0]),
        .I1(Q[12]),
        .O(\buf_re_reg[15][15]__0_1 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    add_re_carry_i_1__1
       (.I0(DI[3]),
        .I1(Q[3]),
        .O(\buf_re_reg[15][3]__0_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    add_re_carry_i_2__1
       (.I0(DI[2]),
        .I1(Q[2]),
        .O(\buf_re_reg[15][3]__0_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    add_re_carry_i_3__1
       (.I0(DI[1]),
        .I1(Q[1]),
        .O(\buf_re_reg[15][3]__0_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    add_re_carry_i_4__1
       (.I0(DI[0]),
        .I1(Q[0]),
        .O(\buf_re_reg[15][3]__0_0 [0]));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_im[0]_i_1__0 
       (.I0(\bf1_do_re_reg[15] [0]),
        .I1(\bf1_do_re_reg[15] [1]),
        .I2(\buf_im_reg[15][3]__0_0 [0]),
        .I3(DI[0]),
        .I4(\bf1_do_re_reg[14] ),
        .I5(add_im[0]),
        .O(\bf1_count_reg[3] [0]));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_im[10]_i_1__0 
       (.I0(\bf1_do_re_reg[15] [0]),
        .I1(\bf1_do_re_reg[15] [1]),
        .I2(\buf_im_reg[15][11]__0_0 [2]),
        .I3(bf1_sp_im1[10]),
        .I4(\bf1_do_re_reg[14] ),
        .I5(add_im[10]),
        .O(\bf1_count_reg[3] [10]));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_im[11]_i_1__0 
       (.I0(\bf1_do_re_reg[15] [0]),
        .I1(\bf1_do_re_reg[15] [1]),
        .I2(\buf_im_reg[15][11]__0_0 [3]),
        .I3(bf1_sp_im1[11]),
        .I4(\bf1_do_re_reg[14] ),
        .I5(add_im[11]),
        .O(\bf1_count_reg[3] [11]));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_im[12]_i_1__0 
       (.I0(\bf1_do_re_reg[15] [0]),
        .I1(\bf1_do_re_reg[15] [1]),
        .I2(\buf_im_reg[15][14]__0_0 [0]),
        .I3(bf1_sp_im1[12]),
        .I4(\bf1_do_re_reg[14] ),
        .I5(add_im[12]),
        .O(\bf1_count_reg[3] [12]));
  LUT1 #(
    .INIT(2'h1)) 
    \bf1_do_im[12]_i_3__0 
       (.I0(\buf_re_reg[15][14]__0_0 [0]),
        .O(\bf1_do_im[12]_i_3__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bf1_do_im[12]_i_4__0 
       (.I0(\buf_re_reg[15][11]__0_0 [3]),
        .O(\bf1_do_im[12]_i_4__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bf1_do_im[12]_i_5__0 
       (.I0(\buf_re_reg[15][11]__0_0 [2]),
        .O(\bf1_do_im[12]_i_5__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bf1_do_im[12]_i_6__0 
       (.I0(\buf_re_reg[15][11]__0_0 [1]),
        .O(\bf1_do_im[12]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_im[13]_i_1__0 
       (.I0(\bf1_do_re_reg[15] [0]),
        .I1(\bf1_do_re_reg[15] [1]),
        .I2(\buf_im_reg[15][14]__0_0 [1]),
        .I3(bf1_sp_im1[13]),
        .I4(\bf1_do_re_reg[14] ),
        .I5(add_im[13]),
        .O(\bf1_count_reg[3] [13]));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_im[14]_i_1__0 
       (.I0(\bf1_do_re_reg[15] [0]),
        .I1(\bf1_do_re_reg[15] [1]),
        .I2(\buf_im_reg[15][14]__0_0 [2]),
        .I3(bf1_sp_im1[14]),
        .I4(\bf1_do_re_reg[14] ),
        .I5(add_im[14]),
        .O(\bf1_count_reg[3] [14]));
  LUT6 #(
    .INIT(64'h0000FFFFF870F870)) 
    \bf1_do_im[15]_i_1__0 
       (.I0(\bf1_do_re_reg[15] [0]),
        .I1(\bf1_do_re_reg[15] [1]),
        .I2(\buf_im_reg[15][15]__0_0 ),
        .I3(bf1_sp_im1[15]),
        .I4(\bf1_do_im_reg[15]_i_3__0_n_3 ),
        .I5(\bf1_do_re_reg[14] ),
        .O(\bf1_count_reg[3] [15]));
  LUT1 #(
    .INIT(2'h1)) 
    \bf1_do_im[15]_i_4__0 
       (.I0(\buf_re_reg[15][15]__0_0 ),
        .O(\bf1_do_im[15]_i_4__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bf1_do_im[15]_i_5__0 
       (.I0(\buf_re_reg[15][14]__0_0 [2]),
        .O(\bf1_do_im[15]_i_5__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bf1_do_im[15]_i_6__0 
       (.I0(\buf_re_reg[15][14]__0_0 [1]),
        .O(\bf1_do_im[15]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_im[1]_i_1__0 
       (.I0(\bf1_do_re_reg[15] [0]),
        .I1(\bf1_do_re_reg[15] [1]),
        .I2(\buf_im_reg[15][3]__0_0 [1]),
        .I3(bf1_sp_im1[1]),
        .I4(\bf1_do_re_reg[14] ),
        .I5(add_im[1]),
        .O(\bf1_count_reg[3] [1]));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_im[2]_i_1__0 
       (.I0(\bf1_do_re_reg[15] [0]),
        .I1(\bf1_do_re_reg[15] [1]),
        .I2(\buf_im_reg[15][3]__0_0 [2]),
        .I3(bf1_sp_im1[2]),
        .I4(\bf1_do_re_reg[14] ),
        .I5(add_im[2]),
        .O(\bf1_count_reg[3] [2]));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_im[3]_i_1__0 
       (.I0(\bf1_do_re_reg[15] [0]),
        .I1(\bf1_do_re_reg[15] [1]),
        .I2(\buf_im_reg[15][3]__0_0 [3]),
        .I3(bf1_sp_im1[3]),
        .I4(\bf1_do_re_reg[14] ),
        .I5(add_im[3]),
        .O(\bf1_count_reg[3] [3]));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_im[4]_i_1__0 
       (.I0(\bf1_do_re_reg[15] [0]),
        .I1(\bf1_do_re_reg[15] [1]),
        .I2(\buf_im_reg[15][7]__0_0 [0]),
        .I3(bf1_sp_im1[4]),
        .I4(\bf1_do_re_reg[14] ),
        .I5(add_im[4]),
        .O(\bf1_count_reg[3] [4]));
  LUT1 #(
    .INIT(2'h1)) 
    \bf1_do_im[4]_i_3__0 
       (.I0(DI[0]),
        .O(\bf1_do_im[4]_i_3__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bf1_do_im[4]_i_4__0 
       (.I0(\buf_re_reg[15][7]__0_0 [0]),
        .O(\bf1_do_im[4]_i_4__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bf1_do_im[4]_i_5__0 
       (.I0(DI[3]),
        .O(\bf1_do_im[4]_i_5__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bf1_do_im[4]_i_6__0 
       (.I0(DI[2]),
        .O(\bf1_do_im[4]_i_6__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bf1_do_im[4]_i_7__0 
       (.I0(DI[1]),
        .O(\bf1_do_im[4]_i_7__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_im[5]_i_1__0 
       (.I0(\bf1_do_re_reg[15] [0]),
        .I1(\bf1_do_re_reg[15] [1]),
        .I2(\buf_im_reg[15][7]__0_0 [1]),
        .I3(bf1_sp_im1[5]),
        .I4(\bf1_do_re_reg[14] ),
        .I5(add_im[5]),
        .O(\bf1_count_reg[3] [5]));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_im[6]_i_1__0 
       (.I0(\bf1_do_re_reg[15] [0]),
        .I1(\bf1_do_re_reg[15] [1]),
        .I2(\buf_im_reg[15][7]__0_0 [2]),
        .I3(bf1_sp_im1[6]),
        .I4(\bf1_do_re_reg[14] ),
        .I5(add_im[6]),
        .O(\bf1_count_reg[3] [6]));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_im[7]_i_1__0 
       (.I0(\bf1_do_re_reg[15] [0]),
        .I1(\bf1_do_re_reg[15] [1]),
        .I2(\buf_im_reg[15][7]__0_0 [3]),
        .I3(bf1_sp_im1[7]),
        .I4(\bf1_do_re_reg[14] ),
        .I5(add_im[7]),
        .O(\bf1_count_reg[3] [7]));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_im[8]_i_1__0 
       (.I0(\bf1_do_re_reg[15] [0]),
        .I1(\bf1_do_re_reg[15] [1]),
        .I2(\buf_im_reg[15][11]__0_0 [0]),
        .I3(bf1_sp_im1[8]),
        .I4(\bf1_do_re_reg[14] ),
        .I5(add_im[8]),
        .O(\bf1_count_reg[3] [8]));
  LUT1 #(
    .INIT(2'h1)) 
    \bf1_do_im[8]_i_3__0 
       (.I0(\buf_re_reg[15][11]__0_0 [0]),
        .O(\bf1_do_im[8]_i_3__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bf1_do_im[8]_i_4__0 
       (.I0(\buf_re_reg[15][7]__0_0 [3]),
        .O(\bf1_do_im[8]_i_4__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bf1_do_im[8]_i_5__0 
       (.I0(\buf_re_reg[15][7]__0_0 [2]),
        .O(\bf1_do_im[8]_i_5__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bf1_do_im[8]_i_6__0 
       (.I0(\buf_re_reg[15][7]__0_0 [1]),
        .O(\bf1_do_im[8]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_im[9]_i_1__0 
       (.I0(\bf1_do_re_reg[15] [0]),
        .I1(\bf1_do_re_reg[15] [1]),
        .I2(\buf_im_reg[15][11]__0_0 [1]),
        .I3(bf1_sp_im1[9]),
        .I4(\bf1_do_re_reg[14] ),
        .I5(add_im[9]),
        .O(\bf1_count_reg[3] [9]));
  CARRY4 \bf1_do_im_reg[12]_i_2__0 
       (.CI(\bf1_do_im_reg[8]_i_2__0_n_0 ),
        .CO({\bf1_do_im_reg[12]_i_2__0_n_0 ,\bf1_do_im_reg[12]_i_2__0_n_1 ,\bf1_do_im_reg[12]_i_2__0_n_2 ,\bf1_do_im_reg[12]_i_2__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(bf1_sp_im1[12:9]),
        .S({\bf1_do_im[12]_i_3__0_n_0 ,\bf1_do_im[12]_i_4__0_n_0 ,\bf1_do_im[12]_i_5__0_n_0 ,\bf1_do_im[12]_i_6__0_n_0 }));
  CARRY4 \bf1_do_im_reg[15]_i_2__0 
       (.CI(\bf1_do_im_reg[12]_i_2__0_n_0 ),
        .CO({\NLW_bf1_do_im_reg[15]_i_2__0_CO_UNCONNECTED [3:2],\bf1_do_im_reg[15]_i_2__0_n_2 ,\bf1_do_im_reg[15]_i_2__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_bf1_do_im_reg[15]_i_2__0_O_UNCONNECTED [3],bf1_sp_im1[15:13]}),
        .S({1'b0,\bf1_do_im[15]_i_4__0_n_0 ,\bf1_do_im[15]_i_5__0_n_0 ,\bf1_do_im[15]_i_6__0_n_0 }));
  CARRY4 \bf1_do_im_reg[15]_i_3__0 
       (.CI(\bf1_do_im_reg[15] ),
        .CO({\NLW_bf1_do_im_reg[15]_i_3__0_CO_UNCONNECTED [3:1],\bf1_do_im_reg[15]_i_3__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_bf1_do_im_reg[15]_i_3__0_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 \bf1_do_im_reg[4]_i_2__0 
       (.CI(1'b0),
        .CO({\bf1_do_im_reg[4]_i_2__0_n_0 ,\bf1_do_im_reg[4]_i_2__0_n_1 ,\bf1_do_im_reg[4]_i_2__0_n_2 ,\bf1_do_im_reg[4]_i_2__0_n_3 }),
        .CYINIT(\bf1_do_im[4]_i_3__0_n_0 ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(bf1_sp_im1[4:1]),
        .S({\bf1_do_im[4]_i_4__0_n_0 ,\bf1_do_im[4]_i_5__0_n_0 ,\bf1_do_im[4]_i_6__0_n_0 ,\bf1_do_im[4]_i_7__0_n_0 }));
  CARRY4 \bf1_do_im_reg[8]_i_2__0 
       (.CI(\bf1_do_im_reg[4]_i_2__0_n_0 ),
        .CO({\bf1_do_im_reg[8]_i_2__0_n_0 ,\bf1_do_im_reg[8]_i_2__0_n_1 ,\bf1_do_im_reg[8]_i_2__0_n_2 ,\bf1_do_im_reg[8]_i_2__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(bf1_sp_im1[8:5]),
        .S({\bf1_do_im[8]_i_3__0_n_0 ,\bf1_do_im[8]_i_4__0_n_0 ,\bf1_do_im[8]_i_5__0_n_0 ,\bf1_do_im[8]_i_6__0_n_0 }));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_re[0]_i_1__0 
       (.I0(\bf1_do_re_reg[15] [0]),
        .I1(\bf1_do_re_reg[15] [1]),
        .I2(DI[0]),
        .I3(\buf_im_reg[15][3]__0_0 [0]),
        .I4(\bf1_do_re_reg[14] ),
        .I5(add_re[0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_re[10]_i_1__0 
       (.I0(\bf1_do_re_reg[15] [0]),
        .I1(\bf1_do_re_reg[15] [1]),
        .I2(\buf_re_reg[15][11]__0_0 [2]),
        .I3(\buf_im_reg[15][11]__0_0 [2]),
        .I4(\bf1_do_re_reg[14] ),
        .I5(add_re[10]),
        .O(D[10]));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_re[11]_i_1__0 
       (.I0(\bf1_do_re_reg[15] [0]),
        .I1(\bf1_do_re_reg[15] [1]),
        .I2(\buf_re_reg[15][11]__0_0 [3]),
        .I3(\buf_im_reg[15][11]__0_0 [3]),
        .I4(\bf1_do_re_reg[14] ),
        .I5(add_re[11]),
        .O(D[11]));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_re[12]_i_1__0 
       (.I0(\bf1_do_re_reg[15] [0]),
        .I1(\bf1_do_re_reg[15] [1]),
        .I2(\buf_re_reg[15][14]__0_0 [0]),
        .I3(\buf_im_reg[15][14]__0_0 [0]),
        .I4(\bf1_do_re_reg[14] ),
        .I5(add_re[12]),
        .O(D[12]));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_re[13]_i_1__0 
       (.I0(\bf1_do_re_reg[15] [0]),
        .I1(\bf1_do_re_reg[15] [1]),
        .I2(\buf_re_reg[15][14]__0_0 [1]),
        .I3(\buf_im_reg[15][14]__0_0 [1]),
        .I4(\bf1_do_re_reg[14] ),
        .I5(add_re[13]),
        .O(D[13]));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_re[14]_i_1__0 
       (.I0(\bf1_do_re_reg[15] [0]),
        .I1(\bf1_do_re_reg[15] [1]),
        .I2(\buf_re_reg[15][14]__0_0 [2]),
        .I3(\buf_im_reg[15][14]__0_0 [2]),
        .I4(\bf1_do_re_reg[14] ),
        .I5(add_re[14]),
        .O(D[14]));
  LUT6 #(
    .INIT(64'h0000FFFFF870F870)) 
    \bf1_do_re[15]_i_1__0 
       (.I0(\bf1_do_re_reg[15] [0]),
        .I1(\bf1_do_re_reg[15] [1]),
        .I2(\buf_re_reg[15][15]__0_0 ),
        .I3(\buf_im_reg[15][15]__0_0 ),
        .I4(\bf1_do_re_reg[15]_i_2__0_n_3 ),
        .I5(\bf1_do_re_reg[14] ),
        .O(D[15]));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_re[1]_i_1__0 
       (.I0(\bf1_do_re_reg[15] [0]),
        .I1(\bf1_do_re_reg[15] [1]),
        .I2(DI[1]),
        .I3(\buf_im_reg[15][3]__0_0 [1]),
        .I4(\bf1_do_re_reg[14] ),
        .I5(add_re[1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_re[2]_i_1__0 
       (.I0(\bf1_do_re_reg[15] [0]),
        .I1(\bf1_do_re_reg[15] [1]),
        .I2(DI[2]),
        .I3(\buf_im_reg[15][3]__0_0 [2]),
        .I4(\bf1_do_re_reg[14] ),
        .I5(add_re[2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_re[3]_i_1__0 
       (.I0(\bf1_do_re_reg[15] [0]),
        .I1(\bf1_do_re_reg[15] [1]),
        .I2(DI[3]),
        .I3(\buf_im_reg[15][3]__0_0 [3]),
        .I4(\bf1_do_re_reg[14] ),
        .I5(add_re[3]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_re[4]_i_1__0 
       (.I0(\bf1_do_re_reg[15] [0]),
        .I1(\bf1_do_re_reg[15] [1]),
        .I2(\buf_re_reg[15][7]__0_0 [0]),
        .I3(\buf_im_reg[15][7]__0_0 [0]),
        .I4(\bf1_do_re_reg[14] ),
        .I5(add_re[4]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_re[5]_i_1__0 
       (.I0(\bf1_do_re_reg[15] [0]),
        .I1(\bf1_do_re_reg[15] [1]),
        .I2(\buf_re_reg[15][7]__0_0 [1]),
        .I3(\buf_im_reg[15][7]__0_0 [1]),
        .I4(\bf1_do_re_reg[14] ),
        .I5(add_re[5]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_re[6]_i_1__0 
       (.I0(\bf1_do_re_reg[15] [0]),
        .I1(\bf1_do_re_reg[15] [1]),
        .I2(\buf_re_reg[15][7]__0_0 [2]),
        .I3(\buf_im_reg[15][7]__0_0 [2]),
        .I4(\bf1_do_re_reg[14] ),
        .I5(add_re[6]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_re[7]_i_1__0 
       (.I0(\bf1_do_re_reg[15] [0]),
        .I1(\bf1_do_re_reg[15] [1]),
        .I2(\buf_re_reg[15][7]__0_0 [3]),
        .I3(\buf_im_reg[15][7]__0_0 [3]),
        .I4(\bf1_do_re_reg[14] ),
        .I5(add_re[7]),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_re[8]_i_1__0 
       (.I0(\bf1_do_re_reg[15] [0]),
        .I1(\bf1_do_re_reg[15] [1]),
        .I2(\buf_re_reg[15][11]__0_0 [0]),
        .I3(\buf_im_reg[15][11]__0_0 [0]),
        .I4(\bf1_do_re_reg[14] ),
        .I5(add_re[8]),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_re[9]_i_1__0 
       (.I0(\bf1_do_re_reg[15] [0]),
        .I1(\bf1_do_re_reg[15] [1]),
        .I2(\buf_re_reg[15][11]__0_0 [1]),
        .I3(\buf_im_reg[15][11]__0_0 [1]),
        .I4(\bf1_do_re_reg[14] ),
        .I5(add_re[9]),
        .O(D[9]));
  CARRY4 \bf1_do_re_reg[15]_i_2__0 
       (.CI(CO),
        .CO({\NLW_bf1_do_re_reg[15]_i_2__0_CO_UNCONNECTED [3:1],\bf1_do_re_reg[15]_i_2__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_bf1_do_re_reg[15]_i_2__0_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  (* srl_bus_name = "\inst/SU2/DB1/buf_im_reg[14] " *) 
  (* srl_name = "\inst/SU2/DB1/buf_im_reg[14][0]_srl15 " *) 
  SRL16E \buf_im_reg[14][0]_srl15 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(clock),
        .D(db1_di_im_1[0]),
        .Q(\buf_im_reg[14][0]_srl15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im_reg[14][0]_srl15_i_1 
       (.I0(sub_im[0]),
        .I1(\bf1_do_re_reg[14] ),
        .I2(add_im_carry__2[0]),
        .O(db1_di_im_1[0]));
  (* srl_bus_name = "\inst/SU2/DB1/buf_im_reg[14] " *) 
  (* srl_name = "\inst/SU2/DB1/buf_im_reg[14][10]_srl15 " *) 
  SRL16E \buf_im_reg[14][10]_srl15 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(clock),
        .D(db1_di_im_1[10]),
        .Q(\buf_im_reg[14][10]_srl15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im_reg[14][10]_srl15_i_1 
       (.I0(sub_im[10]),
        .I1(\bf1_do_re_reg[14] ),
        .I2(add_im_carry__2[10]),
        .O(db1_di_im_1[10]));
  (* srl_bus_name = "\inst/SU2/DB1/buf_im_reg[14] " *) 
  (* srl_name = "\inst/SU2/DB1/buf_im_reg[14][11]_srl15 " *) 
  SRL16E \buf_im_reg[14][11]_srl15 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(clock),
        .D(\buf_im_reg[15][15]__0_3 [0]),
        .Q(\buf_im_reg[14][11]_srl15_n_0 ));
  (* srl_bus_name = "\inst/SU2/DB1/buf_im_reg[14] " *) 
  (* srl_name = "\inst/SU2/DB1/buf_im_reg[14][12]_srl15 " *) 
  SRL16E \buf_im_reg[14][12]_srl15 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(clock),
        .D(\buf_im_reg[15][15]__0_3 [1]),
        .Q(\buf_im_reg[14][12]_srl15_n_0 ));
  (* srl_bus_name = "\inst/SU2/DB1/buf_im_reg[14] " *) 
  (* srl_name = "\inst/SU2/DB1/buf_im_reg[14][13]_srl15 " *) 
  SRL16E \buf_im_reg[14][13]_srl15 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(clock),
        .D(\buf_im_reg[15][15]__0_3 [2]),
        .Q(\buf_im_reg[14][13]_srl15_n_0 ));
  (* srl_bus_name = "\inst/SU2/DB1/buf_im_reg[14] " *) 
  (* srl_name = "\inst/SU2/DB1/buf_im_reg[14][14]_srl15 " *) 
  SRL16E \buf_im_reg[14][14]_srl15 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(clock),
        .D(\buf_im_reg[15][15]__0_3 [3]),
        .Q(\buf_im_reg[14][14]_srl15_n_0 ));
  (* srl_bus_name = "\inst/SU2/DB1/buf_im_reg[14] " *) 
  (* srl_name = "\inst/SU2/DB1/buf_im_reg[14][15]_srl15 " *) 
  SRL16E \buf_im_reg[14][15]_srl15 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(clock),
        .D(\buf_im_reg[15][15]__0_3 [4]),
        .Q(\buf_im_reg[14][15]_srl15_n_0 ));
  (* srl_bus_name = "\inst/SU2/DB1/buf_im_reg[14] " *) 
  (* srl_name = "\inst/SU2/DB1/buf_im_reg[14][1]_srl15 " *) 
  SRL16E \buf_im_reg[14][1]_srl15 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(clock),
        .D(db1_di_im_1[1]),
        .Q(\buf_im_reg[14][1]_srl15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im_reg[14][1]_srl15_i_1 
       (.I0(sub_im[1]),
        .I1(\bf1_do_re_reg[14] ),
        .I2(add_im_carry__2[1]),
        .O(db1_di_im_1[1]));
  (* srl_bus_name = "\inst/SU2/DB1/buf_im_reg[14] " *) 
  (* srl_name = "\inst/SU2/DB1/buf_im_reg[14][2]_srl15 " *) 
  SRL16E \buf_im_reg[14][2]_srl15 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(clock),
        .D(db1_di_im_1[2]),
        .Q(\buf_im_reg[14][2]_srl15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im_reg[14][2]_srl15_i_1 
       (.I0(sub_im[2]),
        .I1(\bf1_do_re_reg[14] ),
        .I2(add_im_carry__2[2]),
        .O(db1_di_im_1[2]));
  (* srl_bus_name = "\inst/SU2/DB1/buf_im_reg[14] " *) 
  (* srl_name = "\inst/SU2/DB1/buf_im_reg[14][3]_srl15 " *) 
  SRL16E \buf_im_reg[14][3]_srl15 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(clock),
        .D(db1_di_im_1[3]),
        .Q(\buf_im_reg[14][3]_srl15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im_reg[14][3]_srl15_i_1 
       (.I0(sub_im[3]),
        .I1(\bf1_do_re_reg[14] ),
        .I2(add_im_carry__2[3]),
        .O(db1_di_im_1[3]));
  (* srl_bus_name = "\inst/SU2/DB1/buf_im_reg[14] " *) 
  (* srl_name = "\inst/SU2/DB1/buf_im_reg[14][4]_srl15 " *) 
  SRL16E \buf_im_reg[14][4]_srl15 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(clock),
        .D(db1_di_im_1[4]),
        .Q(\buf_im_reg[14][4]_srl15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im_reg[14][4]_srl15_i_1 
       (.I0(sub_im[4]),
        .I1(\bf1_do_re_reg[14] ),
        .I2(add_im_carry__2[4]),
        .O(db1_di_im_1[4]));
  (* srl_bus_name = "\inst/SU2/DB1/buf_im_reg[14] " *) 
  (* srl_name = "\inst/SU2/DB1/buf_im_reg[14][5]_srl15 " *) 
  SRL16E \buf_im_reg[14][5]_srl15 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(clock),
        .D(db1_di_im_1[5]),
        .Q(\buf_im_reg[14][5]_srl15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im_reg[14][5]_srl15_i_1 
       (.I0(sub_im[5]),
        .I1(\bf1_do_re_reg[14] ),
        .I2(add_im_carry__2[5]),
        .O(db1_di_im_1[5]));
  (* srl_bus_name = "\inst/SU2/DB1/buf_im_reg[14] " *) 
  (* srl_name = "\inst/SU2/DB1/buf_im_reg[14][6]_srl15 " *) 
  SRL16E \buf_im_reg[14][6]_srl15 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(clock),
        .D(db1_di_im_1[6]),
        .Q(\buf_im_reg[14][6]_srl15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im_reg[14][6]_srl15_i_1 
       (.I0(sub_im[6]),
        .I1(\bf1_do_re_reg[14] ),
        .I2(add_im_carry__2[6]),
        .O(db1_di_im_1[6]));
  (* srl_bus_name = "\inst/SU2/DB1/buf_im_reg[14] " *) 
  (* srl_name = "\inst/SU2/DB1/buf_im_reg[14][7]_srl15 " *) 
  SRL16E \buf_im_reg[14][7]_srl15 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(clock),
        .D(db1_di_im_1[7]),
        .Q(\buf_im_reg[14][7]_srl15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im_reg[14][7]_srl15_i_1 
       (.I0(sub_im[7]),
        .I1(\bf1_do_re_reg[14] ),
        .I2(add_im_carry__2[7]),
        .O(db1_di_im_1[7]));
  (* srl_bus_name = "\inst/SU2/DB1/buf_im_reg[14] " *) 
  (* srl_name = "\inst/SU2/DB1/buf_im_reg[14][8]_srl15 " *) 
  SRL16E \buf_im_reg[14][8]_srl15 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(clock),
        .D(db1_di_im_1[8]),
        .Q(\buf_im_reg[14][8]_srl15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im_reg[14][8]_srl15_i_1 
       (.I0(sub_im[8]),
        .I1(\bf1_do_re_reg[14] ),
        .I2(add_im_carry__2[8]),
        .O(db1_di_im_1[8]));
  (* srl_bus_name = "\inst/SU2/DB1/buf_im_reg[14] " *) 
  (* srl_name = "\inst/SU2/DB1/buf_im_reg[14][9]_srl15 " *) 
  SRL16E \buf_im_reg[14][9]_srl15 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(clock),
        .D(db1_di_im_1[9]),
        .Q(\buf_im_reg[14][9]_srl15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im_reg[14][9]_srl15_i_1 
       (.I0(sub_im[9]),
        .I1(\bf1_do_re_reg[14] ),
        .I2(add_im_carry__2[9]),
        .O(db1_di_im_1[9]));
  FDRE \buf_im_reg[15][0]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[14][0]_srl15_n_0 ),
        .Q(\buf_im_reg[15][3]__0_0 [0]),
        .R(1'b0));
  FDRE \buf_im_reg[15][10]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[14][10]_srl15_n_0 ),
        .Q(\buf_im_reg[15][11]__0_0 [2]),
        .R(1'b0));
  FDRE \buf_im_reg[15][11]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[14][11]_srl15_n_0 ),
        .Q(\buf_im_reg[15][11]__0_0 [3]),
        .R(1'b0));
  FDRE \buf_im_reg[15][12]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[14][12]_srl15_n_0 ),
        .Q(\buf_im_reg[15][14]__0_0 [0]),
        .R(1'b0));
  FDRE \buf_im_reg[15][13]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[14][13]_srl15_n_0 ),
        .Q(\buf_im_reg[15][14]__0_0 [1]),
        .R(1'b0));
  FDRE \buf_im_reg[15][14]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[14][14]_srl15_n_0 ),
        .Q(\buf_im_reg[15][14]__0_0 [2]),
        .R(1'b0));
  FDRE \buf_im_reg[15][15]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[14][15]_srl15_n_0 ),
        .Q(\buf_im_reg[15][15]__0_0 ),
        .R(1'b0));
  FDRE \buf_im_reg[15][1]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[14][1]_srl15_n_0 ),
        .Q(\buf_im_reg[15][3]__0_0 [1]),
        .R(1'b0));
  FDRE \buf_im_reg[15][2]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[14][2]_srl15_n_0 ),
        .Q(\buf_im_reg[15][3]__0_0 [2]),
        .R(1'b0));
  FDRE \buf_im_reg[15][3]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[14][3]_srl15_n_0 ),
        .Q(\buf_im_reg[15][3]__0_0 [3]),
        .R(1'b0));
  FDRE \buf_im_reg[15][4]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[14][4]_srl15_n_0 ),
        .Q(\buf_im_reg[15][7]__0_0 [0]),
        .R(1'b0));
  FDRE \buf_im_reg[15][5]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[14][5]_srl15_n_0 ),
        .Q(\buf_im_reg[15][7]__0_0 [1]),
        .R(1'b0));
  FDRE \buf_im_reg[15][6]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[14][6]_srl15_n_0 ),
        .Q(\buf_im_reg[15][7]__0_0 [2]),
        .R(1'b0));
  FDRE \buf_im_reg[15][7]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[14][7]_srl15_n_0 ),
        .Q(\buf_im_reg[15][7]__0_0 [3]),
        .R(1'b0));
  FDRE \buf_im_reg[15][8]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[14][8]_srl15_n_0 ),
        .Q(\buf_im_reg[15][11]__0_0 [0]),
        .R(1'b0));
  FDRE \buf_im_reg[15][9]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[14][9]_srl15_n_0 ),
        .Q(\buf_im_reg[15][11]__0_0 [1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im_reg[2][11]_srl3_i_1 
       (.I0(\buf_im_reg[3][14]__0 [0]),
        .I1(\buf_im_reg[3][11]__0 ),
        .I2(\buf_im_reg[3][15]__0 [11]),
        .O(db1_di_im[0]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im_reg[2][12]_srl3_i_1 
       (.I0(\buf_im_reg[3][14]__0 [1]),
        .I1(\buf_im_reg[3][11]__0 ),
        .I2(\buf_im_reg[3][15]__0 [12]),
        .O(db1_di_im[1]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im_reg[2][13]_srl3_i_1 
       (.I0(\buf_im_reg[3][14]__0 [2]),
        .I1(\buf_im_reg[3][11]__0 ),
        .I2(\buf_im_reg[3][15]__0 [13]),
        .O(db1_di_im[2]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im_reg[2][14]_srl3_i_1 
       (.I0(\buf_im_reg[3][14]__0 [3]),
        .I1(\buf_im_reg[3][11]__0 ),
        .I2(\buf_im_reg[3][15]__0 [14]),
        .O(db1_di_im[3]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im_reg[2][15]_srl3_i_1 
       (.I0(\buf_im_reg[3][15]__0_0 ),
        .I1(\buf_im_reg[3][11]__0 ),
        .I2(\buf_im_reg[3][15]__0 [15]),
        .O(db1_di_im[4]));
  (* srl_bus_name = "\inst/SU2/DB1/buf_re_reg[14] " *) 
  (* srl_name = "\inst/SU2/DB1/buf_re_reg[14][0]_srl15 " *) 
  SRL16E \buf_re_reg[14][0]_srl15 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(clock),
        .D(db1_di_re_0[0]),
        .Q(\buf_re_reg[14][0]_srl15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re_reg[14][0]_srl15_i_1 
       (.I0(sub_re[0]),
        .I1(\bf1_do_re_reg[14] ),
        .I2(Q[0]),
        .O(db1_di_re_0[0]));
  (* srl_bus_name = "\inst/SU2/DB1/buf_re_reg[14] " *) 
  (* srl_name = "\inst/SU2/DB1/buf_re_reg[14][10]_srl15 " *) 
  SRL16E \buf_re_reg[14][10]_srl15 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(clock),
        .D(db1_di_re_0[10]),
        .Q(\buf_re_reg[14][10]_srl15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re_reg[14][10]_srl15_i_1 
       (.I0(sub_re[10]),
        .I1(\bf1_do_re_reg[14] ),
        .I2(Q[10]),
        .O(db1_di_re_0[10]));
  (* srl_bus_name = "\inst/SU2/DB1/buf_re_reg[14] " *) 
  (* srl_name = "\inst/SU2/DB1/buf_re_reg[14][11]_srl15 " *) 
  SRL16E \buf_re_reg[14][11]_srl15 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(clock),
        .D(\buf_re_reg[15][15]__0_3 [0]),
        .Q(\buf_re_reg[14][11]_srl15_n_0 ));
  (* srl_bus_name = "\inst/SU2/DB1/buf_re_reg[14] " *) 
  (* srl_name = "\inst/SU2/DB1/buf_re_reg[14][12]_srl15 " *) 
  SRL16E \buf_re_reg[14][12]_srl15 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(clock),
        .D(\buf_re_reg[15][15]__0_3 [1]),
        .Q(\buf_re_reg[14][12]_srl15_n_0 ));
  (* srl_bus_name = "\inst/SU2/DB1/buf_re_reg[14] " *) 
  (* srl_name = "\inst/SU2/DB1/buf_re_reg[14][13]_srl15 " *) 
  SRL16E \buf_re_reg[14][13]_srl15 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(clock),
        .D(\buf_re_reg[15][15]__0_3 [2]),
        .Q(\buf_re_reg[14][13]_srl15_n_0 ));
  (* srl_bus_name = "\inst/SU2/DB1/buf_re_reg[14] " *) 
  (* srl_name = "\inst/SU2/DB1/buf_re_reg[14][14]_srl15 " *) 
  SRL16E \buf_re_reg[14][14]_srl15 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(clock),
        .D(\buf_re_reg[15][15]__0_3 [3]),
        .Q(\buf_re_reg[14][14]_srl15_n_0 ));
  (* srl_bus_name = "\inst/SU2/DB1/buf_re_reg[14] " *) 
  (* srl_name = "\inst/SU2/DB1/buf_re_reg[14][15]_srl15 " *) 
  SRL16E \buf_re_reg[14][15]_srl15 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(clock),
        .D(\buf_re_reg[15][15]__0_3 [4]),
        .Q(\buf_re_reg[14][15]_srl15_n_0 ));
  (* srl_bus_name = "\inst/SU2/DB1/buf_re_reg[14] " *) 
  (* srl_name = "\inst/SU2/DB1/buf_re_reg[14][1]_srl15 " *) 
  SRL16E \buf_re_reg[14][1]_srl15 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(clock),
        .D(db1_di_re_0[1]),
        .Q(\buf_re_reg[14][1]_srl15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re_reg[14][1]_srl15_i_1 
       (.I0(sub_re[1]),
        .I1(\bf1_do_re_reg[14] ),
        .I2(Q[1]),
        .O(db1_di_re_0[1]));
  (* srl_bus_name = "\inst/SU2/DB1/buf_re_reg[14] " *) 
  (* srl_name = "\inst/SU2/DB1/buf_re_reg[14][2]_srl15 " *) 
  SRL16E \buf_re_reg[14][2]_srl15 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(clock),
        .D(db1_di_re_0[2]),
        .Q(\buf_re_reg[14][2]_srl15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re_reg[14][2]_srl15_i_1 
       (.I0(sub_re[2]),
        .I1(\bf1_do_re_reg[14] ),
        .I2(Q[2]),
        .O(db1_di_re_0[2]));
  (* srl_bus_name = "\inst/SU2/DB1/buf_re_reg[14] " *) 
  (* srl_name = "\inst/SU2/DB1/buf_re_reg[14][3]_srl15 " *) 
  SRL16E \buf_re_reg[14][3]_srl15 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(clock),
        .D(db1_di_re_0[3]),
        .Q(\buf_re_reg[14][3]_srl15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re_reg[14][3]_srl15_i_1 
       (.I0(sub_re[3]),
        .I1(\bf1_do_re_reg[14] ),
        .I2(Q[3]),
        .O(db1_di_re_0[3]));
  (* srl_bus_name = "\inst/SU2/DB1/buf_re_reg[14] " *) 
  (* srl_name = "\inst/SU2/DB1/buf_re_reg[14][4]_srl15 " *) 
  SRL16E \buf_re_reg[14][4]_srl15 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(clock),
        .D(db1_di_re_0[4]),
        .Q(\buf_re_reg[14][4]_srl15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re_reg[14][4]_srl15_i_1 
       (.I0(sub_re[4]),
        .I1(\bf1_do_re_reg[14] ),
        .I2(Q[4]),
        .O(db1_di_re_0[4]));
  (* srl_bus_name = "\inst/SU2/DB1/buf_re_reg[14] " *) 
  (* srl_name = "\inst/SU2/DB1/buf_re_reg[14][5]_srl15 " *) 
  SRL16E \buf_re_reg[14][5]_srl15 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(clock),
        .D(db1_di_re_0[5]),
        .Q(\buf_re_reg[14][5]_srl15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re_reg[14][5]_srl15_i_1 
       (.I0(sub_re[5]),
        .I1(\bf1_do_re_reg[14] ),
        .I2(Q[5]),
        .O(db1_di_re_0[5]));
  (* srl_bus_name = "\inst/SU2/DB1/buf_re_reg[14] " *) 
  (* srl_name = "\inst/SU2/DB1/buf_re_reg[14][6]_srl15 " *) 
  SRL16E \buf_re_reg[14][6]_srl15 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(clock),
        .D(db1_di_re_0[6]),
        .Q(\buf_re_reg[14][6]_srl15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re_reg[14][6]_srl15_i_1 
       (.I0(sub_re[6]),
        .I1(\bf1_do_re_reg[14] ),
        .I2(Q[6]),
        .O(db1_di_re_0[6]));
  (* srl_bus_name = "\inst/SU2/DB1/buf_re_reg[14] " *) 
  (* srl_name = "\inst/SU2/DB1/buf_re_reg[14][7]_srl15 " *) 
  SRL16E \buf_re_reg[14][7]_srl15 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(clock),
        .D(db1_di_re_0[7]),
        .Q(\buf_re_reg[14][7]_srl15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re_reg[14][7]_srl15_i_1 
       (.I0(sub_re[7]),
        .I1(\bf1_do_re_reg[14] ),
        .I2(Q[7]),
        .O(db1_di_re_0[7]));
  (* srl_bus_name = "\inst/SU2/DB1/buf_re_reg[14] " *) 
  (* srl_name = "\inst/SU2/DB1/buf_re_reg[14][8]_srl15 " *) 
  SRL16E \buf_re_reg[14][8]_srl15 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(clock),
        .D(db1_di_re_0[8]),
        .Q(\buf_re_reg[14][8]_srl15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re_reg[14][8]_srl15_i_1 
       (.I0(sub_re[8]),
        .I1(\bf1_do_re_reg[14] ),
        .I2(Q[8]),
        .O(db1_di_re_0[8]));
  (* srl_bus_name = "\inst/SU2/DB1/buf_re_reg[14] " *) 
  (* srl_name = "\inst/SU2/DB1/buf_re_reg[14][9]_srl15 " *) 
  SRL16E \buf_re_reg[14][9]_srl15 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(clock),
        .D(db1_di_re_0[9]),
        .Q(\buf_re_reg[14][9]_srl15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re_reg[14][9]_srl15_i_1 
       (.I0(sub_re[9]),
        .I1(\bf1_do_re_reg[14] ),
        .I2(Q[9]),
        .O(db1_di_re_0[9]));
  FDRE \buf_re_reg[15][0]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg[14][0]_srl15_n_0 ),
        .Q(DI[0]),
        .R(1'b0));
  FDRE \buf_re_reg[15][10]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg[14][10]_srl15_n_0 ),
        .Q(\buf_re_reg[15][11]__0_0 [2]),
        .R(1'b0));
  FDRE \buf_re_reg[15][11]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg[14][11]_srl15_n_0 ),
        .Q(\buf_re_reg[15][11]__0_0 [3]),
        .R(1'b0));
  FDRE \buf_re_reg[15][12]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg[14][12]_srl15_n_0 ),
        .Q(\buf_re_reg[15][14]__0_0 [0]),
        .R(1'b0));
  FDRE \buf_re_reg[15][13]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg[14][13]_srl15_n_0 ),
        .Q(\buf_re_reg[15][14]__0_0 [1]),
        .R(1'b0));
  FDRE \buf_re_reg[15][14]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg[14][14]_srl15_n_0 ),
        .Q(\buf_re_reg[15][14]__0_0 [2]),
        .R(1'b0));
  FDRE \buf_re_reg[15][15]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg[14][15]_srl15_n_0 ),
        .Q(\buf_re_reg[15][15]__0_0 ),
        .R(1'b0));
  FDRE \buf_re_reg[15][1]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg[14][1]_srl15_n_0 ),
        .Q(DI[1]),
        .R(1'b0));
  FDRE \buf_re_reg[15][2]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg[14][2]_srl15_n_0 ),
        .Q(DI[2]),
        .R(1'b0));
  FDRE \buf_re_reg[15][3]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg[14][3]_srl15_n_0 ),
        .Q(DI[3]),
        .R(1'b0));
  FDRE \buf_re_reg[15][4]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg[14][4]_srl15_n_0 ),
        .Q(\buf_re_reg[15][7]__0_0 [0]),
        .R(1'b0));
  FDRE \buf_re_reg[15][5]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg[14][5]_srl15_n_0 ),
        .Q(\buf_re_reg[15][7]__0_0 [1]),
        .R(1'b0));
  FDRE \buf_re_reg[15][6]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg[14][6]_srl15_n_0 ),
        .Q(\buf_re_reg[15][7]__0_0 [2]),
        .R(1'b0));
  FDRE \buf_re_reg[15][7]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg[14][7]_srl15_n_0 ),
        .Q(\buf_re_reg[15][7]__0_0 [3]),
        .R(1'b0));
  FDRE \buf_re_reg[15][8]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg[14][8]_srl15_n_0 ),
        .Q(\buf_re_reg[15][11]__0_0 [0]),
        .R(1'b0));
  FDRE \buf_re_reg[15][9]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg[14][9]_srl15_n_0 ),
        .Q(\buf_re_reg[15][11]__0_0 [1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re_reg[2][11]_srl3_i_1 
       (.I0(\buf_re_reg[3][14]__0 [0]),
        .I1(\buf_im_reg[3][11]__0 ),
        .I2(\buf_re_reg[3][15]__0 [11]),
        .O(db1_di_re[0]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re_reg[2][12]_srl3_i_1 
       (.I0(\buf_re_reg[3][14]__0 [1]),
        .I1(\buf_im_reg[3][11]__0 ),
        .I2(\buf_re_reg[3][15]__0 [12]),
        .O(db1_di_re[1]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re_reg[2][13]_srl3_i_1 
       (.I0(\buf_re_reg[3][14]__0 [2]),
        .I1(\buf_im_reg[3][11]__0 ),
        .I2(\buf_re_reg[3][15]__0 [13]),
        .O(db1_di_re[2]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re_reg[2][14]_srl3_i_1 
       (.I0(\buf_re_reg[3][14]__0 [3]),
        .I1(\buf_im_reg[3][11]__0 ),
        .I2(\buf_re_reg[3][15]__0 [14]),
        .O(db1_di_re[3]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re_reg[2][15]_srl3_i_1 
       (.I0(\buf_re_reg[3][15]__0_0 ),
        .I1(\buf_im_reg[3][11]__0 ),
        .I2(\buf_re_reg[3][15]__0 [15]),
        .O(db1_di_re[4]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_im_carry__0_i_1__2
       (.I0(\buf_im_reg[3][15]__0 [7]),
        .I1(\buf_im_reg[3]_5 [7]),
        .O(\mu_do_im_reg[7] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_im_carry__0_i_2__2
       (.I0(\buf_im_reg[3][15]__0 [6]),
        .I1(\buf_im_reg[3]_5 [6]),
        .O(\mu_do_im_reg[7] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_im_carry__0_i_3__2
       (.I0(\buf_im_reg[3][15]__0 [5]),
        .I1(\buf_im_reg[3]_5 [5]),
        .O(\mu_do_im_reg[7] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_im_carry__0_i_4__2
       (.I0(\buf_im_reg[3][15]__0 [4]),
        .I1(\buf_im_reg[3]_5 [4]),
        .O(\mu_do_im_reg[7] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_im_carry__1_i_1__2
       (.I0(\buf_im_reg[3][15]__0 [11]),
        .I1(\buf_im_reg[3]_5 [11]),
        .O(\mu_do_im_reg[11] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_im_carry__1_i_2__2
       (.I0(\buf_im_reg[3][15]__0 [10]),
        .I1(\buf_im_reg[3]_5 [10]),
        .O(\mu_do_im_reg[11] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_im_carry__1_i_3__2
       (.I0(\buf_im_reg[3][15]__0 [9]),
        .I1(\buf_im_reg[3]_5 [9]),
        .O(\mu_do_im_reg[11] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_im_carry__1_i_4__2
       (.I0(\buf_im_reg[3][15]__0 [8]),
        .I1(\buf_im_reg[3]_5 [8]),
        .O(\mu_do_im_reg[11] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_im_carry__2_i_1__0
       (.I0(\buf_im_reg[3][15]__0 [15]),
        .I1(\buf_im_reg[3]_5 [15]),
        .O(\mu_do_im_reg[15] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_im_carry__2_i_2__2
       (.I0(\buf_im_reg[3][15]__0 [14]),
        .I1(\buf_im_reg[3]_5 [14]),
        .O(\mu_do_im_reg[15] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_im_carry__2_i_3__2
       (.I0(\buf_im_reg[3][15]__0 [13]),
        .I1(\buf_im_reg[3]_5 [13]),
        .O(\mu_do_im_reg[15] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_im_carry__2_i_4__2
       (.I0(\buf_im_reg[3][15]__0 [12]),
        .I1(\buf_im_reg[3]_5 [12]),
        .O(\mu_do_im_reg[15] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_im_carry_i_1__2
       (.I0(\buf_im_reg[3][15]__0 [3]),
        .I1(\buf_im_reg[3]_5 [3]),
        .O(\mu_do_im_reg[3] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_im_carry_i_2__2
       (.I0(\buf_im_reg[3][15]__0 [2]),
        .I1(\buf_im_reg[3]_5 [2]),
        .O(\mu_do_im_reg[3] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_im_carry_i_3__2
       (.I0(\buf_im_reg[3][15]__0 [1]),
        .I1(\buf_im_reg[3]_5 [1]),
        .O(\mu_do_im_reg[3] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_im_carry_i_4__2
       (.I0(\buf_im_reg[3][15]__0 [0]),
        .I1(\buf_im_reg[3]_5 [0]),
        .O(\mu_do_im_reg[3] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_re_carry__0_i_1__2
       (.I0(\buf_re_reg[3][15]__0 [7]),
        .I1(\buf_re_reg[3]_4 [7]),
        .O(\mu_do_re_reg[7] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_re_carry__0_i_2__2
       (.I0(\buf_re_reg[3][15]__0 [6]),
        .I1(\buf_re_reg[3]_4 [6]),
        .O(\mu_do_re_reg[7] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_re_carry__0_i_3__2
       (.I0(\buf_re_reg[3][15]__0 [5]),
        .I1(\buf_re_reg[3]_4 [5]),
        .O(\mu_do_re_reg[7] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_re_carry__0_i_4__2
       (.I0(\buf_re_reg[3][15]__0 [4]),
        .I1(\buf_re_reg[3]_4 [4]),
        .O(\mu_do_re_reg[7] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_re_carry__1_i_1__2
       (.I0(\buf_re_reg[3][15]__0 [11]),
        .I1(\buf_re_reg[3]_4 [11]),
        .O(\mu_do_re_reg[11] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_re_carry__1_i_2__2
       (.I0(\buf_re_reg[3][15]__0 [10]),
        .I1(\buf_re_reg[3]_4 [10]),
        .O(\mu_do_re_reg[11] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_re_carry__1_i_3__2
       (.I0(\buf_re_reg[3][15]__0 [9]),
        .I1(\buf_re_reg[3]_4 [9]),
        .O(\mu_do_re_reg[11] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_re_carry__1_i_4__2
       (.I0(\buf_re_reg[3][15]__0 [8]),
        .I1(\buf_re_reg[3]_4 [8]),
        .O(\mu_do_re_reg[11] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_re_carry__2_i_1__0
       (.I0(\buf_re_reg[3][15]__0 [15]),
        .I1(\buf_re_reg[3]_4 [15]),
        .O(\mu_do_re_reg[15] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_re_carry__2_i_2__2
       (.I0(\buf_re_reg[3][15]__0 [14]),
        .I1(\buf_re_reg[3]_4 [14]),
        .O(\mu_do_re_reg[15] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_re_carry__2_i_3__2
       (.I0(\buf_re_reg[3][15]__0 [13]),
        .I1(\buf_re_reg[3]_4 [13]),
        .O(\mu_do_re_reg[15] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_re_carry__2_i_4__2
       (.I0(\buf_re_reg[3][15]__0 [12]),
        .I1(\buf_re_reg[3]_4 [12]),
        .O(\mu_do_re_reg[15] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_re_carry_i_1__2
       (.I0(\buf_re_reg[3][15]__0 [3]),
        .I1(\buf_re_reg[3]_4 [3]),
        .O(\mu_do_re_reg[3] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_re_carry_i_2__2
       (.I0(\buf_re_reg[3][15]__0 [2]),
        .I1(\buf_re_reg[3]_4 [2]),
        .O(\mu_do_re_reg[3] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_re_carry_i_3__2
       (.I0(\buf_re_reg[3][15]__0 [1]),
        .I1(\buf_re_reg[3]_4 [1]),
        .O(\mu_do_re_reg[3] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_re_carry_i_4__2
       (.I0(\buf_re_reg[3][15]__0 [0]),
        .I1(\buf_re_reg[3]_4 [0]),
        .O(\mu_do_re_reg[3] [0]));
endmodule

(* ORIG_REF_NAME = "DelayBuffer" *) 
module system_fft128_0_0_DelayBuffer__parameterized2
   (\buf_re_reg[7][15]__0_0 ,
    \buf_re_reg[7][14]__0_0 ,
    \buf_re_reg[7][13]__0_0 ,
    \buf_re_reg[7][12]__0_0 ,
    \buf_re_reg[7][11]__0_0 ,
    \buf_re_reg[7][10]__0_0 ,
    \buf_re_reg[7][9]__0_0 ,
    \buf_re_reg[7][8]__0_0 ,
    \buf_re_reg[7][7]__0_0 ,
    \buf_re_reg[7][6]__0_0 ,
    \buf_re_reg[7][5]__0_0 ,
    \buf_re_reg[7][4]__0_0 ,
    \buf_re_reg[7][3]__0_0 ,
    \buf_re_reg[7][2]__0_0 ,
    \buf_re_reg[7][1]__0_0 ,
    \buf_re_reg[7][0]__0_0 ,
    \buf_im_reg[7][15]__0_0 ,
    \buf_im_reg[7][14]__0_0 ,
    \buf_im_reg[7][13]__0_0 ,
    \buf_im_reg[7][12]__0_0 ,
    \buf_im_reg[7][11]__0_0 ,
    \buf_im_reg[7][10]__0_0 ,
    \buf_im_reg[7][9]__0_0 ,
    \buf_im_reg[7][8]__0_0 ,
    \buf_im_reg[7][7]__0_0 ,
    \buf_im_reg[7][6]__0_0 ,
    \buf_im_reg[7][5]__0_0 ,
    \buf_im_reg[7][4]__0_0 ,
    \buf_im_reg[7][3]__0_0 ,
    \buf_im_reg[7][2]__0_0 ,
    \buf_im_reg[7][1]__0_0 ,
    \buf_im_reg[7][0]__0_0 ,
    S,
    \bf1_do_re_reg[7] ,
    \bf1_do_re_reg[11] ,
    \bf1_do_re_reg[15] ,
    \bf1_do_im_reg[3] ,
    \bf1_do_im_reg[7] ,
    \bf1_do_im_reg[11] ,
    \bf1_do_im_reg[15] ,
    \buf_re_reg[7][15]__0_1 ,
    \buf_im_reg[7][15]__0_1 ,
    \buf_re_reg[7][3]__0_1 ,
    \buf_re_reg[7][7]__0_1 ,
    \buf_re_reg[7][11]__0_1 ,
    \buf_im_reg[7][3]__0_1 ,
    \buf_im_reg[7][7]__0_1 ,
    \buf_im_reg[7][11]__0_1 ,
    DI,
    \buf_im_reg[7][15]__0_2 ,
    db2_di_re,
    clock,
    db2_di_im,
    Q,
    y0_im0_carry__2);
  output \buf_re_reg[7][15]__0_0 ;
  output \buf_re_reg[7][14]__0_0 ;
  output \buf_re_reg[7][13]__0_0 ;
  output \buf_re_reg[7][12]__0_0 ;
  output \buf_re_reg[7][11]__0_0 ;
  output \buf_re_reg[7][10]__0_0 ;
  output \buf_re_reg[7][9]__0_0 ;
  output \buf_re_reg[7][8]__0_0 ;
  output \buf_re_reg[7][7]__0_0 ;
  output \buf_re_reg[7][6]__0_0 ;
  output \buf_re_reg[7][5]__0_0 ;
  output \buf_re_reg[7][4]__0_0 ;
  output \buf_re_reg[7][3]__0_0 ;
  output \buf_re_reg[7][2]__0_0 ;
  output \buf_re_reg[7][1]__0_0 ;
  output \buf_re_reg[7][0]__0_0 ;
  output \buf_im_reg[7][15]__0_0 ;
  output \buf_im_reg[7][14]__0_0 ;
  output \buf_im_reg[7][13]__0_0 ;
  output \buf_im_reg[7][12]__0_0 ;
  output \buf_im_reg[7][11]__0_0 ;
  output \buf_im_reg[7][10]__0_0 ;
  output \buf_im_reg[7][9]__0_0 ;
  output \buf_im_reg[7][8]__0_0 ;
  output \buf_im_reg[7][7]__0_0 ;
  output \buf_im_reg[7][6]__0_0 ;
  output \buf_im_reg[7][5]__0_0 ;
  output \buf_im_reg[7][4]__0_0 ;
  output \buf_im_reg[7][3]__0_0 ;
  output \buf_im_reg[7][2]__0_0 ;
  output \buf_im_reg[7][1]__0_0 ;
  output \buf_im_reg[7][0]__0_0 ;
  output [3:0]S;
  output [3:0]\bf1_do_re_reg[7] ;
  output [3:0]\bf1_do_re_reg[11] ;
  output [3:0]\bf1_do_re_reg[15] ;
  output [3:0]\bf1_do_im_reg[3] ;
  output [3:0]\bf1_do_im_reg[7] ;
  output [3:0]\bf1_do_im_reg[11] ;
  output [3:0]\bf1_do_im_reg[15] ;
  output [3:0]\buf_re_reg[7][15]__0_1 ;
  output [3:0]\buf_im_reg[7][15]__0_1 ;
  output [3:0]\buf_re_reg[7][3]__0_1 ;
  output [3:0]\buf_re_reg[7][7]__0_1 ;
  output [3:0]\buf_re_reg[7][11]__0_1 ;
  output [3:0]\buf_im_reg[7][3]__0_1 ;
  output [3:0]\buf_im_reg[7][7]__0_1 ;
  output [3:0]\buf_im_reg[7][11]__0_1 ;
  output [0:0]DI;
  output [0:0]\buf_im_reg[7][15]__0_2 ;
  input [15:0]db2_di_re;
  input clock;
  input [15:0]db2_di_im;
  input [15:0]Q;
  input [15:0]y0_im0_carry__2;

  wire [0:0]DI;
  wire [15:0]Q;
  wire [3:0]S;
  wire [3:0]\bf1_do_im_reg[11] ;
  wire [3:0]\bf1_do_im_reg[15] ;
  wire [3:0]\bf1_do_im_reg[3] ;
  wire [3:0]\bf1_do_im_reg[7] ;
  wire [3:0]\bf1_do_re_reg[11] ;
  wire [3:0]\bf1_do_re_reg[15] ;
  wire [3:0]\bf1_do_re_reg[7] ;
  wire \buf_im_reg[6][0]_srl7_n_0 ;
  wire \buf_im_reg[6][10]_srl7_n_0 ;
  wire \buf_im_reg[6][11]_srl7_n_0 ;
  wire \buf_im_reg[6][12]_srl7_n_0 ;
  wire \buf_im_reg[6][13]_srl7_n_0 ;
  wire \buf_im_reg[6][14]_srl7_n_0 ;
  wire \buf_im_reg[6][15]_srl7_n_0 ;
  wire \buf_im_reg[6][1]_srl7_n_0 ;
  wire \buf_im_reg[6][2]_srl7_n_0 ;
  wire \buf_im_reg[6][3]_srl7_n_0 ;
  wire \buf_im_reg[6][4]_srl7_n_0 ;
  wire \buf_im_reg[6][5]_srl7_n_0 ;
  wire \buf_im_reg[6][6]_srl7_n_0 ;
  wire \buf_im_reg[6][7]_srl7_n_0 ;
  wire \buf_im_reg[6][8]_srl7_n_0 ;
  wire \buf_im_reg[6][9]_srl7_n_0 ;
  wire \buf_im_reg[7][0]__0_0 ;
  wire \buf_im_reg[7][10]__0_0 ;
  wire \buf_im_reg[7][11]__0_0 ;
  wire [3:0]\buf_im_reg[7][11]__0_1 ;
  wire \buf_im_reg[7][12]__0_0 ;
  wire \buf_im_reg[7][13]__0_0 ;
  wire \buf_im_reg[7][14]__0_0 ;
  wire \buf_im_reg[7][15]__0_0 ;
  wire [3:0]\buf_im_reg[7][15]__0_1 ;
  wire [0:0]\buf_im_reg[7][15]__0_2 ;
  wire \buf_im_reg[7][1]__0_0 ;
  wire \buf_im_reg[7][2]__0_0 ;
  wire \buf_im_reg[7][3]__0_0 ;
  wire [3:0]\buf_im_reg[7][3]__0_1 ;
  wire \buf_im_reg[7][4]__0_0 ;
  wire \buf_im_reg[7][5]__0_0 ;
  wire \buf_im_reg[7][6]__0_0 ;
  wire \buf_im_reg[7][7]__0_0 ;
  wire [3:0]\buf_im_reg[7][7]__0_1 ;
  wire \buf_im_reg[7][8]__0_0 ;
  wire \buf_im_reg[7][9]__0_0 ;
  wire \buf_re_reg[6][0]_srl7_n_0 ;
  wire \buf_re_reg[6][10]_srl7_n_0 ;
  wire \buf_re_reg[6][11]_srl7_n_0 ;
  wire \buf_re_reg[6][12]_srl7_n_0 ;
  wire \buf_re_reg[6][13]_srl7_n_0 ;
  wire \buf_re_reg[6][14]_srl7_n_0 ;
  wire \buf_re_reg[6][15]_srl7_n_0 ;
  wire \buf_re_reg[6][1]_srl7_n_0 ;
  wire \buf_re_reg[6][2]_srl7_n_0 ;
  wire \buf_re_reg[6][3]_srl7_n_0 ;
  wire \buf_re_reg[6][4]_srl7_n_0 ;
  wire \buf_re_reg[6][5]_srl7_n_0 ;
  wire \buf_re_reg[6][6]_srl7_n_0 ;
  wire \buf_re_reg[6][7]_srl7_n_0 ;
  wire \buf_re_reg[6][8]_srl7_n_0 ;
  wire \buf_re_reg[6][9]_srl7_n_0 ;
  wire \buf_re_reg[7][0]__0_0 ;
  wire \buf_re_reg[7][10]__0_0 ;
  wire \buf_re_reg[7][11]__0_0 ;
  wire [3:0]\buf_re_reg[7][11]__0_1 ;
  wire \buf_re_reg[7][12]__0_0 ;
  wire \buf_re_reg[7][13]__0_0 ;
  wire \buf_re_reg[7][14]__0_0 ;
  wire \buf_re_reg[7][15]__0_0 ;
  wire [3:0]\buf_re_reg[7][15]__0_1 ;
  wire \buf_re_reg[7][1]__0_0 ;
  wire \buf_re_reg[7][2]__0_0 ;
  wire \buf_re_reg[7][3]__0_0 ;
  wire [3:0]\buf_re_reg[7][3]__0_1 ;
  wire \buf_re_reg[7][4]__0_0 ;
  wire \buf_re_reg[7][5]__0_0 ;
  wire \buf_re_reg[7][6]__0_0 ;
  wire \buf_re_reg[7][7]__0_0 ;
  wire [3:0]\buf_re_reg[7][7]__0_1 ;
  wire \buf_re_reg[7][8]__0_0 ;
  wire \buf_re_reg[7][9]__0_0 ;
  wire clock;
  wire [15:0]db2_di_im;
  wire [15:0]db2_di_re;
  wire [15:0]y0_im0_carry__2;

  (* srl_bus_name = "\inst/SU2/DB2/buf_im_reg[6] " *) 
  (* srl_name = "\inst/SU2/DB2/buf_im_reg[6][0]_srl7 " *) 
  SRL16E \buf_im_reg[6][0]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clock),
        .D(db2_di_im[0]),
        .Q(\buf_im_reg[6][0]_srl7_n_0 ));
  (* srl_bus_name = "\inst/SU2/DB2/buf_im_reg[6] " *) 
  (* srl_name = "\inst/SU2/DB2/buf_im_reg[6][10]_srl7 " *) 
  SRL16E \buf_im_reg[6][10]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clock),
        .D(db2_di_im[10]),
        .Q(\buf_im_reg[6][10]_srl7_n_0 ));
  (* srl_bus_name = "\inst/SU2/DB2/buf_im_reg[6] " *) 
  (* srl_name = "\inst/SU2/DB2/buf_im_reg[6][11]_srl7 " *) 
  SRL16E \buf_im_reg[6][11]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clock),
        .D(db2_di_im[11]),
        .Q(\buf_im_reg[6][11]_srl7_n_0 ));
  (* srl_bus_name = "\inst/SU2/DB2/buf_im_reg[6] " *) 
  (* srl_name = "\inst/SU2/DB2/buf_im_reg[6][12]_srl7 " *) 
  SRL16E \buf_im_reg[6][12]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clock),
        .D(db2_di_im[12]),
        .Q(\buf_im_reg[6][12]_srl7_n_0 ));
  (* srl_bus_name = "\inst/SU2/DB2/buf_im_reg[6] " *) 
  (* srl_name = "\inst/SU2/DB2/buf_im_reg[6][13]_srl7 " *) 
  SRL16E \buf_im_reg[6][13]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clock),
        .D(db2_di_im[13]),
        .Q(\buf_im_reg[6][13]_srl7_n_0 ));
  (* srl_bus_name = "\inst/SU2/DB2/buf_im_reg[6] " *) 
  (* srl_name = "\inst/SU2/DB2/buf_im_reg[6][14]_srl7 " *) 
  SRL16E \buf_im_reg[6][14]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clock),
        .D(db2_di_im[14]),
        .Q(\buf_im_reg[6][14]_srl7_n_0 ));
  (* srl_bus_name = "\inst/SU2/DB2/buf_im_reg[6] " *) 
  (* srl_name = "\inst/SU2/DB2/buf_im_reg[6][15]_srl7 " *) 
  SRL16E \buf_im_reg[6][15]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clock),
        .D(db2_di_im[15]),
        .Q(\buf_im_reg[6][15]_srl7_n_0 ));
  (* srl_bus_name = "\inst/SU2/DB2/buf_im_reg[6] " *) 
  (* srl_name = "\inst/SU2/DB2/buf_im_reg[6][1]_srl7 " *) 
  SRL16E \buf_im_reg[6][1]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clock),
        .D(db2_di_im[1]),
        .Q(\buf_im_reg[6][1]_srl7_n_0 ));
  (* srl_bus_name = "\inst/SU2/DB2/buf_im_reg[6] " *) 
  (* srl_name = "\inst/SU2/DB2/buf_im_reg[6][2]_srl7 " *) 
  SRL16E \buf_im_reg[6][2]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clock),
        .D(db2_di_im[2]),
        .Q(\buf_im_reg[6][2]_srl7_n_0 ));
  (* srl_bus_name = "\inst/SU2/DB2/buf_im_reg[6] " *) 
  (* srl_name = "\inst/SU2/DB2/buf_im_reg[6][3]_srl7 " *) 
  SRL16E \buf_im_reg[6][3]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clock),
        .D(db2_di_im[3]),
        .Q(\buf_im_reg[6][3]_srl7_n_0 ));
  (* srl_bus_name = "\inst/SU2/DB2/buf_im_reg[6] " *) 
  (* srl_name = "\inst/SU2/DB2/buf_im_reg[6][4]_srl7 " *) 
  SRL16E \buf_im_reg[6][4]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clock),
        .D(db2_di_im[4]),
        .Q(\buf_im_reg[6][4]_srl7_n_0 ));
  (* srl_bus_name = "\inst/SU2/DB2/buf_im_reg[6] " *) 
  (* srl_name = "\inst/SU2/DB2/buf_im_reg[6][5]_srl7 " *) 
  SRL16E \buf_im_reg[6][5]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clock),
        .D(db2_di_im[5]),
        .Q(\buf_im_reg[6][5]_srl7_n_0 ));
  (* srl_bus_name = "\inst/SU2/DB2/buf_im_reg[6] " *) 
  (* srl_name = "\inst/SU2/DB2/buf_im_reg[6][6]_srl7 " *) 
  SRL16E \buf_im_reg[6][6]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clock),
        .D(db2_di_im[6]),
        .Q(\buf_im_reg[6][6]_srl7_n_0 ));
  (* srl_bus_name = "\inst/SU2/DB2/buf_im_reg[6] " *) 
  (* srl_name = "\inst/SU2/DB2/buf_im_reg[6][7]_srl7 " *) 
  SRL16E \buf_im_reg[6][7]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clock),
        .D(db2_di_im[7]),
        .Q(\buf_im_reg[6][7]_srl7_n_0 ));
  (* srl_bus_name = "\inst/SU2/DB2/buf_im_reg[6] " *) 
  (* srl_name = "\inst/SU2/DB2/buf_im_reg[6][8]_srl7 " *) 
  SRL16E \buf_im_reg[6][8]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clock),
        .D(db2_di_im[8]),
        .Q(\buf_im_reg[6][8]_srl7_n_0 ));
  (* srl_bus_name = "\inst/SU2/DB2/buf_im_reg[6] " *) 
  (* srl_name = "\inst/SU2/DB2/buf_im_reg[6][9]_srl7 " *) 
  SRL16E \buf_im_reg[6][9]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clock),
        .D(db2_di_im[9]),
        .Q(\buf_im_reg[6][9]_srl7_n_0 ));
  FDRE \buf_im_reg[7][0]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[6][0]_srl7_n_0 ),
        .Q(\buf_im_reg[7][0]__0_0 ),
        .R(1'b0));
  FDRE \buf_im_reg[7][10]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[6][10]_srl7_n_0 ),
        .Q(\buf_im_reg[7][10]__0_0 ),
        .R(1'b0));
  FDRE \buf_im_reg[7][11]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[6][11]_srl7_n_0 ),
        .Q(\buf_im_reg[7][11]__0_0 ),
        .R(1'b0));
  FDRE \buf_im_reg[7][12]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[6][12]_srl7_n_0 ),
        .Q(\buf_im_reg[7][12]__0_0 ),
        .R(1'b0));
  FDRE \buf_im_reg[7][13]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[6][13]_srl7_n_0 ),
        .Q(\buf_im_reg[7][13]__0_0 ),
        .R(1'b0));
  FDRE \buf_im_reg[7][14]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[6][14]_srl7_n_0 ),
        .Q(\buf_im_reg[7][14]__0_0 ),
        .R(1'b0));
  FDRE \buf_im_reg[7][15]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[6][15]_srl7_n_0 ),
        .Q(\buf_im_reg[7][15]__0_0 ),
        .R(1'b0));
  FDRE \buf_im_reg[7][1]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[6][1]_srl7_n_0 ),
        .Q(\buf_im_reg[7][1]__0_0 ),
        .R(1'b0));
  FDRE \buf_im_reg[7][2]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[6][2]_srl7_n_0 ),
        .Q(\buf_im_reg[7][2]__0_0 ),
        .R(1'b0));
  FDRE \buf_im_reg[7][3]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[6][3]_srl7_n_0 ),
        .Q(\buf_im_reg[7][3]__0_0 ),
        .R(1'b0));
  FDRE \buf_im_reg[7][4]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[6][4]_srl7_n_0 ),
        .Q(\buf_im_reg[7][4]__0_0 ),
        .R(1'b0));
  FDRE \buf_im_reg[7][5]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[6][5]_srl7_n_0 ),
        .Q(\buf_im_reg[7][5]__0_0 ),
        .R(1'b0));
  FDRE \buf_im_reg[7][6]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[6][6]_srl7_n_0 ),
        .Q(\buf_im_reg[7][6]__0_0 ),
        .R(1'b0));
  FDRE \buf_im_reg[7][7]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[6][7]_srl7_n_0 ),
        .Q(\buf_im_reg[7][7]__0_0 ),
        .R(1'b0));
  FDRE \buf_im_reg[7][8]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[6][8]_srl7_n_0 ),
        .Q(\buf_im_reg[7][8]__0_0 ),
        .R(1'b0));
  FDRE \buf_im_reg[7][9]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[6][9]_srl7_n_0 ),
        .Q(\buf_im_reg[7][9]__0_0 ),
        .R(1'b0));
  (* srl_bus_name = "\inst/SU2/DB2/buf_re_reg[6] " *) 
  (* srl_name = "\inst/SU2/DB2/buf_re_reg[6][0]_srl7 " *) 
  SRL16E \buf_re_reg[6][0]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clock),
        .D(db2_di_re[0]),
        .Q(\buf_re_reg[6][0]_srl7_n_0 ));
  (* srl_bus_name = "\inst/SU2/DB2/buf_re_reg[6] " *) 
  (* srl_name = "\inst/SU2/DB2/buf_re_reg[6][10]_srl7 " *) 
  SRL16E \buf_re_reg[6][10]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clock),
        .D(db2_di_re[10]),
        .Q(\buf_re_reg[6][10]_srl7_n_0 ));
  (* srl_bus_name = "\inst/SU2/DB2/buf_re_reg[6] " *) 
  (* srl_name = "\inst/SU2/DB2/buf_re_reg[6][11]_srl7 " *) 
  SRL16E \buf_re_reg[6][11]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clock),
        .D(db2_di_re[11]),
        .Q(\buf_re_reg[6][11]_srl7_n_0 ));
  (* srl_bus_name = "\inst/SU2/DB2/buf_re_reg[6] " *) 
  (* srl_name = "\inst/SU2/DB2/buf_re_reg[6][12]_srl7 " *) 
  SRL16E \buf_re_reg[6][12]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clock),
        .D(db2_di_re[12]),
        .Q(\buf_re_reg[6][12]_srl7_n_0 ));
  (* srl_bus_name = "\inst/SU2/DB2/buf_re_reg[6] " *) 
  (* srl_name = "\inst/SU2/DB2/buf_re_reg[6][13]_srl7 " *) 
  SRL16E \buf_re_reg[6][13]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clock),
        .D(db2_di_re[13]),
        .Q(\buf_re_reg[6][13]_srl7_n_0 ));
  (* srl_bus_name = "\inst/SU2/DB2/buf_re_reg[6] " *) 
  (* srl_name = "\inst/SU2/DB2/buf_re_reg[6][14]_srl7 " *) 
  SRL16E \buf_re_reg[6][14]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clock),
        .D(db2_di_re[14]),
        .Q(\buf_re_reg[6][14]_srl7_n_0 ));
  (* srl_bus_name = "\inst/SU2/DB2/buf_re_reg[6] " *) 
  (* srl_name = "\inst/SU2/DB2/buf_re_reg[6][15]_srl7 " *) 
  SRL16E \buf_re_reg[6][15]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clock),
        .D(db2_di_re[15]),
        .Q(\buf_re_reg[6][15]_srl7_n_0 ));
  (* srl_bus_name = "\inst/SU2/DB2/buf_re_reg[6] " *) 
  (* srl_name = "\inst/SU2/DB2/buf_re_reg[6][1]_srl7 " *) 
  SRL16E \buf_re_reg[6][1]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clock),
        .D(db2_di_re[1]),
        .Q(\buf_re_reg[6][1]_srl7_n_0 ));
  (* srl_bus_name = "\inst/SU2/DB2/buf_re_reg[6] " *) 
  (* srl_name = "\inst/SU2/DB2/buf_re_reg[6][2]_srl7 " *) 
  SRL16E \buf_re_reg[6][2]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clock),
        .D(db2_di_re[2]),
        .Q(\buf_re_reg[6][2]_srl7_n_0 ));
  (* srl_bus_name = "\inst/SU2/DB2/buf_re_reg[6] " *) 
  (* srl_name = "\inst/SU2/DB2/buf_re_reg[6][3]_srl7 " *) 
  SRL16E \buf_re_reg[6][3]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clock),
        .D(db2_di_re[3]),
        .Q(\buf_re_reg[6][3]_srl7_n_0 ));
  (* srl_bus_name = "\inst/SU2/DB2/buf_re_reg[6] " *) 
  (* srl_name = "\inst/SU2/DB2/buf_re_reg[6][4]_srl7 " *) 
  SRL16E \buf_re_reg[6][4]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clock),
        .D(db2_di_re[4]),
        .Q(\buf_re_reg[6][4]_srl7_n_0 ));
  (* srl_bus_name = "\inst/SU2/DB2/buf_re_reg[6] " *) 
  (* srl_name = "\inst/SU2/DB2/buf_re_reg[6][5]_srl7 " *) 
  SRL16E \buf_re_reg[6][5]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clock),
        .D(db2_di_re[5]),
        .Q(\buf_re_reg[6][5]_srl7_n_0 ));
  (* srl_bus_name = "\inst/SU2/DB2/buf_re_reg[6] " *) 
  (* srl_name = "\inst/SU2/DB2/buf_re_reg[6][6]_srl7 " *) 
  SRL16E \buf_re_reg[6][6]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clock),
        .D(db2_di_re[6]),
        .Q(\buf_re_reg[6][6]_srl7_n_0 ));
  (* srl_bus_name = "\inst/SU2/DB2/buf_re_reg[6] " *) 
  (* srl_name = "\inst/SU2/DB2/buf_re_reg[6][7]_srl7 " *) 
  SRL16E \buf_re_reg[6][7]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clock),
        .D(db2_di_re[7]),
        .Q(\buf_re_reg[6][7]_srl7_n_0 ));
  (* srl_bus_name = "\inst/SU2/DB2/buf_re_reg[6] " *) 
  (* srl_name = "\inst/SU2/DB2/buf_re_reg[6][8]_srl7 " *) 
  SRL16E \buf_re_reg[6][8]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clock),
        .D(db2_di_re[8]),
        .Q(\buf_re_reg[6][8]_srl7_n_0 ));
  (* srl_bus_name = "\inst/SU2/DB2/buf_re_reg[6] " *) 
  (* srl_name = "\inst/SU2/DB2/buf_re_reg[6][9]_srl7 " *) 
  SRL16E \buf_re_reg[6][9]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clock),
        .D(db2_di_re[9]),
        .Q(\buf_re_reg[6][9]_srl7_n_0 ));
  FDRE \buf_re_reg[7][0]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg[6][0]_srl7_n_0 ),
        .Q(\buf_re_reg[7][0]__0_0 ),
        .R(1'b0));
  FDRE \buf_re_reg[7][10]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg[6][10]_srl7_n_0 ),
        .Q(\buf_re_reg[7][10]__0_0 ),
        .R(1'b0));
  FDRE \buf_re_reg[7][11]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg[6][11]_srl7_n_0 ),
        .Q(\buf_re_reg[7][11]__0_0 ),
        .R(1'b0));
  FDRE \buf_re_reg[7][12]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg[6][12]_srl7_n_0 ),
        .Q(\buf_re_reg[7][12]__0_0 ),
        .R(1'b0));
  FDRE \buf_re_reg[7][13]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg[6][13]_srl7_n_0 ),
        .Q(\buf_re_reg[7][13]__0_0 ),
        .R(1'b0));
  FDRE \buf_re_reg[7][14]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg[6][14]_srl7_n_0 ),
        .Q(\buf_re_reg[7][14]__0_0 ),
        .R(1'b0));
  FDRE \buf_re_reg[7][15]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg[6][15]_srl7_n_0 ),
        .Q(\buf_re_reg[7][15]__0_0 ),
        .R(1'b0));
  FDRE \buf_re_reg[7][1]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg[6][1]_srl7_n_0 ),
        .Q(\buf_re_reg[7][1]__0_0 ),
        .R(1'b0));
  FDRE \buf_re_reg[7][2]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg[6][2]_srl7_n_0 ),
        .Q(\buf_re_reg[7][2]__0_0 ),
        .R(1'b0));
  FDRE \buf_re_reg[7][3]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg[6][3]_srl7_n_0 ),
        .Q(\buf_re_reg[7][3]__0_0 ),
        .R(1'b0));
  FDRE \buf_re_reg[7][4]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg[6][4]_srl7_n_0 ),
        .Q(\buf_re_reg[7][4]__0_0 ),
        .R(1'b0));
  FDRE \buf_re_reg[7][5]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg[6][5]_srl7_n_0 ),
        .Q(\buf_re_reg[7][5]__0_0 ),
        .R(1'b0));
  FDRE \buf_re_reg[7][6]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg[6][6]_srl7_n_0 ),
        .Q(\buf_re_reg[7][6]__0_0 ),
        .R(1'b0));
  FDRE \buf_re_reg[7][7]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg[6][7]_srl7_n_0 ),
        .Q(\buf_re_reg[7][7]__0_0 ),
        .R(1'b0));
  FDRE \buf_re_reg[7][8]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg[6][8]_srl7_n_0 ),
        .Q(\buf_re_reg[7][8]__0_0 ),
        .R(1'b0));
  FDRE \buf_re_reg[7][9]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg[6][9]_srl7_n_0 ),
        .Q(\buf_re_reg[7][9]__0_0 ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    y0_im0_carry__0_i_1__0
       (.I0(\buf_im_reg[7][7]__0_0 ),
        .I1(y0_im0_carry__2[7]),
        .O(\buf_im_reg[7][7]__0_1 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_im0_carry__0_i_2__0
       (.I0(\buf_im_reg[7][6]__0_0 ),
        .I1(y0_im0_carry__2[6]),
        .O(\buf_im_reg[7][7]__0_1 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_im0_carry__0_i_3__0
       (.I0(\buf_im_reg[7][5]__0_0 ),
        .I1(y0_im0_carry__2[5]),
        .O(\buf_im_reg[7][7]__0_1 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_im0_carry__0_i_4__0
       (.I0(\buf_im_reg[7][4]__0_0 ),
        .I1(y0_im0_carry__2[4]),
        .O(\buf_im_reg[7][7]__0_1 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_im0_carry__1_i_1__0
       (.I0(\buf_im_reg[7][11]__0_0 ),
        .I1(y0_im0_carry__2[11]),
        .O(\buf_im_reg[7][11]__0_1 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_im0_carry__1_i_2__0
       (.I0(\buf_im_reg[7][10]__0_0 ),
        .I1(y0_im0_carry__2[10]),
        .O(\buf_im_reg[7][11]__0_1 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_im0_carry__1_i_3__0
       (.I0(\buf_im_reg[7][9]__0_0 ),
        .I1(y0_im0_carry__2[9]),
        .O(\buf_im_reg[7][11]__0_1 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_im0_carry__1_i_4__0
       (.I0(\buf_im_reg[7][8]__0_0 ),
        .I1(y0_im0_carry__2[8]),
        .O(\buf_im_reg[7][11]__0_1 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    y0_im0_carry__2_i_1__0
       (.I0(\buf_im_reg[7][15]__0_0 ),
        .O(\buf_im_reg[7][15]__0_2 ));
  LUT2 #(
    .INIT(4'h6)) 
    y0_im0_carry__2_i_2__0
       (.I0(\buf_im_reg[7][15]__0_0 ),
        .I1(y0_im0_carry__2[15]),
        .O(\buf_im_reg[7][15]__0_1 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_im0_carry__2_i_3__0
       (.I0(\buf_im_reg[7][14]__0_0 ),
        .I1(y0_im0_carry__2[14]),
        .O(\buf_im_reg[7][15]__0_1 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_im0_carry__2_i_4__0
       (.I0(\buf_im_reg[7][13]__0_0 ),
        .I1(y0_im0_carry__2[13]),
        .O(\buf_im_reg[7][15]__0_1 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_im0_carry__2_i_5__0
       (.I0(\buf_im_reg[7][12]__0_0 ),
        .I1(y0_im0_carry__2[12]),
        .O(\buf_im_reg[7][15]__0_1 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_im0_carry_i_1__0
       (.I0(\buf_im_reg[7][3]__0_0 ),
        .I1(y0_im0_carry__2[3]),
        .O(\buf_im_reg[7][3]__0_1 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_im0_carry_i_2__0
       (.I0(\buf_im_reg[7][2]__0_0 ),
        .I1(y0_im0_carry__2[2]),
        .O(\buf_im_reg[7][3]__0_1 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_im0_carry_i_3__0
       (.I0(\buf_im_reg[7][1]__0_0 ),
        .I1(y0_im0_carry__2[1]),
        .O(\buf_im_reg[7][3]__0_1 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_im0_carry_i_4__0
       (.I0(\buf_im_reg[7][0]__0_0 ),
        .I1(y0_im0_carry__2[0]),
        .O(\buf_im_reg[7][3]__0_1 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_re0_carry__0_i_1__0
       (.I0(\buf_re_reg[7][7]__0_0 ),
        .I1(Q[7]),
        .O(\buf_re_reg[7][7]__0_1 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_re0_carry__0_i_2__0
       (.I0(\buf_re_reg[7][6]__0_0 ),
        .I1(Q[6]),
        .O(\buf_re_reg[7][7]__0_1 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_re0_carry__0_i_3__0
       (.I0(\buf_re_reg[7][5]__0_0 ),
        .I1(Q[5]),
        .O(\buf_re_reg[7][7]__0_1 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_re0_carry__0_i_4__0
       (.I0(\buf_re_reg[7][4]__0_0 ),
        .I1(Q[4]),
        .O(\buf_re_reg[7][7]__0_1 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_re0_carry__1_i_1__0
       (.I0(\buf_re_reg[7][11]__0_0 ),
        .I1(Q[11]),
        .O(\buf_re_reg[7][11]__0_1 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_re0_carry__1_i_2__0
       (.I0(\buf_re_reg[7][10]__0_0 ),
        .I1(Q[10]),
        .O(\buf_re_reg[7][11]__0_1 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_re0_carry__1_i_3__0
       (.I0(\buf_re_reg[7][9]__0_0 ),
        .I1(Q[9]),
        .O(\buf_re_reg[7][11]__0_1 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_re0_carry__1_i_4__0
       (.I0(\buf_re_reg[7][8]__0_0 ),
        .I1(Q[8]),
        .O(\buf_re_reg[7][11]__0_1 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    y0_re0_carry__2_i_1__0
       (.I0(\buf_re_reg[7][15]__0_0 ),
        .O(DI));
  LUT2 #(
    .INIT(4'h6)) 
    y0_re0_carry__2_i_2__0
       (.I0(\buf_re_reg[7][15]__0_0 ),
        .I1(Q[15]),
        .O(\buf_re_reg[7][15]__0_1 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_re0_carry__2_i_3__0
       (.I0(\buf_re_reg[7][14]__0_0 ),
        .I1(Q[14]),
        .O(\buf_re_reg[7][15]__0_1 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_re0_carry__2_i_4__0
       (.I0(\buf_re_reg[7][13]__0_0 ),
        .I1(Q[13]),
        .O(\buf_re_reg[7][15]__0_1 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_re0_carry__2_i_5__0
       (.I0(\buf_re_reg[7][12]__0_0 ),
        .I1(Q[12]),
        .O(\buf_re_reg[7][15]__0_1 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_re0_carry_i_1__0
       (.I0(\buf_re_reg[7][3]__0_0 ),
        .I1(Q[3]),
        .O(\buf_re_reg[7][3]__0_1 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_re0_carry_i_2__0
       (.I0(\buf_re_reg[7][2]__0_0 ),
        .I1(Q[2]),
        .O(\buf_re_reg[7][3]__0_1 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_re0_carry_i_3__0
       (.I0(\buf_re_reg[7][1]__0_0 ),
        .I1(Q[1]),
        .O(\buf_re_reg[7][3]__0_1 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_re0_carry_i_4__0
       (.I0(\buf_re_reg[7][0]__0_0 ),
        .I1(Q[0]),
        .O(\buf_re_reg[7][3]__0_1 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_im0_carry__0_i_1__0
       (.I0(y0_im0_carry__2[7]),
        .I1(\buf_im_reg[7][7]__0_0 ),
        .O(\bf1_do_im_reg[7] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_im0_carry__0_i_2__0
       (.I0(y0_im0_carry__2[6]),
        .I1(\buf_im_reg[7][6]__0_0 ),
        .O(\bf1_do_im_reg[7] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_im0_carry__0_i_3__0
       (.I0(y0_im0_carry__2[5]),
        .I1(\buf_im_reg[7][5]__0_0 ),
        .O(\bf1_do_im_reg[7] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_im0_carry__0_i_4__0
       (.I0(y0_im0_carry__2[4]),
        .I1(\buf_im_reg[7][4]__0_0 ),
        .O(\bf1_do_im_reg[7] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_im0_carry__1_i_1__0
       (.I0(y0_im0_carry__2[11]),
        .I1(\buf_im_reg[7][11]__0_0 ),
        .O(\bf1_do_im_reg[11] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_im0_carry__1_i_2__0
       (.I0(y0_im0_carry__2[10]),
        .I1(\buf_im_reg[7][10]__0_0 ),
        .O(\bf1_do_im_reg[11] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_im0_carry__1_i_3__0
       (.I0(y0_im0_carry__2[9]),
        .I1(\buf_im_reg[7][9]__0_0 ),
        .O(\bf1_do_im_reg[11] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_im0_carry__1_i_4__0
       (.I0(y0_im0_carry__2[8]),
        .I1(\buf_im_reg[7][8]__0_0 ),
        .O(\bf1_do_im_reg[11] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_im0_carry__2_i_1__0
       (.I0(y0_im0_carry__2[15]),
        .I1(\buf_im_reg[7][15]__0_0 ),
        .O(\bf1_do_im_reg[15] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_im0_carry__2_i_2__0
       (.I0(y0_im0_carry__2[14]),
        .I1(\buf_im_reg[7][14]__0_0 ),
        .O(\bf1_do_im_reg[15] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_im0_carry__2_i_3__0
       (.I0(y0_im0_carry__2[13]),
        .I1(\buf_im_reg[7][13]__0_0 ),
        .O(\bf1_do_im_reg[15] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_im0_carry__2_i_4__0
       (.I0(y0_im0_carry__2[12]),
        .I1(\buf_im_reg[7][12]__0_0 ),
        .O(\bf1_do_im_reg[15] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_im0_carry_i_1__0
       (.I0(y0_im0_carry__2[3]),
        .I1(\buf_im_reg[7][3]__0_0 ),
        .O(\bf1_do_im_reg[3] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_im0_carry_i_2__0
       (.I0(y0_im0_carry__2[2]),
        .I1(\buf_im_reg[7][2]__0_0 ),
        .O(\bf1_do_im_reg[3] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_im0_carry_i_3__0
       (.I0(y0_im0_carry__2[1]),
        .I1(\buf_im_reg[7][1]__0_0 ),
        .O(\bf1_do_im_reg[3] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_im0_carry_i_4__0
       (.I0(y0_im0_carry__2[0]),
        .I1(\buf_im_reg[7][0]__0_0 ),
        .O(\bf1_do_im_reg[3] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_re0_carry__0_i_1__0
       (.I0(Q[7]),
        .I1(\buf_re_reg[7][7]__0_0 ),
        .O(\bf1_do_re_reg[7] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_re0_carry__0_i_2__0
       (.I0(Q[6]),
        .I1(\buf_re_reg[7][6]__0_0 ),
        .O(\bf1_do_re_reg[7] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_re0_carry__0_i_3__0
       (.I0(Q[5]),
        .I1(\buf_re_reg[7][5]__0_0 ),
        .O(\bf1_do_re_reg[7] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_re0_carry__0_i_4__0
       (.I0(Q[4]),
        .I1(\buf_re_reg[7][4]__0_0 ),
        .O(\bf1_do_re_reg[7] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_re0_carry__1_i_1__0
       (.I0(Q[11]),
        .I1(\buf_re_reg[7][11]__0_0 ),
        .O(\bf1_do_re_reg[11] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_re0_carry__1_i_2__0
       (.I0(Q[10]),
        .I1(\buf_re_reg[7][10]__0_0 ),
        .O(\bf1_do_re_reg[11] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_re0_carry__1_i_3__0
       (.I0(Q[9]),
        .I1(\buf_re_reg[7][9]__0_0 ),
        .O(\bf1_do_re_reg[11] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_re0_carry__1_i_4__0
       (.I0(Q[8]),
        .I1(\buf_re_reg[7][8]__0_0 ),
        .O(\bf1_do_re_reg[11] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_re0_carry__2_i_1__0
       (.I0(Q[15]),
        .I1(\buf_re_reg[7][15]__0_0 ),
        .O(\bf1_do_re_reg[15] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_re0_carry__2_i_2__0
       (.I0(Q[14]),
        .I1(\buf_re_reg[7][14]__0_0 ),
        .O(\bf1_do_re_reg[15] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_re0_carry__2_i_3__0
       (.I0(Q[13]),
        .I1(\buf_re_reg[7][13]__0_0 ),
        .O(\bf1_do_re_reg[15] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_re0_carry__2_i_4__0
       (.I0(Q[12]),
        .I1(\buf_re_reg[7][12]__0_0 ),
        .O(\bf1_do_re_reg[15] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_re0_carry_i_1__0
       (.I0(Q[3]),
        .I1(\buf_re_reg[7][3]__0_0 ),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_re0_carry_i_2__0
       (.I0(Q[2]),
        .I1(\buf_re_reg[7][2]__0_0 ),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_re0_carry_i_3__0
       (.I0(Q[1]),
        .I1(\buf_re_reg[7][1]__0_0 ),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_re0_carry_i_4__0
       (.I0(Q[0]),
        .I1(\buf_re_reg[7][0]__0_0 ),
        .O(S[0]));
endmodule

(* ORIG_REF_NAME = "DelayBuffer" *) 
module system_fft128_0_0_DelayBuffer__parameterized3
   (\buf_re_reg[3][15]__0_0 ,
    \buf_re_reg[3][14]__0_0 ,
    \buf_re_reg[3][11]__0_0 ,
    \buf_re_reg[3][7]__0_0 ,
    DI,
    \buf_im_reg[3][15]__0_0 ,
    \buf_im_reg[3][14]__0_0 ,
    \buf_im_reg[3][11]__0_0 ,
    \buf_im_reg[3][7]__0_0 ,
    \buf_im_reg[3][3]__0_0 ,
    \buf_re_reg[3][15]__0_1 ,
    \buf_im_reg[3][15]__0_1 ,
    \buf_im_reg[3][15]__0_2 ,
    D,
    \bf1_count_reg[1] ,
    \buf_re_reg[3][15]__0_2 ,
    S,
    \buf_re_reg[3][7]__0_1 ,
    \buf_re_reg[3][11]__0_1 ,
    \buf_im_reg[3][3]__0_1 ,
    \buf_im_reg[3][7]__0_1 ,
    \buf_im_reg[3][11]__0_1 ,
    \buf_re_reg[3][15]__0_3 ,
    clock,
    \buf_im_reg[3][15]__0_3 ,
    add_re_carry__2,
    add_im_carry__2,
    sub_re,
    Q,
    sub_im,
    \bf1_do_re_reg[15] ,
    add_im,
    add_re,
    CO,
    \bf1_do_im_reg[15] );
  output \buf_re_reg[3][15]__0_0 ;
  output [2:0]\buf_re_reg[3][14]__0_0 ;
  output [3:0]\buf_re_reg[3][11]__0_0 ;
  output [3:0]\buf_re_reg[3][7]__0_0 ;
  output [3:0]DI;
  output \buf_im_reg[3][15]__0_0 ;
  output [2:0]\buf_im_reg[3][14]__0_0 ;
  output [3:0]\buf_im_reg[3][11]__0_0 ;
  output [3:0]\buf_im_reg[3][7]__0_0 ;
  output [3:0]\buf_im_reg[3][3]__0_0 ;
  output [3:0]\buf_re_reg[3][15]__0_1 ;
  output [3:0]\buf_im_reg[3][15]__0_1 ;
  output [0:0]\buf_im_reg[3][15]__0_2 ;
  output [15:0]D;
  output [15:0]\bf1_count_reg[1] ;
  output [0:0]\buf_re_reg[3][15]__0_2 ;
  output [3:0]S;
  output [3:0]\buf_re_reg[3][7]__0_1 ;
  output [3:0]\buf_re_reg[3][11]__0_1 ;
  output [3:0]\buf_im_reg[3][3]__0_1 ;
  output [3:0]\buf_im_reg[3][7]__0_1 ;
  output [3:0]\buf_im_reg[3][11]__0_1 ;
  input [4:0]\buf_re_reg[3][15]__0_3 ;
  input clock;
  input [4:0]\buf_im_reg[3][15]__0_3 ;
  input [15:0]add_re_carry__2;
  input [15:0]add_im_carry__2;
  input [10:0]sub_re;
  input [0:0]Q;
  input [10:0]sub_im;
  input [1:0]\bf1_do_re_reg[15] ;
  input [14:0]add_im;
  input [14:0]add_re;
  input [0:0]CO;
  input [0:0]\bf1_do_im_reg[15] ;

  wire [0:0]CO;
  wire [15:0]D;
  wire [3:0]DI;
  wire [0:0]Q;
  wire [3:0]S;
  wire [14:0]add_im;
  wire [15:0]add_im_carry__2;
  wire [14:0]add_re;
  wire [15:0]add_re_carry__2;
  wire [15:0]\bf1_count_reg[1] ;
  wire \bf1_do_im[12]_i_3_n_0 ;
  wire \bf1_do_im[12]_i_4_n_0 ;
  wire \bf1_do_im[12]_i_5_n_0 ;
  wire \bf1_do_im[12]_i_6_n_0 ;
  wire \bf1_do_im[15]_i_4_n_0 ;
  wire \bf1_do_im[15]_i_5_n_0 ;
  wire \bf1_do_im[15]_i_6_n_0 ;
  wire \bf1_do_im[4]_i_3_n_0 ;
  wire \bf1_do_im[4]_i_4_n_0 ;
  wire \bf1_do_im[4]_i_5_n_0 ;
  wire \bf1_do_im[4]_i_6_n_0 ;
  wire \bf1_do_im[4]_i_7_n_0 ;
  wire \bf1_do_im[8]_i_3_n_0 ;
  wire \bf1_do_im[8]_i_4_n_0 ;
  wire \bf1_do_im[8]_i_5_n_0 ;
  wire \bf1_do_im[8]_i_6_n_0 ;
  wire \bf1_do_im_reg[12]_i_2__1_n_0 ;
  wire \bf1_do_im_reg[12]_i_2__1_n_1 ;
  wire \bf1_do_im_reg[12]_i_2__1_n_2 ;
  wire \bf1_do_im_reg[12]_i_2__1_n_3 ;
  wire [0:0]\bf1_do_im_reg[15] ;
  wire \bf1_do_im_reg[15]_i_2__1_n_2 ;
  wire \bf1_do_im_reg[15]_i_2__1_n_3 ;
  wire \bf1_do_im_reg[15]_i_3__1_n_3 ;
  wire \bf1_do_im_reg[4]_i_2__1_n_0 ;
  wire \bf1_do_im_reg[4]_i_2__1_n_1 ;
  wire \bf1_do_im_reg[4]_i_2__1_n_2 ;
  wire \bf1_do_im_reg[4]_i_2__1_n_3 ;
  wire \bf1_do_im_reg[8]_i_2__1_n_0 ;
  wire \bf1_do_im_reg[8]_i_2__1_n_1 ;
  wire \bf1_do_im_reg[8]_i_2__1_n_2 ;
  wire \bf1_do_im_reg[8]_i_2__1_n_3 ;
  wire [1:0]\bf1_do_re_reg[15] ;
  wire \bf1_do_re_reg[15]_i_2__1_n_3 ;
  wire [15:1]bf1_sp_im1;
  wire \buf_im_reg[2][0]_srl3_n_0 ;
  wire \buf_im_reg[2][10]_srl3_n_0 ;
  wire \buf_im_reg[2][11]_srl3_n_0 ;
  wire \buf_im_reg[2][12]_srl3_n_0 ;
  wire \buf_im_reg[2][13]_srl3_n_0 ;
  wire \buf_im_reg[2][14]_srl3_n_0 ;
  wire \buf_im_reg[2][15]_srl3_n_0 ;
  wire \buf_im_reg[2][1]_srl3_n_0 ;
  wire \buf_im_reg[2][2]_srl3_n_0 ;
  wire \buf_im_reg[2][3]_srl3_n_0 ;
  wire \buf_im_reg[2][4]_srl3_n_0 ;
  wire \buf_im_reg[2][5]_srl3_n_0 ;
  wire \buf_im_reg[2][6]_srl3_n_0 ;
  wire \buf_im_reg[2][7]_srl3_n_0 ;
  wire \buf_im_reg[2][8]_srl3_n_0 ;
  wire \buf_im_reg[2][9]_srl3_n_0 ;
  wire [3:0]\buf_im_reg[3][11]__0_0 ;
  wire [3:0]\buf_im_reg[3][11]__0_1 ;
  wire [2:0]\buf_im_reg[3][14]__0_0 ;
  wire \buf_im_reg[3][15]__0_0 ;
  wire [3:0]\buf_im_reg[3][15]__0_1 ;
  wire [0:0]\buf_im_reg[3][15]__0_2 ;
  wire [4:0]\buf_im_reg[3][15]__0_3 ;
  wire [3:0]\buf_im_reg[3][3]__0_0 ;
  wire [3:0]\buf_im_reg[3][3]__0_1 ;
  wire [3:0]\buf_im_reg[3][7]__0_0 ;
  wire [3:0]\buf_im_reg[3][7]__0_1 ;
  wire \buf_re_reg[2][0]_srl3_n_0 ;
  wire \buf_re_reg[2][10]_srl3_n_0 ;
  wire \buf_re_reg[2][11]_srl3_n_0 ;
  wire \buf_re_reg[2][12]_srl3_n_0 ;
  wire \buf_re_reg[2][13]_srl3_n_0 ;
  wire \buf_re_reg[2][14]_srl3_n_0 ;
  wire \buf_re_reg[2][15]_srl3_n_0 ;
  wire \buf_re_reg[2][1]_srl3_n_0 ;
  wire \buf_re_reg[2][2]_srl3_n_0 ;
  wire \buf_re_reg[2][3]_srl3_n_0 ;
  wire \buf_re_reg[2][4]_srl3_n_0 ;
  wire \buf_re_reg[2][5]_srl3_n_0 ;
  wire \buf_re_reg[2][6]_srl3_n_0 ;
  wire \buf_re_reg[2][7]_srl3_n_0 ;
  wire \buf_re_reg[2][8]_srl3_n_0 ;
  wire \buf_re_reg[2][9]_srl3_n_0 ;
  wire [3:0]\buf_re_reg[3][11]__0_0 ;
  wire [3:0]\buf_re_reg[3][11]__0_1 ;
  wire [2:0]\buf_re_reg[3][14]__0_0 ;
  wire \buf_re_reg[3][15]__0_0 ;
  wire [3:0]\buf_re_reg[3][15]__0_1 ;
  wire [0:0]\buf_re_reg[3][15]__0_2 ;
  wire [4:0]\buf_re_reg[3][15]__0_3 ;
  wire [3:0]\buf_re_reg[3][7]__0_0 ;
  wire [3:0]\buf_re_reg[3][7]__0_1 ;
  wire clock;
  wire [10:0]db1_di_im;
  wire [10:0]db1_di_re;
  wire [10:0]sub_im;
  wire [10:0]sub_re;
  wire [3:2]\NLW_bf1_do_im_reg[15]_i_2__1_CO_UNCONNECTED ;
  wire [3:3]\NLW_bf1_do_im_reg[15]_i_2__1_O_UNCONNECTED ;
  wire [3:1]\NLW_bf1_do_im_reg[15]_i_3__1_CO_UNCONNECTED ;
  wire [3:0]\NLW_bf1_do_im_reg[15]_i_3__1_O_UNCONNECTED ;
  wire [3:1]\NLW_bf1_do_re_reg[15]_i_2__1_CO_UNCONNECTED ;
  wire [3:0]\NLW_bf1_do_re_reg[15]_i_2__1_O_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h6)) 
    add_im_carry__0_i_1__2
       (.I0(\buf_im_reg[3][7]__0_0 [3]),
        .I1(add_im_carry__2[7]),
        .O(\buf_im_reg[3][7]__0_1 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    add_im_carry__0_i_2__2
       (.I0(\buf_im_reg[3][7]__0_0 [2]),
        .I1(add_im_carry__2[6]),
        .O(\buf_im_reg[3][7]__0_1 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    add_im_carry__0_i_3__2
       (.I0(\buf_im_reg[3][7]__0_0 [1]),
        .I1(add_im_carry__2[5]),
        .O(\buf_im_reg[3][7]__0_1 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    add_im_carry__0_i_4__2
       (.I0(\buf_im_reg[3][7]__0_0 [0]),
        .I1(add_im_carry__2[4]),
        .O(\buf_im_reg[3][7]__0_1 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    add_im_carry__1_i_1__2
       (.I0(\buf_im_reg[3][11]__0_0 [3]),
        .I1(add_im_carry__2[11]),
        .O(\buf_im_reg[3][11]__0_1 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    add_im_carry__1_i_2__2
       (.I0(\buf_im_reg[3][11]__0_0 [2]),
        .I1(add_im_carry__2[10]),
        .O(\buf_im_reg[3][11]__0_1 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    add_im_carry__1_i_3__2
       (.I0(\buf_im_reg[3][11]__0_0 [1]),
        .I1(add_im_carry__2[9]),
        .O(\buf_im_reg[3][11]__0_1 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    add_im_carry__1_i_4__2
       (.I0(\buf_im_reg[3][11]__0_0 [0]),
        .I1(add_im_carry__2[8]),
        .O(\buf_im_reg[3][11]__0_1 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    add_im_carry__2_i_1__0
       (.I0(\buf_im_reg[3][15]__0_0 ),
        .O(\buf_im_reg[3][15]__0_2 ));
  LUT2 #(
    .INIT(4'h6)) 
    add_im_carry__2_i_2__0
       (.I0(\buf_im_reg[3][15]__0_0 ),
        .I1(add_im_carry__2[15]),
        .O(\buf_im_reg[3][15]__0_1 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    add_im_carry__2_i_3__2
       (.I0(\buf_im_reg[3][14]__0_0 [2]),
        .I1(add_im_carry__2[14]),
        .O(\buf_im_reg[3][15]__0_1 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    add_im_carry__2_i_4__2
       (.I0(\buf_im_reg[3][14]__0_0 [1]),
        .I1(add_im_carry__2[13]),
        .O(\buf_im_reg[3][15]__0_1 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    add_im_carry__2_i_5__2
       (.I0(\buf_im_reg[3][14]__0_0 [0]),
        .I1(add_im_carry__2[12]),
        .O(\buf_im_reg[3][15]__0_1 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    add_im_carry_i_1__2
       (.I0(\buf_im_reg[3][3]__0_0 [3]),
        .I1(add_im_carry__2[3]),
        .O(\buf_im_reg[3][3]__0_1 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    add_im_carry_i_2__2
       (.I0(\buf_im_reg[3][3]__0_0 [2]),
        .I1(add_im_carry__2[2]),
        .O(\buf_im_reg[3][3]__0_1 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    add_im_carry_i_3__2
       (.I0(\buf_im_reg[3][3]__0_0 [1]),
        .I1(add_im_carry__2[1]),
        .O(\buf_im_reg[3][3]__0_1 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    add_im_carry_i_4__2
       (.I0(\buf_im_reg[3][3]__0_0 [0]),
        .I1(add_im_carry__2[0]),
        .O(\buf_im_reg[3][3]__0_1 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    add_re_carry__0_i_1__2
       (.I0(\buf_re_reg[3][7]__0_0 [3]),
        .I1(add_re_carry__2[7]),
        .O(\buf_re_reg[3][7]__0_1 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    add_re_carry__0_i_2__2
       (.I0(\buf_re_reg[3][7]__0_0 [2]),
        .I1(add_re_carry__2[6]),
        .O(\buf_re_reg[3][7]__0_1 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    add_re_carry__0_i_3__2
       (.I0(\buf_re_reg[3][7]__0_0 [1]),
        .I1(add_re_carry__2[5]),
        .O(\buf_re_reg[3][7]__0_1 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    add_re_carry__0_i_4__2
       (.I0(\buf_re_reg[3][7]__0_0 [0]),
        .I1(add_re_carry__2[4]),
        .O(\buf_re_reg[3][7]__0_1 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    add_re_carry__1_i_1__2
       (.I0(\buf_re_reg[3][11]__0_0 [3]),
        .I1(add_re_carry__2[11]),
        .O(\buf_re_reg[3][11]__0_1 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    add_re_carry__1_i_2__2
       (.I0(\buf_re_reg[3][11]__0_0 [2]),
        .I1(add_re_carry__2[10]),
        .O(\buf_re_reg[3][11]__0_1 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    add_re_carry__1_i_3__2
       (.I0(\buf_re_reg[3][11]__0_0 [1]),
        .I1(add_re_carry__2[9]),
        .O(\buf_re_reg[3][11]__0_1 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    add_re_carry__1_i_4__2
       (.I0(\buf_re_reg[3][11]__0_0 [0]),
        .I1(add_re_carry__2[8]),
        .O(\buf_re_reg[3][11]__0_1 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    add_re_carry__2_i_1__2
       (.I0(\buf_re_reg[3][15]__0_0 ),
        .O(\buf_re_reg[3][15]__0_2 ));
  LUT2 #(
    .INIT(4'h6)) 
    add_re_carry__2_i_2__0
       (.I0(\buf_re_reg[3][15]__0_0 ),
        .I1(add_re_carry__2[15]),
        .O(\buf_re_reg[3][15]__0_1 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    add_re_carry__2_i_3__2
       (.I0(\buf_re_reg[3][14]__0_0 [2]),
        .I1(add_re_carry__2[14]),
        .O(\buf_re_reg[3][15]__0_1 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    add_re_carry__2_i_4__2
       (.I0(\buf_re_reg[3][14]__0_0 [1]),
        .I1(add_re_carry__2[13]),
        .O(\buf_re_reg[3][15]__0_1 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    add_re_carry__2_i_5__2
       (.I0(\buf_re_reg[3][14]__0_0 [0]),
        .I1(add_re_carry__2[12]),
        .O(\buf_re_reg[3][15]__0_1 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    add_re_carry_i_1__2
       (.I0(DI[3]),
        .I1(add_re_carry__2[3]),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h6)) 
    add_re_carry_i_2__2
       (.I0(DI[2]),
        .I1(add_re_carry__2[2]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h6)) 
    add_re_carry_i_3__2
       (.I0(DI[1]),
        .I1(add_re_carry__2[1]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h6)) 
    add_re_carry_i_4__2
       (.I0(DI[0]),
        .I1(add_re_carry__2[0]),
        .O(S[0]));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_im[0]_i_1__1 
       (.I0(\bf1_do_re_reg[15] [0]),
        .I1(\bf1_do_re_reg[15] [1]),
        .I2(\buf_im_reg[3][3]__0_0 [0]),
        .I3(DI[0]),
        .I4(Q),
        .I5(add_im[0]),
        .O(\bf1_count_reg[1] [0]));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_im[10]_i_1__1 
       (.I0(\bf1_do_re_reg[15] [0]),
        .I1(\bf1_do_re_reg[15] [1]),
        .I2(\buf_im_reg[3][11]__0_0 [2]),
        .I3(bf1_sp_im1[10]),
        .I4(Q),
        .I5(add_im[10]),
        .O(\bf1_count_reg[1] [10]));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_im[11]_i_1__1 
       (.I0(\bf1_do_re_reg[15] [0]),
        .I1(\bf1_do_re_reg[15] [1]),
        .I2(\buf_im_reg[3][11]__0_0 [3]),
        .I3(bf1_sp_im1[11]),
        .I4(Q),
        .I5(add_im[11]),
        .O(\bf1_count_reg[1] [11]));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_im[12]_i_1__1 
       (.I0(\bf1_do_re_reg[15] [0]),
        .I1(\bf1_do_re_reg[15] [1]),
        .I2(\buf_im_reg[3][14]__0_0 [0]),
        .I3(bf1_sp_im1[12]),
        .I4(Q),
        .I5(add_im[12]),
        .O(\bf1_count_reg[1] [12]));
  LUT1 #(
    .INIT(2'h1)) 
    \bf1_do_im[12]_i_3 
       (.I0(\buf_re_reg[3][14]__0_0 [0]),
        .O(\bf1_do_im[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bf1_do_im[12]_i_4 
       (.I0(\buf_re_reg[3][11]__0_0 [3]),
        .O(\bf1_do_im[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bf1_do_im[12]_i_5 
       (.I0(\buf_re_reg[3][11]__0_0 [2]),
        .O(\bf1_do_im[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bf1_do_im[12]_i_6 
       (.I0(\buf_re_reg[3][11]__0_0 [1]),
        .O(\bf1_do_im[12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_im[13]_i_1__1 
       (.I0(\bf1_do_re_reg[15] [0]),
        .I1(\bf1_do_re_reg[15] [1]),
        .I2(\buf_im_reg[3][14]__0_0 [1]),
        .I3(bf1_sp_im1[13]),
        .I4(Q),
        .I5(add_im[13]),
        .O(\bf1_count_reg[1] [13]));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_im[14]_i_1__1 
       (.I0(\bf1_do_re_reg[15] [0]),
        .I1(\bf1_do_re_reg[15] [1]),
        .I2(\buf_im_reg[3][14]__0_0 [2]),
        .I3(bf1_sp_im1[14]),
        .I4(Q),
        .I5(add_im[14]),
        .O(\bf1_count_reg[1] [14]));
  LUT6 #(
    .INIT(64'h0000FFFFF870F870)) 
    \bf1_do_im[15]_i_1__1 
       (.I0(\bf1_do_re_reg[15] [0]),
        .I1(\bf1_do_re_reg[15] [1]),
        .I2(\buf_im_reg[3][15]__0_0 ),
        .I3(bf1_sp_im1[15]),
        .I4(\bf1_do_im_reg[15]_i_3__1_n_3 ),
        .I5(Q),
        .O(\bf1_count_reg[1] [15]));
  LUT1 #(
    .INIT(2'h1)) 
    \bf1_do_im[15]_i_4 
       (.I0(\buf_re_reg[3][15]__0_0 ),
        .O(\bf1_do_im[15]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bf1_do_im[15]_i_5 
       (.I0(\buf_re_reg[3][14]__0_0 [2]),
        .O(\bf1_do_im[15]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bf1_do_im[15]_i_6 
       (.I0(\buf_re_reg[3][14]__0_0 [1]),
        .O(\bf1_do_im[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_im[1]_i_1__1 
       (.I0(\bf1_do_re_reg[15] [0]),
        .I1(\bf1_do_re_reg[15] [1]),
        .I2(\buf_im_reg[3][3]__0_0 [1]),
        .I3(bf1_sp_im1[1]),
        .I4(Q),
        .I5(add_im[1]),
        .O(\bf1_count_reg[1] [1]));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_im[2]_i_1__1 
       (.I0(\bf1_do_re_reg[15] [0]),
        .I1(\bf1_do_re_reg[15] [1]),
        .I2(\buf_im_reg[3][3]__0_0 [2]),
        .I3(bf1_sp_im1[2]),
        .I4(Q),
        .I5(add_im[2]),
        .O(\bf1_count_reg[1] [2]));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_im[3]_i_1__1 
       (.I0(\bf1_do_re_reg[15] [0]),
        .I1(\bf1_do_re_reg[15] [1]),
        .I2(\buf_im_reg[3][3]__0_0 [3]),
        .I3(bf1_sp_im1[3]),
        .I4(Q),
        .I5(add_im[3]),
        .O(\bf1_count_reg[1] [3]));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_im[4]_i_1__1 
       (.I0(\bf1_do_re_reg[15] [0]),
        .I1(\bf1_do_re_reg[15] [1]),
        .I2(\buf_im_reg[3][7]__0_0 [0]),
        .I3(bf1_sp_im1[4]),
        .I4(Q),
        .I5(add_im[4]),
        .O(\bf1_count_reg[1] [4]));
  LUT1 #(
    .INIT(2'h1)) 
    \bf1_do_im[4]_i_3 
       (.I0(DI[0]),
        .O(\bf1_do_im[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bf1_do_im[4]_i_4 
       (.I0(\buf_re_reg[3][7]__0_0 [0]),
        .O(\bf1_do_im[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bf1_do_im[4]_i_5 
       (.I0(DI[3]),
        .O(\bf1_do_im[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bf1_do_im[4]_i_6 
       (.I0(DI[2]),
        .O(\bf1_do_im[4]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bf1_do_im[4]_i_7 
       (.I0(DI[1]),
        .O(\bf1_do_im[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_im[5]_i_1__1 
       (.I0(\bf1_do_re_reg[15] [0]),
        .I1(\bf1_do_re_reg[15] [1]),
        .I2(\buf_im_reg[3][7]__0_0 [1]),
        .I3(bf1_sp_im1[5]),
        .I4(Q),
        .I5(add_im[5]),
        .O(\bf1_count_reg[1] [5]));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_im[6]_i_1__1 
       (.I0(\bf1_do_re_reg[15] [0]),
        .I1(\bf1_do_re_reg[15] [1]),
        .I2(\buf_im_reg[3][7]__0_0 [2]),
        .I3(bf1_sp_im1[6]),
        .I4(Q),
        .I5(add_im[6]),
        .O(\bf1_count_reg[1] [6]));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_im[7]_i_1__1 
       (.I0(\bf1_do_re_reg[15] [0]),
        .I1(\bf1_do_re_reg[15] [1]),
        .I2(\buf_im_reg[3][7]__0_0 [3]),
        .I3(bf1_sp_im1[7]),
        .I4(Q),
        .I5(add_im[7]),
        .O(\bf1_count_reg[1] [7]));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_im[8]_i_1__1 
       (.I0(\bf1_do_re_reg[15] [0]),
        .I1(\bf1_do_re_reg[15] [1]),
        .I2(\buf_im_reg[3][11]__0_0 [0]),
        .I3(bf1_sp_im1[8]),
        .I4(Q),
        .I5(add_im[8]),
        .O(\bf1_count_reg[1] [8]));
  LUT1 #(
    .INIT(2'h1)) 
    \bf1_do_im[8]_i_3 
       (.I0(\buf_re_reg[3][11]__0_0 [0]),
        .O(\bf1_do_im[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bf1_do_im[8]_i_4 
       (.I0(\buf_re_reg[3][7]__0_0 [3]),
        .O(\bf1_do_im[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bf1_do_im[8]_i_5 
       (.I0(\buf_re_reg[3][7]__0_0 [2]),
        .O(\bf1_do_im[8]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bf1_do_im[8]_i_6 
       (.I0(\buf_re_reg[3][7]__0_0 [1]),
        .O(\bf1_do_im[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_im[9]_i_1__1 
       (.I0(\bf1_do_re_reg[15] [0]),
        .I1(\bf1_do_re_reg[15] [1]),
        .I2(\buf_im_reg[3][11]__0_0 [1]),
        .I3(bf1_sp_im1[9]),
        .I4(Q),
        .I5(add_im[9]),
        .O(\bf1_count_reg[1] [9]));
  CARRY4 \bf1_do_im_reg[12]_i_2__1 
       (.CI(\bf1_do_im_reg[8]_i_2__1_n_0 ),
        .CO({\bf1_do_im_reg[12]_i_2__1_n_0 ,\bf1_do_im_reg[12]_i_2__1_n_1 ,\bf1_do_im_reg[12]_i_2__1_n_2 ,\bf1_do_im_reg[12]_i_2__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(bf1_sp_im1[12:9]),
        .S({\bf1_do_im[12]_i_3_n_0 ,\bf1_do_im[12]_i_4_n_0 ,\bf1_do_im[12]_i_5_n_0 ,\bf1_do_im[12]_i_6_n_0 }));
  CARRY4 \bf1_do_im_reg[15]_i_2__1 
       (.CI(\bf1_do_im_reg[12]_i_2__1_n_0 ),
        .CO({\NLW_bf1_do_im_reg[15]_i_2__1_CO_UNCONNECTED [3:2],\bf1_do_im_reg[15]_i_2__1_n_2 ,\bf1_do_im_reg[15]_i_2__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_bf1_do_im_reg[15]_i_2__1_O_UNCONNECTED [3],bf1_sp_im1[15:13]}),
        .S({1'b0,\bf1_do_im[15]_i_4_n_0 ,\bf1_do_im[15]_i_5_n_0 ,\bf1_do_im[15]_i_6_n_0 }));
  CARRY4 \bf1_do_im_reg[15]_i_3__1 
       (.CI(\bf1_do_im_reg[15] ),
        .CO({\NLW_bf1_do_im_reg[15]_i_3__1_CO_UNCONNECTED [3:1],\bf1_do_im_reg[15]_i_3__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_bf1_do_im_reg[15]_i_3__1_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 \bf1_do_im_reg[4]_i_2__1 
       (.CI(1'b0),
        .CO({\bf1_do_im_reg[4]_i_2__1_n_0 ,\bf1_do_im_reg[4]_i_2__1_n_1 ,\bf1_do_im_reg[4]_i_2__1_n_2 ,\bf1_do_im_reg[4]_i_2__1_n_3 }),
        .CYINIT(\bf1_do_im[4]_i_3_n_0 ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(bf1_sp_im1[4:1]),
        .S({\bf1_do_im[4]_i_4_n_0 ,\bf1_do_im[4]_i_5_n_0 ,\bf1_do_im[4]_i_6_n_0 ,\bf1_do_im[4]_i_7_n_0 }));
  CARRY4 \bf1_do_im_reg[8]_i_2__1 
       (.CI(\bf1_do_im_reg[4]_i_2__1_n_0 ),
        .CO({\bf1_do_im_reg[8]_i_2__1_n_0 ,\bf1_do_im_reg[8]_i_2__1_n_1 ,\bf1_do_im_reg[8]_i_2__1_n_2 ,\bf1_do_im_reg[8]_i_2__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(bf1_sp_im1[8:5]),
        .S({\bf1_do_im[8]_i_3_n_0 ,\bf1_do_im[8]_i_4_n_0 ,\bf1_do_im[8]_i_5_n_0 ,\bf1_do_im[8]_i_6_n_0 }));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_re[0]_i_1__1 
       (.I0(\bf1_do_re_reg[15] [0]),
        .I1(\bf1_do_re_reg[15] [1]),
        .I2(DI[0]),
        .I3(\buf_im_reg[3][3]__0_0 [0]),
        .I4(Q),
        .I5(add_re[0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_re[10]_i_1__1 
       (.I0(\bf1_do_re_reg[15] [0]),
        .I1(\bf1_do_re_reg[15] [1]),
        .I2(\buf_re_reg[3][11]__0_0 [2]),
        .I3(\buf_im_reg[3][11]__0_0 [2]),
        .I4(Q),
        .I5(add_re[10]),
        .O(D[10]));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_re[11]_i_1__1 
       (.I0(\bf1_do_re_reg[15] [0]),
        .I1(\bf1_do_re_reg[15] [1]),
        .I2(\buf_re_reg[3][11]__0_0 [3]),
        .I3(\buf_im_reg[3][11]__0_0 [3]),
        .I4(Q),
        .I5(add_re[11]),
        .O(D[11]));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_re[12]_i_1__1 
       (.I0(\bf1_do_re_reg[15] [0]),
        .I1(\bf1_do_re_reg[15] [1]),
        .I2(\buf_re_reg[3][14]__0_0 [0]),
        .I3(\buf_im_reg[3][14]__0_0 [0]),
        .I4(Q),
        .I5(add_re[12]),
        .O(D[12]));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_re[13]_i_1__1 
       (.I0(\bf1_do_re_reg[15] [0]),
        .I1(\bf1_do_re_reg[15] [1]),
        .I2(\buf_re_reg[3][14]__0_0 [1]),
        .I3(\buf_im_reg[3][14]__0_0 [1]),
        .I4(Q),
        .I5(add_re[13]),
        .O(D[13]));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_re[14]_i_1__1 
       (.I0(\bf1_do_re_reg[15] [0]),
        .I1(\bf1_do_re_reg[15] [1]),
        .I2(\buf_re_reg[3][14]__0_0 [2]),
        .I3(\buf_im_reg[3][14]__0_0 [2]),
        .I4(Q),
        .I5(add_re[14]),
        .O(D[14]));
  LUT6 #(
    .INIT(64'h0000FFFFF870F870)) 
    \bf1_do_re[15]_i_1__1 
       (.I0(\bf1_do_re_reg[15] [0]),
        .I1(\bf1_do_re_reg[15] [1]),
        .I2(\buf_re_reg[3][15]__0_0 ),
        .I3(\buf_im_reg[3][15]__0_0 ),
        .I4(\bf1_do_re_reg[15]_i_2__1_n_3 ),
        .I5(Q),
        .O(D[15]));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_re[1]_i_1__1 
       (.I0(\bf1_do_re_reg[15] [0]),
        .I1(\bf1_do_re_reg[15] [1]),
        .I2(DI[1]),
        .I3(\buf_im_reg[3][3]__0_0 [1]),
        .I4(Q),
        .I5(add_re[1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_re[2]_i_1__1 
       (.I0(\bf1_do_re_reg[15] [0]),
        .I1(\bf1_do_re_reg[15] [1]),
        .I2(DI[2]),
        .I3(\buf_im_reg[3][3]__0_0 [2]),
        .I4(Q),
        .I5(add_re[2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_re[3]_i_1__1 
       (.I0(\bf1_do_re_reg[15] [0]),
        .I1(\bf1_do_re_reg[15] [1]),
        .I2(DI[3]),
        .I3(\buf_im_reg[3][3]__0_0 [3]),
        .I4(Q),
        .I5(add_re[3]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_re[4]_i_1__1 
       (.I0(\bf1_do_re_reg[15] [0]),
        .I1(\bf1_do_re_reg[15] [1]),
        .I2(\buf_re_reg[3][7]__0_0 [0]),
        .I3(\buf_im_reg[3][7]__0_0 [0]),
        .I4(Q),
        .I5(add_re[4]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_re[5]_i_1__1 
       (.I0(\bf1_do_re_reg[15] [0]),
        .I1(\bf1_do_re_reg[15] [1]),
        .I2(\buf_re_reg[3][7]__0_0 [1]),
        .I3(\buf_im_reg[3][7]__0_0 [1]),
        .I4(Q),
        .I5(add_re[5]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_re[6]_i_1__1 
       (.I0(\bf1_do_re_reg[15] [0]),
        .I1(\bf1_do_re_reg[15] [1]),
        .I2(\buf_re_reg[3][7]__0_0 [2]),
        .I3(\buf_im_reg[3][7]__0_0 [2]),
        .I4(Q),
        .I5(add_re[6]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_re[7]_i_1__1 
       (.I0(\bf1_do_re_reg[15] [0]),
        .I1(\bf1_do_re_reg[15] [1]),
        .I2(\buf_re_reg[3][7]__0_0 [3]),
        .I3(\buf_im_reg[3][7]__0_0 [3]),
        .I4(Q),
        .I5(add_re[7]),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_re[8]_i_1__1 
       (.I0(\bf1_do_re_reg[15] [0]),
        .I1(\bf1_do_re_reg[15] [1]),
        .I2(\buf_re_reg[3][11]__0_0 [0]),
        .I3(\buf_im_reg[3][11]__0_0 [0]),
        .I4(Q),
        .I5(add_re[8]),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hFFFFF8700000F870)) 
    \bf1_do_re[9]_i_1__1 
       (.I0(\bf1_do_re_reg[15] [0]),
        .I1(\bf1_do_re_reg[15] [1]),
        .I2(\buf_re_reg[3][11]__0_0 [1]),
        .I3(\buf_im_reg[3][11]__0_0 [1]),
        .I4(Q),
        .I5(add_re[9]),
        .O(D[9]));
  CARRY4 \bf1_do_re_reg[15]_i_2__1 
       (.CI(CO),
        .CO({\NLW_bf1_do_re_reg[15]_i_2__1_CO_UNCONNECTED [3:1],\bf1_do_re_reg[15]_i_2__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_bf1_do_re_reg[15]_i_2__1_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  (* srl_bus_name = "\inst/SU3/DB1/buf_im_reg[2] " *) 
  (* srl_name = "\inst/SU3/DB1/buf_im_reg[2][0]_srl3 " *) 
  SRL16E \buf_im_reg[2][0]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clock),
        .D(db1_di_im[0]),
        .Q(\buf_im_reg[2][0]_srl3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im_reg[2][0]_srl3_i_1 
       (.I0(sub_im[0]),
        .I1(Q),
        .I2(add_im_carry__2[0]),
        .O(db1_di_im[0]));
  (* srl_bus_name = "\inst/SU3/DB1/buf_im_reg[2] " *) 
  (* srl_name = "\inst/SU3/DB1/buf_im_reg[2][10]_srl3 " *) 
  SRL16E \buf_im_reg[2][10]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clock),
        .D(db1_di_im[10]),
        .Q(\buf_im_reg[2][10]_srl3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im_reg[2][10]_srl3_i_1 
       (.I0(sub_im[10]),
        .I1(Q),
        .I2(add_im_carry__2[10]),
        .O(db1_di_im[10]));
  (* srl_bus_name = "\inst/SU3/DB1/buf_im_reg[2] " *) 
  (* srl_name = "\inst/SU3/DB1/buf_im_reg[2][11]_srl3 " *) 
  SRL16E \buf_im_reg[2][11]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clock),
        .D(\buf_im_reg[3][15]__0_3 [0]),
        .Q(\buf_im_reg[2][11]_srl3_n_0 ));
  (* srl_bus_name = "\inst/SU3/DB1/buf_im_reg[2] " *) 
  (* srl_name = "\inst/SU3/DB1/buf_im_reg[2][12]_srl3 " *) 
  SRL16E \buf_im_reg[2][12]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clock),
        .D(\buf_im_reg[3][15]__0_3 [1]),
        .Q(\buf_im_reg[2][12]_srl3_n_0 ));
  (* srl_bus_name = "\inst/SU3/DB1/buf_im_reg[2] " *) 
  (* srl_name = "\inst/SU3/DB1/buf_im_reg[2][13]_srl3 " *) 
  SRL16E \buf_im_reg[2][13]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clock),
        .D(\buf_im_reg[3][15]__0_3 [2]),
        .Q(\buf_im_reg[2][13]_srl3_n_0 ));
  (* srl_bus_name = "\inst/SU3/DB1/buf_im_reg[2] " *) 
  (* srl_name = "\inst/SU3/DB1/buf_im_reg[2][14]_srl3 " *) 
  SRL16E \buf_im_reg[2][14]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clock),
        .D(\buf_im_reg[3][15]__0_3 [3]),
        .Q(\buf_im_reg[2][14]_srl3_n_0 ));
  (* srl_bus_name = "\inst/SU3/DB1/buf_im_reg[2] " *) 
  (* srl_name = "\inst/SU3/DB1/buf_im_reg[2][15]_srl3 " *) 
  SRL16E \buf_im_reg[2][15]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clock),
        .D(\buf_im_reg[3][15]__0_3 [4]),
        .Q(\buf_im_reg[2][15]_srl3_n_0 ));
  (* srl_bus_name = "\inst/SU3/DB1/buf_im_reg[2] " *) 
  (* srl_name = "\inst/SU3/DB1/buf_im_reg[2][1]_srl3 " *) 
  SRL16E \buf_im_reg[2][1]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clock),
        .D(db1_di_im[1]),
        .Q(\buf_im_reg[2][1]_srl3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im_reg[2][1]_srl3_i_1 
       (.I0(sub_im[1]),
        .I1(Q),
        .I2(add_im_carry__2[1]),
        .O(db1_di_im[1]));
  (* srl_bus_name = "\inst/SU3/DB1/buf_im_reg[2] " *) 
  (* srl_name = "\inst/SU3/DB1/buf_im_reg[2][2]_srl3 " *) 
  SRL16E \buf_im_reg[2][2]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clock),
        .D(db1_di_im[2]),
        .Q(\buf_im_reg[2][2]_srl3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im_reg[2][2]_srl3_i_1 
       (.I0(sub_im[2]),
        .I1(Q),
        .I2(add_im_carry__2[2]),
        .O(db1_di_im[2]));
  (* srl_bus_name = "\inst/SU3/DB1/buf_im_reg[2] " *) 
  (* srl_name = "\inst/SU3/DB1/buf_im_reg[2][3]_srl3 " *) 
  SRL16E \buf_im_reg[2][3]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clock),
        .D(db1_di_im[3]),
        .Q(\buf_im_reg[2][3]_srl3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im_reg[2][3]_srl3_i_1 
       (.I0(sub_im[3]),
        .I1(Q),
        .I2(add_im_carry__2[3]),
        .O(db1_di_im[3]));
  (* srl_bus_name = "\inst/SU3/DB1/buf_im_reg[2] " *) 
  (* srl_name = "\inst/SU3/DB1/buf_im_reg[2][4]_srl3 " *) 
  SRL16E \buf_im_reg[2][4]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clock),
        .D(db1_di_im[4]),
        .Q(\buf_im_reg[2][4]_srl3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im_reg[2][4]_srl3_i_1 
       (.I0(sub_im[4]),
        .I1(Q),
        .I2(add_im_carry__2[4]),
        .O(db1_di_im[4]));
  (* srl_bus_name = "\inst/SU3/DB1/buf_im_reg[2] " *) 
  (* srl_name = "\inst/SU3/DB1/buf_im_reg[2][5]_srl3 " *) 
  SRL16E \buf_im_reg[2][5]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clock),
        .D(db1_di_im[5]),
        .Q(\buf_im_reg[2][5]_srl3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im_reg[2][5]_srl3_i_1 
       (.I0(sub_im[5]),
        .I1(Q),
        .I2(add_im_carry__2[5]),
        .O(db1_di_im[5]));
  (* srl_bus_name = "\inst/SU3/DB1/buf_im_reg[2] " *) 
  (* srl_name = "\inst/SU3/DB1/buf_im_reg[2][6]_srl3 " *) 
  SRL16E \buf_im_reg[2][6]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clock),
        .D(db1_di_im[6]),
        .Q(\buf_im_reg[2][6]_srl3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im_reg[2][6]_srl3_i_1 
       (.I0(sub_im[6]),
        .I1(Q),
        .I2(add_im_carry__2[6]),
        .O(db1_di_im[6]));
  (* srl_bus_name = "\inst/SU3/DB1/buf_im_reg[2] " *) 
  (* srl_name = "\inst/SU3/DB1/buf_im_reg[2][7]_srl3 " *) 
  SRL16E \buf_im_reg[2][7]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clock),
        .D(db1_di_im[7]),
        .Q(\buf_im_reg[2][7]_srl3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im_reg[2][7]_srl3_i_1 
       (.I0(sub_im[7]),
        .I1(Q),
        .I2(add_im_carry__2[7]),
        .O(db1_di_im[7]));
  (* srl_bus_name = "\inst/SU3/DB1/buf_im_reg[2] " *) 
  (* srl_name = "\inst/SU3/DB1/buf_im_reg[2][8]_srl3 " *) 
  SRL16E \buf_im_reg[2][8]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clock),
        .D(db1_di_im[8]),
        .Q(\buf_im_reg[2][8]_srl3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im_reg[2][8]_srl3_i_1 
       (.I0(sub_im[8]),
        .I1(Q),
        .I2(add_im_carry__2[8]),
        .O(db1_di_im[8]));
  (* srl_bus_name = "\inst/SU3/DB1/buf_im_reg[2] " *) 
  (* srl_name = "\inst/SU3/DB1/buf_im_reg[2][9]_srl3 " *) 
  SRL16E \buf_im_reg[2][9]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clock),
        .D(db1_di_im[9]),
        .Q(\buf_im_reg[2][9]_srl3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im_reg[2][9]_srl3_i_1 
       (.I0(sub_im[9]),
        .I1(Q),
        .I2(add_im_carry__2[9]),
        .O(db1_di_im[9]));
  FDRE \buf_im_reg[3][0]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[2][0]_srl3_n_0 ),
        .Q(\buf_im_reg[3][3]__0_0 [0]),
        .R(1'b0));
  FDRE \buf_im_reg[3][10]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[2][10]_srl3_n_0 ),
        .Q(\buf_im_reg[3][11]__0_0 [2]),
        .R(1'b0));
  FDRE \buf_im_reg[3][11]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[2][11]_srl3_n_0 ),
        .Q(\buf_im_reg[3][11]__0_0 [3]),
        .R(1'b0));
  FDRE \buf_im_reg[3][12]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[2][12]_srl3_n_0 ),
        .Q(\buf_im_reg[3][14]__0_0 [0]),
        .R(1'b0));
  FDRE \buf_im_reg[3][13]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[2][13]_srl3_n_0 ),
        .Q(\buf_im_reg[3][14]__0_0 [1]),
        .R(1'b0));
  FDRE \buf_im_reg[3][14]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[2][14]_srl3_n_0 ),
        .Q(\buf_im_reg[3][14]__0_0 [2]),
        .R(1'b0));
  FDRE \buf_im_reg[3][15]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[2][15]_srl3_n_0 ),
        .Q(\buf_im_reg[3][15]__0_0 ),
        .R(1'b0));
  FDRE \buf_im_reg[3][1]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[2][1]_srl3_n_0 ),
        .Q(\buf_im_reg[3][3]__0_0 [1]),
        .R(1'b0));
  FDRE \buf_im_reg[3][2]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[2][2]_srl3_n_0 ),
        .Q(\buf_im_reg[3][3]__0_0 [2]),
        .R(1'b0));
  FDRE \buf_im_reg[3][3]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[2][3]_srl3_n_0 ),
        .Q(\buf_im_reg[3][3]__0_0 [3]),
        .R(1'b0));
  FDRE \buf_im_reg[3][4]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[2][4]_srl3_n_0 ),
        .Q(\buf_im_reg[3][7]__0_0 [0]),
        .R(1'b0));
  FDRE \buf_im_reg[3][5]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[2][5]_srl3_n_0 ),
        .Q(\buf_im_reg[3][7]__0_0 [1]),
        .R(1'b0));
  FDRE \buf_im_reg[3][6]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[2][6]_srl3_n_0 ),
        .Q(\buf_im_reg[3][7]__0_0 [2]),
        .R(1'b0));
  FDRE \buf_im_reg[3][7]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[2][7]_srl3_n_0 ),
        .Q(\buf_im_reg[3][7]__0_0 [3]),
        .R(1'b0));
  FDRE \buf_im_reg[3][8]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[2][8]_srl3_n_0 ),
        .Q(\buf_im_reg[3][11]__0_0 [0]),
        .R(1'b0));
  FDRE \buf_im_reg[3][9]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[2][9]_srl3_n_0 ),
        .Q(\buf_im_reg[3][11]__0_0 [1]),
        .R(1'b0));
  (* srl_bus_name = "\inst/SU3/DB1/buf_re_reg[2] " *) 
  (* srl_name = "\inst/SU3/DB1/buf_re_reg[2][0]_srl3 " *) 
  SRL16E \buf_re_reg[2][0]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clock),
        .D(db1_di_re[0]),
        .Q(\buf_re_reg[2][0]_srl3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re_reg[2][0]_srl3_i_1 
       (.I0(sub_re[0]),
        .I1(Q),
        .I2(add_re_carry__2[0]),
        .O(db1_di_re[0]));
  (* srl_bus_name = "\inst/SU3/DB1/buf_re_reg[2] " *) 
  (* srl_name = "\inst/SU3/DB1/buf_re_reg[2][10]_srl3 " *) 
  SRL16E \buf_re_reg[2][10]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clock),
        .D(db1_di_re[10]),
        .Q(\buf_re_reg[2][10]_srl3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re_reg[2][10]_srl3_i_1 
       (.I0(sub_re[10]),
        .I1(Q),
        .I2(add_re_carry__2[10]),
        .O(db1_di_re[10]));
  (* srl_bus_name = "\inst/SU3/DB1/buf_re_reg[2] " *) 
  (* srl_name = "\inst/SU3/DB1/buf_re_reg[2][11]_srl3 " *) 
  SRL16E \buf_re_reg[2][11]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clock),
        .D(\buf_re_reg[3][15]__0_3 [0]),
        .Q(\buf_re_reg[2][11]_srl3_n_0 ));
  (* srl_bus_name = "\inst/SU3/DB1/buf_re_reg[2] " *) 
  (* srl_name = "\inst/SU3/DB1/buf_re_reg[2][12]_srl3 " *) 
  SRL16E \buf_re_reg[2][12]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clock),
        .D(\buf_re_reg[3][15]__0_3 [1]),
        .Q(\buf_re_reg[2][12]_srl3_n_0 ));
  (* srl_bus_name = "\inst/SU3/DB1/buf_re_reg[2] " *) 
  (* srl_name = "\inst/SU3/DB1/buf_re_reg[2][13]_srl3 " *) 
  SRL16E \buf_re_reg[2][13]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clock),
        .D(\buf_re_reg[3][15]__0_3 [2]),
        .Q(\buf_re_reg[2][13]_srl3_n_0 ));
  (* srl_bus_name = "\inst/SU3/DB1/buf_re_reg[2] " *) 
  (* srl_name = "\inst/SU3/DB1/buf_re_reg[2][14]_srl3 " *) 
  SRL16E \buf_re_reg[2][14]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clock),
        .D(\buf_re_reg[3][15]__0_3 [3]),
        .Q(\buf_re_reg[2][14]_srl3_n_0 ));
  (* srl_bus_name = "\inst/SU3/DB1/buf_re_reg[2] " *) 
  (* srl_name = "\inst/SU3/DB1/buf_re_reg[2][15]_srl3 " *) 
  SRL16E \buf_re_reg[2][15]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clock),
        .D(\buf_re_reg[3][15]__0_3 [4]),
        .Q(\buf_re_reg[2][15]_srl3_n_0 ));
  (* srl_bus_name = "\inst/SU3/DB1/buf_re_reg[2] " *) 
  (* srl_name = "\inst/SU3/DB1/buf_re_reg[2][1]_srl3 " *) 
  SRL16E \buf_re_reg[2][1]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clock),
        .D(db1_di_re[1]),
        .Q(\buf_re_reg[2][1]_srl3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re_reg[2][1]_srl3_i_1 
       (.I0(sub_re[1]),
        .I1(Q),
        .I2(add_re_carry__2[1]),
        .O(db1_di_re[1]));
  (* srl_bus_name = "\inst/SU3/DB1/buf_re_reg[2] " *) 
  (* srl_name = "\inst/SU3/DB1/buf_re_reg[2][2]_srl3 " *) 
  SRL16E \buf_re_reg[2][2]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clock),
        .D(db1_di_re[2]),
        .Q(\buf_re_reg[2][2]_srl3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re_reg[2][2]_srl3_i_1 
       (.I0(sub_re[2]),
        .I1(Q),
        .I2(add_re_carry__2[2]),
        .O(db1_di_re[2]));
  (* srl_bus_name = "\inst/SU3/DB1/buf_re_reg[2] " *) 
  (* srl_name = "\inst/SU3/DB1/buf_re_reg[2][3]_srl3 " *) 
  SRL16E \buf_re_reg[2][3]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clock),
        .D(db1_di_re[3]),
        .Q(\buf_re_reg[2][3]_srl3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re_reg[2][3]_srl3_i_1 
       (.I0(sub_re[3]),
        .I1(Q),
        .I2(add_re_carry__2[3]),
        .O(db1_di_re[3]));
  (* srl_bus_name = "\inst/SU3/DB1/buf_re_reg[2] " *) 
  (* srl_name = "\inst/SU3/DB1/buf_re_reg[2][4]_srl3 " *) 
  SRL16E \buf_re_reg[2][4]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clock),
        .D(db1_di_re[4]),
        .Q(\buf_re_reg[2][4]_srl3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re_reg[2][4]_srl3_i_1 
       (.I0(sub_re[4]),
        .I1(Q),
        .I2(add_re_carry__2[4]),
        .O(db1_di_re[4]));
  (* srl_bus_name = "\inst/SU3/DB1/buf_re_reg[2] " *) 
  (* srl_name = "\inst/SU3/DB1/buf_re_reg[2][5]_srl3 " *) 
  SRL16E \buf_re_reg[2][5]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clock),
        .D(db1_di_re[5]),
        .Q(\buf_re_reg[2][5]_srl3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re_reg[2][5]_srl3_i_1 
       (.I0(sub_re[5]),
        .I1(Q),
        .I2(add_re_carry__2[5]),
        .O(db1_di_re[5]));
  (* srl_bus_name = "\inst/SU3/DB1/buf_re_reg[2] " *) 
  (* srl_name = "\inst/SU3/DB1/buf_re_reg[2][6]_srl3 " *) 
  SRL16E \buf_re_reg[2][6]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clock),
        .D(db1_di_re[6]),
        .Q(\buf_re_reg[2][6]_srl3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re_reg[2][6]_srl3_i_1 
       (.I0(sub_re[6]),
        .I1(Q),
        .I2(add_re_carry__2[6]),
        .O(db1_di_re[6]));
  (* srl_bus_name = "\inst/SU3/DB1/buf_re_reg[2] " *) 
  (* srl_name = "\inst/SU3/DB1/buf_re_reg[2][7]_srl3 " *) 
  SRL16E \buf_re_reg[2][7]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clock),
        .D(db1_di_re[7]),
        .Q(\buf_re_reg[2][7]_srl3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re_reg[2][7]_srl3_i_1 
       (.I0(sub_re[7]),
        .I1(Q),
        .I2(add_re_carry__2[7]),
        .O(db1_di_re[7]));
  (* srl_bus_name = "\inst/SU3/DB1/buf_re_reg[2] " *) 
  (* srl_name = "\inst/SU3/DB1/buf_re_reg[2][8]_srl3 " *) 
  SRL16E \buf_re_reg[2][8]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clock),
        .D(db1_di_re[8]),
        .Q(\buf_re_reg[2][8]_srl3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re_reg[2][8]_srl3_i_1 
       (.I0(sub_re[8]),
        .I1(Q),
        .I2(add_re_carry__2[8]),
        .O(db1_di_re[8]));
  (* srl_bus_name = "\inst/SU3/DB1/buf_re_reg[2] " *) 
  (* srl_name = "\inst/SU3/DB1/buf_re_reg[2][9]_srl3 " *) 
  SRL16E \buf_re_reg[2][9]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clock),
        .D(db1_di_re[9]),
        .Q(\buf_re_reg[2][9]_srl3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re_reg[2][9]_srl3_i_1 
       (.I0(sub_re[9]),
        .I1(Q),
        .I2(add_re_carry__2[9]),
        .O(db1_di_re[9]));
  FDRE \buf_re_reg[3][0]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg[2][0]_srl3_n_0 ),
        .Q(DI[0]),
        .R(1'b0));
  FDRE \buf_re_reg[3][10]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg[2][10]_srl3_n_0 ),
        .Q(\buf_re_reg[3][11]__0_0 [2]),
        .R(1'b0));
  FDRE \buf_re_reg[3][11]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg[2][11]_srl3_n_0 ),
        .Q(\buf_re_reg[3][11]__0_0 [3]),
        .R(1'b0));
  FDRE \buf_re_reg[3][12]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg[2][12]_srl3_n_0 ),
        .Q(\buf_re_reg[3][14]__0_0 [0]),
        .R(1'b0));
  FDRE \buf_re_reg[3][13]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg[2][13]_srl3_n_0 ),
        .Q(\buf_re_reg[3][14]__0_0 [1]),
        .R(1'b0));
  FDRE \buf_re_reg[3][14]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg[2][14]_srl3_n_0 ),
        .Q(\buf_re_reg[3][14]__0_0 [2]),
        .R(1'b0));
  FDRE \buf_re_reg[3][15]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg[2][15]_srl3_n_0 ),
        .Q(\buf_re_reg[3][15]__0_0 ),
        .R(1'b0));
  FDRE \buf_re_reg[3][1]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg[2][1]_srl3_n_0 ),
        .Q(DI[1]),
        .R(1'b0));
  FDRE \buf_re_reg[3][2]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg[2][2]_srl3_n_0 ),
        .Q(DI[2]),
        .R(1'b0));
  FDRE \buf_re_reg[3][3]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg[2][3]_srl3_n_0 ),
        .Q(DI[3]),
        .R(1'b0));
  FDRE \buf_re_reg[3][4]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg[2][4]_srl3_n_0 ),
        .Q(\buf_re_reg[3][7]__0_0 [0]),
        .R(1'b0));
  FDRE \buf_re_reg[3][5]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg[2][5]_srl3_n_0 ),
        .Q(\buf_re_reg[3][7]__0_0 [1]),
        .R(1'b0));
  FDRE \buf_re_reg[3][6]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg[2][6]_srl3_n_0 ),
        .Q(\buf_re_reg[3][7]__0_0 [2]),
        .R(1'b0));
  FDRE \buf_re_reg[3][7]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg[2][7]_srl3_n_0 ),
        .Q(\buf_re_reg[3][7]__0_0 [3]),
        .R(1'b0));
  FDRE \buf_re_reg[3][8]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg[2][8]_srl3_n_0 ),
        .Q(\buf_re_reg[3][11]__0_0 [0]),
        .R(1'b0));
  FDRE \buf_re_reg[3][9]__0 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg[2][9]_srl3_n_0 ),
        .Q(\buf_re_reg[3][11]__0_0 [1]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "DelayBuffer" *) 
module system_fft128_0_0_DelayBuffer__parameterized4
   (S,
    \buf_re_reg[1][15]_0 ,
    \bf1_do_re_reg[7] ,
    \bf1_do_re_reg[11] ,
    \bf1_do_re_reg[15] ,
    \bf1_do_im_reg[3] ,
    \buf_im_reg[1][15]_0 ,
    \bf1_do_im_reg[7] ,
    \bf1_do_im_reg[11] ,
    \bf1_do_im_reg[15] ,
    \buf_re_reg[1][15]_1 ,
    \buf_im_reg[1][15]_1 ,
    \buf_re_reg[1][3]_0 ,
    \buf_re_reg[1][7]_0 ,
    \buf_re_reg[1][11]_0 ,
    \buf_im_reg[1][3]_0 ,
    \buf_im_reg[1][7]_0 ,
    \buf_im_reg[1][11]_0 ,
    DI,
    \buf_im_reg[1][15]_2 ,
    Q,
    y0_im0_carry__2,
    D,
    clock,
    \buf_im_reg[0][15]_0 );
  output [3:0]S;
  output [15:0]\buf_re_reg[1][15]_0 ;
  output [3:0]\bf1_do_re_reg[7] ;
  output [3:0]\bf1_do_re_reg[11] ;
  output [3:0]\bf1_do_re_reg[15] ;
  output [3:0]\bf1_do_im_reg[3] ;
  output [15:0]\buf_im_reg[1][15]_0 ;
  output [3:0]\bf1_do_im_reg[7] ;
  output [3:0]\bf1_do_im_reg[11] ;
  output [3:0]\bf1_do_im_reg[15] ;
  output [3:0]\buf_re_reg[1][15]_1 ;
  output [3:0]\buf_im_reg[1][15]_1 ;
  output [3:0]\buf_re_reg[1][3]_0 ;
  output [3:0]\buf_re_reg[1][7]_0 ;
  output [3:0]\buf_re_reg[1][11]_0 ;
  output [3:0]\buf_im_reg[1][3]_0 ;
  output [3:0]\buf_im_reg[1][7]_0 ;
  output [3:0]\buf_im_reg[1][11]_0 ;
  output [0:0]DI;
  output [0:0]\buf_im_reg[1][15]_2 ;
  input [15:0]Q;
  input [15:0]y0_im0_carry__2;
  input [15:0]D;
  input clock;
  input [15:0]\buf_im_reg[0][15]_0 ;

  wire [15:0]D;
  wire [0:0]DI;
  wire [15:0]Q;
  wire [3:0]S;
  wire [3:0]\bf1_do_im_reg[11] ;
  wire [3:0]\bf1_do_im_reg[15] ;
  wire [3:0]\bf1_do_im_reg[3] ;
  wire [3:0]\bf1_do_im_reg[7] ;
  wire [3:0]\bf1_do_re_reg[11] ;
  wire [3:0]\bf1_do_re_reg[15] ;
  wire [3:0]\bf1_do_re_reg[7] ;
  wire [15:0]\buf_im_reg[0][15]_0 ;
  wire [3:0]\buf_im_reg[1][11]_0 ;
  wire [15:0]\buf_im_reg[1][15]_0 ;
  wire [3:0]\buf_im_reg[1][15]_1 ;
  wire [0:0]\buf_im_reg[1][15]_2 ;
  wire [3:0]\buf_im_reg[1][3]_0 ;
  wire [3:0]\buf_im_reg[1][7]_0 ;
  wire \buf_im_reg_n_0_[0][0] ;
  wire \buf_im_reg_n_0_[0][10] ;
  wire \buf_im_reg_n_0_[0][11] ;
  wire \buf_im_reg_n_0_[0][12] ;
  wire \buf_im_reg_n_0_[0][13] ;
  wire \buf_im_reg_n_0_[0][14] ;
  wire \buf_im_reg_n_0_[0][15] ;
  wire \buf_im_reg_n_0_[0][1] ;
  wire \buf_im_reg_n_0_[0][2] ;
  wire \buf_im_reg_n_0_[0][3] ;
  wire \buf_im_reg_n_0_[0][4] ;
  wire \buf_im_reg_n_0_[0][5] ;
  wire \buf_im_reg_n_0_[0][6] ;
  wire \buf_im_reg_n_0_[0][7] ;
  wire \buf_im_reg_n_0_[0][8] ;
  wire \buf_im_reg_n_0_[0][9] ;
  wire [3:0]\buf_re_reg[1][11]_0 ;
  wire [15:0]\buf_re_reg[1][15]_0 ;
  wire [3:0]\buf_re_reg[1][15]_1 ;
  wire [3:0]\buf_re_reg[1][3]_0 ;
  wire [3:0]\buf_re_reg[1][7]_0 ;
  wire \buf_re_reg_n_0_[0][0] ;
  wire \buf_re_reg_n_0_[0][10] ;
  wire \buf_re_reg_n_0_[0][11] ;
  wire \buf_re_reg_n_0_[0][12] ;
  wire \buf_re_reg_n_0_[0][13] ;
  wire \buf_re_reg_n_0_[0][14] ;
  wire \buf_re_reg_n_0_[0][15] ;
  wire \buf_re_reg_n_0_[0][1] ;
  wire \buf_re_reg_n_0_[0][2] ;
  wire \buf_re_reg_n_0_[0][3] ;
  wire \buf_re_reg_n_0_[0][4] ;
  wire \buf_re_reg_n_0_[0][5] ;
  wire \buf_re_reg_n_0_[0][6] ;
  wire \buf_re_reg_n_0_[0][7] ;
  wire \buf_re_reg_n_0_[0][8] ;
  wire \buf_re_reg_n_0_[0][9] ;
  wire clock;
  wire [15:0]y0_im0_carry__2;

  FDRE \buf_im_reg[0][0] 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[0][15]_0 [0]),
        .Q(\buf_im_reg_n_0_[0][0] ),
        .R(1'b0));
  FDRE \buf_im_reg[0][10] 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[0][15]_0 [10]),
        .Q(\buf_im_reg_n_0_[0][10] ),
        .R(1'b0));
  FDRE \buf_im_reg[0][11] 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[0][15]_0 [11]),
        .Q(\buf_im_reg_n_0_[0][11] ),
        .R(1'b0));
  FDRE \buf_im_reg[0][12] 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[0][15]_0 [12]),
        .Q(\buf_im_reg_n_0_[0][12] ),
        .R(1'b0));
  FDRE \buf_im_reg[0][13] 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[0][15]_0 [13]),
        .Q(\buf_im_reg_n_0_[0][13] ),
        .R(1'b0));
  FDRE \buf_im_reg[0][14] 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[0][15]_0 [14]),
        .Q(\buf_im_reg_n_0_[0][14] ),
        .R(1'b0));
  FDRE \buf_im_reg[0][15] 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[0][15]_0 [15]),
        .Q(\buf_im_reg_n_0_[0][15] ),
        .R(1'b0));
  FDRE \buf_im_reg[0][1] 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[0][15]_0 [1]),
        .Q(\buf_im_reg_n_0_[0][1] ),
        .R(1'b0));
  FDRE \buf_im_reg[0][2] 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[0][15]_0 [2]),
        .Q(\buf_im_reg_n_0_[0][2] ),
        .R(1'b0));
  FDRE \buf_im_reg[0][3] 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[0][15]_0 [3]),
        .Q(\buf_im_reg_n_0_[0][3] ),
        .R(1'b0));
  FDRE \buf_im_reg[0][4] 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[0][15]_0 [4]),
        .Q(\buf_im_reg_n_0_[0][4] ),
        .R(1'b0));
  FDRE \buf_im_reg[0][5] 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[0][15]_0 [5]),
        .Q(\buf_im_reg_n_0_[0][5] ),
        .R(1'b0));
  FDRE \buf_im_reg[0][6] 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[0][15]_0 [6]),
        .Q(\buf_im_reg_n_0_[0][6] ),
        .R(1'b0));
  FDRE \buf_im_reg[0][7] 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[0][15]_0 [7]),
        .Q(\buf_im_reg_n_0_[0][7] ),
        .R(1'b0));
  FDRE \buf_im_reg[0][8] 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[0][15]_0 [8]),
        .Q(\buf_im_reg_n_0_[0][8] ),
        .R(1'b0));
  FDRE \buf_im_reg[0][9] 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[0][15]_0 [9]),
        .Q(\buf_im_reg_n_0_[0][9] ),
        .R(1'b0));
  FDRE \buf_im_reg[1][0] 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg_n_0_[0][0] ),
        .Q(\buf_im_reg[1][15]_0 [0]),
        .R(1'b0));
  FDRE \buf_im_reg[1][10] 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg_n_0_[0][10] ),
        .Q(\buf_im_reg[1][15]_0 [10]),
        .R(1'b0));
  FDRE \buf_im_reg[1][11] 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg_n_0_[0][11] ),
        .Q(\buf_im_reg[1][15]_0 [11]),
        .R(1'b0));
  FDRE \buf_im_reg[1][12] 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg_n_0_[0][12] ),
        .Q(\buf_im_reg[1][15]_0 [12]),
        .R(1'b0));
  FDRE \buf_im_reg[1][13] 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg_n_0_[0][13] ),
        .Q(\buf_im_reg[1][15]_0 [13]),
        .R(1'b0));
  FDRE \buf_im_reg[1][14] 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg_n_0_[0][14] ),
        .Q(\buf_im_reg[1][15]_0 [14]),
        .R(1'b0));
  FDRE \buf_im_reg[1][15] 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg_n_0_[0][15] ),
        .Q(\buf_im_reg[1][15]_0 [15]),
        .R(1'b0));
  FDRE \buf_im_reg[1][1] 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg_n_0_[0][1] ),
        .Q(\buf_im_reg[1][15]_0 [1]),
        .R(1'b0));
  FDRE \buf_im_reg[1][2] 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg_n_0_[0][2] ),
        .Q(\buf_im_reg[1][15]_0 [2]),
        .R(1'b0));
  FDRE \buf_im_reg[1][3] 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg_n_0_[0][3] ),
        .Q(\buf_im_reg[1][15]_0 [3]),
        .R(1'b0));
  FDRE \buf_im_reg[1][4] 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg_n_0_[0][4] ),
        .Q(\buf_im_reg[1][15]_0 [4]),
        .R(1'b0));
  FDRE \buf_im_reg[1][5] 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg_n_0_[0][5] ),
        .Q(\buf_im_reg[1][15]_0 [5]),
        .R(1'b0));
  FDRE \buf_im_reg[1][6] 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg_n_0_[0][6] ),
        .Q(\buf_im_reg[1][15]_0 [6]),
        .R(1'b0));
  FDRE \buf_im_reg[1][7] 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg_n_0_[0][7] ),
        .Q(\buf_im_reg[1][15]_0 [7]),
        .R(1'b0));
  FDRE \buf_im_reg[1][8] 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg_n_0_[0][8] ),
        .Q(\buf_im_reg[1][15]_0 [8]),
        .R(1'b0));
  FDRE \buf_im_reg[1][9] 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg_n_0_[0][9] ),
        .Q(\buf_im_reg[1][15]_0 [9]),
        .R(1'b0));
  FDRE \buf_re_reg[0][0] 
       (.C(clock),
        .CE(1'b1),
        .D(D[0]),
        .Q(\buf_re_reg_n_0_[0][0] ),
        .R(1'b0));
  FDRE \buf_re_reg[0][10] 
       (.C(clock),
        .CE(1'b1),
        .D(D[10]),
        .Q(\buf_re_reg_n_0_[0][10] ),
        .R(1'b0));
  FDRE \buf_re_reg[0][11] 
       (.C(clock),
        .CE(1'b1),
        .D(D[11]),
        .Q(\buf_re_reg_n_0_[0][11] ),
        .R(1'b0));
  FDRE \buf_re_reg[0][12] 
       (.C(clock),
        .CE(1'b1),
        .D(D[12]),
        .Q(\buf_re_reg_n_0_[0][12] ),
        .R(1'b0));
  FDRE \buf_re_reg[0][13] 
       (.C(clock),
        .CE(1'b1),
        .D(D[13]),
        .Q(\buf_re_reg_n_0_[0][13] ),
        .R(1'b0));
  FDRE \buf_re_reg[0][14] 
       (.C(clock),
        .CE(1'b1),
        .D(D[14]),
        .Q(\buf_re_reg_n_0_[0][14] ),
        .R(1'b0));
  FDRE \buf_re_reg[0][15] 
       (.C(clock),
        .CE(1'b1),
        .D(D[15]),
        .Q(\buf_re_reg_n_0_[0][15] ),
        .R(1'b0));
  FDRE \buf_re_reg[0][1] 
       (.C(clock),
        .CE(1'b1),
        .D(D[1]),
        .Q(\buf_re_reg_n_0_[0][1] ),
        .R(1'b0));
  FDRE \buf_re_reg[0][2] 
       (.C(clock),
        .CE(1'b1),
        .D(D[2]),
        .Q(\buf_re_reg_n_0_[0][2] ),
        .R(1'b0));
  FDRE \buf_re_reg[0][3] 
       (.C(clock),
        .CE(1'b1),
        .D(D[3]),
        .Q(\buf_re_reg_n_0_[0][3] ),
        .R(1'b0));
  FDRE \buf_re_reg[0][4] 
       (.C(clock),
        .CE(1'b1),
        .D(D[4]),
        .Q(\buf_re_reg_n_0_[0][4] ),
        .R(1'b0));
  FDRE \buf_re_reg[0][5] 
       (.C(clock),
        .CE(1'b1),
        .D(D[5]),
        .Q(\buf_re_reg_n_0_[0][5] ),
        .R(1'b0));
  FDRE \buf_re_reg[0][6] 
       (.C(clock),
        .CE(1'b1),
        .D(D[6]),
        .Q(\buf_re_reg_n_0_[0][6] ),
        .R(1'b0));
  FDRE \buf_re_reg[0][7] 
       (.C(clock),
        .CE(1'b1),
        .D(D[7]),
        .Q(\buf_re_reg_n_0_[0][7] ),
        .R(1'b0));
  FDRE \buf_re_reg[0][8] 
       (.C(clock),
        .CE(1'b1),
        .D(D[8]),
        .Q(\buf_re_reg_n_0_[0][8] ),
        .R(1'b0));
  FDRE \buf_re_reg[0][9] 
       (.C(clock),
        .CE(1'b1),
        .D(D[9]),
        .Q(\buf_re_reg_n_0_[0][9] ),
        .R(1'b0));
  FDRE \buf_re_reg[1][0] 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg_n_0_[0][0] ),
        .Q(\buf_re_reg[1][15]_0 [0]),
        .R(1'b0));
  FDRE \buf_re_reg[1][10] 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg_n_0_[0][10] ),
        .Q(\buf_re_reg[1][15]_0 [10]),
        .R(1'b0));
  FDRE \buf_re_reg[1][11] 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg_n_0_[0][11] ),
        .Q(\buf_re_reg[1][15]_0 [11]),
        .R(1'b0));
  FDRE \buf_re_reg[1][12] 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg_n_0_[0][12] ),
        .Q(\buf_re_reg[1][15]_0 [12]),
        .R(1'b0));
  FDRE \buf_re_reg[1][13] 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg_n_0_[0][13] ),
        .Q(\buf_re_reg[1][15]_0 [13]),
        .R(1'b0));
  FDRE \buf_re_reg[1][14] 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg_n_0_[0][14] ),
        .Q(\buf_re_reg[1][15]_0 [14]),
        .R(1'b0));
  FDRE \buf_re_reg[1][15] 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg_n_0_[0][15] ),
        .Q(\buf_re_reg[1][15]_0 [15]),
        .R(1'b0));
  FDRE \buf_re_reg[1][1] 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg_n_0_[0][1] ),
        .Q(\buf_re_reg[1][15]_0 [1]),
        .R(1'b0));
  FDRE \buf_re_reg[1][2] 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg_n_0_[0][2] ),
        .Q(\buf_re_reg[1][15]_0 [2]),
        .R(1'b0));
  FDRE \buf_re_reg[1][3] 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg_n_0_[0][3] ),
        .Q(\buf_re_reg[1][15]_0 [3]),
        .R(1'b0));
  FDRE \buf_re_reg[1][4] 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg_n_0_[0][4] ),
        .Q(\buf_re_reg[1][15]_0 [4]),
        .R(1'b0));
  FDRE \buf_re_reg[1][5] 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg_n_0_[0][5] ),
        .Q(\buf_re_reg[1][15]_0 [5]),
        .R(1'b0));
  FDRE \buf_re_reg[1][6] 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg_n_0_[0][6] ),
        .Q(\buf_re_reg[1][15]_0 [6]),
        .R(1'b0));
  FDRE \buf_re_reg[1][7] 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg_n_0_[0][7] ),
        .Q(\buf_re_reg[1][15]_0 [7]),
        .R(1'b0));
  FDRE \buf_re_reg[1][8] 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg_n_0_[0][8] ),
        .Q(\buf_re_reg[1][15]_0 [8]),
        .R(1'b0));
  FDRE \buf_re_reg[1][9] 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_re_reg_n_0_[0][9] ),
        .Q(\buf_re_reg[1][15]_0 [9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    y0_im0_carry__0_i_1__1
       (.I0(\buf_im_reg[1][15]_0 [7]),
        .I1(y0_im0_carry__2[7]),
        .O(\buf_im_reg[1][7]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_im0_carry__0_i_2__1
       (.I0(\buf_im_reg[1][15]_0 [6]),
        .I1(y0_im0_carry__2[6]),
        .O(\buf_im_reg[1][7]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_im0_carry__0_i_3__1
       (.I0(\buf_im_reg[1][15]_0 [5]),
        .I1(y0_im0_carry__2[5]),
        .O(\buf_im_reg[1][7]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_im0_carry__0_i_4__1
       (.I0(\buf_im_reg[1][15]_0 [4]),
        .I1(y0_im0_carry__2[4]),
        .O(\buf_im_reg[1][7]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_im0_carry__1_i_1__1
       (.I0(\buf_im_reg[1][15]_0 [11]),
        .I1(y0_im0_carry__2[11]),
        .O(\buf_im_reg[1][11]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_im0_carry__1_i_2__1
       (.I0(\buf_im_reg[1][15]_0 [10]),
        .I1(y0_im0_carry__2[10]),
        .O(\buf_im_reg[1][11]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_im0_carry__1_i_3__1
       (.I0(\buf_im_reg[1][15]_0 [9]),
        .I1(y0_im0_carry__2[9]),
        .O(\buf_im_reg[1][11]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_im0_carry__1_i_4__1
       (.I0(\buf_im_reg[1][15]_0 [8]),
        .I1(y0_im0_carry__2[8]),
        .O(\buf_im_reg[1][11]_0 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    y0_im0_carry__2_i_1__1
       (.I0(\buf_im_reg[1][15]_0 [15]),
        .O(\buf_im_reg[1][15]_2 ));
  LUT2 #(
    .INIT(4'h6)) 
    y0_im0_carry__2_i_2__1
       (.I0(\buf_im_reg[1][15]_0 [15]),
        .I1(y0_im0_carry__2[15]),
        .O(\buf_im_reg[1][15]_1 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_im0_carry__2_i_3__1
       (.I0(\buf_im_reg[1][15]_0 [14]),
        .I1(y0_im0_carry__2[14]),
        .O(\buf_im_reg[1][15]_1 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_im0_carry__2_i_4__1
       (.I0(\buf_im_reg[1][15]_0 [13]),
        .I1(y0_im0_carry__2[13]),
        .O(\buf_im_reg[1][15]_1 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_im0_carry__2_i_5__1
       (.I0(\buf_im_reg[1][15]_0 [12]),
        .I1(y0_im0_carry__2[12]),
        .O(\buf_im_reg[1][15]_1 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_im0_carry_i_1__1
       (.I0(\buf_im_reg[1][15]_0 [3]),
        .I1(y0_im0_carry__2[3]),
        .O(\buf_im_reg[1][3]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_im0_carry_i_2__1
       (.I0(\buf_im_reg[1][15]_0 [2]),
        .I1(y0_im0_carry__2[2]),
        .O(\buf_im_reg[1][3]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_im0_carry_i_3__1
       (.I0(\buf_im_reg[1][15]_0 [1]),
        .I1(y0_im0_carry__2[1]),
        .O(\buf_im_reg[1][3]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_im0_carry_i_4__1
       (.I0(\buf_im_reg[1][15]_0 [0]),
        .I1(y0_im0_carry__2[0]),
        .O(\buf_im_reg[1][3]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_re0_carry__0_i_1__1
       (.I0(\buf_re_reg[1][15]_0 [7]),
        .I1(Q[7]),
        .O(\buf_re_reg[1][7]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_re0_carry__0_i_2__1
       (.I0(\buf_re_reg[1][15]_0 [6]),
        .I1(Q[6]),
        .O(\buf_re_reg[1][7]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_re0_carry__0_i_3__1
       (.I0(\buf_re_reg[1][15]_0 [5]),
        .I1(Q[5]),
        .O(\buf_re_reg[1][7]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_re0_carry__0_i_4__1
       (.I0(\buf_re_reg[1][15]_0 [4]),
        .I1(Q[4]),
        .O(\buf_re_reg[1][7]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_re0_carry__1_i_1__1
       (.I0(\buf_re_reg[1][15]_0 [11]),
        .I1(Q[11]),
        .O(\buf_re_reg[1][11]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_re0_carry__1_i_2__1
       (.I0(\buf_re_reg[1][15]_0 [10]),
        .I1(Q[10]),
        .O(\buf_re_reg[1][11]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_re0_carry__1_i_3__1
       (.I0(\buf_re_reg[1][15]_0 [9]),
        .I1(Q[9]),
        .O(\buf_re_reg[1][11]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_re0_carry__1_i_4__1
       (.I0(\buf_re_reg[1][15]_0 [8]),
        .I1(Q[8]),
        .O(\buf_re_reg[1][11]_0 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    y0_re0_carry__2_i_1__1
       (.I0(\buf_re_reg[1][15]_0 [15]),
        .O(DI));
  LUT2 #(
    .INIT(4'h6)) 
    y0_re0_carry__2_i_2__1
       (.I0(\buf_re_reg[1][15]_0 [15]),
        .I1(Q[15]),
        .O(\buf_re_reg[1][15]_1 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_re0_carry__2_i_3__1
       (.I0(\buf_re_reg[1][15]_0 [14]),
        .I1(Q[14]),
        .O(\buf_re_reg[1][15]_1 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_re0_carry__2_i_4__1
       (.I0(\buf_re_reg[1][15]_0 [13]),
        .I1(Q[13]),
        .O(\buf_re_reg[1][15]_1 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_re0_carry__2_i_5__1
       (.I0(\buf_re_reg[1][15]_0 [12]),
        .I1(Q[12]),
        .O(\buf_re_reg[1][15]_1 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_re0_carry_i_1__1
       (.I0(\buf_re_reg[1][15]_0 [3]),
        .I1(Q[3]),
        .O(\buf_re_reg[1][3]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_re0_carry_i_2__1
       (.I0(\buf_re_reg[1][15]_0 [2]),
        .I1(Q[2]),
        .O(\buf_re_reg[1][3]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_re0_carry_i_3__1
       (.I0(\buf_re_reg[1][15]_0 [1]),
        .I1(Q[1]),
        .O(\buf_re_reg[1][3]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    y0_re0_carry_i_4__1
       (.I0(\buf_re_reg[1][15]_0 [0]),
        .I1(Q[0]),
        .O(\buf_re_reg[1][3]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_im0_carry__0_i_1__1
       (.I0(y0_im0_carry__2[7]),
        .I1(\buf_im_reg[1][15]_0 [7]),
        .O(\bf1_do_im_reg[7] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_im0_carry__0_i_2__1
       (.I0(y0_im0_carry__2[6]),
        .I1(\buf_im_reg[1][15]_0 [6]),
        .O(\bf1_do_im_reg[7] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_im0_carry__0_i_3__1
       (.I0(y0_im0_carry__2[5]),
        .I1(\buf_im_reg[1][15]_0 [5]),
        .O(\bf1_do_im_reg[7] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_im0_carry__0_i_4__1
       (.I0(y0_im0_carry__2[4]),
        .I1(\buf_im_reg[1][15]_0 [4]),
        .O(\bf1_do_im_reg[7] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_im0_carry__1_i_1__1
       (.I0(y0_im0_carry__2[11]),
        .I1(\buf_im_reg[1][15]_0 [11]),
        .O(\bf1_do_im_reg[11] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_im0_carry__1_i_2__1
       (.I0(y0_im0_carry__2[10]),
        .I1(\buf_im_reg[1][15]_0 [10]),
        .O(\bf1_do_im_reg[11] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_im0_carry__1_i_3__1
       (.I0(y0_im0_carry__2[9]),
        .I1(\buf_im_reg[1][15]_0 [9]),
        .O(\bf1_do_im_reg[11] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_im0_carry__1_i_4__1
       (.I0(y0_im0_carry__2[8]),
        .I1(\buf_im_reg[1][15]_0 [8]),
        .O(\bf1_do_im_reg[11] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_im0_carry__2_i_1__1
       (.I0(y0_im0_carry__2[15]),
        .I1(\buf_im_reg[1][15]_0 [15]),
        .O(\bf1_do_im_reg[15] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_im0_carry__2_i_2__1
       (.I0(y0_im0_carry__2[14]),
        .I1(\buf_im_reg[1][15]_0 [14]),
        .O(\bf1_do_im_reg[15] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_im0_carry__2_i_3__1
       (.I0(y0_im0_carry__2[13]),
        .I1(\buf_im_reg[1][15]_0 [13]),
        .O(\bf1_do_im_reg[15] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_im0_carry__2_i_4__1
       (.I0(y0_im0_carry__2[12]),
        .I1(\buf_im_reg[1][15]_0 [12]),
        .O(\bf1_do_im_reg[15] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_im0_carry_i_1__1
       (.I0(y0_im0_carry__2[3]),
        .I1(\buf_im_reg[1][15]_0 [3]),
        .O(\bf1_do_im_reg[3] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_im0_carry_i_2__1
       (.I0(y0_im0_carry__2[2]),
        .I1(\buf_im_reg[1][15]_0 [2]),
        .O(\bf1_do_im_reg[3] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_im0_carry_i_3__1
       (.I0(y0_im0_carry__2[1]),
        .I1(\buf_im_reg[1][15]_0 [1]),
        .O(\bf1_do_im_reg[3] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_im0_carry_i_4__1
       (.I0(y0_im0_carry__2[0]),
        .I1(\buf_im_reg[1][15]_0 [0]),
        .O(\bf1_do_im_reg[3] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_re0_carry__0_i_1__1
       (.I0(Q[7]),
        .I1(\buf_re_reg[1][15]_0 [7]),
        .O(\bf1_do_re_reg[7] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_re0_carry__0_i_2__1
       (.I0(Q[6]),
        .I1(\buf_re_reg[1][15]_0 [6]),
        .O(\bf1_do_re_reg[7] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_re0_carry__0_i_3__1
       (.I0(Q[5]),
        .I1(\buf_re_reg[1][15]_0 [5]),
        .O(\bf1_do_re_reg[7] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_re0_carry__0_i_4__1
       (.I0(Q[4]),
        .I1(\buf_re_reg[1][15]_0 [4]),
        .O(\bf1_do_re_reg[7] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_re0_carry__1_i_1__1
       (.I0(Q[11]),
        .I1(\buf_re_reg[1][15]_0 [11]),
        .O(\bf1_do_re_reg[11] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_re0_carry__1_i_2__1
       (.I0(Q[10]),
        .I1(\buf_re_reg[1][15]_0 [10]),
        .O(\bf1_do_re_reg[11] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_re0_carry__1_i_3__1
       (.I0(Q[9]),
        .I1(\buf_re_reg[1][15]_0 [9]),
        .O(\bf1_do_re_reg[11] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_re0_carry__1_i_4__1
       (.I0(Q[8]),
        .I1(\buf_re_reg[1][15]_0 [8]),
        .O(\bf1_do_re_reg[11] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_re0_carry__2_i_1__1
       (.I0(Q[15]),
        .I1(\buf_re_reg[1][15]_0 [15]),
        .O(\bf1_do_re_reg[15] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_re0_carry__2_i_2__1
       (.I0(Q[14]),
        .I1(\buf_re_reg[1][15]_0 [14]),
        .O(\bf1_do_re_reg[15] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_re0_carry__2_i_3__1
       (.I0(Q[13]),
        .I1(\buf_re_reg[1][15]_0 [13]),
        .O(\bf1_do_re_reg[15] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_re0_carry__2_i_4__1
       (.I0(Q[12]),
        .I1(\buf_re_reg[1][15]_0 [12]),
        .O(\bf1_do_re_reg[15] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_re0_carry_i_1__1
       (.I0(Q[3]),
        .I1(\buf_re_reg[1][15]_0 [3]),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_re0_carry_i_2__1
       (.I0(Q[2]),
        .I1(\buf_re_reg[1][15]_0 [2]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_re0_carry_i_3__1
       (.I0(Q[1]),
        .I1(\buf_re_reg[1][15]_0 [1]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h9)) 
    y1_re0_carry_i_4__1
       (.I0(Q[0]),
        .I1(\buf_re_reg[1][15]_0 [0]),
        .O(S[0]));
endmodule

(* ORIG_REF_NAME = "DelayBuffer" *) 
module system_fft128_0_0_DelayBuffer__parameterized5
   (\buf_re_reg[0][15]_0 ,
    Q,
    \buf_im_reg[0][15]_0 ,
    \buf_im_reg[0][15]_1 ,
    \buf_re_reg[0][3]_0 ,
    \buf_re_reg[0][7]_0 ,
    \buf_re_reg[0][11]_0 ,
    \buf_im_reg[0][3]_0 ,
    \buf_im_reg[0][7]_0 ,
    \buf_im_reg[0][11]_0 ,
    DI,
    \buf_im_reg[0][15]_2 ,
    add_re_carry__2,
    add_im_carry__2,
    D,
    clock,
    \buf_im_reg[0][15]_3 );
  output [3:0]\buf_re_reg[0][15]_0 ;
  output [15:0]Q;
  output [3:0]\buf_im_reg[0][15]_0 ;
  output [15:0]\buf_im_reg[0][15]_1 ;
  output [3:0]\buf_re_reg[0][3]_0 ;
  output [3:0]\buf_re_reg[0][7]_0 ;
  output [3:0]\buf_re_reg[0][11]_0 ;
  output [3:0]\buf_im_reg[0][3]_0 ;
  output [3:0]\buf_im_reg[0][7]_0 ;
  output [3:0]\buf_im_reg[0][11]_0 ;
  output [0:0]DI;
  output [0:0]\buf_im_reg[0][15]_2 ;
  input [15:0]add_re_carry__2;
  input [15:0]add_im_carry__2;
  input [15:0]D;
  input clock;
  input [15:0]\buf_im_reg[0][15]_3 ;

  wire [15:0]D;
  wire [0:0]DI;
  wire [15:0]Q;
  wire [15:0]add_im_carry__2;
  wire [15:0]add_re_carry__2;
  wire [3:0]\buf_im_reg[0][11]_0 ;
  wire [3:0]\buf_im_reg[0][15]_0 ;
  wire [15:0]\buf_im_reg[0][15]_1 ;
  wire [0:0]\buf_im_reg[0][15]_2 ;
  wire [15:0]\buf_im_reg[0][15]_3 ;
  wire [3:0]\buf_im_reg[0][3]_0 ;
  wire [3:0]\buf_im_reg[0][7]_0 ;
  wire [3:0]\buf_re_reg[0][11]_0 ;
  wire [3:0]\buf_re_reg[0][15]_0 ;
  wire [3:0]\buf_re_reg[0][3]_0 ;
  wire [3:0]\buf_re_reg[0][7]_0 ;
  wire clock;

  LUT2 #(
    .INIT(4'h6)) 
    add_im_carry__0_i_1
       (.I0(\buf_im_reg[0][15]_1 [7]),
        .I1(add_im_carry__2[7]),
        .O(\buf_im_reg[0][7]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    add_im_carry__0_i_2
       (.I0(\buf_im_reg[0][15]_1 [6]),
        .I1(add_im_carry__2[6]),
        .O(\buf_im_reg[0][7]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    add_im_carry__0_i_3
       (.I0(\buf_im_reg[0][15]_1 [5]),
        .I1(add_im_carry__2[5]),
        .O(\buf_im_reg[0][7]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    add_im_carry__0_i_4
       (.I0(\buf_im_reg[0][15]_1 [4]),
        .I1(add_im_carry__2[4]),
        .O(\buf_im_reg[0][7]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    add_im_carry__1_i_1
       (.I0(\buf_im_reg[0][15]_1 [11]),
        .I1(add_im_carry__2[11]),
        .O(\buf_im_reg[0][11]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    add_im_carry__1_i_2
       (.I0(\buf_im_reg[0][15]_1 [10]),
        .I1(add_im_carry__2[10]),
        .O(\buf_im_reg[0][11]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    add_im_carry__1_i_3
       (.I0(\buf_im_reg[0][15]_1 [9]),
        .I1(add_im_carry__2[9]),
        .O(\buf_im_reg[0][11]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    add_im_carry__1_i_4
       (.I0(\buf_im_reg[0][15]_1 [8]),
        .I1(add_im_carry__2[8]),
        .O(\buf_im_reg[0][11]_0 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    add_im_carry__2_i_1
       (.I0(\buf_im_reg[0][15]_1 [15]),
        .O(\buf_im_reg[0][15]_2 ));
  LUT2 #(
    .INIT(4'h6)) 
    add_im_carry__2_i_2
       (.I0(\buf_im_reg[0][15]_1 [15]),
        .I1(add_im_carry__2[15]),
        .O(\buf_im_reg[0][15]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    add_im_carry__2_i_3
       (.I0(\buf_im_reg[0][15]_1 [14]),
        .I1(add_im_carry__2[14]),
        .O(\buf_im_reg[0][15]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    add_im_carry__2_i_4
       (.I0(\buf_im_reg[0][15]_1 [13]),
        .I1(add_im_carry__2[13]),
        .O(\buf_im_reg[0][15]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    add_im_carry__2_i_5
       (.I0(\buf_im_reg[0][15]_1 [12]),
        .I1(add_im_carry__2[12]),
        .O(\buf_im_reg[0][15]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    add_im_carry_i_1
       (.I0(\buf_im_reg[0][15]_1 [3]),
        .I1(add_im_carry__2[3]),
        .O(\buf_im_reg[0][3]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    add_im_carry_i_2
       (.I0(\buf_im_reg[0][15]_1 [2]),
        .I1(add_im_carry__2[2]),
        .O(\buf_im_reg[0][3]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    add_im_carry_i_3
       (.I0(\buf_im_reg[0][15]_1 [1]),
        .I1(add_im_carry__2[1]),
        .O(\buf_im_reg[0][3]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    add_im_carry_i_4
       (.I0(\buf_im_reg[0][15]_1 [0]),
        .I1(add_im_carry__2[0]),
        .O(\buf_im_reg[0][3]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    add_re_carry__0_i_1
       (.I0(Q[7]),
        .I1(add_re_carry__2[7]),
        .O(\buf_re_reg[0][7]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    add_re_carry__0_i_2
       (.I0(Q[6]),
        .I1(add_re_carry__2[6]),
        .O(\buf_re_reg[0][7]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    add_re_carry__0_i_3
       (.I0(Q[5]),
        .I1(add_re_carry__2[5]),
        .O(\buf_re_reg[0][7]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    add_re_carry__0_i_4
       (.I0(Q[4]),
        .I1(add_re_carry__2[4]),
        .O(\buf_re_reg[0][7]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    add_re_carry__1_i_1
       (.I0(Q[11]),
        .I1(add_re_carry__2[11]),
        .O(\buf_re_reg[0][11]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    add_re_carry__1_i_2
       (.I0(Q[10]),
        .I1(add_re_carry__2[10]),
        .O(\buf_re_reg[0][11]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    add_re_carry__1_i_3
       (.I0(Q[9]),
        .I1(add_re_carry__2[9]),
        .O(\buf_re_reg[0][11]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    add_re_carry__1_i_4
       (.I0(Q[8]),
        .I1(add_re_carry__2[8]),
        .O(\buf_re_reg[0][11]_0 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    add_re_carry__2_i_1
       (.I0(Q[15]),
        .O(DI));
  LUT2 #(
    .INIT(4'h6)) 
    add_re_carry__2_i_2
       (.I0(Q[15]),
        .I1(add_re_carry__2[15]),
        .O(\buf_re_reg[0][15]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    add_re_carry__2_i_3
       (.I0(Q[14]),
        .I1(add_re_carry__2[14]),
        .O(\buf_re_reg[0][15]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    add_re_carry__2_i_4
       (.I0(Q[13]),
        .I1(add_re_carry__2[13]),
        .O(\buf_re_reg[0][15]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    add_re_carry__2_i_5
       (.I0(Q[12]),
        .I1(add_re_carry__2[12]),
        .O(\buf_re_reg[0][15]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    add_re_carry_i_1
       (.I0(Q[3]),
        .I1(add_re_carry__2[3]),
        .O(\buf_re_reg[0][3]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    add_re_carry_i_2
       (.I0(Q[2]),
        .I1(add_re_carry__2[2]),
        .O(\buf_re_reg[0][3]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    add_re_carry_i_3
       (.I0(Q[1]),
        .I1(add_re_carry__2[1]),
        .O(\buf_re_reg[0][3]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    add_re_carry_i_4
       (.I0(Q[0]),
        .I1(add_re_carry__2[0]),
        .O(\buf_re_reg[0][3]_0 [0]));
  FDRE \buf_im_reg[0][0] 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[0][15]_3 [0]),
        .Q(\buf_im_reg[0][15]_1 [0]),
        .R(1'b0));
  FDRE \buf_im_reg[0][10] 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[0][15]_3 [10]),
        .Q(\buf_im_reg[0][15]_1 [10]),
        .R(1'b0));
  FDRE \buf_im_reg[0][11] 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[0][15]_3 [11]),
        .Q(\buf_im_reg[0][15]_1 [11]),
        .R(1'b0));
  FDRE \buf_im_reg[0][12] 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[0][15]_3 [12]),
        .Q(\buf_im_reg[0][15]_1 [12]),
        .R(1'b0));
  FDRE \buf_im_reg[0][13] 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[0][15]_3 [13]),
        .Q(\buf_im_reg[0][15]_1 [13]),
        .R(1'b0));
  FDRE \buf_im_reg[0][14] 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[0][15]_3 [14]),
        .Q(\buf_im_reg[0][15]_1 [14]),
        .R(1'b0));
  FDRE \buf_im_reg[0][15] 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[0][15]_3 [15]),
        .Q(\buf_im_reg[0][15]_1 [15]),
        .R(1'b0));
  FDRE \buf_im_reg[0][1] 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[0][15]_3 [1]),
        .Q(\buf_im_reg[0][15]_1 [1]),
        .R(1'b0));
  FDRE \buf_im_reg[0][2] 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[0][15]_3 [2]),
        .Q(\buf_im_reg[0][15]_1 [2]),
        .R(1'b0));
  FDRE \buf_im_reg[0][3] 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[0][15]_3 [3]),
        .Q(\buf_im_reg[0][15]_1 [3]),
        .R(1'b0));
  FDRE \buf_im_reg[0][4] 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[0][15]_3 [4]),
        .Q(\buf_im_reg[0][15]_1 [4]),
        .R(1'b0));
  FDRE \buf_im_reg[0][5] 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[0][15]_3 [5]),
        .Q(\buf_im_reg[0][15]_1 [5]),
        .R(1'b0));
  FDRE \buf_im_reg[0][6] 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[0][15]_3 [6]),
        .Q(\buf_im_reg[0][15]_1 [6]),
        .R(1'b0));
  FDRE \buf_im_reg[0][7] 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[0][15]_3 [7]),
        .Q(\buf_im_reg[0][15]_1 [7]),
        .R(1'b0));
  FDRE \buf_im_reg[0][8] 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[0][15]_3 [8]),
        .Q(\buf_im_reg[0][15]_1 [8]),
        .R(1'b0));
  FDRE \buf_im_reg[0][9] 
       (.C(clock),
        .CE(1'b1),
        .D(\buf_im_reg[0][15]_3 [9]),
        .Q(\buf_im_reg[0][15]_1 [9]),
        .R(1'b0));
  FDRE \buf_re_reg[0][0] 
       (.C(clock),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \buf_re_reg[0][10] 
       (.C(clock),
        .CE(1'b1),
        .D(D[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \buf_re_reg[0][11] 
       (.C(clock),
        .CE(1'b1),
        .D(D[11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \buf_re_reg[0][12] 
       (.C(clock),
        .CE(1'b1),
        .D(D[12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \buf_re_reg[0][13] 
       (.C(clock),
        .CE(1'b1),
        .D(D[13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \buf_re_reg[0][14] 
       (.C(clock),
        .CE(1'b1),
        .D(D[14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \buf_re_reg[0][15] 
       (.C(clock),
        .CE(1'b1),
        .D(D[15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \buf_re_reg[0][1] 
       (.C(clock),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \buf_re_reg[0][2] 
       (.C(clock),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \buf_re_reg[0][3] 
       (.C(clock),
        .CE(1'b1),
        .D(D[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \buf_re_reg[0][4] 
       (.C(clock),
        .CE(1'b1),
        .D(D[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \buf_re_reg[0][5] 
       (.C(clock),
        .CE(1'b1),
        .D(D[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \buf_re_reg[0][6] 
       (.C(clock),
        .CE(1'b1),
        .D(D[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \buf_re_reg[0][7] 
       (.C(clock),
        .CE(1'b1),
        .D(D[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \buf_re_reg[0][8] 
       (.C(clock),
        .CE(1'b1),
        .D(D[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \buf_re_reg[0][9] 
       (.C(clock),
        .CE(1'b1),
        .D(D[9]),
        .Q(Q[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "Multiply" *) 
module system_fft128_0_0_Multiply
   (out,
    aibr_0,
    clock,
    B,
    A,
    aibi_0,
    aibi_1,
    tw_nz_1d,
    Q,
    \mu_do_im_reg[15] );
  output [15:0]out;
  output [15:0]aibr_0;
  input clock;
  input [2:0]B;
  input [15:0]A;
  input [0:0]aibi_0;
  input [15:0]aibi_1;
  input tw_nz_1d;
  input [15:0]Q;
  input [15:0]\mu_do_im_reg[15] ;

  wire [15:0]A;
  wire [2:0]B;
  wire [15:0]Q;
  wire [0:0]aibi_0;
  wire [15:0]aibi_1;
  wire aibi_n_100;
  wire aibi_n_101;
  wire aibi_n_102;
  wire aibi_n_103;
  wire aibi_n_104;
  wire aibi_n_105;
  wire aibi_n_74;
  wire aibi_n_91;
  wire aibi_n_92;
  wire aibi_n_93;
  wire aibi_n_94;
  wire aibi_n_95;
  wire aibi_n_96;
  wire aibi_n_97;
  wire aibi_n_98;
  wire aibi_n_99;
  wire [15:0]aibr_0;
  wire aibr_n_100;
  wire aibr_n_101;
  wire aibr_n_102;
  wire aibr_n_103;
  wire aibr_n_104;
  wire aibr_n_105;
  wire aibr_n_74;
  wire aibr_n_91;
  wire aibr_n_92;
  wire aibr_n_93;
  wire aibr_n_94;
  wire aibr_n_95;
  wire aibr_n_96;
  wire aibr_n_97;
  wire aibr_n_98;
  wire aibr_n_99;
  wire arbi_n_100;
  wire arbi_n_101;
  wire arbi_n_102;
  wire arbi_n_103;
  wire arbi_n_104;
  wire arbi_n_105;
  wire arbi_n_74;
  wire arbi_n_91;
  wire arbi_n_92;
  wire arbi_n_93;
  wire arbi_n_94;
  wire arbi_n_95;
  wire arbi_n_96;
  wire arbi_n_97;
  wire arbi_n_98;
  wire arbi_n_99;
  wire arbr_n_100;
  wire arbr_n_101;
  wire arbr_n_102;
  wire arbr_n_103;
  wire arbr_n_104;
  wire arbr_n_105;
  wire arbr_n_74;
  wire arbr_n_91;
  wire arbr_n_92;
  wire arbr_n_93;
  wire arbr_n_94;
  wire arbr_n_95;
  wire arbr_n_96;
  wire arbr_n_97;
  wire arbr_n_98;
  wire arbr_n_99;
  wire clock;
  wire \mu_do_im[11]_i_2__1_n_0 ;
  wire \mu_do_im[11]_i_3__1_n_0 ;
  wire \mu_do_im[11]_i_4__1_n_0 ;
  wire \mu_do_im[11]_i_5__1_n_0 ;
  wire \mu_do_im[11]_i_6__1_n_0 ;
  wire \mu_do_im[11]_i_7__1_n_0 ;
  wire \mu_do_im[11]_i_8__1_n_0 ;
  wire \mu_do_im[11]_i_9__1_n_0 ;
  wire \mu_do_im[15]_i_2__1_n_0 ;
  wire \mu_do_im[15]_i_3__1_n_0 ;
  wire \mu_do_im[15]_i_4__1_n_0 ;
  wire \mu_do_im[15]_i_5__1_n_0 ;
  wire \mu_do_im[15]_i_6__1_n_0 ;
  wire \mu_do_im[15]_i_7__1_n_0 ;
  wire \mu_do_im[15]_i_8__1_n_0 ;
  wire \mu_do_im[3]_i_2__1_n_0 ;
  wire \mu_do_im[3]_i_3__1_n_0 ;
  wire \mu_do_im[3]_i_4__1_n_0 ;
  wire \mu_do_im[3]_i_5__1_n_0 ;
  wire \mu_do_im[3]_i_6__1_n_0 ;
  wire \mu_do_im[3]_i_7__1_n_0 ;
  wire \mu_do_im[3]_i_8__1_n_0 ;
  wire \mu_do_im[3]_i_9__1_n_0 ;
  wire \mu_do_im[7]_i_2__1_n_0 ;
  wire \mu_do_im[7]_i_3__1_n_0 ;
  wire \mu_do_im[7]_i_4__1_n_0 ;
  wire \mu_do_im[7]_i_5__1_n_0 ;
  wire \mu_do_im[7]_i_6__1_n_0 ;
  wire \mu_do_im[7]_i_7__1_n_0 ;
  wire \mu_do_im[7]_i_8__1_n_0 ;
  wire \mu_do_im[7]_i_9__1_n_0 ;
  wire \mu_do_im_reg[11]_i_1__1_n_0 ;
  wire \mu_do_im_reg[11]_i_1__1_n_1 ;
  wire \mu_do_im_reg[11]_i_1__1_n_2 ;
  wire \mu_do_im_reg[11]_i_1__1_n_3 ;
  wire [15:0]\mu_do_im_reg[15] ;
  wire \mu_do_im_reg[15]_i_1__1_n_1 ;
  wire \mu_do_im_reg[15]_i_1__1_n_2 ;
  wire \mu_do_im_reg[15]_i_1__1_n_3 ;
  wire \mu_do_im_reg[3]_i_1__1_n_0 ;
  wire \mu_do_im_reg[3]_i_1__1_n_1 ;
  wire \mu_do_im_reg[3]_i_1__1_n_2 ;
  wire \mu_do_im_reg[3]_i_1__1_n_3 ;
  wire \mu_do_im_reg[7]_i_1__1_n_0 ;
  wire \mu_do_im_reg[7]_i_1__1_n_1 ;
  wire \mu_do_im_reg[7]_i_1__1_n_2 ;
  wire \mu_do_im_reg[7]_i_1__1_n_3 ;
  wire \mu_do_re[11]_i_2__1_n_0 ;
  wire \mu_do_re[11]_i_3__1_n_0 ;
  wire \mu_do_re[11]_i_4__1_n_0 ;
  wire \mu_do_re[11]_i_5__1_n_0 ;
  wire \mu_do_re[11]_i_6__1_n_0 ;
  wire \mu_do_re[11]_i_7__1_n_0 ;
  wire \mu_do_re[11]_i_8__1_n_0 ;
  wire \mu_do_re[11]_i_9__1_n_0 ;
  wire \mu_do_re[15]_i_2__1_n_0 ;
  wire \mu_do_re[15]_i_3__1_n_0 ;
  wire \mu_do_re[15]_i_4__1_n_0 ;
  wire \mu_do_re[15]_i_5__1_n_0 ;
  wire \mu_do_re[15]_i_6__1_n_0 ;
  wire \mu_do_re[15]_i_7__1_n_0 ;
  wire \mu_do_re[15]_i_8__1_n_0 ;
  wire \mu_do_re[3]_i_2__1_n_0 ;
  wire \mu_do_re[3]_i_3__1_n_0 ;
  wire \mu_do_re[3]_i_4__1_n_0 ;
  wire \mu_do_re[3]_i_5__1_n_0 ;
  wire \mu_do_re[3]_i_6__1_n_0 ;
  wire \mu_do_re[3]_i_7__1_n_0 ;
  wire \mu_do_re[3]_i_8__1_n_0 ;
  wire \mu_do_re[3]_i_9__1_n_0 ;
  wire \mu_do_re[7]_i_2__1_n_0 ;
  wire \mu_do_re[7]_i_3__1_n_0 ;
  wire \mu_do_re[7]_i_4__1_n_0 ;
  wire \mu_do_re[7]_i_5__1_n_0 ;
  wire \mu_do_re[7]_i_6__1_n_0 ;
  wire \mu_do_re[7]_i_7__1_n_0 ;
  wire \mu_do_re[7]_i_8__1_n_0 ;
  wire \mu_do_re[7]_i_9__1_n_0 ;
  wire \mu_do_re_reg[11]_i_1__1_n_0 ;
  wire \mu_do_re_reg[11]_i_1__1_n_1 ;
  wire \mu_do_re_reg[11]_i_1__1_n_2 ;
  wire \mu_do_re_reg[11]_i_1__1_n_3 ;
  wire \mu_do_re_reg[15]_i_1__1_n_1 ;
  wire \mu_do_re_reg[15]_i_1__1_n_2 ;
  wire \mu_do_re_reg[15]_i_1__1_n_3 ;
  wire \mu_do_re_reg[3]_i_1__1_n_0 ;
  wire \mu_do_re_reg[3]_i_1__1_n_1 ;
  wire \mu_do_re_reg[3]_i_1__1_n_2 ;
  wire \mu_do_re_reg[3]_i_1__1_n_3 ;
  wire \mu_do_re_reg[7]_i_1__1_n_0 ;
  wire \mu_do_re_reg[7]_i_1__1_n_1 ;
  wire \mu_do_re_reg[7]_i_1__1_n_2 ;
  wire \mu_do_re_reg[7]_i_1__1_n_3 ;
  wire [15:0]out;
  wire [15:0]sc_aibi;
  wire [15:0]sc_aibr;
  wire [15:0]sc_arbi;
  wire [15:0]sc_arbr;
  wire tw_nz_1d;
  wire NLW_aibi_CARRYCASCOUT_UNCONNECTED;
  wire NLW_aibi_MULTSIGNOUT_UNCONNECTED;
  wire NLW_aibi_OVERFLOW_UNCONNECTED;
  wire NLW_aibi_PATTERNBDETECT_UNCONNECTED;
  wire NLW_aibi_PATTERNDETECT_UNCONNECTED;
  wire NLW_aibi_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_aibi_ACOUT_UNCONNECTED;
  wire [17:0]NLW_aibi_BCOUT_UNCONNECTED;
  wire [3:0]NLW_aibi_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_aibi_P_UNCONNECTED;
  wire [47:0]NLW_aibi_PCOUT_UNCONNECTED;
  wire NLW_aibr_CARRYCASCOUT_UNCONNECTED;
  wire NLW_aibr_MULTSIGNOUT_UNCONNECTED;
  wire NLW_aibr_OVERFLOW_UNCONNECTED;
  wire NLW_aibr_PATTERNBDETECT_UNCONNECTED;
  wire NLW_aibr_PATTERNDETECT_UNCONNECTED;
  wire NLW_aibr_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_aibr_ACOUT_UNCONNECTED;
  wire [17:0]NLW_aibr_BCOUT_UNCONNECTED;
  wire [3:0]NLW_aibr_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_aibr_P_UNCONNECTED;
  wire [47:0]NLW_aibr_PCOUT_UNCONNECTED;
  wire NLW_arbi_CARRYCASCOUT_UNCONNECTED;
  wire NLW_arbi_MULTSIGNOUT_UNCONNECTED;
  wire NLW_arbi_OVERFLOW_UNCONNECTED;
  wire NLW_arbi_PATTERNBDETECT_UNCONNECTED;
  wire NLW_arbi_PATTERNDETECT_UNCONNECTED;
  wire NLW_arbi_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_arbi_ACOUT_UNCONNECTED;
  wire [17:0]NLW_arbi_BCOUT_UNCONNECTED;
  wire [3:0]NLW_arbi_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_arbi_P_UNCONNECTED;
  wire [47:0]NLW_arbi_PCOUT_UNCONNECTED;
  wire NLW_arbr_CARRYCASCOUT_UNCONNECTED;
  wire NLW_arbr_MULTSIGNOUT_UNCONNECTED;
  wire NLW_arbr_OVERFLOW_UNCONNECTED;
  wire NLW_arbr_PATTERNBDETECT_UNCONNECTED;
  wire NLW_arbr_PATTERNDETECT_UNCONNECTED;
  wire NLW_arbr_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_arbr_ACOUT_UNCONNECTED;
  wire [17:0]NLW_arbr_BCOUT_UNCONNECTED;
  wire [3:0]NLW_arbr_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_arbr_P_UNCONNECTED;
  wire [47:0]NLW_arbr_PCOUT_UNCONNECTED;
  wire [3:3]\NLW_mu_do_im_reg[15]_i_1__1_CO_UNCONNECTED ;
  wire [3:3]\NLW_mu_do_re_reg[15]_i_1__1_CO_UNCONNECTED ;

  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    aibi
       (.A({aibi_1[15],aibi_1[15],aibi_1[15],aibi_1[15],aibi_1[15],aibi_1[15],aibi_1[15],aibi_1[15],aibi_1[15],aibi_1[15],aibi_1[15],aibi_1[15],aibi_1[15],aibi_1[15],aibi_1}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_aibi_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({aibi_0,aibi_0,aibi_0,1'b0,B[0],1'b0,1'b0,B[0],1'b0,B[0],1'b0,B[0],B[0],B[0],B[0],B[0],B[0],1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_aibi_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_aibi_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_aibi_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b1),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clock),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_aibi_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_aibi_OVERFLOW_UNCONNECTED),
        .P({NLW_aibi_P_UNCONNECTED[47:32],aibi_n_74,sc_aibi,aibi_n_91,aibi_n_92,aibi_n_93,aibi_n_94,aibi_n_95,aibi_n_96,aibi_n_97,aibi_n_98,aibi_n_99,aibi_n_100,aibi_n_101,aibi_n_102,aibi_n_103,aibi_n_104,aibi_n_105}),
        .PATTERNBDETECT(NLW_aibi_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_aibi_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_aibi_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_aibi_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    aibr
       (.A({aibi_1[15],aibi_1[15],aibi_1[15],aibi_1[15],aibi_1[15],aibi_1[15],aibi_1[15],aibi_1[15],aibi_1[15],aibi_1[15],aibi_1[15],aibi_1[15],aibi_1[15],aibi_1[15],aibi_1}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_aibr_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({B[2],B[2],B[2:1],B[2:1],B[1],B[2:1],B[2:1],B[2],B[2],B[2],B[2],B[2],B[0],1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_aibr_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_aibr_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_aibr_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b1),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clock),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_aibr_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_aibr_OVERFLOW_UNCONNECTED),
        .P({NLW_aibr_P_UNCONNECTED[47:32],aibr_n_74,sc_aibr,aibr_n_91,aibr_n_92,aibr_n_93,aibr_n_94,aibr_n_95,aibr_n_96,aibr_n_97,aibr_n_98,aibr_n_99,aibr_n_100,aibr_n_101,aibr_n_102,aibr_n_103,aibr_n_104,aibr_n_105}),
        .PATTERNBDETECT(NLW_aibr_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_aibr_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_aibr_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_aibr_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    arbi
       (.A({A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_arbi_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({aibi_0,aibi_0,aibi_0,1'b0,B[0],1'b0,1'b0,B[0],1'b0,B[0],1'b0,B[0],B[0],B[0],B[0],B[0],B[0],1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_arbi_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_arbi_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_arbi_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b1),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clock),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_arbi_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_arbi_OVERFLOW_UNCONNECTED),
        .P({NLW_arbi_P_UNCONNECTED[47:32],arbi_n_74,sc_arbi,arbi_n_91,arbi_n_92,arbi_n_93,arbi_n_94,arbi_n_95,arbi_n_96,arbi_n_97,arbi_n_98,arbi_n_99,arbi_n_100,arbi_n_101,arbi_n_102,arbi_n_103,arbi_n_104,arbi_n_105}),
        .PATTERNBDETECT(NLW_arbi_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_arbi_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_arbi_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_arbi_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    arbr
       (.A({A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_arbr_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({B[2],B[2],B[2:1],B[2:1],B[1],B[2:1],B[2:1],B[2],B[2],B[2],B[2],B[2],B[0],1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_arbr_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_arbr_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_arbr_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b1),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clock),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_arbr_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_arbr_OVERFLOW_UNCONNECTED),
        .P({NLW_arbr_P_UNCONNECTED[47:32],arbr_n_74,sc_arbr,arbr_n_91,arbr_n_92,arbr_n_93,arbr_n_94,arbr_n_95,arbr_n_96,arbr_n_97,arbr_n_98,arbr_n_99,arbr_n_100,arbr_n_101,arbr_n_102,arbr_n_103,arbr_n_104,arbr_n_105}),
        .PATTERNBDETECT(NLW_arbr_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_arbr_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_arbr_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_arbr_UNDERFLOW_UNCONNECTED));
  LUT2 #(
    .INIT(4'h8)) 
    \mu_do_im[11]_i_2__1 
       (.I0(sc_aibr[11]),
        .I1(tw_nz_1d),
        .O(\mu_do_im[11]_i_2__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \mu_do_im[11]_i_3__1 
       (.I0(sc_aibr[10]),
        .I1(tw_nz_1d),
        .O(\mu_do_im[11]_i_3__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \mu_do_im[11]_i_4__1 
       (.I0(sc_aibr[9]),
        .I1(tw_nz_1d),
        .O(\mu_do_im[11]_i_4__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \mu_do_im[11]_i_5__1 
       (.I0(sc_aibr[8]),
        .I1(tw_nz_1d),
        .O(\mu_do_im[11]_i_5__1_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \mu_do_im[11]_i_6__1 
       (.I0(sc_aibr[11]),
        .I1(\mu_do_im_reg[15] [11]),
        .I2(tw_nz_1d),
        .I3(sc_arbi[11]),
        .O(\mu_do_im[11]_i_6__1_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \mu_do_im[11]_i_7__1 
       (.I0(sc_aibr[10]),
        .I1(\mu_do_im_reg[15] [10]),
        .I2(tw_nz_1d),
        .I3(sc_arbi[10]),
        .O(\mu_do_im[11]_i_7__1_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \mu_do_im[11]_i_8__1 
       (.I0(sc_aibr[9]),
        .I1(\mu_do_im_reg[15] [9]),
        .I2(tw_nz_1d),
        .I3(sc_arbi[9]),
        .O(\mu_do_im[11]_i_8__1_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \mu_do_im[11]_i_9__1 
       (.I0(sc_aibr[8]),
        .I1(\mu_do_im_reg[15] [8]),
        .I2(tw_nz_1d),
        .I3(sc_arbi[8]),
        .O(\mu_do_im[11]_i_9__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \mu_do_im[15]_i_2__1 
       (.I0(sc_aibr[14]),
        .I1(tw_nz_1d),
        .O(\mu_do_im[15]_i_2__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \mu_do_im[15]_i_3__1 
       (.I0(sc_aibr[13]),
        .I1(tw_nz_1d),
        .O(\mu_do_im[15]_i_3__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \mu_do_im[15]_i_4__1 
       (.I0(sc_aibr[12]),
        .I1(tw_nz_1d),
        .O(\mu_do_im[15]_i_4__1_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \mu_do_im[15]_i_5__1 
       (.I0(sc_aibr[15]),
        .I1(\mu_do_im_reg[15] [15]),
        .I2(tw_nz_1d),
        .I3(sc_arbi[15]),
        .O(\mu_do_im[15]_i_5__1_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \mu_do_im[15]_i_6__1 
       (.I0(sc_aibr[14]),
        .I1(\mu_do_im_reg[15] [14]),
        .I2(tw_nz_1d),
        .I3(sc_arbi[14]),
        .O(\mu_do_im[15]_i_6__1_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \mu_do_im[15]_i_7__1 
       (.I0(sc_aibr[13]),
        .I1(\mu_do_im_reg[15] [13]),
        .I2(tw_nz_1d),
        .I3(sc_arbi[13]),
        .O(\mu_do_im[15]_i_7__1_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \mu_do_im[15]_i_8__1 
       (.I0(sc_aibr[12]),
        .I1(\mu_do_im_reg[15] [12]),
        .I2(tw_nz_1d),
        .I3(sc_arbi[12]),
        .O(\mu_do_im[15]_i_8__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \mu_do_im[3]_i_2__1 
       (.I0(sc_aibr[3]),
        .I1(tw_nz_1d),
        .O(\mu_do_im[3]_i_2__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \mu_do_im[3]_i_3__1 
       (.I0(sc_aibr[2]),
        .I1(tw_nz_1d),
        .O(\mu_do_im[3]_i_3__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \mu_do_im[3]_i_4__1 
       (.I0(sc_aibr[1]),
        .I1(tw_nz_1d),
        .O(\mu_do_im[3]_i_4__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \mu_do_im[3]_i_5__1 
       (.I0(sc_aibr[0]),
        .I1(tw_nz_1d),
        .O(\mu_do_im[3]_i_5__1_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \mu_do_im[3]_i_6__1 
       (.I0(sc_aibr[3]),
        .I1(\mu_do_im_reg[15] [3]),
        .I2(tw_nz_1d),
        .I3(sc_arbi[3]),
        .O(\mu_do_im[3]_i_6__1_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \mu_do_im[3]_i_7__1 
       (.I0(sc_aibr[2]),
        .I1(\mu_do_im_reg[15] [2]),
        .I2(tw_nz_1d),
        .I3(sc_arbi[2]),
        .O(\mu_do_im[3]_i_7__1_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \mu_do_im[3]_i_8__1 
       (.I0(sc_aibr[1]),
        .I1(\mu_do_im_reg[15] [1]),
        .I2(tw_nz_1d),
        .I3(sc_arbi[1]),
        .O(\mu_do_im[3]_i_8__1_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \mu_do_im[3]_i_9__1 
       (.I0(sc_aibr[0]),
        .I1(\mu_do_im_reg[15] [0]),
        .I2(tw_nz_1d),
        .I3(sc_arbi[0]),
        .O(\mu_do_im[3]_i_9__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \mu_do_im[7]_i_2__1 
       (.I0(sc_aibr[7]),
        .I1(tw_nz_1d),
        .O(\mu_do_im[7]_i_2__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \mu_do_im[7]_i_3__1 
       (.I0(sc_aibr[6]),
        .I1(tw_nz_1d),
        .O(\mu_do_im[7]_i_3__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \mu_do_im[7]_i_4__1 
       (.I0(sc_aibr[5]),
        .I1(tw_nz_1d),
        .O(\mu_do_im[7]_i_4__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \mu_do_im[7]_i_5__1 
       (.I0(sc_aibr[4]),
        .I1(tw_nz_1d),
        .O(\mu_do_im[7]_i_5__1_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \mu_do_im[7]_i_6__1 
       (.I0(sc_aibr[7]),
        .I1(\mu_do_im_reg[15] [7]),
        .I2(tw_nz_1d),
        .I3(sc_arbi[7]),
        .O(\mu_do_im[7]_i_6__1_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \mu_do_im[7]_i_7__1 
       (.I0(sc_aibr[6]),
        .I1(\mu_do_im_reg[15] [6]),
        .I2(tw_nz_1d),
        .I3(sc_arbi[6]),
        .O(\mu_do_im[7]_i_7__1_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \mu_do_im[7]_i_8__1 
       (.I0(sc_aibr[5]),
        .I1(\mu_do_im_reg[15] [5]),
        .I2(tw_nz_1d),
        .I3(sc_arbi[5]),
        .O(\mu_do_im[7]_i_8__1_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \mu_do_im[7]_i_9__1 
       (.I0(sc_aibr[4]),
        .I1(\mu_do_im_reg[15] [4]),
        .I2(tw_nz_1d),
        .I3(sc_arbi[4]),
        .O(\mu_do_im[7]_i_9__1_n_0 ));
  CARRY4 \mu_do_im_reg[11]_i_1__1 
       (.CI(\mu_do_im_reg[7]_i_1__1_n_0 ),
        .CO({\mu_do_im_reg[11]_i_1__1_n_0 ,\mu_do_im_reg[11]_i_1__1_n_1 ,\mu_do_im_reg[11]_i_1__1_n_2 ,\mu_do_im_reg[11]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({\mu_do_im[11]_i_2__1_n_0 ,\mu_do_im[11]_i_3__1_n_0 ,\mu_do_im[11]_i_4__1_n_0 ,\mu_do_im[11]_i_5__1_n_0 }),
        .O(aibr_0[11:8]),
        .S({\mu_do_im[11]_i_6__1_n_0 ,\mu_do_im[11]_i_7__1_n_0 ,\mu_do_im[11]_i_8__1_n_0 ,\mu_do_im[11]_i_9__1_n_0 }));
  CARRY4 \mu_do_im_reg[15]_i_1__1 
       (.CI(\mu_do_im_reg[11]_i_1__1_n_0 ),
        .CO({\NLW_mu_do_im_reg[15]_i_1__1_CO_UNCONNECTED [3],\mu_do_im_reg[15]_i_1__1_n_1 ,\mu_do_im_reg[15]_i_1__1_n_2 ,\mu_do_im_reg[15]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\mu_do_im[15]_i_2__1_n_0 ,\mu_do_im[15]_i_3__1_n_0 ,\mu_do_im[15]_i_4__1_n_0 }),
        .O(aibr_0[15:12]),
        .S({\mu_do_im[15]_i_5__1_n_0 ,\mu_do_im[15]_i_6__1_n_0 ,\mu_do_im[15]_i_7__1_n_0 ,\mu_do_im[15]_i_8__1_n_0 }));
  CARRY4 \mu_do_im_reg[3]_i_1__1 
       (.CI(1'b0),
        .CO({\mu_do_im_reg[3]_i_1__1_n_0 ,\mu_do_im_reg[3]_i_1__1_n_1 ,\mu_do_im_reg[3]_i_1__1_n_2 ,\mu_do_im_reg[3]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({\mu_do_im[3]_i_2__1_n_0 ,\mu_do_im[3]_i_3__1_n_0 ,\mu_do_im[3]_i_4__1_n_0 ,\mu_do_im[3]_i_5__1_n_0 }),
        .O(aibr_0[3:0]),
        .S({\mu_do_im[3]_i_6__1_n_0 ,\mu_do_im[3]_i_7__1_n_0 ,\mu_do_im[3]_i_8__1_n_0 ,\mu_do_im[3]_i_9__1_n_0 }));
  CARRY4 \mu_do_im_reg[7]_i_1__1 
       (.CI(\mu_do_im_reg[3]_i_1__1_n_0 ),
        .CO({\mu_do_im_reg[7]_i_1__1_n_0 ,\mu_do_im_reg[7]_i_1__1_n_1 ,\mu_do_im_reg[7]_i_1__1_n_2 ,\mu_do_im_reg[7]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({\mu_do_im[7]_i_2__1_n_0 ,\mu_do_im[7]_i_3__1_n_0 ,\mu_do_im[7]_i_4__1_n_0 ,\mu_do_im[7]_i_5__1_n_0 }),
        .O(aibr_0[7:4]),
        .S({\mu_do_im[7]_i_6__1_n_0 ,\mu_do_im[7]_i_7__1_n_0 ,\mu_do_im[7]_i_8__1_n_0 ,\mu_do_im[7]_i_9__1_n_0 }));
  LUT2 #(
    .INIT(4'h2)) 
    \mu_do_re[11]_i_2__1 
       (.I0(tw_nz_1d),
        .I1(sc_aibi[11]),
        .O(\mu_do_re[11]_i_2__1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mu_do_re[11]_i_3__1 
       (.I0(tw_nz_1d),
        .I1(sc_aibi[10]),
        .O(\mu_do_re[11]_i_3__1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mu_do_re[11]_i_4__1 
       (.I0(tw_nz_1d),
        .I1(sc_aibi[9]),
        .O(\mu_do_re[11]_i_4__1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mu_do_re[11]_i_5__1 
       (.I0(tw_nz_1d),
        .I1(sc_aibi[8]),
        .O(\mu_do_re[11]_i_5__1_n_0 ));
  LUT4 #(
    .INIT(16'hAC5C)) 
    \mu_do_re[11]_i_6__1 
       (.I0(sc_aibi[11]),
        .I1(Q[11]),
        .I2(tw_nz_1d),
        .I3(sc_arbr[11]),
        .O(\mu_do_re[11]_i_6__1_n_0 ));
  LUT4 #(
    .INIT(16'hAC5C)) 
    \mu_do_re[11]_i_7__1 
       (.I0(sc_aibi[10]),
        .I1(Q[10]),
        .I2(tw_nz_1d),
        .I3(sc_arbr[10]),
        .O(\mu_do_re[11]_i_7__1_n_0 ));
  LUT4 #(
    .INIT(16'hAC5C)) 
    \mu_do_re[11]_i_8__1 
       (.I0(sc_aibi[9]),
        .I1(Q[9]),
        .I2(tw_nz_1d),
        .I3(sc_arbr[9]),
        .O(\mu_do_re[11]_i_8__1_n_0 ));
  LUT4 #(
    .INIT(16'hAC5C)) 
    \mu_do_re[11]_i_9__1 
       (.I0(sc_aibi[8]),
        .I1(Q[8]),
        .I2(tw_nz_1d),
        .I3(sc_arbr[8]),
        .O(\mu_do_re[11]_i_9__1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mu_do_re[15]_i_2__1 
       (.I0(tw_nz_1d),
        .I1(sc_aibi[14]),
        .O(\mu_do_re[15]_i_2__1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mu_do_re[15]_i_3__1 
       (.I0(tw_nz_1d),
        .I1(sc_aibi[13]),
        .O(\mu_do_re[15]_i_3__1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mu_do_re[15]_i_4__1 
       (.I0(tw_nz_1d),
        .I1(sc_aibi[12]),
        .O(\mu_do_re[15]_i_4__1_n_0 ));
  LUT4 #(
    .INIT(16'hAC5C)) 
    \mu_do_re[15]_i_5__1 
       (.I0(sc_aibi[15]),
        .I1(Q[15]),
        .I2(tw_nz_1d),
        .I3(sc_arbr[15]),
        .O(\mu_do_re[15]_i_5__1_n_0 ));
  LUT4 #(
    .INIT(16'hAC5C)) 
    \mu_do_re[15]_i_6__1 
       (.I0(sc_aibi[14]),
        .I1(Q[14]),
        .I2(tw_nz_1d),
        .I3(sc_arbr[14]),
        .O(\mu_do_re[15]_i_6__1_n_0 ));
  LUT4 #(
    .INIT(16'hAC5C)) 
    \mu_do_re[15]_i_7__1 
       (.I0(sc_aibi[13]),
        .I1(Q[13]),
        .I2(tw_nz_1d),
        .I3(sc_arbr[13]),
        .O(\mu_do_re[15]_i_7__1_n_0 ));
  LUT4 #(
    .INIT(16'hAC5C)) 
    \mu_do_re[15]_i_8__1 
       (.I0(sc_aibi[12]),
        .I1(Q[12]),
        .I2(tw_nz_1d),
        .I3(sc_arbr[12]),
        .O(\mu_do_re[15]_i_8__1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mu_do_re[3]_i_2__1 
       (.I0(tw_nz_1d),
        .I1(sc_aibi[3]),
        .O(\mu_do_re[3]_i_2__1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mu_do_re[3]_i_3__1 
       (.I0(tw_nz_1d),
        .I1(sc_aibi[2]),
        .O(\mu_do_re[3]_i_3__1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mu_do_re[3]_i_4__1 
       (.I0(tw_nz_1d),
        .I1(sc_aibi[1]),
        .O(\mu_do_re[3]_i_4__1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mu_do_re[3]_i_5__1 
       (.I0(tw_nz_1d),
        .I1(sc_aibi[0]),
        .O(\mu_do_re[3]_i_5__1_n_0 ));
  LUT4 #(
    .INIT(16'hAC5C)) 
    \mu_do_re[3]_i_6__1 
       (.I0(sc_aibi[3]),
        .I1(Q[3]),
        .I2(tw_nz_1d),
        .I3(sc_arbr[3]),
        .O(\mu_do_re[3]_i_6__1_n_0 ));
  LUT4 #(
    .INIT(16'hAC5C)) 
    \mu_do_re[3]_i_7__1 
       (.I0(sc_aibi[2]),
        .I1(Q[2]),
        .I2(tw_nz_1d),
        .I3(sc_arbr[2]),
        .O(\mu_do_re[3]_i_7__1_n_0 ));
  LUT4 #(
    .INIT(16'hAC5C)) 
    \mu_do_re[3]_i_8__1 
       (.I0(sc_aibi[1]),
        .I1(Q[1]),
        .I2(tw_nz_1d),
        .I3(sc_arbr[1]),
        .O(\mu_do_re[3]_i_8__1_n_0 ));
  LUT4 #(
    .INIT(16'hAC5C)) 
    \mu_do_re[3]_i_9__1 
       (.I0(sc_aibi[0]),
        .I1(Q[0]),
        .I2(tw_nz_1d),
        .I3(sc_arbr[0]),
        .O(\mu_do_re[3]_i_9__1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mu_do_re[7]_i_2__1 
       (.I0(tw_nz_1d),
        .I1(sc_aibi[7]),
        .O(\mu_do_re[7]_i_2__1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mu_do_re[7]_i_3__1 
       (.I0(tw_nz_1d),
        .I1(sc_aibi[6]),
        .O(\mu_do_re[7]_i_3__1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mu_do_re[7]_i_4__1 
       (.I0(tw_nz_1d),
        .I1(sc_aibi[5]),
        .O(\mu_do_re[7]_i_4__1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mu_do_re[7]_i_5__1 
       (.I0(tw_nz_1d),
        .I1(sc_aibi[4]),
        .O(\mu_do_re[7]_i_5__1_n_0 ));
  LUT4 #(
    .INIT(16'hAC5C)) 
    \mu_do_re[7]_i_6__1 
       (.I0(sc_aibi[7]),
        .I1(Q[7]),
        .I2(tw_nz_1d),
        .I3(sc_arbr[7]),
        .O(\mu_do_re[7]_i_6__1_n_0 ));
  LUT4 #(
    .INIT(16'hAC5C)) 
    \mu_do_re[7]_i_7__1 
       (.I0(sc_aibi[6]),
        .I1(Q[6]),
        .I2(tw_nz_1d),
        .I3(sc_arbr[6]),
        .O(\mu_do_re[7]_i_7__1_n_0 ));
  LUT4 #(
    .INIT(16'hAC5C)) 
    \mu_do_re[7]_i_8__1 
       (.I0(sc_aibi[5]),
        .I1(Q[5]),
        .I2(tw_nz_1d),
        .I3(sc_arbr[5]),
        .O(\mu_do_re[7]_i_8__1_n_0 ));
  LUT4 #(
    .INIT(16'hAC5C)) 
    \mu_do_re[7]_i_9__1 
       (.I0(sc_aibi[4]),
        .I1(Q[4]),
        .I2(tw_nz_1d),
        .I3(sc_arbr[4]),
        .O(\mu_do_re[7]_i_9__1_n_0 ));
  CARRY4 \mu_do_re_reg[11]_i_1__1 
       (.CI(\mu_do_re_reg[7]_i_1__1_n_0 ),
        .CO({\mu_do_re_reg[11]_i_1__1_n_0 ,\mu_do_re_reg[11]_i_1__1_n_1 ,\mu_do_re_reg[11]_i_1__1_n_2 ,\mu_do_re_reg[11]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({\mu_do_re[11]_i_2__1_n_0 ,\mu_do_re[11]_i_3__1_n_0 ,\mu_do_re[11]_i_4__1_n_0 ,\mu_do_re[11]_i_5__1_n_0 }),
        .O(out[11:8]),
        .S({\mu_do_re[11]_i_6__1_n_0 ,\mu_do_re[11]_i_7__1_n_0 ,\mu_do_re[11]_i_8__1_n_0 ,\mu_do_re[11]_i_9__1_n_0 }));
  CARRY4 \mu_do_re_reg[15]_i_1__1 
       (.CI(\mu_do_re_reg[11]_i_1__1_n_0 ),
        .CO({\NLW_mu_do_re_reg[15]_i_1__1_CO_UNCONNECTED [3],\mu_do_re_reg[15]_i_1__1_n_1 ,\mu_do_re_reg[15]_i_1__1_n_2 ,\mu_do_re_reg[15]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\mu_do_re[15]_i_2__1_n_0 ,\mu_do_re[15]_i_3__1_n_0 ,\mu_do_re[15]_i_4__1_n_0 }),
        .O(out[15:12]),
        .S({\mu_do_re[15]_i_5__1_n_0 ,\mu_do_re[15]_i_6__1_n_0 ,\mu_do_re[15]_i_7__1_n_0 ,\mu_do_re[15]_i_8__1_n_0 }));
  CARRY4 \mu_do_re_reg[3]_i_1__1 
       (.CI(1'b0),
        .CO({\mu_do_re_reg[3]_i_1__1_n_0 ,\mu_do_re_reg[3]_i_1__1_n_1 ,\mu_do_re_reg[3]_i_1__1_n_2 ,\mu_do_re_reg[3]_i_1__1_n_3 }),
        .CYINIT(tw_nz_1d),
        .DI({\mu_do_re[3]_i_2__1_n_0 ,\mu_do_re[3]_i_3__1_n_0 ,\mu_do_re[3]_i_4__1_n_0 ,\mu_do_re[3]_i_5__1_n_0 }),
        .O(out[3:0]),
        .S({\mu_do_re[3]_i_6__1_n_0 ,\mu_do_re[3]_i_7__1_n_0 ,\mu_do_re[3]_i_8__1_n_0 ,\mu_do_re[3]_i_9__1_n_0 }));
  CARRY4 \mu_do_re_reg[7]_i_1__1 
       (.CI(\mu_do_re_reg[3]_i_1__1_n_0 ),
        .CO({\mu_do_re_reg[7]_i_1__1_n_0 ,\mu_do_re_reg[7]_i_1__1_n_1 ,\mu_do_re_reg[7]_i_1__1_n_2 ,\mu_do_re_reg[7]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({\mu_do_re[7]_i_2__1_n_0 ,\mu_do_re[7]_i_3__1_n_0 ,\mu_do_re[7]_i_4__1_n_0 ,\mu_do_re[7]_i_5__1_n_0 }),
        .O(out[7:4]),
        .S({\mu_do_re[7]_i_6__1_n_0 ,\mu_do_re[7]_i_7__1_n_0 ,\mu_do_re[7]_i_8__1_n_0 ,\mu_do_re[7]_i_9__1_n_0 }));
endmodule

(* ORIG_REF_NAME = "Multiply" *) 
module system_fft128_0_0_Multiply_3
   (out,
    aibr_0,
    clock,
    B,
    A,
    aibi_0,
    aibi_1,
    tw_nz_1d,
    Q,
    \mu_do_im_reg[15] );
  output [15:0]out;
  output [15:0]aibr_0;
  input clock;
  input [15:0]B;
  input [15:0]A;
  input [15:0]aibi_0;
  input [15:0]aibi_1;
  input tw_nz_1d;
  input [15:0]Q;
  input [15:0]\mu_do_im_reg[15] ;

  wire [15:0]A;
  wire [15:0]B;
  wire [15:0]Q;
  wire [15:0]aibi_0;
  wire [15:0]aibi_1;
  wire aibi_n_100;
  wire aibi_n_101;
  wire aibi_n_102;
  wire aibi_n_103;
  wire aibi_n_104;
  wire aibi_n_105;
  wire aibi_n_74;
  wire aibi_n_91;
  wire aibi_n_92;
  wire aibi_n_93;
  wire aibi_n_94;
  wire aibi_n_95;
  wire aibi_n_96;
  wire aibi_n_97;
  wire aibi_n_98;
  wire aibi_n_99;
  wire [15:0]aibr_0;
  wire aibr_n_100;
  wire aibr_n_101;
  wire aibr_n_102;
  wire aibr_n_103;
  wire aibr_n_104;
  wire aibr_n_105;
  wire aibr_n_74;
  wire aibr_n_91;
  wire aibr_n_92;
  wire aibr_n_93;
  wire aibr_n_94;
  wire aibr_n_95;
  wire aibr_n_96;
  wire aibr_n_97;
  wire aibr_n_98;
  wire aibr_n_99;
  wire arbi_n_100;
  wire arbi_n_101;
  wire arbi_n_102;
  wire arbi_n_103;
  wire arbi_n_104;
  wire arbi_n_105;
  wire arbi_n_74;
  wire arbi_n_91;
  wire arbi_n_92;
  wire arbi_n_93;
  wire arbi_n_94;
  wire arbi_n_95;
  wire arbi_n_96;
  wire arbi_n_97;
  wire arbi_n_98;
  wire arbi_n_99;
  wire arbr_n_100;
  wire arbr_n_101;
  wire arbr_n_102;
  wire arbr_n_103;
  wire arbr_n_104;
  wire arbr_n_105;
  wire arbr_n_74;
  wire arbr_n_91;
  wire arbr_n_92;
  wire arbr_n_93;
  wire arbr_n_94;
  wire arbr_n_95;
  wire arbr_n_96;
  wire arbr_n_97;
  wire arbr_n_98;
  wire arbr_n_99;
  wire clock;
  wire \mu_do_im[11]_i_2__0_n_0 ;
  wire \mu_do_im[11]_i_3__0_n_0 ;
  wire \mu_do_im[11]_i_4__0_n_0 ;
  wire \mu_do_im[11]_i_5__0_n_0 ;
  wire \mu_do_im[11]_i_6__0_n_0 ;
  wire \mu_do_im[11]_i_7__0_n_0 ;
  wire \mu_do_im[11]_i_8__0_n_0 ;
  wire \mu_do_im[11]_i_9__0_n_0 ;
  wire \mu_do_im[15]_i_2__0_n_0 ;
  wire \mu_do_im[15]_i_3__0_n_0 ;
  wire \mu_do_im[15]_i_4__0_n_0 ;
  wire \mu_do_im[15]_i_5__0_n_0 ;
  wire \mu_do_im[15]_i_6__0_n_0 ;
  wire \mu_do_im[15]_i_7__0_n_0 ;
  wire \mu_do_im[15]_i_8__0_n_0 ;
  wire \mu_do_im[3]_i_2__0_n_0 ;
  wire \mu_do_im[3]_i_3__0_n_0 ;
  wire \mu_do_im[3]_i_4__0_n_0 ;
  wire \mu_do_im[3]_i_5__0_n_0 ;
  wire \mu_do_im[3]_i_6__0_n_0 ;
  wire \mu_do_im[3]_i_7__0_n_0 ;
  wire \mu_do_im[3]_i_8__0_n_0 ;
  wire \mu_do_im[3]_i_9__0_n_0 ;
  wire \mu_do_im[7]_i_2__0_n_0 ;
  wire \mu_do_im[7]_i_3__0_n_0 ;
  wire \mu_do_im[7]_i_4__0_n_0 ;
  wire \mu_do_im[7]_i_5__0_n_0 ;
  wire \mu_do_im[7]_i_6__0_n_0 ;
  wire \mu_do_im[7]_i_7__0_n_0 ;
  wire \mu_do_im[7]_i_8__0_n_0 ;
  wire \mu_do_im[7]_i_9__0_n_0 ;
  wire \mu_do_im_reg[11]_i_1__0_n_0 ;
  wire \mu_do_im_reg[11]_i_1__0_n_1 ;
  wire \mu_do_im_reg[11]_i_1__0_n_2 ;
  wire \mu_do_im_reg[11]_i_1__0_n_3 ;
  wire [15:0]\mu_do_im_reg[15] ;
  wire \mu_do_im_reg[15]_i_1__0_n_1 ;
  wire \mu_do_im_reg[15]_i_1__0_n_2 ;
  wire \mu_do_im_reg[15]_i_1__0_n_3 ;
  wire \mu_do_im_reg[3]_i_1__0_n_0 ;
  wire \mu_do_im_reg[3]_i_1__0_n_1 ;
  wire \mu_do_im_reg[3]_i_1__0_n_2 ;
  wire \mu_do_im_reg[3]_i_1__0_n_3 ;
  wire \mu_do_im_reg[7]_i_1__0_n_0 ;
  wire \mu_do_im_reg[7]_i_1__0_n_1 ;
  wire \mu_do_im_reg[7]_i_1__0_n_2 ;
  wire \mu_do_im_reg[7]_i_1__0_n_3 ;
  wire \mu_do_re[11]_i_2__0_n_0 ;
  wire \mu_do_re[11]_i_3__0_n_0 ;
  wire \mu_do_re[11]_i_4__0_n_0 ;
  wire \mu_do_re[11]_i_5__0_n_0 ;
  wire \mu_do_re[11]_i_6__0_n_0 ;
  wire \mu_do_re[11]_i_7__0_n_0 ;
  wire \mu_do_re[11]_i_8__0_n_0 ;
  wire \mu_do_re[11]_i_9__0_n_0 ;
  wire \mu_do_re[15]_i_2__0_n_0 ;
  wire \mu_do_re[15]_i_3__0_n_0 ;
  wire \mu_do_re[15]_i_4__0_n_0 ;
  wire \mu_do_re[15]_i_5__0_n_0 ;
  wire \mu_do_re[15]_i_6__0_n_0 ;
  wire \mu_do_re[15]_i_7__0_n_0 ;
  wire \mu_do_re[15]_i_8__0_n_0 ;
  wire \mu_do_re[3]_i_2__0_n_0 ;
  wire \mu_do_re[3]_i_3__0_n_0 ;
  wire \mu_do_re[3]_i_4__0_n_0 ;
  wire \mu_do_re[3]_i_5__0_n_0 ;
  wire \mu_do_re[3]_i_6__0_n_0 ;
  wire \mu_do_re[3]_i_7__0_n_0 ;
  wire \mu_do_re[3]_i_8__0_n_0 ;
  wire \mu_do_re[3]_i_9__0_n_0 ;
  wire \mu_do_re[7]_i_2__0_n_0 ;
  wire \mu_do_re[7]_i_3__0_n_0 ;
  wire \mu_do_re[7]_i_4__0_n_0 ;
  wire \mu_do_re[7]_i_5__0_n_0 ;
  wire \mu_do_re[7]_i_6__0_n_0 ;
  wire \mu_do_re[7]_i_7__0_n_0 ;
  wire \mu_do_re[7]_i_8__0_n_0 ;
  wire \mu_do_re[7]_i_9__0_n_0 ;
  wire \mu_do_re_reg[11]_i_1__0_n_0 ;
  wire \mu_do_re_reg[11]_i_1__0_n_1 ;
  wire \mu_do_re_reg[11]_i_1__0_n_2 ;
  wire \mu_do_re_reg[11]_i_1__0_n_3 ;
  wire \mu_do_re_reg[15]_i_1__0_n_1 ;
  wire \mu_do_re_reg[15]_i_1__0_n_2 ;
  wire \mu_do_re_reg[15]_i_1__0_n_3 ;
  wire \mu_do_re_reg[3]_i_1__0_n_0 ;
  wire \mu_do_re_reg[3]_i_1__0_n_1 ;
  wire \mu_do_re_reg[3]_i_1__0_n_2 ;
  wire \mu_do_re_reg[3]_i_1__0_n_3 ;
  wire \mu_do_re_reg[7]_i_1__0_n_0 ;
  wire \mu_do_re_reg[7]_i_1__0_n_1 ;
  wire \mu_do_re_reg[7]_i_1__0_n_2 ;
  wire \mu_do_re_reg[7]_i_1__0_n_3 ;
  wire [15:0]out;
  wire [15:0]sc_aibi;
  wire [15:0]sc_aibr;
  wire [15:0]sc_arbi;
  wire [15:0]sc_arbr;
  wire tw_nz_1d;
  wire NLW_aibi_CARRYCASCOUT_UNCONNECTED;
  wire NLW_aibi_MULTSIGNOUT_UNCONNECTED;
  wire NLW_aibi_OVERFLOW_UNCONNECTED;
  wire NLW_aibi_PATTERNBDETECT_UNCONNECTED;
  wire NLW_aibi_PATTERNDETECT_UNCONNECTED;
  wire NLW_aibi_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_aibi_ACOUT_UNCONNECTED;
  wire [17:0]NLW_aibi_BCOUT_UNCONNECTED;
  wire [3:0]NLW_aibi_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_aibi_P_UNCONNECTED;
  wire [47:0]NLW_aibi_PCOUT_UNCONNECTED;
  wire NLW_aibr_CARRYCASCOUT_UNCONNECTED;
  wire NLW_aibr_MULTSIGNOUT_UNCONNECTED;
  wire NLW_aibr_OVERFLOW_UNCONNECTED;
  wire NLW_aibr_PATTERNBDETECT_UNCONNECTED;
  wire NLW_aibr_PATTERNDETECT_UNCONNECTED;
  wire NLW_aibr_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_aibr_ACOUT_UNCONNECTED;
  wire [17:0]NLW_aibr_BCOUT_UNCONNECTED;
  wire [3:0]NLW_aibr_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_aibr_P_UNCONNECTED;
  wire [47:0]NLW_aibr_PCOUT_UNCONNECTED;
  wire NLW_arbi_CARRYCASCOUT_UNCONNECTED;
  wire NLW_arbi_MULTSIGNOUT_UNCONNECTED;
  wire NLW_arbi_OVERFLOW_UNCONNECTED;
  wire NLW_arbi_PATTERNBDETECT_UNCONNECTED;
  wire NLW_arbi_PATTERNDETECT_UNCONNECTED;
  wire NLW_arbi_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_arbi_ACOUT_UNCONNECTED;
  wire [17:0]NLW_arbi_BCOUT_UNCONNECTED;
  wire [3:0]NLW_arbi_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_arbi_P_UNCONNECTED;
  wire [47:0]NLW_arbi_PCOUT_UNCONNECTED;
  wire NLW_arbr_CARRYCASCOUT_UNCONNECTED;
  wire NLW_arbr_MULTSIGNOUT_UNCONNECTED;
  wire NLW_arbr_OVERFLOW_UNCONNECTED;
  wire NLW_arbr_PATTERNBDETECT_UNCONNECTED;
  wire NLW_arbr_PATTERNDETECT_UNCONNECTED;
  wire NLW_arbr_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_arbr_ACOUT_UNCONNECTED;
  wire [17:0]NLW_arbr_BCOUT_UNCONNECTED;
  wire [3:0]NLW_arbr_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_arbr_P_UNCONNECTED;
  wire [47:0]NLW_arbr_PCOUT_UNCONNECTED;
  wire [3:3]\NLW_mu_do_im_reg[15]_i_1__0_CO_UNCONNECTED ;
  wire [3:3]\NLW_mu_do_re_reg[15]_i_1__0_CO_UNCONNECTED ;

  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    aibi
       (.A({aibi_1[15],aibi_1[15],aibi_1[15],aibi_1[15],aibi_1[15],aibi_1[15],aibi_1[15],aibi_1[15],aibi_1[15],aibi_1[15],aibi_1[15],aibi_1[15],aibi_1[15],aibi_1[15],aibi_1}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_aibi_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({aibi_0[15],aibi_0[15],aibi_0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_aibi_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_aibi_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_aibi_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b1),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clock),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_aibi_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_aibi_OVERFLOW_UNCONNECTED),
        .P({NLW_aibi_P_UNCONNECTED[47:32],aibi_n_74,sc_aibi,aibi_n_91,aibi_n_92,aibi_n_93,aibi_n_94,aibi_n_95,aibi_n_96,aibi_n_97,aibi_n_98,aibi_n_99,aibi_n_100,aibi_n_101,aibi_n_102,aibi_n_103,aibi_n_104,aibi_n_105}),
        .PATTERNBDETECT(NLW_aibi_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_aibi_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_aibi_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_aibi_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    aibr
       (.A({aibi_1[15],aibi_1[15],aibi_1[15],aibi_1[15],aibi_1[15],aibi_1[15],aibi_1[15],aibi_1[15],aibi_1[15],aibi_1[15],aibi_1[15],aibi_1[15],aibi_1[15],aibi_1[15],aibi_1}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_aibr_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({B[15],B[15],B}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_aibr_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_aibr_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_aibr_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b1),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clock),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_aibr_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_aibr_OVERFLOW_UNCONNECTED),
        .P({NLW_aibr_P_UNCONNECTED[47:32],aibr_n_74,sc_aibr,aibr_n_91,aibr_n_92,aibr_n_93,aibr_n_94,aibr_n_95,aibr_n_96,aibr_n_97,aibr_n_98,aibr_n_99,aibr_n_100,aibr_n_101,aibr_n_102,aibr_n_103,aibr_n_104,aibr_n_105}),
        .PATTERNBDETECT(NLW_aibr_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_aibr_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_aibr_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_aibr_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    arbi
       (.A({A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_arbi_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({aibi_0[15],aibi_0[15],aibi_0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_arbi_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_arbi_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_arbi_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b1),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clock),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_arbi_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_arbi_OVERFLOW_UNCONNECTED),
        .P({NLW_arbi_P_UNCONNECTED[47:32],arbi_n_74,sc_arbi,arbi_n_91,arbi_n_92,arbi_n_93,arbi_n_94,arbi_n_95,arbi_n_96,arbi_n_97,arbi_n_98,arbi_n_99,arbi_n_100,arbi_n_101,arbi_n_102,arbi_n_103,arbi_n_104,arbi_n_105}),
        .PATTERNBDETECT(NLW_arbi_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_arbi_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_arbi_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_arbi_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    arbr
       (.A({A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_arbr_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({B[15],B[15],B}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_arbr_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_arbr_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_arbr_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b1),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clock),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_arbr_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_arbr_OVERFLOW_UNCONNECTED),
        .P({NLW_arbr_P_UNCONNECTED[47:32],arbr_n_74,sc_arbr,arbr_n_91,arbr_n_92,arbr_n_93,arbr_n_94,arbr_n_95,arbr_n_96,arbr_n_97,arbr_n_98,arbr_n_99,arbr_n_100,arbr_n_101,arbr_n_102,arbr_n_103,arbr_n_104,arbr_n_105}),
        .PATTERNBDETECT(NLW_arbr_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_arbr_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_arbr_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_arbr_UNDERFLOW_UNCONNECTED));
  LUT2 #(
    .INIT(4'h8)) 
    \mu_do_im[11]_i_2__0 
       (.I0(sc_aibr[11]),
        .I1(tw_nz_1d),
        .O(\mu_do_im[11]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \mu_do_im[11]_i_3__0 
       (.I0(sc_aibr[10]),
        .I1(tw_nz_1d),
        .O(\mu_do_im[11]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \mu_do_im[11]_i_4__0 
       (.I0(sc_aibr[9]),
        .I1(tw_nz_1d),
        .O(\mu_do_im[11]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \mu_do_im[11]_i_5__0 
       (.I0(sc_aibr[8]),
        .I1(tw_nz_1d),
        .O(\mu_do_im[11]_i_5__0_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \mu_do_im[11]_i_6__0 
       (.I0(sc_aibr[11]),
        .I1(\mu_do_im_reg[15] [11]),
        .I2(tw_nz_1d),
        .I3(sc_arbi[11]),
        .O(\mu_do_im[11]_i_6__0_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \mu_do_im[11]_i_7__0 
       (.I0(sc_aibr[10]),
        .I1(\mu_do_im_reg[15] [10]),
        .I2(tw_nz_1d),
        .I3(sc_arbi[10]),
        .O(\mu_do_im[11]_i_7__0_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \mu_do_im[11]_i_8__0 
       (.I0(sc_aibr[9]),
        .I1(\mu_do_im_reg[15] [9]),
        .I2(tw_nz_1d),
        .I3(sc_arbi[9]),
        .O(\mu_do_im[11]_i_8__0_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \mu_do_im[11]_i_9__0 
       (.I0(sc_aibr[8]),
        .I1(\mu_do_im_reg[15] [8]),
        .I2(tw_nz_1d),
        .I3(sc_arbi[8]),
        .O(\mu_do_im[11]_i_9__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \mu_do_im[15]_i_2__0 
       (.I0(sc_aibr[14]),
        .I1(tw_nz_1d),
        .O(\mu_do_im[15]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \mu_do_im[15]_i_3__0 
       (.I0(sc_aibr[13]),
        .I1(tw_nz_1d),
        .O(\mu_do_im[15]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \mu_do_im[15]_i_4__0 
       (.I0(sc_aibr[12]),
        .I1(tw_nz_1d),
        .O(\mu_do_im[15]_i_4__0_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \mu_do_im[15]_i_5__0 
       (.I0(sc_aibr[15]),
        .I1(\mu_do_im_reg[15] [15]),
        .I2(tw_nz_1d),
        .I3(sc_arbi[15]),
        .O(\mu_do_im[15]_i_5__0_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \mu_do_im[15]_i_6__0 
       (.I0(sc_aibr[14]),
        .I1(\mu_do_im_reg[15] [14]),
        .I2(tw_nz_1d),
        .I3(sc_arbi[14]),
        .O(\mu_do_im[15]_i_6__0_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \mu_do_im[15]_i_7__0 
       (.I0(sc_aibr[13]),
        .I1(\mu_do_im_reg[15] [13]),
        .I2(tw_nz_1d),
        .I3(sc_arbi[13]),
        .O(\mu_do_im[15]_i_7__0_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \mu_do_im[15]_i_8__0 
       (.I0(sc_aibr[12]),
        .I1(\mu_do_im_reg[15] [12]),
        .I2(tw_nz_1d),
        .I3(sc_arbi[12]),
        .O(\mu_do_im[15]_i_8__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \mu_do_im[3]_i_2__0 
       (.I0(sc_aibr[3]),
        .I1(tw_nz_1d),
        .O(\mu_do_im[3]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \mu_do_im[3]_i_3__0 
       (.I0(sc_aibr[2]),
        .I1(tw_nz_1d),
        .O(\mu_do_im[3]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \mu_do_im[3]_i_4__0 
       (.I0(sc_aibr[1]),
        .I1(tw_nz_1d),
        .O(\mu_do_im[3]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \mu_do_im[3]_i_5__0 
       (.I0(sc_aibr[0]),
        .I1(tw_nz_1d),
        .O(\mu_do_im[3]_i_5__0_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \mu_do_im[3]_i_6__0 
       (.I0(sc_aibr[3]),
        .I1(\mu_do_im_reg[15] [3]),
        .I2(tw_nz_1d),
        .I3(sc_arbi[3]),
        .O(\mu_do_im[3]_i_6__0_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \mu_do_im[3]_i_7__0 
       (.I0(sc_aibr[2]),
        .I1(\mu_do_im_reg[15] [2]),
        .I2(tw_nz_1d),
        .I3(sc_arbi[2]),
        .O(\mu_do_im[3]_i_7__0_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \mu_do_im[3]_i_8__0 
       (.I0(sc_aibr[1]),
        .I1(\mu_do_im_reg[15] [1]),
        .I2(tw_nz_1d),
        .I3(sc_arbi[1]),
        .O(\mu_do_im[3]_i_8__0_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \mu_do_im[3]_i_9__0 
       (.I0(sc_aibr[0]),
        .I1(\mu_do_im_reg[15] [0]),
        .I2(tw_nz_1d),
        .I3(sc_arbi[0]),
        .O(\mu_do_im[3]_i_9__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \mu_do_im[7]_i_2__0 
       (.I0(sc_aibr[7]),
        .I1(tw_nz_1d),
        .O(\mu_do_im[7]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \mu_do_im[7]_i_3__0 
       (.I0(sc_aibr[6]),
        .I1(tw_nz_1d),
        .O(\mu_do_im[7]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \mu_do_im[7]_i_4__0 
       (.I0(sc_aibr[5]),
        .I1(tw_nz_1d),
        .O(\mu_do_im[7]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \mu_do_im[7]_i_5__0 
       (.I0(sc_aibr[4]),
        .I1(tw_nz_1d),
        .O(\mu_do_im[7]_i_5__0_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \mu_do_im[7]_i_6__0 
       (.I0(sc_aibr[7]),
        .I1(\mu_do_im_reg[15] [7]),
        .I2(tw_nz_1d),
        .I3(sc_arbi[7]),
        .O(\mu_do_im[7]_i_6__0_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \mu_do_im[7]_i_7__0 
       (.I0(sc_aibr[6]),
        .I1(\mu_do_im_reg[15] [6]),
        .I2(tw_nz_1d),
        .I3(sc_arbi[6]),
        .O(\mu_do_im[7]_i_7__0_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \mu_do_im[7]_i_8__0 
       (.I0(sc_aibr[5]),
        .I1(\mu_do_im_reg[15] [5]),
        .I2(tw_nz_1d),
        .I3(sc_arbi[5]),
        .O(\mu_do_im[7]_i_8__0_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \mu_do_im[7]_i_9__0 
       (.I0(sc_aibr[4]),
        .I1(\mu_do_im_reg[15] [4]),
        .I2(tw_nz_1d),
        .I3(sc_arbi[4]),
        .O(\mu_do_im[7]_i_9__0_n_0 ));
  CARRY4 \mu_do_im_reg[11]_i_1__0 
       (.CI(\mu_do_im_reg[7]_i_1__0_n_0 ),
        .CO({\mu_do_im_reg[11]_i_1__0_n_0 ,\mu_do_im_reg[11]_i_1__0_n_1 ,\mu_do_im_reg[11]_i_1__0_n_2 ,\mu_do_im_reg[11]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\mu_do_im[11]_i_2__0_n_0 ,\mu_do_im[11]_i_3__0_n_0 ,\mu_do_im[11]_i_4__0_n_0 ,\mu_do_im[11]_i_5__0_n_0 }),
        .O(aibr_0[11:8]),
        .S({\mu_do_im[11]_i_6__0_n_0 ,\mu_do_im[11]_i_7__0_n_0 ,\mu_do_im[11]_i_8__0_n_0 ,\mu_do_im[11]_i_9__0_n_0 }));
  CARRY4 \mu_do_im_reg[15]_i_1__0 
       (.CI(\mu_do_im_reg[11]_i_1__0_n_0 ),
        .CO({\NLW_mu_do_im_reg[15]_i_1__0_CO_UNCONNECTED [3],\mu_do_im_reg[15]_i_1__0_n_1 ,\mu_do_im_reg[15]_i_1__0_n_2 ,\mu_do_im_reg[15]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\mu_do_im[15]_i_2__0_n_0 ,\mu_do_im[15]_i_3__0_n_0 ,\mu_do_im[15]_i_4__0_n_0 }),
        .O(aibr_0[15:12]),
        .S({\mu_do_im[15]_i_5__0_n_0 ,\mu_do_im[15]_i_6__0_n_0 ,\mu_do_im[15]_i_7__0_n_0 ,\mu_do_im[15]_i_8__0_n_0 }));
  CARRY4 \mu_do_im_reg[3]_i_1__0 
       (.CI(1'b0),
        .CO({\mu_do_im_reg[3]_i_1__0_n_0 ,\mu_do_im_reg[3]_i_1__0_n_1 ,\mu_do_im_reg[3]_i_1__0_n_2 ,\mu_do_im_reg[3]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\mu_do_im[3]_i_2__0_n_0 ,\mu_do_im[3]_i_3__0_n_0 ,\mu_do_im[3]_i_4__0_n_0 ,\mu_do_im[3]_i_5__0_n_0 }),
        .O(aibr_0[3:0]),
        .S({\mu_do_im[3]_i_6__0_n_0 ,\mu_do_im[3]_i_7__0_n_0 ,\mu_do_im[3]_i_8__0_n_0 ,\mu_do_im[3]_i_9__0_n_0 }));
  CARRY4 \mu_do_im_reg[7]_i_1__0 
       (.CI(\mu_do_im_reg[3]_i_1__0_n_0 ),
        .CO({\mu_do_im_reg[7]_i_1__0_n_0 ,\mu_do_im_reg[7]_i_1__0_n_1 ,\mu_do_im_reg[7]_i_1__0_n_2 ,\mu_do_im_reg[7]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\mu_do_im[7]_i_2__0_n_0 ,\mu_do_im[7]_i_3__0_n_0 ,\mu_do_im[7]_i_4__0_n_0 ,\mu_do_im[7]_i_5__0_n_0 }),
        .O(aibr_0[7:4]),
        .S({\mu_do_im[7]_i_6__0_n_0 ,\mu_do_im[7]_i_7__0_n_0 ,\mu_do_im[7]_i_8__0_n_0 ,\mu_do_im[7]_i_9__0_n_0 }));
  LUT2 #(
    .INIT(4'h2)) 
    \mu_do_re[11]_i_2__0 
       (.I0(tw_nz_1d),
        .I1(sc_aibi[11]),
        .O(\mu_do_re[11]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mu_do_re[11]_i_3__0 
       (.I0(tw_nz_1d),
        .I1(sc_aibi[10]),
        .O(\mu_do_re[11]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mu_do_re[11]_i_4__0 
       (.I0(tw_nz_1d),
        .I1(sc_aibi[9]),
        .O(\mu_do_re[11]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mu_do_re[11]_i_5__0 
       (.I0(tw_nz_1d),
        .I1(sc_aibi[8]),
        .O(\mu_do_re[11]_i_5__0_n_0 ));
  LUT4 #(
    .INIT(16'hAC5C)) 
    \mu_do_re[11]_i_6__0 
       (.I0(sc_aibi[11]),
        .I1(Q[11]),
        .I2(tw_nz_1d),
        .I3(sc_arbr[11]),
        .O(\mu_do_re[11]_i_6__0_n_0 ));
  LUT4 #(
    .INIT(16'hAC5C)) 
    \mu_do_re[11]_i_7__0 
       (.I0(sc_aibi[10]),
        .I1(Q[10]),
        .I2(tw_nz_1d),
        .I3(sc_arbr[10]),
        .O(\mu_do_re[11]_i_7__0_n_0 ));
  LUT4 #(
    .INIT(16'hAC5C)) 
    \mu_do_re[11]_i_8__0 
       (.I0(sc_aibi[9]),
        .I1(Q[9]),
        .I2(tw_nz_1d),
        .I3(sc_arbr[9]),
        .O(\mu_do_re[11]_i_8__0_n_0 ));
  LUT4 #(
    .INIT(16'hAC5C)) 
    \mu_do_re[11]_i_9__0 
       (.I0(sc_aibi[8]),
        .I1(Q[8]),
        .I2(tw_nz_1d),
        .I3(sc_arbr[8]),
        .O(\mu_do_re[11]_i_9__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mu_do_re[15]_i_2__0 
       (.I0(tw_nz_1d),
        .I1(sc_aibi[14]),
        .O(\mu_do_re[15]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mu_do_re[15]_i_3__0 
       (.I0(tw_nz_1d),
        .I1(sc_aibi[13]),
        .O(\mu_do_re[15]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mu_do_re[15]_i_4__0 
       (.I0(tw_nz_1d),
        .I1(sc_aibi[12]),
        .O(\mu_do_re[15]_i_4__0_n_0 ));
  LUT4 #(
    .INIT(16'hAC5C)) 
    \mu_do_re[15]_i_5__0 
       (.I0(sc_aibi[15]),
        .I1(Q[15]),
        .I2(tw_nz_1d),
        .I3(sc_arbr[15]),
        .O(\mu_do_re[15]_i_5__0_n_0 ));
  LUT4 #(
    .INIT(16'hAC5C)) 
    \mu_do_re[15]_i_6__0 
       (.I0(sc_aibi[14]),
        .I1(Q[14]),
        .I2(tw_nz_1d),
        .I3(sc_arbr[14]),
        .O(\mu_do_re[15]_i_6__0_n_0 ));
  LUT4 #(
    .INIT(16'hAC5C)) 
    \mu_do_re[15]_i_7__0 
       (.I0(sc_aibi[13]),
        .I1(Q[13]),
        .I2(tw_nz_1d),
        .I3(sc_arbr[13]),
        .O(\mu_do_re[15]_i_7__0_n_0 ));
  LUT4 #(
    .INIT(16'hAC5C)) 
    \mu_do_re[15]_i_8__0 
       (.I0(sc_aibi[12]),
        .I1(Q[12]),
        .I2(tw_nz_1d),
        .I3(sc_arbr[12]),
        .O(\mu_do_re[15]_i_8__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mu_do_re[3]_i_2__0 
       (.I0(tw_nz_1d),
        .I1(sc_aibi[3]),
        .O(\mu_do_re[3]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mu_do_re[3]_i_3__0 
       (.I0(tw_nz_1d),
        .I1(sc_aibi[2]),
        .O(\mu_do_re[3]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mu_do_re[3]_i_4__0 
       (.I0(tw_nz_1d),
        .I1(sc_aibi[1]),
        .O(\mu_do_re[3]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mu_do_re[3]_i_5__0 
       (.I0(tw_nz_1d),
        .I1(sc_aibi[0]),
        .O(\mu_do_re[3]_i_5__0_n_0 ));
  LUT4 #(
    .INIT(16'hAC5C)) 
    \mu_do_re[3]_i_6__0 
       (.I0(sc_aibi[3]),
        .I1(Q[3]),
        .I2(tw_nz_1d),
        .I3(sc_arbr[3]),
        .O(\mu_do_re[3]_i_6__0_n_0 ));
  LUT4 #(
    .INIT(16'hAC5C)) 
    \mu_do_re[3]_i_7__0 
       (.I0(sc_aibi[2]),
        .I1(Q[2]),
        .I2(tw_nz_1d),
        .I3(sc_arbr[2]),
        .O(\mu_do_re[3]_i_7__0_n_0 ));
  LUT4 #(
    .INIT(16'hAC5C)) 
    \mu_do_re[3]_i_8__0 
       (.I0(sc_aibi[1]),
        .I1(Q[1]),
        .I2(tw_nz_1d),
        .I3(sc_arbr[1]),
        .O(\mu_do_re[3]_i_8__0_n_0 ));
  LUT4 #(
    .INIT(16'hAC5C)) 
    \mu_do_re[3]_i_9__0 
       (.I0(sc_aibi[0]),
        .I1(Q[0]),
        .I2(tw_nz_1d),
        .I3(sc_arbr[0]),
        .O(\mu_do_re[3]_i_9__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mu_do_re[7]_i_2__0 
       (.I0(tw_nz_1d),
        .I1(sc_aibi[7]),
        .O(\mu_do_re[7]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mu_do_re[7]_i_3__0 
       (.I0(tw_nz_1d),
        .I1(sc_aibi[6]),
        .O(\mu_do_re[7]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mu_do_re[7]_i_4__0 
       (.I0(tw_nz_1d),
        .I1(sc_aibi[5]),
        .O(\mu_do_re[7]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mu_do_re[7]_i_5__0 
       (.I0(tw_nz_1d),
        .I1(sc_aibi[4]),
        .O(\mu_do_re[7]_i_5__0_n_0 ));
  LUT4 #(
    .INIT(16'hAC5C)) 
    \mu_do_re[7]_i_6__0 
       (.I0(sc_aibi[7]),
        .I1(Q[7]),
        .I2(tw_nz_1d),
        .I3(sc_arbr[7]),
        .O(\mu_do_re[7]_i_6__0_n_0 ));
  LUT4 #(
    .INIT(16'hAC5C)) 
    \mu_do_re[7]_i_7__0 
       (.I0(sc_aibi[6]),
        .I1(Q[6]),
        .I2(tw_nz_1d),
        .I3(sc_arbr[6]),
        .O(\mu_do_re[7]_i_7__0_n_0 ));
  LUT4 #(
    .INIT(16'hAC5C)) 
    \mu_do_re[7]_i_8__0 
       (.I0(sc_aibi[5]),
        .I1(Q[5]),
        .I2(tw_nz_1d),
        .I3(sc_arbr[5]),
        .O(\mu_do_re[7]_i_8__0_n_0 ));
  LUT4 #(
    .INIT(16'hAC5C)) 
    \mu_do_re[7]_i_9__0 
       (.I0(sc_aibi[4]),
        .I1(Q[4]),
        .I2(tw_nz_1d),
        .I3(sc_arbr[4]),
        .O(\mu_do_re[7]_i_9__0_n_0 ));
  CARRY4 \mu_do_re_reg[11]_i_1__0 
       (.CI(\mu_do_re_reg[7]_i_1__0_n_0 ),
        .CO({\mu_do_re_reg[11]_i_1__0_n_0 ,\mu_do_re_reg[11]_i_1__0_n_1 ,\mu_do_re_reg[11]_i_1__0_n_2 ,\mu_do_re_reg[11]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\mu_do_re[11]_i_2__0_n_0 ,\mu_do_re[11]_i_3__0_n_0 ,\mu_do_re[11]_i_4__0_n_0 ,\mu_do_re[11]_i_5__0_n_0 }),
        .O(out[11:8]),
        .S({\mu_do_re[11]_i_6__0_n_0 ,\mu_do_re[11]_i_7__0_n_0 ,\mu_do_re[11]_i_8__0_n_0 ,\mu_do_re[11]_i_9__0_n_0 }));
  CARRY4 \mu_do_re_reg[15]_i_1__0 
       (.CI(\mu_do_re_reg[11]_i_1__0_n_0 ),
        .CO({\NLW_mu_do_re_reg[15]_i_1__0_CO_UNCONNECTED [3],\mu_do_re_reg[15]_i_1__0_n_1 ,\mu_do_re_reg[15]_i_1__0_n_2 ,\mu_do_re_reg[15]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\mu_do_re[15]_i_2__0_n_0 ,\mu_do_re[15]_i_3__0_n_0 ,\mu_do_re[15]_i_4__0_n_0 }),
        .O(out[15:12]),
        .S({\mu_do_re[15]_i_5__0_n_0 ,\mu_do_re[15]_i_6__0_n_0 ,\mu_do_re[15]_i_7__0_n_0 ,\mu_do_re[15]_i_8__0_n_0 }));
  CARRY4 \mu_do_re_reg[3]_i_1__0 
       (.CI(1'b0),
        .CO({\mu_do_re_reg[3]_i_1__0_n_0 ,\mu_do_re_reg[3]_i_1__0_n_1 ,\mu_do_re_reg[3]_i_1__0_n_2 ,\mu_do_re_reg[3]_i_1__0_n_3 }),
        .CYINIT(tw_nz_1d),
        .DI({\mu_do_re[3]_i_2__0_n_0 ,\mu_do_re[3]_i_3__0_n_0 ,\mu_do_re[3]_i_4__0_n_0 ,\mu_do_re[3]_i_5__0_n_0 }),
        .O(out[3:0]),
        .S({\mu_do_re[3]_i_6__0_n_0 ,\mu_do_re[3]_i_7__0_n_0 ,\mu_do_re[3]_i_8__0_n_0 ,\mu_do_re[3]_i_9__0_n_0 }));
  CARRY4 \mu_do_re_reg[7]_i_1__0 
       (.CI(\mu_do_re_reg[3]_i_1__0_n_0 ),
        .CO({\mu_do_re_reg[7]_i_1__0_n_0 ,\mu_do_re_reg[7]_i_1__0_n_1 ,\mu_do_re_reg[7]_i_1__0_n_2 ,\mu_do_re_reg[7]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\mu_do_re[7]_i_2__0_n_0 ,\mu_do_re[7]_i_3__0_n_0 ,\mu_do_re[7]_i_4__0_n_0 ,\mu_do_re[7]_i_5__0_n_0 }),
        .O(out[7:4]),
        .S({\mu_do_re[7]_i_6__0_n_0 ,\mu_do_re[7]_i_7__0_n_0 ,\mu_do_re[7]_i_8__0_n_0 ,\mu_do_re[7]_i_9__0_n_0 }));
endmodule

(* ORIG_REF_NAME = "Multiply" *) 
module system_fft128_0_0_Multiply_7
   (out,
    aibr_0,
    clock,
    B,
    A,
    aibi_0,
    aibi_1,
    tw_nz_1d,
    Q,
    \mu_do_im_reg[15] );
  output [15:0]out;
  output [15:0]aibr_0;
  input clock;
  input [15:0]B;
  input [15:0]A;
  input [15:0]aibi_0;
  input [15:0]aibi_1;
  input tw_nz_1d;
  input [15:0]Q;
  input [15:0]\mu_do_im_reg[15] ;

  wire [15:0]A;
  wire [15:0]B;
  wire [15:0]Q;
  wire [15:0]aibi_0;
  wire [15:0]aibi_1;
  wire aibi_n_100;
  wire aibi_n_101;
  wire aibi_n_102;
  wire aibi_n_103;
  wire aibi_n_104;
  wire aibi_n_105;
  wire aibi_n_74;
  wire aibi_n_91;
  wire aibi_n_92;
  wire aibi_n_93;
  wire aibi_n_94;
  wire aibi_n_95;
  wire aibi_n_96;
  wire aibi_n_97;
  wire aibi_n_98;
  wire aibi_n_99;
  wire [15:0]aibr_0;
  wire aibr_n_100;
  wire aibr_n_101;
  wire aibr_n_102;
  wire aibr_n_103;
  wire aibr_n_104;
  wire aibr_n_105;
  wire aibr_n_74;
  wire aibr_n_91;
  wire aibr_n_92;
  wire aibr_n_93;
  wire aibr_n_94;
  wire aibr_n_95;
  wire aibr_n_96;
  wire aibr_n_97;
  wire aibr_n_98;
  wire aibr_n_99;
  wire arbi_n_100;
  wire arbi_n_101;
  wire arbi_n_102;
  wire arbi_n_103;
  wire arbi_n_104;
  wire arbi_n_105;
  wire arbi_n_74;
  wire arbi_n_91;
  wire arbi_n_92;
  wire arbi_n_93;
  wire arbi_n_94;
  wire arbi_n_95;
  wire arbi_n_96;
  wire arbi_n_97;
  wire arbi_n_98;
  wire arbi_n_99;
  wire arbr_n_100;
  wire arbr_n_101;
  wire arbr_n_102;
  wire arbr_n_103;
  wire arbr_n_104;
  wire arbr_n_105;
  wire arbr_n_74;
  wire arbr_n_91;
  wire arbr_n_92;
  wire arbr_n_93;
  wire arbr_n_94;
  wire arbr_n_95;
  wire arbr_n_96;
  wire arbr_n_97;
  wire arbr_n_98;
  wire arbr_n_99;
  wire clock;
  wire \mu_do_im[11]_i_2_n_0 ;
  wire \mu_do_im[11]_i_3_n_0 ;
  wire \mu_do_im[11]_i_4_n_0 ;
  wire \mu_do_im[11]_i_5_n_0 ;
  wire \mu_do_im[11]_i_6_n_0 ;
  wire \mu_do_im[11]_i_7_n_0 ;
  wire \mu_do_im[11]_i_8_n_0 ;
  wire \mu_do_im[11]_i_9_n_0 ;
  wire \mu_do_im[15]_i_2_n_0 ;
  wire \mu_do_im[15]_i_3_n_0 ;
  wire \mu_do_im[15]_i_4_n_0 ;
  wire \mu_do_im[15]_i_5_n_0 ;
  wire \mu_do_im[15]_i_6_n_0 ;
  wire \mu_do_im[15]_i_7_n_0 ;
  wire \mu_do_im[15]_i_8_n_0 ;
  wire \mu_do_im[3]_i_2_n_0 ;
  wire \mu_do_im[3]_i_3_n_0 ;
  wire \mu_do_im[3]_i_4_n_0 ;
  wire \mu_do_im[3]_i_5_n_0 ;
  wire \mu_do_im[3]_i_6_n_0 ;
  wire \mu_do_im[3]_i_7_n_0 ;
  wire \mu_do_im[3]_i_8_n_0 ;
  wire \mu_do_im[3]_i_9_n_0 ;
  wire \mu_do_im[7]_i_2_n_0 ;
  wire \mu_do_im[7]_i_3_n_0 ;
  wire \mu_do_im[7]_i_4_n_0 ;
  wire \mu_do_im[7]_i_5_n_0 ;
  wire \mu_do_im[7]_i_6_n_0 ;
  wire \mu_do_im[7]_i_7_n_0 ;
  wire \mu_do_im[7]_i_8_n_0 ;
  wire \mu_do_im[7]_i_9_n_0 ;
  wire \mu_do_im_reg[11]_i_1_n_0 ;
  wire \mu_do_im_reg[11]_i_1_n_1 ;
  wire \mu_do_im_reg[11]_i_1_n_2 ;
  wire \mu_do_im_reg[11]_i_1_n_3 ;
  wire [15:0]\mu_do_im_reg[15] ;
  wire \mu_do_im_reg[15]_i_1_n_1 ;
  wire \mu_do_im_reg[15]_i_1_n_2 ;
  wire \mu_do_im_reg[15]_i_1_n_3 ;
  wire \mu_do_im_reg[3]_i_1_n_0 ;
  wire \mu_do_im_reg[3]_i_1_n_1 ;
  wire \mu_do_im_reg[3]_i_1_n_2 ;
  wire \mu_do_im_reg[3]_i_1_n_3 ;
  wire \mu_do_im_reg[7]_i_1_n_0 ;
  wire \mu_do_im_reg[7]_i_1_n_1 ;
  wire \mu_do_im_reg[7]_i_1_n_2 ;
  wire \mu_do_im_reg[7]_i_1_n_3 ;
  wire \mu_do_re[11]_i_2_n_0 ;
  wire \mu_do_re[11]_i_3_n_0 ;
  wire \mu_do_re[11]_i_4_n_0 ;
  wire \mu_do_re[11]_i_5_n_0 ;
  wire \mu_do_re[11]_i_6_n_0 ;
  wire \mu_do_re[11]_i_7_n_0 ;
  wire \mu_do_re[11]_i_8_n_0 ;
  wire \mu_do_re[11]_i_9_n_0 ;
  wire \mu_do_re[15]_i_2_n_0 ;
  wire \mu_do_re[15]_i_3_n_0 ;
  wire \mu_do_re[15]_i_4_n_0 ;
  wire \mu_do_re[15]_i_5_n_0 ;
  wire \mu_do_re[15]_i_6_n_0 ;
  wire \mu_do_re[15]_i_7_n_0 ;
  wire \mu_do_re[15]_i_8_n_0 ;
  wire \mu_do_re[3]_i_2_n_0 ;
  wire \mu_do_re[3]_i_3_n_0 ;
  wire \mu_do_re[3]_i_4_n_0 ;
  wire \mu_do_re[3]_i_5_n_0 ;
  wire \mu_do_re[3]_i_6_n_0 ;
  wire \mu_do_re[3]_i_7_n_0 ;
  wire \mu_do_re[3]_i_8_n_0 ;
  wire \mu_do_re[3]_i_9_n_0 ;
  wire \mu_do_re[7]_i_2_n_0 ;
  wire \mu_do_re[7]_i_3_n_0 ;
  wire \mu_do_re[7]_i_4_n_0 ;
  wire \mu_do_re[7]_i_5_n_0 ;
  wire \mu_do_re[7]_i_6_n_0 ;
  wire \mu_do_re[7]_i_7_n_0 ;
  wire \mu_do_re[7]_i_8_n_0 ;
  wire \mu_do_re[7]_i_9_n_0 ;
  wire \mu_do_re_reg[11]_i_1_n_0 ;
  wire \mu_do_re_reg[11]_i_1_n_1 ;
  wire \mu_do_re_reg[11]_i_1_n_2 ;
  wire \mu_do_re_reg[11]_i_1_n_3 ;
  wire \mu_do_re_reg[15]_i_1_n_1 ;
  wire \mu_do_re_reg[15]_i_1_n_2 ;
  wire \mu_do_re_reg[15]_i_1_n_3 ;
  wire \mu_do_re_reg[3]_i_1_n_0 ;
  wire \mu_do_re_reg[3]_i_1_n_1 ;
  wire \mu_do_re_reg[3]_i_1_n_2 ;
  wire \mu_do_re_reg[3]_i_1_n_3 ;
  wire \mu_do_re_reg[7]_i_1_n_0 ;
  wire \mu_do_re_reg[7]_i_1_n_1 ;
  wire \mu_do_re_reg[7]_i_1_n_2 ;
  wire \mu_do_re_reg[7]_i_1_n_3 ;
  wire [15:0]out;
  wire [15:0]sc_aibi;
  wire [15:0]sc_aibr;
  wire [15:0]sc_arbi;
  wire [15:0]sc_arbr;
  wire tw_nz_1d;
  wire NLW_aibi_CARRYCASCOUT_UNCONNECTED;
  wire NLW_aibi_MULTSIGNOUT_UNCONNECTED;
  wire NLW_aibi_OVERFLOW_UNCONNECTED;
  wire NLW_aibi_PATTERNBDETECT_UNCONNECTED;
  wire NLW_aibi_PATTERNDETECT_UNCONNECTED;
  wire NLW_aibi_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_aibi_ACOUT_UNCONNECTED;
  wire [17:0]NLW_aibi_BCOUT_UNCONNECTED;
  wire [3:0]NLW_aibi_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_aibi_P_UNCONNECTED;
  wire [47:0]NLW_aibi_PCOUT_UNCONNECTED;
  wire NLW_aibr_CARRYCASCOUT_UNCONNECTED;
  wire NLW_aibr_MULTSIGNOUT_UNCONNECTED;
  wire NLW_aibr_OVERFLOW_UNCONNECTED;
  wire NLW_aibr_PATTERNBDETECT_UNCONNECTED;
  wire NLW_aibr_PATTERNDETECT_UNCONNECTED;
  wire NLW_aibr_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_aibr_ACOUT_UNCONNECTED;
  wire [17:0]NLW_aibr_BCOUT_UNCONNECTED;
  wire [3:0]NLW_aibr_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_aibr_P_UNCONNECTED;
  wire [47:0]NLW_aibr_PCOUT_UNCONNECTED;
  wire NLW_arbi_CARRYCASCOUT_UNCONNECTED;
  wire NLW_arbi_MULTSIGNOUT_UNCONNECTED;
  wire NLW_arbi_OVERFLOW_UNCONNECTED;
  wire NLW_arbi_PATTERNBDETECT_UNCONNECTED;
  wire NLW_arbi_PATTERNDETECT_UNCONNECTED;
  wire NLW_arbi_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_arbi_ACOUT_UNCONNECTED;
  wire [17:0]NLW_arbi_BCOUT_UNCONNECTED;
  wire [3:0]NLW_arbi_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_arbi_P_UNCONNECTED;
  wire [47:0]NLW_arbi_PCOUT_UNCONNECTED;
  wire NLW_arbr_CARRYCASCOUT_UNCONNECTED;
  wire NLW_arbr_MULTSIGNOUT_UNCONNECTED;
  wire NLW_arbr_OVERFLOW_UNCONNECTED;
  wire NLW_arbr_PATTERNBDETECT_UNCONNECTED;
  wire NLW_arbr_PATTERNDETECT_UNCONNECTED;
  wire NLW_arbr_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_arbr_ACOUT_UNCONNECTED;
  wire [17:0]NLW_arbr_BCOUT_UNCONNECTED;
  wire [3:0]NLW_arbr_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_arbr_P_UNCONNECTED;
  wire [47:0]NLW_arbr_PCOUT_UNCONNECTED;
  wire [3:3]\NLW_mu_do_im_reg[15]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_mu_do_re_reg[15]_i_1_CO_UNCONNECTED ;

  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    aibi
       (.A({aibi_1[15],aibi_1[15],aibi_1[15],aibi_1[15],aibi_1[15],aibi_1[15],aibi_1[15],aibi_1[15],aibi_1[15],aibi_1[15],aibi_1[15],aibi_1[15],aibi_1[15],aibi_1[15],aibi_1}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_aibi_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({aibi_0[15],aibi_0[15],aibi_0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_aibi_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_aibi_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_aibi_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b1),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clock),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_aibi_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_aibi_OVERFLOW_UNCONNECTED),
        .P({NLW_aibi_P_UNCONNECTED[47:32],aibi_n_74,sc_aibi,aibi_n_91,aibi_n_92,aibi_n_93,aibi_n_94,aibi_n_95,aibi_n_96,aibi_n_97,aibi_n_98,aibi_n_99,aibi_n_100,aibi_n_101,aibi_n_102,aibi_n_103,aibi_n_104,aibi_n_105}),
        .PATTERNBDETECT(NLW_aibi_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_aibi_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_aibi_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_aibi_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    aibr
       (.A({aibi_1[15],aibi_1[15],aibi_1[15],aibi_1[15],aibi_1[15],aibi_1[15],aibi_1[15],aibi_1[15],aibi_1[15],aibi_1[15],aibi_1[15],aibi_1[15],aibi_1[15],aibi_1[15],aibi_1}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_aibr_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({B[15],B[15],B}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_aibr_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_aibr_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_aibr_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b1),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clock),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_aibr_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_aibr_OVERFLOW_UNCONNECTED),
        .P({NLW_aibr_P_UNCONNECTED[47:32],aibr_n_74,sc_aibr,aibr_n_91,aibr_n_92,aibr_n_93,aibr_n_94,aibr_n_95,aibr_n_96,aibr_n_97,aibr_n_98,aibr_n_99,aibr_n_100,aibr_n_101,aibr_n_102,aibr_n_103,aibr_n_104,aibr_n_105}),
        .PATTERNBDETECT(NLW_aibr_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_aibr_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_aibr_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_aibr_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    arbi
       (.A({A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_arbi_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({aibi_0[15],aibi_0[15],aibi_0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_arbi_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_arbi_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_arbi_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b1),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clock),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_arbi_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_arbi_OVERFLOW_UNCONNECTED),
        .P({NLW_arbi_P_UNCONNECTED[47:32],arbi_n_74,sc_arbi,arbi_n_91,arbi_n_92,arbi_n_93,arbi_n_94,arbi_n_95,arbi_n_96,arbi_n_97,arbi_n_98,arbi_n_99,arbi_n_100,arbi_n_101,arbi_n_102,arbi_n_103,arbi_n_104,arbi_n_105}),
        .PATTERNBDETECT(NLW_arbi_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_arbi_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_arbi_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_arbi_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    arbr
       (.A({A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_arbr_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({B[15],B[15],B}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_arbr_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_arbr_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_arbr_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b1),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clock),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_arbr_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_arbr_OVERFLOW_UNCONNECTED),
        .P({NLW_arbr_P_UNCONNECTED[47:32],arbr_n_74,sc_arbr,arbr_n_91,arbr_n_92,arbr_n_93,arbr_n_94,arbr_n_95,arbr_n_96,arbr_n_97,arbr_n_98,arbr_n_99,arbr_n_100,arbr_n_101,arbr_n_102,arbr_n_103,arbr_n_104,arbr_n_105}),
        .PATTERNBDETECT(NLW_arbr_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_arbr_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_arbr_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_arbr_UNDERFLOW_UNCONNECTED));
  LUT2 #(
    .INIT(4'h8)) 
    \mu_do_im[11]_i_2 
       (.I0(sc_aibr[11]),
        .I1(tw_nz_1d),
        .O(\mu_do_im[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \mu_do_im[11]_i_3 
       (.I0(sc_aibr[10]),
        .I1(tw_nz_1d),
        .O(\mu_do_im[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \mu_do_im[11]_i_4 
       (.I0(sc_aibr[9]),
        .I1(tw_nz_1d),
        .O(\mu_do_im[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \mu_do_im[11]_i_5 
       (.I0(sc_aibr[8]),
        .I1(tw_nz_1d),
        .O(\mu_do_im[11]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \mu_do_im[11]_i_6 
       (.I0(sc_aibr[11]),
        .I1(\mu_do_im_reg[15] [11]),
        .I2(tw_nz_1d),
        .I3(sc_arbi[11]),
        .O(\mu_do_im[11]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \mu_do_im[11]_i_7 
       (.I0(sc_aibr[10]),
        .I1(\mu_do_im_reg[15] [10]),
        .I2(tw_nz_1d),
        .I3(sc_arbi[10]),
        .O(\mu_do_im[11]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \mu_do_im[11]_i_8 
       (.I0(sc_aibr[9]),
        .I1(\mu_do_im_reg[15] [9]),
        .I2(tw_nz_1d),
        .I3(sc_arbi[9]),
        .O(\mu_do_im[11]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \mu_do_im[11]_i_9 
       (.I0(sc_aibr[8]),
        .I1(\mu_do_im_reg[15] [8]),
        .I2(tw_nz_1d),
        .I3(sc_arbi[8]),
        .O(\mu_do_im[11]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \mu_do_im[15]_i_2 
       (.I0(sc_aibr[14]),
        .I1(tw_nz_1d),
        .O(\mu_do_im[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \mu_do_im[15]_i_3 
       (.I0(sc_aibr[13]),
        .I1(tw_nz_1d),
        .O(\mu_do_im[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \mu_do_im[15]_i_4 
       (.I0(sc_aibr[12]),
        .I1(tw_nz_1d),
        .O(\mu_do_im[15]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \mu_do_im[15]_i_5 
       (.I0(sc_aibr[15]),
        .I1(\mu_do_im_reg[15] [15]),
        .I2(tw_nz_1d),
        .I3(sc_arbi[15]),
        .O(\mu_do_im[15]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \mu_do_im[15]_i_6 
       (.I0(sc_aibr[14]),
        .I1(\mu_do_im_reg[15] [14]),
        .I2(tw_nz_1d),
        .I3(sc_arbi[14]),
        .O(\mu_do_im[15]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \mu_do_im[15]_i_7 
       (.I0(sc_aibr[13]),
        .I1(\mu_do_im_reg[15] [13]),
        .I2(tw_nz_1d),
        .I3(sc_arbi[13]),
        .O(\mu_do_im[15]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \mu_do_im[15]_i_8 
       (.I0(sc_aibr[12]),
        .I1(\mu_do_im_reg[15] [12]),
        .I2(tw_nz_1d),
        .I3(sc_arbi[12]),
        .O(\mu_do_im[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \mu_do_im[3]_i_2 
       (.I0(sc_aibr[3]),
        .I1(tw_nz_1d),
        .O(\mu_do_im[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \mu_do_im[3]_i_3 
       (.I0(sc_aibr[2]),
        .I1(tw_nz_1d),
        .O(\mu_do_im[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \mu_do_im[3]_i_4 
       (.I0(sc_aibr[1]),
        .I1(tw_nz_1d),
        .O(\mu_do_im[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \mu_do_im[3]_i_5 
       (.I0(sc_aibr[0]),
        .I1(tw_nz_1d),
        .O(\mu_do_im[3]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \mu_do_im[3]_i_6 
       (.I0(sc_aibr[3]),
        .I1(\mu_do_im_reg[15] [3]),
        .I2(tw_nz_1d),
        .I3(sc_arbi[3]),
        .O(\mu_do_im[3]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \mu_do_im[3]_i_7 
       (.I0(sc_aibr[2]),
        .I1(\mu_do_im_reg[15] [2]),
        .I2(tw_nz_1d),
        .I3(sc_arbi[2]),
        .O(\mu_do_im[3]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \mu_do_im[3]_i_8 
       (.I0(sc_aibr[1]),
        .I1(\mu_do_im_reg[15] [1]),
        .I2(tw_nz_1d),
        .I3(sc_arbi[1]),
        .O(\mu_do_im[3]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \mu_do_im[3]_i_9 
       (.I0(sc_aibr[0]),
        .I1(\mu_do_im_reg[15] [0]),
        .I2(tw_nz_1d),
        .I3(sc_arbi[0]),
        .O(\mu_do_im[3]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \mu_do_im[7]_i_2 
       (.I0(sc_aibr[7]),
        .I1(tw_nz_1d),
        .O(\mu_do_im[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \mu_do_im[7]_i_3 
       (.I0(sc_aibr[6]),
        .I1(tw_nz_1d),
        .O(\mu_do_im[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \mu_do_im[7]_i_4 
       (.I0(sc_aibr[5]),
        .I1(tw_nz_1d),
        .O(\mu_do_im[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \mu_do_im[7]_i_5 
       (.I0(sc_aibr[4]),
        .I1(tw_nz_1d),
        .O(\mu_do_im[7]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \mu_do_im[7]_i_6 
       (.I0(sc_aibr[7]),
        .I1(\mu_do_im_reg[15] [7]),
        .I2(tw_nz_1d),
        .I3(sc_arbi[7]),
        .O(\mu_do_im[7]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \mu_do_im[7]_i_7 
       (.I0(sc_aibr[6]),
        .I1(\mu_do_im_reg[15] [6]),
        .I2(tw_nz_1d),
        .I3(sc_arbi[6]),
        .O(\mu_do_im[7]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \mu_do_im[7]_i_8 
       (.I0(sc_aibr[5]),
        .I1(\mu_do_im_reg[15] [5]),
        .I2(tw_nz_1d),
        .I3(sc_arbi[5]),
        .O(\mu_do_im[7]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \mu_do_im[7]_i_9 
       (.I0(sc_aibr[4]),
        .I1(\mu_do_im_reg[15] [4]),
        .I2(tw_nz_1d),
        .I3(sc_arbi[4]),
        .O(\mu_do_im[7]_i_9_n_0 ));
  CARRY4 \mu_do_im_reg[11]_i_1 
       (.CI(\mu_do_im_reg[7]_i_1_n_0 ),
        .CO({\mu_do_im_reg[11]_i_1_n_0 ,\mu_do_im_reg[11]_i_1_n_1 ,\mu_do_im_reg[11]_i_1_n_2 ,\mu_do_im_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\mu_do_im[11]_i_2_n_0 ,\mu_do_im[11]_i_3_n_0 ,\mu_do_im[11]_i_4_n_0 ,\mu_do_im[11]_i_5_n_0 }),
        .O(aibr_0[11:8]),
        .S({\mu_do_im[11]_i_6_n_0 ,\mu_do_im[11]_i_7_n_0 ,\mu_do_im[11]_i_8_n_0 ,\mu_do_im[11]_i_9_n_0 }));
  CARRY4 \mu_do_im_reg[15]_i_1 
       (.CI(\mu_do_im_reg[11]_i_1_n_0 ),
        .CO({\NLW_mu_do_im_reg[15]_i_1_CO_UNCONNECTED [3],\mu_do_im_reg[15]_i_1_n_1 ,\mu_do_im_reg[15]_i_1_n_2 ,\mu_do_im_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\mu_do_im[15]_i_2_n_0 ,\mu_do_im[15]_i_3_n_0 ,\mu_do_im[15]_i_4_n_0 }),
        .O(aibr_0[15:12]),
        .S({\mu_do_im[15]_i_5_n_0 ,\mu_do_im[15]_i_6_n_0 ,\mu_do_im[15]_i_7_n_0 ,\mu_do_im[15]_i_8_n_0 }));
  CARRY4 \mu_do_im_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\mu_do_im_reg[3]_i_1_n_0 ,\mu_do_im_reg[3]_i_1_n_1 ,\mu_do_im_reg[3]_i_1_n_2 ,\mu_do_im_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\mu_do_im[3]_i_2_n_0 ,\mu_do_im[3]_i_3_n_0 ,\mu_do_im[3]_i_4_n_0 ,\mu_do_im[3]_i_5_n_0 }),
        .O(aibr_0[3:0]),
        .S({\mu_do_im[3]_i_6_n_0 ,\mu_do_im[3]_i_7_n_0 ,\mu_do_im[3]_i_8_n_0 ,\mu_do_im[3]_i_9_n_0 }));
  CARRY4 \mu_do_im_reg[7]_i_1 
       (.CI(\mu_do_im_reg[3]_i_1_n_0 ),
        .CO({\mu_do_im_reg[7]_i_1_n_0 ,\mu_do_im_reg[7]_i_1_n_1 ,\mu_do_im_reg[7]_i_1_n_2 ,\mu_do_im_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\mu_do_im[7]_i_2_n_0 ,\mu_do_im[7]_i_3_n_0 ,\mu_do_im[7]_i_4_n_0 ,\mu_do_im[7]_i_5_n_0 }),
        .O(aibr_0[7:4]),
        .S({\mu_do_im[7]_i_6_n_0 ,\mu_do_im[7]_i_7_n_0 ,\mu_do_im[7]_i_8_n_0 ,\mu_do_im[7]_i_9_n_0 }));
  LUT2 #(
    .INIT(4'h2)) 
    \mu_do_re[11]_i_2 
       (.I0(tw_nz_1d),
        .I1(sc_aibi[11]),
        .O(\mu_do_re[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mu_do_re[11]_i_3 
       (.I0(tw_nz_1d),
        .I1(sc_aibi[10]),
        .O(\mu_do_re[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mu_do_re[11]_i_4 
       (.I0(tw_nz_1d),
        .I1(sc_aibi[9]),
        .O(\mu_do_re[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mu_do_re[11]_i_5 
       (.I0(tw_nz_1d),
        .I1(sc_aibi[8]),
        .O(\mu_do_re[11]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hAC5C)) 
    \mu_do_re[11]_i_6 
       (.I0(sc_aibi[11]),
        .I1(Q[11]),
        .I2(tw_nz_1d),
        .I3(sc_arbr[11]),
        .O(\mu_do_re[11]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hAC5C)) 
    \mu_do_re[11]_i_7 
       (.I0(sc_aibi[10]),
        .I1(Q[10]),
        .I2(tw_nz_1d),
        .I3(sc_arbr[10]),
        .O(\mu_do_re[11]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hAC5C)) 
    \mu_do_re[11]_i_8 
       (.I0(sc_aibi[9]),
        .I1(Q[9]),
        .I2(tw_nz_1d),
        .I3(sc_arbr[9]),
        .O(\mu_do_re[11]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hAC5C)) 
    \mu_do_re[11]_i_9 
       (.I0(sc_aibi[8]),
        .I1(Q[8]),
        .I2(tw_nz_1d),
        .I3(sc_arbr[8]),
        .O(\mu_do_re[11]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mu_do_re[15]_i_2 
       (.I0(tw_nz_1d),
        .I1(sc_aibi[14]),
        .O(\mu_do_re[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mu_do_re[15]_i_3 
       (.I0(tw_nz_1d),
        .I1(sc_aibi[13]),
        .O(\mu_do_re[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mu_do_re[15]_i_4 
       (.I0(tw_nz_1d),
        .I1(sc_aibi[12]),
        .O(\mu_do_re[15]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hAC5C)) 
    \mu_do_re[15]_i_5 
       (.I0(sc_aibi[15]),
        .I1(Q[15]),
        .I2(tw_nz_1d),
        .I3(sc_arbr[15]),
        .O(\mu_do_re[15]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hAC5C)) 
    \mu_do_re[15]_i_6 
       (.I0(sc_aibi[14]),
        .I1(Q[14]),
        .I2(tw_nz_1d),
        .I3(sc_arbr[14]),
        .O(\mu_do_re[15]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hAC5C)) 
    \mu_do_re[15]_i_7 
       (.I0(sc_aibi[13]),
        .I1(Q[13]),
        .I2(tw_nz_1d),
        .I3(sc_arbr[13]),
        .O(\mu_do_re[15]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hAC5C)) 
    \mu_do_re[15]_i_8 
       (.I0(sc_aibi[12]),
        .I1(Q[12]),
        .I2(tw_nz_1d),
        .I3(sc_arbr[12]),
        .O(\mu_do_re[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mu_do_re[3]_i_2 
       (.I0(tw_nz_1d),
        .I1(sc_aibi[3]),
        .O(\mu_do_re[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mu_do_re[3]_i_3 
       (.I0(tw_nz_1d),
        .I1(sc_aibi[2]),
        .O(\mu_do_re[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mu_do_re[3]_i_4 
       (.I0(tw_nz_1d),
        .I1(sc_aibi[1]),
        .O(\mu_do_re[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mu_do_re[3]_i_5 
       (.I0(tw_nz_1d),
        .I1(sc_aibi[0]),
        .O(\mu_do_re[3]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hAC5C)) 
    \mu_do_re[3]_i_6 
       (.I0(sc_aibi[3]),
        .I1(Q[3]),
        .I2(tw_nz_1d),
        .I3(sc_arbr[3]),
        .O(\mu_do_re[3]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hAC5C)) 
    \mu_do_re[3]_i_7 
       (.I0(sc_aibi[2]),
        .I1(Q[2]),
        .I2(tw_nz_1d),
        .I3(sc_arbr[2]),
        .O(\mu_do_re[3]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hAC5C)) 
    \mu_do_re[3]_i_8 
       (.I0(sc_aibi[1]),
        .I1(Q[1]),
        .I2(tw_nz_1d),
        .I3(sc_arbr[1]),
        .O(\mu_do_re[3]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hAC5C)) 
    \mu_do_re[3]_i_9 
       (.I0(sc_aibi[0]),
        .I1(Q[0]),
        .I2(tw_nz_1d),
        .I3(sc_arbr[0]),
        .O(\mu_do_re[3]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mu_do_re[7]_i_2 
       (.I0(tw_nz_1d),
        .I1(sc_aibi[7]),
        .O(\mu_do_re[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mu_do_re[7]_i_3 
       (.I0(tw_nz_1d),
        .I1(sc_aibi[6]),
        .O(\mu_do_re[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mu_do_re[7]_i_4 
       (.I0(tw_nz_1d),
        .I1(sc_aibi[5]),
        .O(\mu_do_re[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mu_do_re[7]_i_5 
       (.I0(tw_nz_1d),
        .I1(sc_aibi[4]),
        .O(\mu_do_re[7]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hAC5C)) 
    \mu_do_re[7]_i_6 
       (.I0(sc_aibi[7]),
        .I1(Q[7]),
        .I2(tw_nz_1d),
        .I3(sc_arbr[7]),
        .O(\mu_do_re[7]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hAC5C)) 
    \mu_do_re[7]_i_7 
       (.I0(sc_aibi[6]),
        .I1(Q[6]),
        .I2(tw_nz_1d),
        .I3(sc_arbr[6]),
        .O(\mu_do_re[7]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hAC5C)) 
    \mu_do_re[7]_i_8 
       (.I0(sc_aibi[5]),
        .I1(Q[5]),
        .I2(tw_nz_1d),
        .I3(sc_arbr[5]),
        .O(\mu_do_re[7]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hAC5C)) 
    \mu_do_re[7]_i_9 
       (.I0(sc_aibi[4]),
        .I1(Q[4]),
        .I2(tw_nz_1d),
        .I3(sc_arbr[4]),
        .O(\mu_do_re[7]_i_9_n_0 ));
  CARRY4 \mu_do_re_reg[11]_i_1 
       (.CI(\mu_do_re_reg[7]_i_1_n_0 ),
        .CO({\mu_do_re_reg[11]_i_1_n_0 ,\mu_do_re_reg[11]_i_1_n_1 ,\mu_do_re_reg[11]_i_1_n_2 ,\mu_do_re_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\mu_do_re[11]_i_2_n_0 ,\mu_do_re[11]_i_3_n_0 ,\mu_do_re[11]_i_4_n_0 ,\mu_do_re[11]_i_5_n_0 }),
        .O(out[11:8]),
        .S({\mu_do_re[11]_i_6_n_0 ,\mu_do_re[11]_i_7_n_0 ,\mu_do_re[11]_i_8_n_0 ,\mu_do_re[11]_i_9_n_0 }));
  CARRY4 \mu_do_re_reg[15]_i_1 
       (.CI(\mu_do_re_reg[11]_i_1_n_0 ),
        .CO({\NLW_mu_do_re_reg[15]_i_1_CO_UNCONNECTED [3],\mu_do_re_reg[15]_i_1_n_1 ,\mu_do_re_reg[15]_i_1_n_2 ,\mu_do_re_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\mu_do_re[15]_i_2_n_0 ,\mu_do_re[15]_i_3_n_0 ,\mu_do_re[15]_i_4_n_0 }),
        .O(out[15:12]),
        .S({\mu_do_re[15]_i_5_n_0 ,\mu_do_re[15]_i_6_n_0 ,\mu_do_re[15]_i_7_n_0 ,\mu_do_re[15]_i_8_n_0 }));
  CARRY4 \mu_do_re_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\mu_do_re_reg[3]_i_1_n_0 ,\mu_do_re_reg[3]_i_1_n_1 ,\mu_do_re_reg[3]_i_1_n_2 ,\mu_do_re_reg[3]_i_1_n_3 }),
        .CYINIT(tw_nz_1d),
        .DI({\mu_do_re[3]_i_2_n_0 ,\mu_do_re[3]_i_3_n_0 ,\mu_do_re[3]_i_4_n_0 ,\mu_do_re[3]_i_5_n_0 }),
        .O(out[3:0]),
        .S({\mu_do_re[3]_i_6_n_0 ,\mu_do_re[3]_i_7_n_0 ,\mu_do_re[3]_i_8_n_0 ,\mu_do_re[3]_i_9_n_0 }));
  CARRY4 \mu_do_re_reg[7]_i_1 
       (.CI(\mu_do_re_reg[3]_i_1_n_0 ),
        .CO({\mu_do_re_reg[7]_i_1_n_0 ,\mu_do_re_reg[7]_i_1_n_1 ,\mu_do_re_reg[7]_i_1_n_2 ,\mu_do_re_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\mu_do_re[7]_i_2_n_0 ,\mu_do_re[7]_i_3_n_0 ,\mu_do_re[7]_i_4_n_0 ,\mu_do_re[7]_i_5_n_0 }),
        .O(out[7:4]),
        .S({\mu_do_re[7]_i_6_n_0 ,\mu_do_re[7]_i_7_n_0 ,\mu_do_re[7]_i_8_n_0 ,\mu_do_re[7]_i_9_n_0 }));
endmodule

(* ORIG_REF_NAME = "SdfUnit" *) 
module system_fft128_0_0_SdfUnit
   (su1_do_en,
    DOBDO,
    ff_im_reg_0,
    S,
    Q,
    \mu_do_re_reg[7]_0 ,
    \mu_do_re_reg[11]_0 ,
    \mu_do_re_reg[15]_0 ,
    \mu_do_im_reg[3]_0 ,
    \mu_do_im_reg[15]_0 ,
    \mu_do_im_reg[7]_0 ,
    \mu_do_im_reg[11]_0 ,
    \mu_do_im_reg[15]_1 ,
    D,
    db1_di_re,
    db1_di_im,
    ff_im_reg_1,
    ff_im_reg_2,
    ff_im_reg_3,
    ff_im_reg_4,
    ff_re_reg_0,
    ff_re_reg_1,
    ff_re_reg_2,
    ff_re_reg_3,
    clock,
    reset,
    ADDRBWRADDR,
    di_re,
    di_im,
    \buf_re_reg[15]_2 ,
    \buf_im_reg[15]_3 ,
    di_en,
    \buf_im_reg[15][11]__0 ,
    O,
    \buf_re_reg[15][14]__0 ,
    \buf_im_reg[15][15]__0 ,
    \buf_im_reg[15][14]__0 );
  output su1_do_en;
  output [15:0]DOBDO;
  output [15:0]ff_im_reg_0;
  output [3:0]S;
  output [15:0]Q;
  output [3:0]\mu_do_re_reg[7]_0 ;
  output [3:0]\mu_do_re_reg[11]_0 ;
  output [3:0]\mu_do_re_reg[15]_0 ;
  output [3:0]\mu_do_im_reg[3]_0 ;
  output [15:0]\mu_do_im_reg[15]_0 ;
  output [3:0]\mu_do_im_reg[7]_0 ;
  output [3:0]\mu_do_im_reg[11]_0 ;
  output [3:0]\mu_do_im_reg[15]_1 ;
  output [0:0]D;
  output [4:0]db1_di_re;
  output [4:0]db1_di_im;
  output [2:0]ff_im_reg_1;
  output [3:0]ff_im_reg_2;
  output [3:0]ff_im_reg_3;
  output [3:0]ff_im_reg_4;
  output [2:0]ff_re_reg_0;
  output [3:0]ff_re_reg_1;
  output [3:0]ff_re_reg_2;
  output [3:0]ff_re_reg_3;
  input clock;
  input reset;
  input [1:0]ADDRBWRADDR;
  input [15:0]di_re;
  input [15:0]di_im;
  input [15:0]\buf_re_reg[15]_2 ;
  input [15:0]\buf_im_reg[15]_3 ;
  input di_en;
  input [1:0]\buf_im_reg[15][11]__0 ;
  input [0:0]O;
  input [3:0]\buf_re_reg[15][14]__0 ;
  input [0:0]\buf_im_reg[15][15]__0 ;
  input [3:0]\buf_im_reg[15][14]__0 ;

  wire [1:0]ADDRBWRADDR;
  wire BF1_n_15;
  wire BF1_n_31;
  wire BF1_n_47;
  wire BF1_n_63;
  wire [0:0]D;
  wire DB1_n_100;
  wire DB1_n_101;
  wire DB1_n_102;
  wire DB1_n_145;
  wire DB1_n_146;
  wire DB1_n_147;
  wire DB1_n_148;
  wire DB1_n_149;
  wire DB1_n_150;
  wire DB1_n_151;
  wire DB1_n_152;
  wire DB1_n_153;
  wire DB1_n_154;
  wire DB1_n_155;
  wire DB1_n_156;
  wire DB1_n_157;
  wire DB1_n_158;
  wire DB1_n_159;
  wire DB1_n_160;
  wire DB1_n_161;
  wire DB1_n_162;
  wire DB1_n_163;
  wire DB1_n_164;
  wire DB1_n_165;
  wire DB1_n_166;
  wire DB1_n_167;
  wire DB1_n_168;
  wire DB1_n_169;
  wire DB1_n_30;
  wire DB1_n_31;
  wire DB1_n_32;
  wire DB1_n_33;
  wire DB1_n_34;
  wire DB1_n_35;
  wire DB1_n_36;
  wire DB1_n_37;
  wire DB1_n_38;
  wire DB1_n_39;
  wire DB1_n_40;
  wire DB1_n_41;
  wire DB1_n_42;
  wire DB1_n_43;
  wire DB1_n_44;
  wire DB1_n_45;
  wire DB1_n_46;
  wire DB1_n_47;
  wire DB1_n_48;
  wire DB1_n_49;
  wire DB1_n_50;
  wire DB1_n_51;
  wire DB1_n_52;
  wire DB1_n_53;
  wire DB1_n_54;
  wire DB1_n_55;
  wire DB1_n_56;
  wire DB1_n_57;
  wire DB1_n_58;
  wire DB1_n_59;
  wire DB1_n_60;
  wire DB1_n_61;
  wire DB1_n_94;
  wire DB1_n_95;
  wire DB1_n_96;
  wire DB1_n_97;
  wire DB1_n_98;
  wire DB1_n_99;
  wire DB2_n_0;
  wire DB2_n_1;
  wire DB2_n_10;
  wire DB2_n_11;
  wire DB2_n_12;
  wire DB2_n_13;
  wire DB2_n_14;
  wire DB2_n_15;
  wire DB2_n_16;
  wire DB2_n_17;
  wire DB2_n_18;
  wire DB2_n_19;
  wire DB2_n_2;
  wire DB2_n_20;
  wire DB2_n_21;
  wire DB2_n_22;
  wire DB2_n_23;
  wire DB2_n_24;
  wire DB2_n_25;
  wire DB2_n_26;
  wire DB2_n_27;
  wire DB2_n_28;
  wire DB2_n_29;
  wire DB2_n_3;
  wire DB2_n_30;
  wire DB2_n_31;
  wire DB2_n_32;
  wire DB2_n_33;
  wire DB2_n_34;
  wire DB2_n_35;
  wire DB2_n_36;
  wire DB2_n_37;
  wire DB2_n_38;
  wire DB2_n_39;
  wire DB2_n_4;
  wire DB2_n_40;
  wire DB2_n_41;
  wire DB2_n_42;
  wire DB2_n_43;
  wire DB2_n_44;
  wire DB2_n_45;
  wire DB2_n_46;
  wire DB2_n_47;
  wire DB2_n_48;
  wire DB2_n_49;
  wire DB2_n_5;
  wire DB2_n_50;
  wire DB2_n_51;
  wire DB2_n_52;
  wire DB2_n_53;
  wire DB2_n_54;
  wire DB2_n_55;
  wire DB2_n_56;
  wire DB2_n_57;
  wire DB2_n_58;
  wire DB2_n_59;
  wire DB2_n_6;
  wire DB2_n_60;
  wire DB2_n_61;
  wire DB2_n_62;
  wire DB2_n_63;
  wire DB2_n_64;
  wire DB2_n_65;
  wire DB2_n_66;
  wire DB2_n_67;
  wire DB2_n_68;
  wire DB2_n_69;
  wire DB2_n_7;
  wire DB2_n_70;
  wire DB2_n_71;
  wire DB2_n_72;
  wire DB2_n_73;
  wire DB2_n_74;
  wire DB2_n_75;
  wire DB2_n_76;
  wire DB2_n_77;
  wire DB2_n_78;
  wire DB2_n_79;
  wire DB2_n_8;
  wire DB2_n_80;
  wire DB2_n_81;
  wire DB2_n_82;
  wire DB2_n_83;
  wire DB2_n_84;
  wire DB2_n_85;
  wire DB2_n_86;
  wire DB2_n_87;
  wire DB2_n_88;
  wire DB2_n_89;
  wire DB2_n_9;
  wire DB2_n_90;
  wire DB2_n_91;
  wire DB2_n_92;
  wire DB2_n_93;
  wire DB2_n_94;
  wire DB2_n_95;
  wire DB2_n_96;
  wire DB2_n_97;
  wire [15:0]DOBDO;
  wire MU_n_0;
  wire MU_n_1;
  wire MU_n_10;
  wire MU_n_11;
  wire MU_n_12;
  wire MU_n_13;
  wire MU_n_14;
  wire MU_n_15;
  wire MU_n_16;
  wire MU_n_17;
  wire MU_n_18;
  wire MU_n_19;
  wire MU_n_2;
  wire MU_n_20;
  wire MU_n_21;
  wire MU_n_22;
  wire MU_n_23;
  wire MU_n_24;
  wire MU_n_25;
  wire MU_n_26;
  wire MU_n_27;
  wire MU_n_28;
  wire MU_n_29;
  wire MU_n_3;
  wire MU_n_30;
  wire MU_n_31;
  wire MU_n_4;
  wire MU_n_5;
  wire MU_n_6;
  wire MU_n_7;
  wire MU_n_8;
  wire MU_n_9;
  wire [0:0]O;
  wire [15:0]Q;
  wire [3:0]S;
  wire TC_n_10;
  wire TC_n_11;
  wire TC_n_12;
  wire TC_n_13;
  wire TC_n_14;
  wire TC_n_15;
  wire TC_n_16;
  wire TC_n_17;
  wire TC_n_2;
  wire TC_n_21;
  wire TC_n_22;
  wire TC_n_23;
  wire TC_n_24;
  wire TC_n_25;
  wire TC_n_26;
  wire TC_n_27;
  wire TC_n_28;
  wire TC_n_29;
  wire TC_n_3;
  wire TC_n_30;
  wire TC_n_31;
  wire TC_n_32;
  wire TC_n_33;
  wire TC_n_34;
  wire TC_n_35;
  wire TC_n_36;
  wire TC_n_37;
  wire TC_n_38;
  wire TC_n_4;
  wire TC_n_5;
  wire TC_n_6;
  wire TC_n_7;
  wire TC_n_8;
  wire TC_n_9;
  wire TW_n_100;
  wire TW_n_101;
  wire TW_n_102;
  wire TW_n_103;
  wire TW_n_104;
  wire TW_n_105;
  wire TW_n_106;
  wire TW_n_107;
  wire TW_n_108;
  wire TW_n_109;
  wire TW_n_110;
  wire TW_n_111;
  wire TW_n_112;
  wire TW_n_113;
  wire TW_n_114;
  wire TW_n_115;
  wire TW_n_116;
  wire TW_n_117;
  wire TW_n_118;
  wire TW_n_119;
  wire TW_n_120;
  wire TW_n_121;
  wire TW_n_122;
  wire TW_n_123;
  wire TW_n_124;
  wire TW_n_125;
  wire TW_n_126;
  wire TW_n_127;
  wire TW_n_66;
  wire TW_n_97;
  wire TW_n_98;
  wire TW_n_99;
  wire [15:1]add_im_3;
  wire [15:1]add_re_2;
  wire bf1_bf;
  wire \bf1_count[6]_i_2_n_0 ;
  wire [5:5]bf1_count_reg__0;
  wire [6:0]bf1_count_reg__0__0;
  wire [15:0]bf1_do_im;
  wire [15:0]bf1_do_re;
  wire bf1_sp_en;
  wire bf1_sp_en_i_1_n_0;
  wire [15:0]bf1_sp_im;
  wire [15:0]bf1_sp_re;
  wire bf1_start;
  wire bf2_bf;
  wire \bf2_count[6]_i_2_n_0 ;
  wire [6:0]bf2_count_reg__0;
  wire bf2_ct_en;
  wire bf2_ct_en_1d;
  wire bf2_ct_en_i_1_n_0;
  wire bf2_ct_en_i_3_n_0;
  wire bf2_do_en;
  wire [15:0]bf2_do_im;
  wire [15:0]bf2_do_re;
  wire [15:0]bf2_sp_im;
  wire [15:0]bf2_sp_re;
  wire bf2_start;
  wire [1:0]\buf_im_reg[15][11]__0 ;
  wire [3:0]\buf_im_reg[15][14]__0 ;
  wire [0:0]\buf_im_reg[15][15]__0 ;
  wire [15:0]\buf_im_reg[15]_3 ;
  wire [14:0]\buf_im_reg[63]_1 ;
  wire [3:0]\buf_re_reg[15][14]__0 ;
  wire [15:0]\buf_re_reg[15]_2 ;
  wire [14:0]\buf_re_reg[63]_0 ;
  wire clock;
  wire [4:0]db1_di_im;
  wire [4:0]db1_di_re;
  wire [15:0]db2_di_im;
  wire [15:0]db2_di_re;
  wire \di_count[6]_i_2_n_0 ;
  wire \di_count_reg_n_0_[0] ;
  wire \di_count_reg_n_0_[1] ;
  wire \di_count_reg_n_0_[2] ;
  wire \di_count_reg_n_0_[3] ;
  wire \di_count_reg_n_0_[4] ;
  wire \di_count_reg_n_0_[5] ;
  wire di_en;
  wire [15:0]di_im;
  wire [15:0]di_re;
  wire [15:0]ff_im_reg;
  wire [15:0]ff_im_reg_0;
  wire [2:0]ff_im_reg_1;
  wire [3:0]ff_im_reg_2;
  wire [3:0]ff_im_reg_3;
  wire [3:0]ff_im_reg_4;
  wire [14:0]ff_re_reg;
  wire [2:0]ff_re_reg_0;
  wire [3:0]ff_re_reg_1;
  wire [3:0]ff_re_reg_2;
  wire [3:0]ff_re_reg_3;
  wire [3:0]\mu_do_im_reg[11]_0 ;
  wire [15:0]\mu_do_im_reg[15]_0 ;
  wire [3:0]\mu_do_im_reg[15]_1 ;
  wire [3:0]\mu_do_im_reg[3]_0 ;
  wire [3:0]\mu_do_im_reg[7]_0 ;
  wire [3:0]\mu_do_re_reg[11]_0 ;
  wire [3:0]\mu_do_re_reg[15]_0 ;
  wire [3:0]\mu_do_re_reg[7]_0 ;
  wire [15:15]mx_im__50;
  wire [6:0]p_0_in;
  wire [15:15]p_0_in1_in;
  wire [6:0]p_0_in__0;
  wire [6:0]p_0_in__1;
  wire [15:15]p_2_in;
  wire reset;
  wire [2:0]sel0;
  wire su1_do_en;
  wire [15:1]sub_im_1;
  wire [15:1]sub_re_0;
  wire [4:0]tw_addr__0;
  wire tw_nz;
  wire tw_nz_1d;
  wire tw_nz_i_1_n_0;
  wire tw_nz_i_3_n_0;
  wire [16:1]y0_im0;
  wire [16:1]y0_re0;
  wire [16:1]y1_im0;
  wire [16:1]y1_re0;

  system_fft128_0_0_Butterfly_5 BF1
       (.CO(BF1_n_47),
        .DI(DB1_n_145),
        .O(BF1_n_15),
        .S({DB1_n_30,DB1_n_31,DB1_n_32,DB1_n_33}),
        .add_im_3(add_im_3),
        .add_re_2(add_re_2),
        .\bf1_do_im_reg[10] ({DB1_n_166,DB1_n_167,DB1_n_168,DB1_n_169}),
        .\bf1_do_im_reg[14] (DB1_n_102),
        .\bf1_do_im_reg[14]_0 ({DB1_n_98,DB1_n_99,DB1_n_100,DB1_n_101}),
        .\bf1_do_im_reg[2] ({DB1_n_158,DB1_n_159,DB1_n_160,DB1_n_161}),
        .\bf1_do_im_reg[6] ({DB1_n_162,DB1_n_163,DB1_n_164,DB1_n_165}),
        .\bf1_do_re_reg[10] ({DB1_n_154,DB1_n_155,DB1_n_156,DB1_n_157}),
        .\bf1_do_re_reg[14] ({DB1_n_94,DB1_n_95,DB1_n_96,DB1_n_97}),
        .\bf1_do_re_reg[2] ({DB1_n_146,DB1_n_147,DB1_n_148,DB1_n_149}),
        .\bf1_do_re_reg[6] ({DB1_n_150,DB1_n_151,DB1_n_152,DB1_n_153}),
        .\buf_im_reg[31][0]_srl32_i_1 ({DB1_n_46,DB1_n_47,DB1_n_48,DB1_n_49}),
        .\buf_im_reg[31][11]_srl32_i_1 ({DB1_n_58,DB1_n_59,DB1_n_60,DB1_n_61}),
        .\buf_im_reg[31][3]_srl32_i_1 ({DB1_n_50,DB1_n_51,DB1_n_52,DB1_n_53}),
        .\buf_im_reg[31][7]_srl32_i_1 ({DB1_n_54,DB1_n_55,DB1_n_56,DB1_n_57}),
        .\buf_im_reg[63][14]__0 (BF1_n_63),
        .\buf_im_reg[63]_1 (\buf_im_reg[63]_1 ),
        .\buf_re_reg[31][11]_srl32_i_1 ({DB1_n_42,DB1_n_43,DB1_n_44,DB1_n_45}),
        .\buf_re_reg[31][3]_srl32_i_1 ({DB1_n_34,DB1_n_35,DB1_n_36,DB1_n_37}),
        .\buf_re_reg[31][7]_srl32_i_1 ({DB1_n_38,DB1_n_39,DB1_n_40,DB1_n_41}),
        .\buf_re_reg[63]_0 (\buf_re_reg[63]_0 ),
        .di_im(di_im[15]),
        .\di_im[15] (BF1_n_31),
        .di_re(di_re[15]),
        .sub_im_1(sub_im_1),
        .sub_re_0(sub_re_0));
  system_fft128_0_0_Butterfly__parameterized0_6 BF2
       (.DI(DB2_n_96),
        .Q(bf1_do_re[15]),
        .S({DB2_n_32,DB2_n_33,DB2_n_34,DB2_n_35}),
        .y0_im0(y0_im0),
        .y0_im0__47_carry_0(DB2_n_28),
        .y0_im0__47_carry_1(DB2_n_29),
        .y0_im0__47_carry_2(DB2_n_30),
        .y0_im0__47_carry_3(DB2_n_31),
        .y0_im0__47_carry_4(DB2_n_24),
        .y0_im0__47_carry_5(DB2_n_25),
        .y0_im0__47_carry_6(DB2_n_26),
        .y0_im0__47_carry_7(DB2_n_27),
        .y0_im0__47_carry_8({DB2_n_84,DB2_n_85,DB2_n_86,DB2_n_87}),
        .y0_im0__47_carry_9({DB2_n_88,DB2_n_89,DB2_n_90,DB2_n_91}),
        .y0_im0__47_carry__0_0(DB2_n_20),
        .y0_im0__47_carry__0_1(DB2_n_21),
        .y0_im0__47_carry__0_2(DB2_n_22),
        .y0_im0__47_carry__0_3(DB2_n_23),
        .y0_im0__47_carry__0_4({DB2_n_92,DB2_n_93,DB2_n_94,DB2_n_95}),
        .y0_im0__47_carry__1_0(DB2_n_17),
        .y0_im0__47_carry__1_1(DB2_n_18),
        .y0_im0__47_carry__1_2(DB2_n_19),
        .y0_im0__47_carry__1_3(DB2_n_97),
        .y0_im0__47_carry__1_4({DB2_n_68,DB2_n_69,DB2_n_70,DB2_n_71}),
        .y0_re0(y0_re0),
        .y0_re0__47_carry_0(DB2_n_12),
        .y0_re0__47_carry_1(DB2_n_13),
        .y0_re0__47_carry_2(DB2_n_14),
        .y0_re0__47_carry_3(DB2_n_15),
        .y0_re0__47_carry_4(DB2_n_8),
        .y0_re0__47_carry_5(DB2_n_9),
        .y0_re0__47_carry_6(DB2_n_10),
        .y0_re0__47_carry_7(DB2_n_11),
        .y0_re0__47_carry_8({DB2_n_72,DB2_n_73,DB2_n_74,DB2_n_75}),
        .y0_re0__47_carry_9({DB2_n_76,DB2_n_77,DB2_n_78,DB2_n_79}),
        .y0_re0__47_carry__0_0(DB2_n_4),
        .y0_re0__47_carry__0_1(DB2_n_5),
        .y0_re0__47_carry__0_2(DB2_n_6),
        .y0_re0__47_carry__0_3(DB2_n_7),
        .y0_re0__47_carry__0_4({DB2_n_80,DB2_n_81,DB2_n_82,DB2_n_83}),
        .y0_re0__47_carry__1_0(DB2_n_1),
        .y0_re0__47_carry__1_1(DB2_n_2),
        .y0_re0__47_carry__1_2(DB2_n_3),
        .y0_re0__47_carry__1_3({DB2_n_64,DB2_n_65,DB2_n_66,DB2_n_67}),
        .y1_im0(y1_im0),
        .y1_im0__47_carry_0({DB2_n_48,DB2_n_49,DB2_n_50,DB2_n_51}),
        .y1_im0__47_carry_1({DB2_n_52,DB2_n_53,DB2_n_54,DB2_n_55}),
        .y1_im0__47_carry__0_0({DB2_n_56,DB2_n_57,DB2_n_58,DB2_n_59}),
        .y1_im0__47_carry__1_0(bf1_do_im[15]),
        .y1_im0__47_carry__1_1({DB2_n_60,DB2_n_61,DB2_n_62,DB2_n_63}),
        .y1_re0(y1_re0),
        .y1_re0__47_carry_0({DB2_n_36,DB2_n_37,DB2_n_38,DB2_n_39}),
        .y1_re0__47_carry__0_0({DB2_n_40,DB2_n_41,DB2_n_42,DB2_n_43}),
        .y1_re0__47_carry__1_0({DB2_n_44,DB2_n_45,DB2_n_46,DB2_n_47}));
  system_fft128_0_0_DelayBuffer DB1
       (.CO(BF1_n_47),
        .D(bf1_sp_re),
        .DI(DB1_n_145),
        .O(BF1_n_15),
        .Q(Q),
        .S({DB1_n_30,DB1_n_31,DB1_n_32,DB1_n_33}),
        .add_im_3(add_im_3),
        .add_re_2(add_re_2),
        .\bf1_count_reg[5] (bf1_sp_im),
        .\bf1_do_im_reg[15] (BF1_n_63),
        .\bf1_do_re_reg[15] (bf1_bf),
        .\bf1_do_re_reg[15]_0 ({bf1_count_reg__0__0[6],bf1_count_reg__0}),
        .\buf_im_reg[15][11]__0 (\buf_im_reg[15][11]__0 [1]),
        .\buf_im_reg[15][14]__0 (\buf_im_reg[15][14]__0 ),
        .\buf_im_reg[15][15]__0 (\mu_do_im_reg[15]_0 ),
        .\buf_im_reg[15][15]__0_0 (\buf_im_reg[15][15]__0 ),
        .\buf_im_reg[15]_3 (\buf_im_reg[15]_3 ),
        .\buf_im_reg[31][15]_srl32_0 (BF1_n_31),
        .\buf_im_reg[63][11]__0_0 ({DB1_n_166,DB1_n_167,DB1_n_168,DB1_n_169}),
        .\buf_im_reg[63][14]__0_0 (\buf_im_reg[63]_1 ),
        .\buf_im_reg[63][15]__0_0 ({DB1_n_98,DB1_n_99,DB1_n_100,DB1_n_101}),
        .\buf_im_reg[63][15]__0_1 (DB1_n_102),
        .\buf_im_reg[63][3]__0_0 ({DB1_n_158,DB1_n_159,DB1_n_160,DB1_n_161}),
        .\buf_im_reg[63][7]__0_0 ({DB1_n_162,DB1_n_163,DB1_n_164,DB1_n_165}),
        .\buf_re_reg[15][14]__0 (\buf_re_reg[15][14]__0 ),
        .\buf_re_reg[15][15]__0 (O),
        .\buf_re_reg[15]_2 (\buf_re_reg[15]_2 ),
        .\buf_re_reg[63][11]__0_0 ({DB1_n_154,DB1_n_155,DB1_n_156,DB1_n_157}),
        .\buf_re_reg[63][14]__0_0 (\buf_re_reg[63]_0 ),
        .\buf_re_reg[63][15]__0_0 ({DB1_n_94,DB1_n_95,DB1_n_96,DB1_n_97}),
        .\buf_re_reg[63][3]__0_0 ({DB1_n_146,DB1_n_147,DB1_n_148,DB1_n_149}),
        .\buf_re_reg[63][7]__0_0 ({DB1_n_150,DB1_n_151,DB1_n_152,DB1_n_153}),
        .clock(clock),
        .db1_di_im(db1_di_im),
        .db1_di_re(db1_di_re),
        .di_im(di_im),
        .\di_im[11] ({DB1_n_54,DB1_n_55,DB1_n_56,DB1_n_57}),
        .\di_im[15] ({DB1_n_58,DB1_n_59,DB1_n_60,DB1_n_61}),
        .\di_im[3] ({DB1_n_46,DB1_n_47,DB1_n_48,DB1_n_49}),
        .\di_im[7] ({DB1_n_50,DB1_n_51,DB1_n_52,DB1_n_53}),
        .di_re(di_re),
        .\di_re[11] ({DB1_n_38,DB1_n_39,DB1_n_40,DB1_n_41}),
        .\di_re[15] ({DB1_n_42,DB1_n_43,DB1_n_44,DB1_n_45}),
        .\di_re[7] ({DB1_n_34,DB1_n_35,DB1_n_36,DB1_n_37}),
        .\mu_do_im_reg[11] (\mu_do_im_reg[11]_0 ),
        .\mu_do_im_reg[15] (\mu_do_im_reg[15]_1 ),
        .\mu_do_im_reg[3] (\mu_do_im_reg[3]_0 ),
        .\mu_do_im_reg[7] (\mu_do_im_reg[7]_0 ),
        .\mu_do_re_reg[11] (\mu_do_re_reg[11]_0 ),
        .\mu_do_re_reg[15] (\mu_do_re_reg[15]_0 ),
        .\mu_do_re_reg[3] (S),
        .\mu_do_re_reg[7] (\mu_do_re_reg[7]_0 ),
        .sub_im_1(sub_im_1),
        .sub_re_0(sub_re_0));
  system_fft128_0_0_DelayBuffer__parameterized0 DB2
       (.DI(DB2_n_96),
        .Q(bf1_do_re),
        .S({DB2_n_32,DB2_n_33,DB2_n_34,DB2_n_35}),
        .\bf1_do_im_reg[11] ({DB2_n_56,DB2_n_57,DB2_n_58,DB2_n_59}),
        .\bf1_do_im_reg[15] ({DB2_n_60,DB2_n_61,DB2_n_62,DB2_n_63}),
        .\bf1_do_im_reg[3] ({DB2_n_48,DB2_n_49,DB2_n_50,DB2_n_51}),
        .\bf1_do_im_reg[7] ({DB2_n_52,DB2_n_53,DB2_n_54,DB2_n_55}),
        .\bf1_do_re_reg[11] ({DB2_n_40,DB2_n_41,DB2_n_42,DB2_n_43}),
        .\bf1_do_re_reg[15] ({DB2_n_44,DB2_n_45,DB2_n_46,DB2_n_47}),
        .\bf1_do_re_reg[7] ({DB2_n_36,DB2_n_37,DB2_n_38,DB2_n_39}),
        .\buf_im_reg[31][0]__0_0 (DB2_n_31),
        .\buf_im_reg[31][10]__0_0 (DB2_n_21),
        .\buf_im_reg[31][11]__0_0 (DB2_n_20),
        .\buf_im_reg[31][11]__0_1 ({DB2_n_92,DB2_n_93,DB2_n_94,DB2_n_95}),
        .\buf_im_reg[31][12]__0_0 (DB2_n_19),
        .\buf_im_reg[31][13]__0_0 (DB2_n_18),
        .\buf_im_reg[31][14]__0_0 (DB2_n_17),
        .\buf_im_reg[31][15]__0_0 (DB2_n_16),
        .\buf_im_reg[31][15]__0_1 ({DB2_n_68,DB2_n_69,DB2_n_70,DB2_n_71}),
        .\buf_im_reg[31][15]__0_2 (DB2_n_97),
        .\buf_im_reg[31][1]__0_0 (DB2_n_30),
        .\buf_im_reg[31][2]__0_0 (DB2_n_29),
        .\buf_im_reg[31][3]__0_0 (DB2_n_28),
        .\buf_im_reg[31][3]__0_1 ({DB2_n_84,DB2_n_85,DB2_n_86,DB2_n_87}),
        .\buf_im_reg[31][4]__0_0 (DB2_n_27),
        .\buf_im_reg[31][5]__0_0 (DB2_n_26),
        .\buf_im_reg[31][6]__0_0 (DB2_n_25),
        .\buf_im_reg[31][7]__0_0 (DB2_n_24),
        .\buf_im_reg[31][7]__0_1 ({DB2_n_88,DB2_n_89,DB2_n_90,DB2_n_91}),
        .\buf_im_reg[31][8]__0_0 (DB2_n_23),
        .\buf_im_reg[31][9]__0_0 (DB2_n_22),
        .\buf_re_reg[31][0]__0_0 (DB2_n_15),
        .\buf_re_reg[31][10]__0_0 (DB2_n_5),
        .\buf_re_reg[31][11]__0_0 (DB2_n_4),
        .\buf_re_reg[31][11]__0_1 ({DB2_n_80,DB2_n_81,DB2_n_82,DB2_n_83}),
        .\buf_re_reg[31][12]__0_0 (DB2_n_3),
        .\buf_re_reg[31][13]__0_0 (DB2_n_2),
        .\buf_re_reg[31][14]__0_0 (DB2_n_1),
        .\buf_re_reg[31][15]__0_0 (DB2_n_0),
        .\buf_re_reg[31][15]__0_1 ({DB2_n_64,DB2_n_65,DB2_n_66,DB2_n_67}),
        .\buf_re_reg[31][1]__0_0 (DB2_n_14),
        .\buf_re_reg[31][2]__0_0 (DB2_n_13),
        .\buf_re_reg[31][3]__0_0 (DB2_n_12),
        .\buf_re_reg[31][3]__0_1 ({DB2_n_72,DB2_n_73,DB2_n_74,DB2_n_75}),
        .\buf_re_reg[31][4]__0_0 (DB2_n_11),
        .\buf_re_reg[31][5]__0_0 (DB2_n_10),
        .\buf_re_reg[31][6]__0_0 (DB2_n_9),
        .\buf_re_reg[31][7]__0_0 (DB2_n_8),
        .\buf_re_reg[31][7]__0_1 ({DB2_n_76,DB2_n_77,DB2_n_78,DB2_n_79}),
        .\buf_re_reg[31][8]__0_0 (DB2_n_7),
        .\buf_re_reg[31][9]__0_0 (DB2_n_6),
        .clock(clock),
        .db2_di_im(db2_di_im),
        .db2_di_re(db2_di_re),
        .y0_im0_carry__2(bf1_do_im));
  system_fft128_0_0_Multiply_7 MU
       (.A(bf2_sp_re),
        .B({TC_n_21,TC_n_22,TC_n_23,TC_n_24,TC_n_25,TC_n_26,TC_n_27,TC_n_28,TC_n_29,TC_n_30,TC_n_31,TC_n_32,TC_n_33,TC_n_34,TC_n_35,TC_n_36}),
        .Q(bf2_do_re),
        .aibi_0({TC_n_2,TC_n_3,TC_n_4,TC_n_5,TC_n_6,TC_n_7,TC_n_8,TC_n_9,TC_n_10,TC_n_11,TC_n_12,TC_n_13,TC_n_14,TC_n_15,TC_n_16,TC_n_17}),
        .aibi_1(bf2_sp_im),
        .aibr_0({MU_n_16,MU_n_17,MU_n_18,MU_n_19,MU_n_20,MU_n_21,MU_n_22,MU_n_23,MU_n_24,MU_n_25,MU_n_26,MU_n_27,MU_n_28,MU_n_29,MU_n_30,MU_n_31}),
        .clock(clock),
        .\mu_do_im_reg[15] (bf2_do_im),
        .out({MU_n_0,MU_n_1,MU_n_2,MU_n_3,MU_n_4,MU_n_5,MU_n_6,MU_n_7,MU_n_8,MU_n_9,MU_n_10,MU_n_11,MU_n_12,MU_n_13,MU_n_14,MU_n_15}),
        .tw_nz_1d(tw_nz_1d));
  system_fft128_0_0_TwiddleConvert8_8 TC
       (.B({TC_n_21,TC_n_22,TC_n_23,TC_n_24,TC_n_25,TC_n_26,TC_n_27,TC_n_28,TC_n_29,TC_n_30,TC_n_31,TC_n_32,TC_n_33,TC_n_34,TC_n_35,TC_n_36}),
        .DOADO(ff_im_reg[15:1]),
        .O(p_0_in1_in),
        .Q(sel0),
        .S({TW_n_97,TW_n_98,TW_n_99,ff_im_reg[0]}),
        .aibi(mx_im__50),
        .arbr({TW_n_112,TW_n_113,TW_n_114,ff_re_reg[0]}),
        .arbr_0(TW_n_127),
        .arbr_1(ff_re_reg[14:1]),
        .arbr_i_25_0({TW_n_108,TW_n_109,TW_n_110,TW_n_111}),
        .arbr_i_25_1({TW_n_123,TW_n_124,TW_n_125,TW_n_126}),
        .arbr_i_33_0({TW_n_104,TW_n_105,TW_n_106,TW_n_107}),
        .arbr_i_33_1({TW_n_119,TW_n_120,TW_n_121,TW_n_122}),
        .arbr_i_41_0({TW_n_100,TW_n_101,TW_n_102,TW_n_103}),
        .arbr_i_41_1({TW_n_115,TW_n_116,TW_n_117,TW_n_118}),
        .\bf2_count_reg[1] (TC_n_37),
        .clock(clock),
        .\ff_addr_reg[2]_0 (bf2_count_reg__0),
        .\ff_addr_reg[4]_0 (TC_n_38),
        .\ff_addr_reg[4]_1 ({tw_addr__0[4:3],tw_addr__0[0]}),
        .\ff_addr_reg[5]_0 ({TC_n_2,TC_n_3,TC_n_4,TC_n_5,TC_n_6,TC_n_7,TC_n_8,TC_n_9,TC_n_10,TC_n_11,TC_n_12,TC_n_13,TC_n_14,TC_n_15,TC_n_16,TC_n_17}),
        .ff_re_reg(p_2_in));
  system_fft128_0_0_Twiddle TW
       (.ADDRBWRADDR(ADDRBWRADDR),
        .DOADO(ff_re_reg),
        .DOBDO(DOBDO),
        .O(p_0_in1_in),
        .Q(bf2_count_reg__0),
        .S({TW_n_97,TW_n_98,TW_n_99}),
        .aibi(sel0),
        .aibi_0(TC_n_38),
        .arbr(p_2_in),
        .\bf2_count_reg[4] ({tw_addr__0[4:3],tw_addr__0[0]}),
        .\bf2_count_reg[6] (TW_n_66),
        .clock(clock),
        .\ff_addr_reg[4] (TC_n_37),
        .ff_im_reg_0(ff_im_reg),
        .ff_im_reg_1(ff_im_reg_0),
        .ff_im_reg_2(ff_im_reg_1),
        .ff_im_reg_3(ff_im_reg_2),
        .ff_im_reg_4(ff_im_reg_3),
        .ff_im_reg_5(ff_im_reg_4),
        .ff_im_reg_6({TW_n_100,TW_n_101,TW_n_102,TW_n_103}),
        .ff_im_reg_7({TW_n_104,TW_n_105,TW_n_106,TW_n_107}),
        .ff_im_reg_8({TW_n_108,TW_n_109,TW_n_110,TW_n_111}),
        .ff_im_reg_9(TW_n_127),
        .ff_re_reg_0(ff_re_reg_0),
        .ff_re_reg_1(ff_re_reg_1),
        .ff_re_reg_2(ff_re_reg_2),
        .ff_re_reg_3(ff_re_reg_3),
        .ff_re_reg_4({TW_n_112,TW_n_113,TW_n_114}),
        .ff_re_reg_5({TW_n_115,TW_n_116,TW_n_117,TW_n_118}),
        .ff_re_reg_6({TW_n_119,TW_n_120,TW_n_121,TW_n_122}),
        .ff_re_reg_7({TW_n_123,TW_n_124,TW_n_125,TW_n_126}),
        .ff_re_reg_8(mx_im__50));
  LUT3 #(
    .INIT(8'hB8)) 
    aibi_i_17
       (.I0(y0_im0[16]),
        .I1(bf2_bf),
        .I2(DB2_n_16),
        .O(bf2_sp_im[15]));
  LUT3 #(
    .INIT(8'hB8)) 
    aibi_i_18
       (.I0(y0_im0[15]),
        .I1(bf2_bf),
        .I2(DB2_n_17),
        .O(bf2_sp_im[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    aibi_i_19
       (.I0(y0_im0[14]),
        .I1(bf2_bf),
        .I2(DB2_n_18),
        .O(bf2_sp_im[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    aibi_i_20
       (.I0(y0_im0[13]),
        .I1(bf2_bf),
        .I2(DB2_n_19),
        .O(bf2_sp_im[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    aibi_i_21
       (.I0(y0_im0[12]),
        .I1(bf2_bf),
        .I2(DB2_n_20),
        .O(bf2_sp_im[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    aibi_i_22
       (.I0(y0_im0[11]),
        .I1(bf2_bf),
        .I2(DB2_n_21),
        .O(bf2_sp_im[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    aibi_i_23
       (.I0(y0_im0[10]),
        .I1(bf2_bf),
        .I2(DB2_n_22),
        .O(bf2_sp_im[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    aibi_i_24
       (.I0(y0_im0[9]),
        .I1(bf2_bf),
        .I2(DB2_n_23),
        .O(bf2_sp_im[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    aibi_i_25
       (.I0(y0_im0[8]),
        .I1(bf2_bf),
        .I2(DB2_n_24),
        .O(bf2_sp_im[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    aibi_i_26
       (.I0(y0_im0[7]),
        .I1(bf2_bf),
        .I2(DB2_n_25),
        .O(bf2_sp_im[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    aibi_i_27
       (.I0(y0_im0[6]),
        .I1(bf2_bf),
        .I2(DB2_n_26),
        .O(bf2_sp_im[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    aibi_i_28
       (.I0(y0_im0[5]),
        .I1(bf2_bf),
        .I2(DB2_n_27),
        .O(bf2_sp_im[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    aibi_i_29
       (.I0(y0_im0[4]),
        .I1(bf2_bf),
        .I2(DB2_n_28),
        .O(bf2_sp_im[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    aibi_i_30
       (.I0(y0_im0[3]),
        .I1(bf2_bf),
        .I2(DB2_n_29),
        .O(bf2_sp_im[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    aibi_i_31
       (.I0(y0_im0[2]),
        .I1(bf2_bf),
        .I2(DB2_n_30),
        .O(bf2_sp_im[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    aibi_i_32
       (.I0(y0_im0[1]),
        .I1(bf2_bf),
        .I2(DB2_n_31),
        .O(bf2_sp_im[0]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \bf1_count[0]_i_1 
       (.I0(bf1_sp_en),
        .I1(bf1_count_reg__0__0[0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \bf1_count[1]_i_1 
       (.I0(bf1_sp_en),
        .I1(bf1_count_reg__0__0[0]),
        .I2(bf1_count_reg__0__0[1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \bf1_count[2]_i_1 
       (.I0(bf1_count_reg__0__0[1]),
        .I1(bf1_count_reg__0__0[0]),
        .I2(bf1_sp_en),
        .I3(bf1_count_reg__0__0[2]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \bf1_count[3]_i_1 
       (.I0(bf1_count_reg__0__0[0]),
        .I1(bf1_count_reg__0__0[1]),
        .I2(bf1_count_reg__0__0[2]),
        .I3(bf1_sp_en),
        .I4(bf1_count_reg__0__0[3]),
        .O(p_0_in__1[3]));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \bf1_count[4]_i_1 
       (.I0(bf1_count_reg__0__0[3]),
        .I1(bf1_count_reg__0__0[2]),
        .I2(bf1_count_reg__0__0[1]),
        .I3(bf1_count_reg__0__0[0]),
        .I4(bf1_sp_en),
        .I5(bf1_count_reg__0__0[4]),
        .O(p_0_in__1[4]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \bf1_count[5]_i_1 
       (.I0(\bf1_count[6]_i_2_n_0 ),
        .I1(bf1_count_reg__0__0[4]),
        .I2(bf1_sp_en),
        .I3(bf1_count_reg__0),
        .O(p_0_in__1[5]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \bf1_count[6]_i_1 
       (.I0(bf1_count_reg__0__0[4]),
        .I1(\bf1_count[6]_i_2_n_0 ),
        .I2(bf1_count_reg__0),
        .I3(bf1_sp_en),
        .I4(bf1_count_reg__0__0[6]),
        .O(p_0_in__1[6]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \bf1_count[6]_i_2 
       (.I0(bf1_count_reg__0__0[3]),
        .I1(bf1_count_reg__0__0[2]),
        .I2(bf1_count_reg__0__0[1]),
        .I3(bf1_count_reg__0__0[0]),
        .O(\bf1_count[6]_i_2_n_0 ));
  FDCE \bf1_count_reg[0] 
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in__1[0]),
        .Q(bf1_count_reg__0__0[0]));
  FDCE \bf1_count_reg[1] 
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in__1[1]),
        .Q(bf1_count_reg__0__0[1]));
  FDCE \bf1_count_reg[2] 
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in__1[2]),
        .Q(bf1_count_reg__0__0[2]));
  FDCE \bf1_count_reg[3] 
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in__1[3]),
        .Q(bf1_count_reg__0__0[3]));
  FDCE \bf1_count_reg[4] 
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in__1[4]),
        .Q(bf1_count_reg__0__0[4]));
  FDCE \bf1_count_reg[5] 
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in__1[5]),
        .Q(bf1_count_reg__0));
  FDCE \bf1_count_reg[6] 
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in__1[6]),
        .Q(bf1_count_reg__0__0[6]));
  FDRE \bf1_do_im_reg[0] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_im[0]),
        .Q(bf1_do_im[0]),
        .R(1'b0));
  FDRE \bf1_do_im_reg[10] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_im[10]),
        .Q(bf1_do_im[10]),
        .R(1'b0));
  FDRE \bf1_do_im_reg[11] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_im[11]),
        .Q(bf1_do_im[11]),
        .R(1'b0));
  FDRE \bf1_do_im_reg[12] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_im[12]),
        .Q(bf1_do_im[12]),
        .R(1'b0));
  FDRE \bf1_do_im_reg[13] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_im[13]),
        .Q(bf1_do_im[13]),
        .R(1'b0));
  FDRE \bf1_do_im_reg[14] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_im[14]),
        .Q(bf1_do_im[14]),
        .R(1'b0));
  FDRE \bf1_do_im_reg[15] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_im[15]),
        .Q(bf1_do_im[15]),
        .R(1'b0));
  FDRE \bf1_do_im_reg[1] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_im[1]),
        .Q(bf1_do_im[1]),
        .R(1'b0));
  FDRE \bf1_do_im_reg[2] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_im[2]),
        .Q(bf1_do_im[2]),
        .R(1'b0));
  FDRE \bf1_do_im_reg[3] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_im[3]),
        .Q(bf1_do_im[3]),
        .R(1'b0));
  FDRE \bf1_do_im_reg[4] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_im[4]),
        .Q(bf1_do_im[4]),
        .R(1'b0));
  FDRE \bf1_do_im_reg[5] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_im[5]),
        .Q(bf1_do_im[5]),
        .R(1'b0));
  FDRE \bf1_do_im_reg[6] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_im[6]),
        .Q(bf1_do_im[6]),
        .R(1'b0));
  FDRE \bf1_do_im_reg[7] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_im[7]),
        .Q(bf1_do_im[7]),
        .R(1'b0));
  FDRE \bf1_do_im_reg[8] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_im[8]),
        .Q(bf1_do_im[8]),
        .R(1'b0));
  FDRE \bf1_do_im_reg[9] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_im[9]),
        .Q(bf1_do_im[9]),
        .R(1'b0));
  FDRE \bf1_do_re_reg[0] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_re[0]),
        .Q(bf1_do_re[0]),
        .R(1'b0));
  FDRE \bf1_do_re_reg[10] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_re[10]),
        .Q(bf1_do_re[10]),
        .R(1'b0));
  FDRE \bf1_do_re_reg[11] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_re[11]),
        .Q(bf1_do_re[11]),
        .R(1'b0));
  FDRE \bf1_do_re_reg[12] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_re[12]),
        .Q(bf1_do_re[12]),
        .R(1'b0));
  FDRE \bf1_do_re_reg[13] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_re[13]),
        .Q(bf1_do_re[13]),
        .R(1'b0));
  FDRE \bf1_do_re_reg[14] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_re[14]),
        .Q(bf1_do_re[14]),
        .R(1'b0));
  FDRE \bf1_do_re_reg[15] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_re[15]),
        .Q(bf1_do_re[15]),
        .R(1'b0));
  FDRE \bf1_do_re_reg[1] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_re[1]),
        .Q(bf1_do_re[1]),
        .R(1'b0));
  FDRE \bf1_do_re_reg[2] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_re[2]),
        .Q(bf1_do_re[2]),
        .R(1'b0));
  FDRE \bf1_do_re_reg[3] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_re[3]),
        .Q(bf1_do_re[3]),
        .R(1'b0));
  FDRE \bf1_do_re_reg[4] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_re[4]),
        .Q(bf1_do_re[4]),
        .R(1'b0));
  FDRE \bf1_do_re_reg[5] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_re[5]),
        .Q(bf1_do_re[5]),
        .R(1'b0));
  FDRE \bf1_do_re_reg[6] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_re[6]),
        .Q(bf1_do_re[6]),
        .R(1'b0));
  FDRE \bf1_do_re_reg[7] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_re[7]),
        .Q(bf1_do_re[7]),
        .R(1'b0));
  FDRE \bf1_do_re_reg[8] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_re[8]),
        .Q(bf1_do_re[8]),
        .R(1'b0));
  FDRE \bf1_do_re_reg[9] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_re[9]),
        .Q(bf1_do_re[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFF7FFFFFFF0000)) 
    bf1_sp_en_i_1
       (.I0(\bf1_count[6]_i_2_n_0 ),
        .I1(bf1_count_reg__0__0[6]),
        .I2(bf1_count_reg__0),
        .I3(bf1_count_reg__0__0[4]),
        .I4(bf1_start),
        .I5(bf1_sp_en),
        .O(bf1_sp_en_i_1_n_0));
  LUT5 #(
    .INIT(32'h00002000)) 
    bf1_sp_en_i_2
       (.I0(\di_count_reg_n_0_[5] ),
        .I1(bf1_bf),
        .I2(\di_count_reg_n_0_[3] ),
        .I3(\di_count_reg_n_0_[4] ),
        .I4(\di_count[6]_i_2_n_0 ),
        .O(bf1_start));
  FDCE bf1_sp_en_reg
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(bf1_sp_en_i_1_n_0),
        .Q(bf1_sp_en));
  FDRE bf2_bf_reg
       (.C(clock),
        .CE(1'b1),
        .D(bf1_count_reg__0),
        .Q(bf2_bf),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \bf2_count[0]_i_1 
       (.I0(bf2_ct_en),
        .I1(bf2_count_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \bf2_count[1]_i_1 
       (.I0(bf2_ct_en),
        .I1(bf2_count_reg__0[0]),
        .I2(bf2_count_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \bf2_count[2]_i_1 
       (.I0(bf2_count_reg__0[1]),
        .I1(bf2_count_reg__0[0]),
        .I2(bf2_ct_en),
        .I3(bf2_count_reg__0[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \bf2_count[3]_i_1 
       (.I0(bf2_count_reg__0[0]),
        .I1(bf2_count_reg__0[1]),
        .I2(bf2_count_reg__0[2]),
        .I3(bf2_ct_en),
        .I4(bf2_count_reg__0[3]),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \bf2_count[4]_i_1 
       (.I0(bf2_count_reg__0[3]),
        .I1(bf2_count_reg__0[2]),
        .I2(bf2_count_reg__0[1]),
        .I3(bf2_count_reg__0[0]),
        .I4(bf2_ct_en),
        .I5(bf2_count_reg__0[4]),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \bf2_count[5]_i_1 
       (.I0(\bf2_count[6]_i_2_n_0 ),
        .I1(bf2_count_reg__0[4]),
        .I2(bf2_ct_en),
        .I3(bf2_count_reg__0[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \bf2_count[6]_i_1 
       (.I0(bf2_count_reg__0[4]),
        .I1(bf2_count_reg__0[5]),
        .I2(\bf2_count[6]_i_2_n_0 ),
        .I3(bf2_ct_en),
        .I4(bf2_count_reg__0[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \bf2_count[6]_i_2 
       (.I0(bf2_count_reg__0[3]),
        .I1(bf2_count_reg__0[2]),
        .I2(bf2_count_reg__0[1]),
        .I3(bf2_count_reg__0[0]),
        .O(\bf2_count[6]_i_2_n_0 ));
  FDCE \bf2_count_reg[0] 
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[0]),
        .Q(bf2_count_reg__0[0]));
  FDCE \bf2_count_reg[1] 
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[1]),
        .Q(bf2_count_reg__0[1]));
  FDCE \bf2_count_reg[2] 
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[2]),
        .Q(bf2_count_reg__0[2]));
  FDCE \bf2_count_reg[3] 
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[3]),
        .Q(bf2_count_reg__0[3]));
  FDCE \bf2_count_reg[4] 
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[4]),
        .Q(bf2_count_reg__0[4]));
  FDCE \bf2_count_reg[5] 
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[5]),
        .Q(bf2_count_reg__0[5]));
  FDCE \bf2_count_reg[6] 
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[6]),
        .Q(bf2_count_reg__0[6]));
  FDRE bf2_ct_en_1d_reg
       (.C(clock),
        .CE(1'b1),
        .D(bf2_ct_en),
        .Q(bf2_ct_en_1d),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hEFFFFFFFAAAAAAAA)) 
    bf2_ct_en_i_1
       (.I0(bf2_start),
        .I1(bf2_ct_en_i_3_n_0),
        .I2(bf2_count_reg__0[4]),
        .I3(bf2_count_reg__0[3]),
        .I4(bf2_count_reg__0[2]),
        .I5(bf2_ct_en),
        .O(bf2_ct_en_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    bf2_ct_en_i_2
       (.I0(bf1_count_reg__0),
        .I1(bf1_count_reg__0__0[6]),
        .I2(bf1_sp_en),
        .I3(bf1_count_reg__0__0[4]),
        .I4(\bf1_count[6]_i_2_n_0 ),
        .O(bf2_start));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    bf2_ct_en_i_3
       (.I0(bf2_count_reg__0[1]),
        .I1(bf2_count_reg__0[5]),
        .I2(bf2_count_reg__0[0]),
        .I3(bf2_count_reg__0[6]),
        .O(bf2_ct_en_i_3_n_0));
  FDCE bf2_ct_en_reg
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(bf2_ct_en_i_1_n_0),
        .Q(bf2_ct_en));
  FDCE bf2_do_en_reg
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(bf2_ct_en_1d),
        .Q(bf2_do_en));
  FDRE \bf2_do_im_reg[0] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_im[0]),
        .Q(bf2_do_im[0]),
        .R(1'b0));
  FDRE \bf2_do_im_reg[10] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_im[10]),
        .Q(bf2_do_im[10]),
        .R(1'b0));
  FDRE \bf2_do_im_reg[11] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_im[11]),
        .Q(bf2_do_im[11]),
        .R(1'b0));
  FDRE \bf2_do_im_reg[12] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_im[12]),
        .Q(bf2_do_im[12]),
        .R(1'b0));
  FDRE \bf2_do_im_reg[13] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_im[13]),
        .Q(bf2_do_im[13]),
        .R(1'b0));
  FDRE \bf2_do_im_reg[14] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_im[14]),
        .Q(bf2_do_im[14]),
        .R(1'b0));
  FDRE \bf2_do_im_reg[15] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_im[15]),
        .Q(bf2_do_im[15]),
        .R(1'b0));
  FDRE \bf2_do_im_reg[1] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_im[1]),
        .Q(bf2_do_im[1]),
        .R(1'b0));
  FDRE \bf2_do_im_reg[2] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_im[2]),
        .Q(bf2_do_im[2]),
        .R(1'b0));
  FDRE \bf2_do_im_reg[3] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_im[3]),
        .Q(bf2_do_im[3]),
        .R(1'b0));
  FDRE \bf2_do_im_reg[4] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_im[4]),
        .Q(bf2_do_im[4]),
        .R(1'b0));
  FDRE \bf2_do_im_reg[5] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_im[5]),
        .Q(bf2_do_im[5]),
        .R(1'b0));
  FDRE \bf2_do_im_reg[6] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_im[6]),
        .Q(bf2_do_im[6]),
        .R(1'b0));
  FDRE \bf2_do_im_reg[7] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_im[7]),
        .Q(bf2_do_im[7]),
        .R(1'b0));
  FDRE \bf2_do_im_reg[8] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_im[8]),
        .Q(bf2_do_im[8]),
        .R(1'b0));
  FDRE \bf2_do_im_reg[9] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_im[9]),
        .Q(bf2_do_im[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    \bf2_do_re[0]_i_1 
       (.I0(y0_re0[1]),
        .I1(bf2_bf),
        .I2(DB2_n_15),
        .O(bf2_sp_re[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bf2_do_re[10]_i_1 
       (.I0(y0_re0[11]),
        .I1(bf2_bf),
        .I2(DB2_n_5),
        .O(bf2_sp_re[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bf2_do_re[11]_i_1 
       (.I0(y0_re0[12]),
        .I1(bf2_bf),
        .I2(DB2_n_4),
        .O(bf2_sp_re[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bf2_do_re[12]_i_1 
       (.I0(y0_re0[13]),
        .I1(bf2_bf),
        .I2(DB2_n_3),
        .O(bf2_sp_re[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bf2_do_re[13]_i_1 
       (.I0(y0_re0[14]),
        .I1(bf2_bf),
        .I2(DB2_n_2),
        .O(bf2_sp_re[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bf2_do_re[14]_i_1 
       (.I0(y0_re0[15]),
        .I1(bf2_bf),
        .I2(DB2_n_1),
        .O(bf2_sp_re[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bf2_do_re[15]_i_1 
       (.I0(y0_re0[16]),
        .I1(bf2_bf),
        .I2(DB2_n_0),
        .O(bf2_sp_re[15]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bf2_do_re[1]_i_1 
       (.I0(y0_re0[2]),
        .I1(bf2_bf),
        .I2(DB2_n_14),
        .O(bf2_sp_re[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bf2_do_re[2]_i_1 
       (.I0(y0_re0[3]),
        .I1(bf2_bf),
        .I2(DB2_n_13),
        .O(bf2_sp_re[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bf2_do_re[3]_i_1 
       (.I0(y0_re0[4]),
        .I1(bf2_bf),
        .I2(DB2_n_12),
        .O(bf2_sp_re[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bf2_do_re[4]_i_1 
       (.I0(y0_re0[5]),
        .I1(bf2_bf),
        .I2(DB2_n_11),
        .O(bf2_sp_re[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bf2_do_re[5]_i_1 
       (.I0(y0_re0[6]),
        .I1(bf2_bf),
        .I2(DB2_n_10),
        .O(bf2_sp_re[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bf2_do_re[6]_i_1 
       (.I0(y0_re0[7]),
        .I1(bf2_bf),
        .I2(DB2_n_9),
        .O(bf2_sp_re[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bf2_do_re[7]_i_1 
       (.I0(y0_re0[8]),
        .I1(bf2_bf),
        .I2(DB2_n_8),
        .O(bf2_sp_re[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bf2_do_re[8]_i_1 
       (.I0(y0_re0[9]),
        .I1(bf2_bf),
        .I2(DB2_n_7),
        .O(bf2_sp_re[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bf2_do_re[9]_i_1 
       (.I0(y0_re0[10]),
        .I1(bf2_bf),
        .I2(DB2_n_6),
        .O(bf2_sp_re[9]));
  FDRE \bf2_do_re_reg[0] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_re[0]),
        .Q(bf2_do_re[0]),
        .R(1'b0));
  FDRE \bf2_do_re_reg[10] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_re[10]),
        .Q(bf2_do_re[10]),
        .R(1'b0));
  FDRE \bf2_do_re_reg[11] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_re[11]),
        .Q(bf2_do_re[11]),
        .R(1'b0));
  FDRE \bf2_do_re_reg[12] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_re[12]),
        .Q(bf2_do_re[12]),
        .R(1'b0));
  FDRE \bf2_do_re_reg[13] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_re[13]),
        .Q(bf2_do_re[13]),
        .R(1'b0));
  FDRE \bf2_do_re_reg[14] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_re[14]),
        .Q(bf2_do_re[14]),
        .R(1'b0));
  FDRE \bf2_do_re_reg[15] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_re[15]),
        .Q(bf2_do_re[15]),
        .R(1'b0));
  FDRE \bf2_do_re_reg[1] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_re[1]),
        .Q(bf2_do_re[1]),
        .R(1'b0));
  FDRE \bf2_do_re_reg[2] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_re[2]),
        .Q(bf2_do_re[2]),
        .R(1'b0));
  FDRE \bf2_do_re_reg[3] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_re[3]),
        .Q(bf2_do_re[3]),
        .R(1'b0));
  FDRE \bf2_do_re_reg[4] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_re[4]),
        .Q(bf2_do_re[4]),
        .R(1'b0));
  FDRE \bf2_do_re_reg[5] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_re[5]),
        .Q(bf2_do_re[5]),
        .R(1'b0));
  FDRE \bf2_do_re_reg[6] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_re[6]),
        .Q(bf2_do_re[6]),
        .R(1'b0));
  FDRE \bf2_do_re_reg[7] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_re[7]),
        .Q(bf2_do_re[7]),
        .R(1'b0));
  FDRE \bf2_do_re_reg[8] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_re[8]),
        .Q(bf2_do_re[8]),
        .R(1'b0));
  FDRE \bf2_do_re_reg[9] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_re[9]),
        .Q(bf2_do_re[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im_reg[30][0]_srl31_i_1 
       (.I0(y1_im0[1]),
        .I1(bf2_bf),
        .I2(bf1_do_im[0]),
        .O(db2_di_im[0]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im_reg[30][10]_srl31_i_1 
       (.I0(y1_im0[11]),
        .I1(bf2_bf),
        .I2(bf1_do_im[10]),
        .O(db2_di_im[10]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im_reg[30][11]_srl31_i_1 
       (.I0(y1_im0[12]),
        .I1(bf2_bf),
        .I2(bf1_do_im[11]),
        .O(db2_di_im[11]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im_reg[30][12]_srl31_i_1 
       (.I0(y1_im0[13]),
        .I1(bf2_bf),
        .I2(bf1_do_im[12]),
        .O(db2_di_im[12]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im_reg[30][13]_srl31_i_1 
       (.I0(y1_im0[14]),
        .I1(bf2_bf),
        .I2(bf1_do_im[13]),
        .O(db2_di_im[13]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im_reg[30][14]_srl31_i_1 
       (.I0(y1_im0[15]),
        .I1(bf2_bf),
        .I2(bf1_do_im[14]),
        .O(db2_di_im[14]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im_reg[30][15]_srl31_i_1 
       (.I0(y1_im0[16]),
        .I1(bf2_bf),
        .I2(bf1_do_im[15]),
        .O(db2_di_im[15]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im_reg[30][1]_srl31_i_1 
       (.I0(y1_im0[2]),
        .I1(bf2_bf),
        .I2(bf1_do_im[1]),
        .O(db2_di_im[1]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im_reg[30][2]_srl31_i_1 
       (.I0(y1_im0[3]),
        .I1(bf2_bf),
        .I2(bf1_do_im[2]),
        .O(db2_di_im[2]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im_reg[30][3]_srl31_i_1 
       (.I0(y1_im0[4]),
        .I1(bf2_bf),
        .I2(bf1_do_im[3]),
        .O(db2_di_im[3]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im_reg[30][4]_srl31_i_1 
       (.I0(y1_im0[5]),
        .I1(bf2_bf),
        .I2(bf1_do_im[4]),
        .O(db2_di_im[4]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im_reg[30][5]_srl31_i_1 
       (.I0(y1_im0[6]),
        .I1(bf2_bf),
        .I2(bf1_do_im[5]),
        .O(db2_di_im[5]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im_reg[30][6]_srl31_i_1 
       (.I0(y1_im0[7]),
        .I1(bf2_bf),
        .I2(bf1_do_im[6]),
        .O(db2_di_im[6]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im_reg[30][7]_srl31_i_1 
       (.I0(y1_im0[8]),
        .I1(bf2_bf),
        .I2(bf1_do_im[7]),
        .O(db2_di_im[7]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im_reg[30][8]_srl31_i_1 
       (.I0(y1_im0[9]),
        .I1(bf2_bf),
        .I2(bf1_do_im[8]),
        .O(db2_di_im[8]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im_reg[30][9]_srl31_i_1 
       (.I0(y1_im0[10]),
        .I1(bf2_bf),
        .I2(bf1_do_im[9]),
        .O(db2_di_im[9]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re_reg[30][0]_srl31_i_1 
       (.I0(y1_re0[1]),
        .I1(bf2_bf),
        .I2(bf1_do_re[0]),
        .O(db2_di_re[0]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re_reg[30][10]_srl31_i_1 
       (.I0(y1_re0[11]),
        .I1(bf2_bf),
        .I2(bf1_do_re[10]),
        .O(db2_di_re[10]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re_reg[30][11]_srl31_i_1 
       (.I0(y1_re0[12]),
        .I1(bf2_bf),
        .I2(bf1_do_re[11]),
        .O(db2_di_re[11]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re_reg[30][12]_srl31_i_1 
       (.I0(y1_re0[13]),
        .I1(bf2_bf),
        .I2(bf1_do_re[12]),
        .O(db2_di_re[12]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re_reg[30][13]_srl31_i_1 
       (.I0(y1_re0[14]),
        .I1(bf2_bf),
        .I2(bf1_do_re[13]),
        .O(db2_di_re[13]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re_reg[30][14]_srl31_i_1 
       (.I0(y1_re0[15]),
        .I1(bf2_bf),
        .I2(bf1_do_re[14]),
        .O(db2_di_re[14]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re_reg[30][15]_srl31_i_1 
       (.I0(y1_re0[16]),
        .I1(bf2_bf),
        .I2(bf1_do_re[15]),
        .O(db2_di_re[15]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re_reg[30][1]_srl31_i_1 
       (.I0(y1_re0[2]),
        .I1(bf2_bf),
        .I2(bf1_do_re[1]),
        .O(db2_di_re[1]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re_reg[30][2]_srl31_i_1 
       (.I0(y1_re0[3]),
        .I1(bf2_bf),
        .I2(bf1_do_re[2]),
        .O(db2_di_re[2]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re_reg[30][3]_srl31_i_1 
       (.I0(y1_re0[4]),
        .I1(bf2_bf),
        .I2(bf1_do_re[3]),
        .O(db2_di_re[3]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re_reg[30][4]_srl31_i_1 
       (.I0(y1_re0[5]),
        .I1(bf2_bf),
        .I2(bf1_do_re[4]),
        .O(db2_di_re[4]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re_reg[30][5]_srl31_i_1 
       (.I0(y1_re0[6]),
        .I1(bf2_bf),
        .I2(bf1_do_re[5]),
        .O(db2_di_re[5]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re_reg[30][6]_srl31_i_1 
       (.I0(y1_re0[7]),
        .I1(bf2_bf),
        .I2(bf1_do_re[6]),
        .O(db2_di_re[6]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re_reg[30][7]_srl31_i_1 
       (.I0(y1_re0[8]),
        .I1(bf2_bf),
        .I2(bf1_do_re[7]),
        .O(db2_di_re[7]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re_reg[30][8]_srl31_i_1 
       (.I0(y1_re0[9]),
        .I1(bf2_bf),
        .I2(bf1_do_re[8]),
        .O(db2_di_re[8]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re_reg[30][9]_srl31_i_1 
       (.I0(y1_re0[10]),
        .I1(bf2_bf),
        .I2(bf1_do_re[9]),
        .O(db2_di_re[9]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \di_count[0]_i_1 
       (.I0(di_en),
        .I1(\di_count_reg_n_0_[0] ),
        .O(p_0_in__0[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \di_count[0]_i_1__0 
       (.I0(su1_do_en),
        .I1(\buf_im_reg[15][11]__0 [0]),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \di_count[1]_i_1 
       (.I0(di_en),
        .I1(\di_count_reg_n_0_[0] ),
        .I2(\di_count_reg_n_0_[1] ),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \di_count[2]_i_1 
       (.I0(\di_count_reg_n_0_[1] ),
        .I1(\di_count_reg_n_0_[0] ),
        .I2(di_en),
        .I3(\di_count_reg_n_0_[2] ),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \di_count[3]_i_1 
       (.I0(\di_count_reg_n_0_[0] ),
        .I1(\di_count_reg_n_0_[1] ),
        .I2(\di_count_reg_n_0_[2] ),
        .I3(di_en),
        .I4(\di_count_reg_n_0_[3] ),
        .O(p_0_in__0[3]));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \di_count[4]_i_1 
       (.I0(\di_count_reg_n_0_[3] ),
        .I1(\di_count_reg_n_0_[2] ),
        .I2(\di_count_reg_n_0_[1] ),
        .I3(\di_count_reg_n_0_[0] ),
        .I4(di_en),
        .I5(\di_count_reg_n_0_[4] ),
        .O(p_0_in__0[4]));
  LUT5 #(
    .INIT(32'hBF004000)) 
    \di_count[5]_i_1 
       (.I0(\di_count[6]_i_2_n_0 ),
        .I1(\di_count_reg_n_0_[3] ),
        .I2(\di_count_reg_n_0_[4] ),
        .I3(di_en),
        .I4(\di_count_reg_n_0_[5] ),
        .O(p_0_in__0[5]));
  LUT6 #(
    .INIT(64'hF7FF000008000000)) 
    \di_count[6]_i_1 
       (.I0(\di_count_reg_n_0_[4] ),
        .I1(\di_count_reg_n_0_[3] ),
        .I2(\di_count[6]_i_2_n_0 ),
        .I3(\di_count_reg_n_0_[5] ),
        .I4(di_en),
        .I5(bf1_bf),
        .O(p_0_in__0[6]));
  LUT3 #(
    .INIT(8'h7F)) 
    \di_count[6]_i_2 
       (.I0(\di_count_reg_n_0_[0] ),
        .I1(\di_count_reg_n_0_[1] ),
        .I2(\di_count_reg_n_0_[2] ),
        .O(\di_count[6]_i_2_n_0 ));
  FDCE \di_count_reg[0] 
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in__0[0]),
        .Q(\di_count_reg_n_0_[0] ));
  FDCE \di_count_reg[1] 
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in__0[1]),
        .Q(\di_count_reg_n_0_[1] ));
  FDCE \di_count_reg[2] 
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in__0[2]),
        .Q(\di_count_reg_n_0_[2] ));
  FDCE \di_count_reg[3] 
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in__0[3]),
        .Q(\di_count_reg_n_0_[3] ));
  FDCE \di_count_reg[4] 
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in__0[4]),
        .Q(\di_count_reg_n_0_[4] ));
  FDCE \di_count_reg[5] 
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in__0[5]),
        .Q(\di_count_reg_n_0_[5] ));
  FDCE \di_count_reg[6] 
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in__0[6]),
        .Q(bf1_bf));
  FDCE mu_do_en_reg
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(bf2_do_en),
        .Q(su1_do_en));
  FDRE \mu_do_im_reg[0] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_31),
        .Q(\mu_do_im_reg[15]_0 [0]),
        .R(1'b0));
  FDRE \mu_do_im_reg[10] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_21),
        .Q(\mu_do_im_reg[15]_0 [10]),
        .R(1'b0));
  FDRE \mu_do_im_reg[11] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_20),
        .Q(\mu_do_im_reg[15]_0 [11]),
        .R(1'b0));
  FDRE \mu_do_im_reg[12] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_19),
        .Q(\mu_do_im_reg[15]_0 [12]),
        .R(1'b0));
  FDRE \mu_do_im_reg[13] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_18),
        .Q(\mu_do_im_reg[15]_0 [13]),
        .R(1'b0));
  FDRE \mu_do_im_reg[14] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_17),
        .Q(\mu_do_im_reg[15]_0 [14]),
        .R(1'b0));
  FDRE \mu_do_im_reg[15] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_16),
        .Q(\mu_do_im_reg[15]_0 [15]),
        .R(1'b0));
  FDRE \mu_do_im_reg[1] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_30),
        .Q(\mu_do_im_reg[15]_0 [1]),
        .R(1'b0));
  FDRE \mu_do_im_reg[2] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_29),
        .Q(\mu_do_im_reg[15]_0 [2]),
        .R(1'b0));
  FDRE \mu_do_im_reg[3] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_28),
        .Q(\mu_do_im_reg[15]_0 [3]),
        .R(1'b0));
  FDRE \mu_do_im_reg[4] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_27),
        .Q(\mu_do_im_reg[15]_0 [4]),
        .R(1'b0));
  FDRE \mu_do_im_reg[5] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_26),
        .Q(\mu_do_im_reg[15]_0 [5]),
        .R(1'b0));
  FDRE \mu_do_im_reg[6] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_25),
        .Q(\mu_do_im_reg[15]_0 [6]),
        .R(1'b0));
  FDRE \mu_do_im_reg[7] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_24),
        .Q(\mu_do_im_reg[15]_0 [7]),
        .R(1'b0));
  FDRE \mu_do_im_reg[8] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_23),
        .Q(\mu_do_im_reg[15]_0 [8]),
        .R(1'b0));
  FDRE \mu_do_im_reg[9] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_22),
        .Q(\mu_do_im_reg[15]_0 [9]),
        .R(1'b0));
  FDRE \mu_do_re_reg[0] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_15),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \mu_do_re_reg[10] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_5),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \mu_do_re_reg[11] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_4),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \mu_do_re_reg[12] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_3),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \mu_do_re_reg[13] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_2),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \mu_do_re_reg[14] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_1),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \mu_do_re_reg[15] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_0),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \mu_do_re_reg[1] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_14),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \mu_do_re_reg[2] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_13),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \mu_do_re_reg[3] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_12),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \mu_do_re_reg[4] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_11),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \mu_do_re_reg[5] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_10),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \mu_do_re_reg[6] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_9),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \mu_do_re_reg[7] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_8),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \mu_do_re_reg[8] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_7),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \mu_do_re_reg[9] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_6),
        .Q(Q[9]),
        .R(1'b0));
  FDRE tw_nz_1d_reg
       (.C(clock),
        .CE(1'b1),
        .D(tw_nz),
        .Q(tw_nz_1d),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    tw_nz_i_1
       (.I0(tw_addr__0[4]),
        .I1(TW_n_66),
        .I2(bf2_count_reg__0[4]),
        .I3(bf2_count_reg__0[5]),
        .I4(tw_nz_i_3_n_0),
        .I5(tw_addr__0[3]),
        .O(tw_nz_i_1_n_0));
  LUT5 #(
    .INIT(32'hE8A08800)) 
    tw_nz_i_3
       (.I0(TC_n_37),
        .I1(bf2_count_reg__0[5]),
        .I2(bf2_count_reg__0[4]),
        .I3(bf2_count_reg__0[3]),
        .I4(bf2_count_reg__0[6]),
        .O(tw_nz_i_3_n_0));
  FDRE tw_nz_reg
       (.C(clock),
        .CE(1'b1),
        .D(tw_nz_i_1_n_0),
        .Q(tw_nz),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "SdfUnit2" *) 
module system_fft128_0_0_SdfUnit2
   (do_en,
    bf_en,
    Q,
    \buf_im_reg[0][15] ,
    do_re,
    do_im,
    su3_do_en,
    clock,
    reset,
    bf_en0,
    S,
    \buf_re_reg[0][6] ,
    \buf_re_reg[0][10] ,
    \buf_re_reg[0][15] ,
    \buf_re_reg[0][14] ,
    \buf_im_reg[0][2] ,
    \buf_im_reg[0][6] ,
    \buf_im_reg[0][10] ,
    \buf_im_reg[0][15]_0 ,
    \buf_im_reg[0][14] );
  output do_en;
  output bf_en;
  output [15:0]Q;
  output [15:0]\buf_im_reg[0][15] ;
  output [15:0]do_re;
  output [15:0]do_im;
  input su3_do_en;
  input clock;
  input reset;
  input bf_en0;
  input [3:0]S;
  input [3:0]\buf_re_reg[0][6] ;
  input [3:0]\buf_re_reg[0][10] ;
  input [15:0]\buf_re_reg[0][15] ;
  input [3:0]\buf_re_reg[0][14] ;
  input [3:0]\buf_im_reg[0][2] ;
  input [3:0]\buf_im_reg[0][6] ;
  input [3:0]\buf_im_reg[0][10] ;
  input [15:0]\buf_im_reg[0][15]_0 ;
  input [3:0]\buf_im_reg[0][14] ;

  wire DB_n_0;
  wire DB_n_1;
  wire DB_n_2;
  wire DB_n_20;
  wire DB_n_21;
  wire DB_n_22;
  wire DB_n_23;
  wire DB_n_3;
  wire DB_n_40;
  wire DB_n_41;
  wire DB_n_42;
  wire DB_n_43;
  wire DB_n_44;
  wire DB_n_45;
  wire DB_n_46;
  wire DB_n_47;
  wire DB_n_48;
  wire DB_n_49;
  wire DB_n_50;
  wire DB_n_51;
  wire DB_n_52;
  wire DB_n_53;
  wire DB_n_54;
  wire DB_n_55;
  wire DB_n_56;
  wire DB_n_57;
  wire DB_n_58;
  wire DB_n_59;
  wire DB_n_60;
  wire DB_n_61;
  wire DB_n_62;
  wire DB_n_63;
  wire DB_n_64;
  wire DB_n_65;
  wire [15:0]Q;
  wire [3:0]S;
  wire [15:1]add_im;
  wire [16:16]add_im__0;
  wire [15:1]add_re;
  wire [16:16]add_re__0;
  wire bf_en;
  wire bf_en0;
  wire bf_sp_en;
  wire [15:0]bf_sp_im;
  wire [15:0]bf_sp_re;
  wire [3:0]\buf_im_reg[0][10] ;
  wire [3:0]\buf_im_reg[0][14] ;
  wire [15:0]\buf_im_reg[0][15] ;
  wire [15:0]\buf_im_reg[0][15]_0 ;
  wire [3:0]\buf_im_reg[0][2] ;
  wire [3:0]\buf_im_reg[0][6] ;
  wire [3:0]\buf_re_reg[0][10] ;
  wire [3:0]\buf_re_reg[0][14] ;
  wire [15:0]\buf_re_reg[0][15] ;
  wire [3:0]\buf_re_reg[0][6] ;
  wire clock;
  wire [15:0]db_di_im;
  wire [15:0]db_di_re;
  wire do_en;
  wire [15:0]do_im;
  wire [15:0]do_re;
  wire reset;
  wire su3_do_en;
  wire [15:1]sub_im;
  wire [16:16]sub_im__0;
  wire [15:1]sub_re;
  wire [16:16]sub_re__0;

  system_fft128_0_0_Butterfly BF
       (.DI(DB_n_64),
        .O(sub_re__0),
        .Q(Q[14:0]),
        .S(S),
        .add_im(add_im),
        .add_re(add_re),
        .\buf_im_reg[0][10] (\buf_im_reg[0][10] ),
        .\buf_im_reg[0][14] (add_im__0),
        .\buf_im_reg[0][14]_0 (\buf_im_reg[0][15] [14:0]),
        .\buf_im_reg[0][14]_1 (\buf_im_reg[0][15]_0 [15]),
        .\buf_im_reg[0][14]_2 (\buf_im_reg[0][14] ),
        .\buf_im_reg[0][2] (\buf_im_reg[0][2] ),
        .\buf_im_reg[0][6] (\buf_im_reg[0][6] ),
        .\buf_re_reg[0][10] (\buf_re_reg[0][10] ),
        .\buf_re_reg[0][14] (add_re__0),
        .\buf_re_reg[0][14]_0 (\buf_re_reg[0][15] [15]),
        .\buf_re_reg[0][14]_1 (\buf_re_reg[0][14] ),
        .\buf_re_reg[0][6] (\buf_re_reg[0][6] ),
        .\do_im_reg[10] ({DB_n_60,DB_n_61,DB_n_62,DB_n_63}),
        .\do_im_reg[14] (DB_n_65),
        .\do_im_reg[14]_0 ({DB_n_20,DB_n_21,DB_n_22,DB_n_23}),
        .\do_im_reg[2] ({DB_n_52,DB_n_53,DB_n_54,DB_n_55}),
        .\do_im_reg[6] ({DB_n_56,DB_n_57,DB_n_58,DB_n_59}),
        .\do_re_reg[10] ({DB_n_48,DB_n_49,DB_n_50,DB_n_51}),
        .\do_re_reg[14] ({DB_n_0,DB_n_1,DB_n_2,DB_n_3}),
        .\do_re_reg[2] ({DB_n_40,DB_n_41,DB_n_42,DB_n_43}),
        .\do_re_reg[6] ({DB_n_44,DB_n_45,DB_n_46,DB_n_47}),
        .\mu_do_im_reg[15] (sub_im__0),
        .sub_im(sub_im),
        .sub_re(sub_re));
  system_fft128_0_0_DelayBuffer__parameterized5 DB
       (.D(db_di_re),
        .DI(DB_n_64),
        .Q(Q),
        .add_im_carry__2(\buf_im_reg[0][15]_0 ),
        .add_re_carry__2(\buf_re_reg[0][15] ),
        .\buf_im_reg[0][11]_0 ({DB_n_60,DB_n_61,DB_n_62,DB_n_63}),
        .\buf_im_reg[0][15]_0 ({DB_n_20,DB_n_21,DB_n_22,DB_n_23}),
        .\buf_im_reg[0][15]_1 (\buf_im_reg[0][15] ),
        .\buf_im_reg[0][15]_2 (DB_n_65),
        .\buf_im_reg[0][15]_3 (db_di_im),
        .\buf_im_reg[0][3]_0 ({DB_n_52,DB_n_53,DB_n_54,DB_n_55}),
        .\buf_im_reg[0][7]_0 ({DB_n_56,DB_n_57,DB_n_58,DB_n_59}),
        .\buf_re_reg[0][11]_0 ({DB_n_48,DB_n_49,DB_n_50,DB_n_51}),
        .\buf_re_reg[0][15]_0 ({DB_n_0,DB_n_1,DB_n_2,DB_n_3}),
        .\buf_re_reg[0][3]_0 ({DB_n_40,DB_n_41,DB_n_42,DB_n_43}),
        .\buf_re_reg[0][7]_0 ({DB_n_44,DB_n_45,DB_n_46,DB_n_47}),
        .clock(clock));
  FDCE bf_en_reg
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(bf_en0),
        .Q(bf_en));
  FDCE bf_sp_en_reg
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(su3_do_en),
        .Q(bf_sp_en));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im[0][0]_i_1 
       (.I0(sub_im[1]),
        .I1(bf_en),
        .I2(\buf_im_reg[0][15]_0 [0]),
        .O(db_di_im[0]));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im[0][10]_i_1 
       (.I0(sub_im[11]),
        .I1(bf_en),
        .I2(\buf_im_reg[0][15]_0 [10]),
        .O(db_di_im[10]));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im[0][11]_i_1 
       (.I0(sub_im[12]),
        .I1(bf_en),
        .I2(\buf_im_reg[0][15]_0 [11]),
        .O(db_di_im[11]));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im[0][12]_i_1 
       (.I0(sub_im[13]),
        .I1(bf_en),
        .I2(\buf_im_reg[0][15]_0 [12]),
        .O(db_di_im[12]));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im[0][13]_i_1 
       (.I0(sub_im[14]),
        .I1(bf_en),
        .I2(\buf_im_reg[0][15]_0 [13]),
        .O(db_di_im[13]));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im[0][14]_i_1 
       (.I0(sub_im[15]),
        .I1(bf_en),
        .I2(\buf_im_reg[0][15]_0 [14]),
        .O(db_di_im[14]));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im[0][15]_i_1 
       (.I0(sub_im__0),
        .I1(bf_en),
        .I2(\buf_im_reg[0][15]_0 [15]),
        .O(db_di_im[15]));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im[0][1]_i_1 
       (.I0(sub_im[2]),
        .I1(bf_en),
        .I2(\buf_im_reg[0][15]_0 [1]),
        .O(db_di_im[1]));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im[0][2]_i_1 
       (.I0(sub_im[3]),
        .I1(bf_en),
        .I2(\buf_im_reg[0][15]_0 [2]),
        .O(db_di_im[2]));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im[0][3]_i_1 
       (.I0(sub_im[4]),
        .I1(bf_en),
        .I2(\buf_im_reg[0][15]_0 [3]),
        .O(db_di_im[3]));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im[0][4]_i_1 
       (.I0(sub_im[5]),
        .I1(bf_en),
        .I2(\buf_im_reg[0][15]_0 [4]),
        .O(db_di_im[4]));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im[0][5]_i_1 
       (.I0(sub_im[6]),
        .I1(bf_en),
        .I2(\buf_im_reg[0][15]_0 [5]),
        .O(db_di_im[5]));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im[0][6]_i_1 
       (.I0(sub_im[7]),
        .I1(bf_en),
        .I2(\buf_im_reg[0][15]_0 [6]),
        .O(db_di_im[6]));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im[0][7]_i_1 
       (.I0(sub_im[8]),
        .I1(bf_en),
        .I2(\buf_im_reg[0][15]_0 [7]),
        .O(db_di_im[7]));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im[0][8]_i_1 
       (.I0(sub_im[9]),
        .I1(bf_en),
        .I2(\buf_im_reg[0][15]_0 [8]),
        .O(db_di_im[8]));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im[0][9]_i_1 
       (.I0(sub_im[10]),
        .I1(bf_en),
        .I2(\buf_im_reg[0][15]_0 [9]),
        .O(db_di_im[9]));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re[0][0]_i_1 
       (.I0(sub_re[1]),
        .I1(bf_en),
        .I2(\buf_re_reg[0][15] [0]),
        .O(db_di_re[0]));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re[0][10]_i_1 
       (.I0(sub_re[11]),
        .I1(bf_en),
        .I2(\buf_re_reg[0][15] [10]),
        .O(db_di_re[10]));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re[0][11]_i_1 
       (.I0(sub_re[12]),
        .I1(bf_en),
        .I2(\buf_re_reg[0][15] [11]),
        .O(db_di_re[11]));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re[0][12]_i_1 
       (.I0(sub_re[13]),
        .I1(bf_en),
        .I2(\buf_re_reg[0][15] [12]),
        .O(db_di_re[12]));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re[0][13]_i_1 
       (.I0(sub_re[14]),
        .I1(bf_en),
        .I2(\buf_re_reg[0][15] [13]),
        .O(db_di_re[13]));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re[0][14]_i_1 
       (.I0(sub_re[15]),
        .I1(bf_en),
        .I2(\buf_re_reg[0][15] [14]),
        .O(db_di_re[14]));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re[0][15]_i_1 
       (.I0(sub_re__0),
        .I1(bf_en),
        .I2(\buf_re_reg[0][15] [15]),
        .O(db_di_re[15]));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re[0][1]_i_1 
       (.I0(sub_re[2]),
        .I1(bf_en),
        .I2(\buf_re_reg[0][15] [1]),
        .O(db_di_re[1]));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re[0][2]_i_1 
       (.I0(sub_re[3]),
        .I1(bf_en),
        .I2(\buf_re_reg[0][15] [2]),
        .O(db_di_re[2]));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re[0][3]_i_1 
       (.I0(sub_re[4]),
        .I1(bf_en),
        .I2(\buf_re_reg[0][15] [3]),
        .O(db_di_re[3]));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re[0][4]_i_1 
       (.I0(sub_re[5]),
        .I1(bf_en),
        .I2(\buf_re_reg[0][15] [4]),
        .O(db_di_re[4]));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re[0][5]_i_1 
       (.I0(sub_re[6]),
        .I1(bf_en),
        .I2(\buf_re_reg[0][15] [5]),
        .O(db_di_re[5]));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re[0][6]_i_1 
       (.I0(sub_re[7]),
        .I1(bf_en),
        .I2(\buf_re_reg[0][15] [6]),
        .O(db_di_re[6]));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re[0][7]_i_1 
       (.I0(sub_re[8]),
        .I1(bf_en),
        .I2(\buf_re_reg[0][15] [7]),
        .O(db_di_re[7]));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re[0][8]_i_1 
       (.I0(sub_re[9]),
        .I1(bf_en),
        .I2(\buf_re_reg[0][15] [8]),
        .O(db_di_re[8]));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re[0][9]_i_1 
       (.I0(sub_re[10]),
        .I1(bf_en),
        .I2(\buf_re_reg[0][15] [9]),
        .O(db_di_re[9]));
  FDCE do_en_reg
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(bf_sp_en),
        .Q(do_en));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \do_im[0]_i_1 
       (.I0(add_im[1]),
        .I1(bf_en),
        .I2(\buf_im_reg[0][15] [0]),
        .O(bf_sp_im[0]));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \do_im[10]_i_1 
       (.I0(add_im[11]),
        .I1(bf_en),
        .I2(\buf_im_reg[0][15] [10]),
        .O(bf_sp_im[10]));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \do_im[11]_i_1 
       (.I0(add_im[12]),
        .I1(bf_en),
        .I2(\buf_im_reg[0][15] [11]),
        .O(bf_sp_im[11]));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \do_im[12]_i_1 
       (.I0(add_im[13]),
        .I1(bf_en),
        .I2(\buf_im_reg[0][15] [12]),
        .O(bf_sp_im[12]));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \do_im[13]_i_1 
       (.I0(add_im[14]),
        .I1(bf_en),
        .I2(\buf_im_reg[0][15] [13]),
        .O(bf_sp_im[13]));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \do_im[14]_i_1 
       (.I0(add_im[15]),
        .I1(bf_en),
        .I2(\buf_im_reg[0][15] [14]),
        .O(bf_sp_im[14]));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \do_im[15]_i_1 
       (.I0(add_im__0),
        .I1(bf_en),
        .I2(\buf_im_reg[0][15] [15]),
        .O(bf_sp_im[15]));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \do_im[1]_i_1 
       (.I0(add_im[2]),
        .I1(bf_en),
        .I2(\buf_im_reg[0][15] [1]),
        .O(bf_sp_im[1]));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \do_im[2]_i_1 
       (.I0(add_im[3]),
        .I1(bf_en),
        .I2(\buf_im_reg[0][15] [2]),
        .O(bf_sp_im[2]));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \do_im[3]_i_1 
       (.I0(add_im[4]),
        .I1(bf_en),
        .I2(\buf_im_reg[0][15] [3]),
        .O(bf_sp_im[3]));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \do_im[4]_i_1 
       (.I0(add_im[5]),
        .I1(bf_en),
        .I2(\buf_im_reg[0][15] [4]),
        .O(bf_sp_im[4]));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \do_im[5]_i_1 
       (.I0(add_im[6]),
        .I1(bf_en),
        .I2(\buf_im_reg[0][15] [5]),
        .O(bf_sp_im[5]));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \do_im[6]_i_1 
       (.I0(add_im[7]),
        .I1(bf_en),
        .I2(\buf_im_reg[0][15] [6]),
        .O(bf_sp_im[6]));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \do_im[7]_i_1 
       (.I0(add_im[8]),
        .I1(bf_en),
        .I2(\buf_im_reg[0][15] [7]),
        .O(bf_sp_im[7]));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \do_im[8]_i_1 
       (.I0(add_im[9]),
        .I1(bf_en),
        .I2(\buf_im_reg[0][15] [8]),
        .O(bf_sp_im[8]));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \do_im[9]_i_1 
       (.I0(add_im[10]),
        .I1(bf_en),
        .I2(\buf_im_reg[0][15] [9]),
        .O(bf_sp_im[9]));
  FDRE \do_im_reg[0] 
       (.C(clock),
        .CE(1'b1),
        .D(bf_sp_im[0]),
        .Q(do_im[0]),
        .R(1'b0));
  FDRE \do_im_reg[10] 
       (.C(clock),
        .CE(1'b1),
        .D(bf_sp_im[10]),
        .Q(do_im[10]),
        .R(1'b0));
  FDRE \do_im_reg[11] 
       (.C(clock),
        .CE(1'b1),
        .D(bf_sp_im[11]),
        .Q(do_im[11]),
        .R(1'b0));
  FDRE \do_im_reg[12] 
       (.C(clock),
        .CE(1'b1),
        .D(bf_sp_im[12]),
        .Q(do_im[12]),
        .R(1'b0));
  FDRE \do_im_reg[13] 
       (.C(clock),
        .CE(1'b1),
        .D(bf_sp_im[13]),
        .Q(do_im[13]),
        .R(1'b0));
  FDRE \do_im_reg[14] 
       (.C(clock),
        .CE(1'b1),
        .D(bf_sp_im[14]),
        .Q(do_im[14]),
        .R(1'b0));
  FDRE \do_im_reg[15] 
       (.C(clock),
        .CE(1'b1),
        .D(bf_sp_im[15]),
        .Q(do_im[15]),
        .R(1'b0));
  FDRE \do_im_reg[1] 
       (.C(clock),
        .CE(1'b1),
        .D(bf_sp_im[1]),
        .Q(do_im[1]),
        .R(1'b0));
  FDRE \do_im_reg[2] 
       (.C(clock),
        .CE(1'b1),
        .D(bf_sp_im[2]),
        .Q(do_im[2]),
        .R(1'b0));
  FDRE \do_im_reg[3] 
       (.C(clock),
        .CE(1'b1),
        .D(bf_sp_im[3]),
        .Q(do_im[3]),
        .R(1'b0));
  FDRE \do_im_reg[4] 
       (.C(clock),
        .CE(1'b1),
        .D(bf_sp_im[4]),
        .Q(do_im[4]),
        .R(1'b0));
  FDRE \do_im_reg[5] 
       (.C(clock),
        .CE(1'b1),
        .D(bf_sp_im[5]),
        .Q(do_im[5]),
        .R(1'b0));
  FDRE \do_im_reg[6] 
       (.C(clock),
        .CE(1'b1),
        .D(bf_sp_im[6]),
        .Q(do_im[6]),
        .R(1'b0));
  FDRE \do_im_reg[7] 
       (.C(clock),
        .CE(1'b1),
        .D(bf_sp_im[7]),
        .Q(do_im[7]),
        .R(1'b0));
  FDRE \do_im_reg[8] 
       (.C(clock),
        .CE(1'b1),
        .D(bf_sp_im[8]),
        .Q(do_im[8]),
        .R(1'b0));
  FDRE \do_im_reg[9] 
       (.C(clock),
        .CE(1'b1),
        .D(bf_sp_im[9]),
        .Q(do_im[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \do_re[0]_i_1 
       (.I0(add_re[1]),
        .I1(bf_en),
        .I2(Q[0]),
        .O(bf_sp_re[0]));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \do_re[10]_i_1 
       (.I0(add_re[11]),
        .I1(bf_en),
        .I2(Q[10]),
        .O(bf_sp_re[10]));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \do_re[11]_i_1 
       (.I0(add_re[12]),
        .I1(bf_en),
        .I2(Q[11]),
        .O(bf_sp_re[11]));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \do_re[12]_i_1 
       (.I0(add_re[13]),
        .I1(bf_en),
        .I2(Q[12]),
        .O(bf_sp_re[12]));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \do_re[13]_i_1 
       (.I0(add_re[14]),
        .I1(bf_en),
        .I2(Q[13]),
        .O(bf_sp_re[13]));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \do_re[14]_i_1 
       (.I0(add_re[15]),
        .I1(bf_en),
        .I2(Q[14]),
        .O(bf_sp_re[14]));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \do_re[15]_i_1 
       (.I0(add_re__0),
        .I1(bf_en),
        .I2(Q[15]),
        .O(bf_sp_re[15]));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \do_re[1]_i_1 
       (.I0(add_re[2]),
        .I1(bf_en),
        .I2(Q[1]),
        .O(bf_sp_re[1]));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \do_re[2]_i_1 
       (.I0(add_re[3]),
        .I1(bf_en),
        .I2(Q[2]),
        .O(bf_sp_re[2]));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \do_re[3]_i_1 
       (.I0(add_re[4]),
        .I1(bf_en),
        .I2(Q[3]),
        .O(bf_sp_re[3]));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \do_re[4]_i_1 
       (.I0(add_re[5]),
        .I1(bf_en),
        .I2(Q[4]),
        .O(bf_sp_re[4]));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \do_re[5]_i_1 
       (.I0(add_re[6]),
        .I1(bf_en),
        .I2(Q[5]),
        .O(bf_sp_re[5]));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \do_re[6]_i_1 
       (.I0(add_re[7]),
        .I1(bf_en),
        .I2(Q[6]),
        .O(bf_sp_re[6]));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \do_re[7]_i_1 
       (.I0(add_re[8]),
        .I1(bf_en),
        .I2(Q[7]),
        .O(bf_sp_re[7]));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \do_re[8]_i_1 
       (.I0(add_re[9]),
        .I1(bf_en),
        .I2(Q[8]),
        .O(bf_sp_re[8]));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \do_re[9]_i_1 
       (.I0(add_re[10]),
        .I1(bf_en),
        .I2(Q[9]),
        .O(bf_sp_re[9]));
  FDRE \do_re_reg[0] 
       (.C(clock),
        .CE(1'b1),
        .D(bf_sp_re[0]),
        .Q(do_re[0]),
        .R(1'b0));
  FDRE \do_re_reg[10] 
       (.C(clock),
        .CE(1'b1),
        .D(bf_sp_re[10]),
        .Q(do_re[10]),
        .R(1'b0));
  FDRE \do_re_reg[11] 
       (.C(clock),
        .CE(1'b1),
        .D(bf_sp_re[11]),
        .Q(do_re[11]),
        .R(1'b0));
  FDRE \do_re_reg[12] 
       (.C(clock),
        .CE(1'b1),
        .D(bf_sp_re[12]),
        .Q(do_re[12]),
        .R(1'b0));
  FDRE \do_re_reg[13] 
       (.C(clock),
        .CE(1'b1),
        .D(bf_sp_re[13]),
        .Q(do_re[13]),
        .R(1'b0));
  FDRE \do_re_reg[14] 
       (.C(clock),
        .CE(1'b1),
        .D(bf_sp_re[14]),
        .Q(do_re[14]),
        .R(1'b0));
  FDRE \do_re_reg[15] 
       (.C(clock),
        .CE(1'b1),
        .D(bf_sp_re[15]),
        .Q(do_re[15]),
        .R(1'b0));
  FDRE \do_re_reg[1] 
       (.C(clock),
        .CE(1'b1),
        .D(bf_sp_re[1]),
        .Q(do_re[1]),
        .R(1'b0));
  FDRE \do_re_reg[2] 
       (.C(clock),
        .CE(1'b1),
        .D(bf_sp_re[2]),
        .Q(do_re[2]),
        .R(1'b0));
  FDRE \do_re_reg[3] 
       (.C(clock),
        .CE(1'b1),
        .D(bf_sp_re[3]),
        .Q(do_re[3]),
        .R(1'b0));
  FDRE \do_re_reg[4] 
       (.C(clock),
        .CE(1'b1),
        .D(bf_sp_re[4]),
        .Q(do_re[4]),
        .R(1'b0));
  FDRE \do_re_reg[5] 
       (.C(clock),
        .CE(1'b1),
        .D(bf_sp_re[5]),
        .Q(do_re[5]),
        .R(1'b0));
  FDRE \do_re_reg[6] 
       (.C(clock),
        .CE(1'b1),
        .D(bf_sp_re[6]),
        .Q(do_re[6]),
        .R(1'b0));
  FDRE \do_re_reg[7] 
       (.C(clock),
        .CE(1'b1),
        .D(bf_sp_re[7]),
        .Q(do_re[7]),
        .R(1'b0));
  FDRE \do_re_reg[8] 
       (.C(clock),
        .CE(1'b1),
        .D(bf_sp_re[8]),
        .Q(do_re[8]),
        .R(1'b0));
  FDRE \do_re_reg[9] 
       (.C(clock),
        .CE(1'b1),
        .D(bf_sp_re[9]),
        .Q(do_re[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "SdfUnit" *) 
module system_fft128_0_0_SdfUnit__parameterized0
   (\buf_re_reg[15]_2 ,
    \buf_im_reg[15]_3 ,
    su2_do_en,
    \mu_do_re_reg[15]_0 ,
    O,
    \mu_do_im_reg[15]_0 ,
    \mu_do_im_reg[15]_1 ,
    \mu_do_re_reg[3]_0 ,
    \mu_do_re_reg[15]_1 ,
    \mu_do_re_reg[7]_0 ,
    \mu_do_re_reg[11]_0 ,
    \mu_do_re_reg[15]_2 ,
    \mu_do_im_reg[3]_0 ,
    \mu_do_im_reg[15]_2 ,
    \mu_do_im_reg[7]_0 ,
    \mu_do_im_reg[11]_0 ,
    \mu_do_im_reg[15]_3 ,
    ADDRBWRADDR,
    \di_count_reg[4]_0 ,
    mu_do_en_reg_0,
    db1_di_re,
    db1_di_im,
    \buf_re_reg[15][15]__0 ,
    clock,
    \buf_im_reg[15][15]__0 ,
    reset,
    S,
    \buf_re_reg[14][3]_srl15_i_1 ,
    \buf_re_reg[14][7]_srl15_i_1 ,
    Q,
    \buf_re_reg[14][11]_srl15_i_1 ,
    \buf_im_reg[14][0]_srl15_i_1 ,
    \buf_im_reg[14][3]_srl15_i_1 ,
    \buf_im_reg[14][7]_srl15_i_1 ,
    \buf_im_reg[14][11]_srl15_i_1 ,
    \buf_im_reg[14][11]_srl15_i_1_0 ,
    arbr_i_47__0,
    arbr_i_41__0,
    arbr_i_33__0,
    arbr_i_25__0,
    arbr,
    arbr_i_41__0_0,
    arbr_i_33__0_0,
    arbr_i_25__0_0,
    \buf_re_reg[3]_4 ,
    \buf_im_reg[3]_5 ,
    D,
    su1_do_en,
    \buf_im_reg[3][11]__0 ,
    \buf_re_reg[3][15]__0 ,
    \buf_re_reg[3][14]__0 ,
    \buf_im_reg[3][15]__0 ,
    \buf_im_reg[3][14]__0 ,
    aibi,
    DOBDO);
  output [15:0]\buf_re_reg[15]_2 ;
  output [15:0]\buf_im_reg[15]_3 ;
  output su2_do_en;
  output [3:0]\mu_do_re_reg[15]_0 ;
  output [0:0]O;
  output [3:0]\mu_do_im_reg[15]_0 ;
  output [0:0]\mu_do_im_reg[15]_1 ;
  output [3:0]\mu_do_re_reg[3]_0 ;
  output [15:0]\mu_do_re_reg[15]_1 ;
  output [3:0]\mu_do_re_reg[7]_0 ;
  output [3:0]\mu_do_re_reg[11]_0 ;
  output [3:0]\mu_do_re_reg[15]_2 ;
  output [3:0]\mu_do_im_reg[3]_0 ;
  output [15:0]\mu_do_im_reg[15]_2 ;
  output [3:0]\mu_do_im_reg[7]_0 ;
  output [3:0]\mu_do_im_reg[11]_0 ;
  output [3:0]\mu_do_im_reg[15]_3 ;
  output [1:0]ADDRBWRADDR;
  output [1:0]\di_count_reg[4]_0 ;
  output [0:0]mu_do_en_reg_0;
  output [4:0]db1_di_re;
  output [4:0]db1_di_im;
  input [4:0]\buf_re_reg[15][15]__0 ;
  input clock;
  input [4:0]\buf_im_reg[15][15]__0 ;
  input reset;
  input [3:0]S;
  input [3:0]\buf_re_reg[14][3]_srl15_i_1 ;
  input [3:0]\buf_re_reg[14][7]_srl15_i_1 ;
  input [15:0]Q;
  input [3:0]\buf_re_reg[14][11]_srl15_i_1 ;
  input [3:0]\buf_im_reg[14][0]_srl15_i_1 ;
  input [3:0]\buf_im_reg[14][3]_srl15_i_1 ;
  input [3:0]\buf_im_reg[14][7]_srl15_i_1 ;
  input [15:0]\buf_im_reg[14][11]_srl15_i_1 ;
  input [3:0]\buf_im_reg[14][11]_srl15_i_1_0 ;
  input [3:0]arbr_i_47__0;
  input [3:0]arbr_i_41__0;
  input [3:0]arbr_i_33__0;
  input [3:0]arbr_i_25__0;
  input [3:0]arbr;
  input [3:0]arbr_i_41__0_0;
  input [3:0]arbr_i_33__0_0;
  input [3:0]arbr_i_25__0_0;
  input [15:0]\buf_re_reg[3]_4 ;
  input [15:0]\buf_im_reg[3]_5 ;
  input [0:0]D;
  input su1_do_en;
  input [1:0]\buf_im_reg[3][11]__0 ;
  input [0:0]\buf_re_reg[3][15]__0 ;
  input [3:0]\buf_re_reg[3][14]__0 ;
  input [0:0]\buf_im_reg[3][15]__0 ;
  input [3:0]\buf_im_reg[3][14]__0 ;
  input [14:0]aibi;
  input [14:0]DOBDO;

  wire [1:0]ADDRBWRADDR;
  wire BF1_n_47;
  wire BF1_n_63;
  wire [0:0]D;
  wire DB1_n_115;
  wire DB1_n_116;
  wire DB1_n_117;
  wire DB1_n_118;
  wire DB1_n_119;
  wire DB1_n_120;
  wire DB1_n_121;
  wire DB1_n_122;
  wire DB1_n_123;
  wire DB1_n_124;
  wire DB1_n_125;
  wire DB1_n_126;
  wire DB1_n_127;
  wire DB1_n_128;
  wire DB1_n_129;
  wire DB1_n_130;
  wire DB1_n_131;
  wire DB1_n_132;
  wire DB1_n_133;
  wire DB1_n_134;
  wire DB1_n_135;
  wire DB1_n_136;
  wire DB1_n_137;
  wire DB1_n_138;
  wire DB1_n_139;
  wire DB1_n_64;
  wire DB1_n_65;
  wire DB1_n_66;
  wire DB1_n_67;
  wire DB1_n_68;
  wire DB1_n_69;
  wire DB1_n_70;
  wire DB1_n_71;
  wire DB1_n_72;
  wire DB2_n_0;
  wire DB2_n_1;
  wire DB2_n_10;
  wire DB2_n_11;
  wire DB2_n_12;
  wire DB2_n_13;
  wire DB2_n_14;
  wire DB2_n_15;
  wire DB2_n_16;
  wire DB2_n_17;
  wire DB2_n_18;
  wire DB2_n_19;
  wire DB2_n_2;
  wire DB2_n_20;
  wire DB2_n_21;
  wire DB2_n_22;
  wire DB2_n_23;
  wire DB2_n_24;
  wire DB2_n_25;
  wire DB2_n_26;
  wire DB2_n_27;
  wire DB2_n_28;
  wire DB2_n_29;
  wire DB2_n_3;
  wire DB2_n_30;
  wire DB2_n_31;
  wire DB2_n_32;
  wire DB2_n_33;
  wire DB2_n_34;
  wire DB2_n_35;
  wire DB2_n_36;
  wire DB2_n_37;
  wire DB2_n_38;
  wire DB2_n_39;
  wire DB2_n_4;
  wire DB2_n_40;
  wire DB2_n_41;
  wire DB2_n_42;
  wire DB2_n_43;
  wire DB2_n_44;
  wire DB2_n_45;
  wire DB2_n_46;
  wire DB2_n_47;
  wire DB2_n_48;
  wire DB2_n_49;
  wire DB2_n_5;
  wire DB2_n_50;
  wire DB2_n_51;
  wire DB2_n_52;
  wire DB2_n_53;
  wire DB2_n_54;
  wire DB2_n_55;
  wire DB2_n_56;
  wire DB2_n_57;
  wire DB2_n_58;
  wire DB2_n_59;
  wire DB2_n_6;
  wire DB2_n_60;
  wire DB2_n_61;
  wire DB2_n_62;
  wire DB2_n_63;
  wire DB2_n_64;
  wire DB2_n_65;
  wire DB2_n_66;
  wire DB2_n_67;
  wire DB2_n_68;
  wire DB2_n_69;
  wire DB2_n_7;
  wire DB2_n_70;
  wire DB2_n_71;
  wire DB2_n_72;
  wire DB2_n_73;
  wire DB2_n_74;
  wire DB2_n_75;
  wire DB2_n_76;
  wire DB2_n_77;
  wire DB2_n_78;
  wire DB2_n_79;
  wire DB2_n_8;
  wire DB2_n_80;
  wire DB2_n_81;
  wire DB2_n_82;
  wire DB2_n_83;
  wire DB2_n_84;
  wire DB2_n_85;
  wire DB2_n_86;
  wire DB2_n_87;
  wire DB2_n_88;
  wire DB2_n_89;
  wire DB2_n_9;
  wire DB2_n_90;
  wire DB2_n_91;
  wire DB2_n_92;
  wire DB2_n_93;
  wire DB2_n_94;
  wire DB2_n_95;
  wire DB2_n_96;
  wire DB2_n_97;
  wire [14:0]DOBDO;
  wire MU_n_0;
  wire MU_n_1;
  wire MU_n_10;
  wire MU_n_11;
  wire MU_n_12;
  wire MU_n_13;
  wire MU_n_14;
  wire MU_n_15;
  wire MU_n_16;
  wire MU_n_17;
  wire MU_n_18;
  wire MU_n_19;
  wire MU_n_2;
  wire MU_n_20;
  wire MU_n_21;
  wire MU_n_22;
  wire MU_n_23;
  wire MU_n_24;
  wire MU_n_25;
  wire MU_n_26;
  wire MU_n_27;
  wire MU_n_28;
  wire MU_n_29;
  wire MU_n_3;
  wire MU_n_30;
  wire MU_n_31;
  wire MU_n_4;
  wire MU_n_5;
  wire MU_n_6;
  wire MU_n_7;
  wire MU_n_8;
  wire MU_n_9;
  wire [0:0]O;
  wire [15:0]Q;
  wire [3:0]S;
  wire TC_n_0;
  wire TC_n_1;
  wire TC_n_10;
  wire TC_n_11;
  wire TC_n_12;
  wire TC_n_13;
  wire TC_n_14;
  wire TC_n_15;
  wire TC_n_16;
  wire TC_n_17;
  wire TC_n_18;
  wire TC_n_19;
  wire TC_n_2;
  wire TC_n_20;
  wire TC_n_21;
  wire TC_n_22;
  wire TC_n_23;
  wire TC_n_24;
  wire TC_n_25;
  wire TC_n_26;
  wire TC_n_27;
  wire TC_n_28;
  wire TC_n_29;
  wire TC_n_3;
  wire TC_n_30;
  wire TC_n_31;
  wire TC_n_4;
  wire TC_n_5;
  wire TC_n_6;
  wire TC_n_7;
  wire TC_n_8;
  wire TC_n_9;
  wire [15:1]add_im;
  wire [15:1]add_re;
  wire [14:0]aibi;
  wire [3:0]arbr;
  wire [3:0]arbr_i_25__0;
  wire [3:0]arbr_i_25__0_0;
  wire [3:0]arbr_i_33__0;
  wire [3:0]arbr_i_33__0_0;
  wire [3:0]arbr_i_41__0;
  wire [3:0]arbr_i_41__0_0;
  wire [3:0]arbr_i_47__0;
  wire \bf1_count[6]_i_2__0_n_0 ;
  wire [3:3]bf1_count_reg;
  wire [6:0]bf1_count_reg__0__0;
  wire [15:0]bf1_do_im;
  wire [15:0]bf1_do_re;
  wire bf1_mj__0;
  wire bf1_sp_en;
  wire bf1_sp_en_i_1__0_n_0;
  wire [15:0]bf1_sp_im;
  wire [15:0]bf1_sp_re;
  wire bf1_start;
  wire bf2_bf;
  wire \bf2_count[5]_i_2_n_0 ;
  wire \bf2_count[6]_i_2__0_n_0 ;
  wire [6:0]bf2_count_reg;
  wire bf2_ct_en;
  wire bf2_ct_en_1d;
  wire bf2_ct_en_i_1__0_n_0;
  wire bf2_ct_en_i_3__0_n_0;
  wire bf2_do_en;
  wire [15:0]bf2_do_im;
  wire [15:0]bf2_do_re;
  wire [15:0]bf2_sp_im;
  wire [15:0]bf2_sp_re;
  wire bf2_start;
  wire [3:0]\buf_im_reg[14][0]_srl15_i_1 ;
  wire [15:0]\buf_im_reg[14][11]_srl15_i_1 ;
  wire [3:0]\buf_im_reg[14][11]_srl15_i_1_0 ;
  wire [3:0]\buf_im_reg[14][3]_srl15_i_1 ;
  wire [3:0]\buf_im_reg[14][7]_srl15_i_1 ;
  wire [4:0]\buf_im_reg[15][15]__0 ;
  wire [15:0]\buf_im_reg[15]_3 ;
  wire [1:0]\buf_im_reg[3][11]__0 ;
  wire [3:0]\buf_im_reg[3][14]__0 ;
  wire [0:0]\buf_im_reg[3][15]__0 ;
  wire [15:0]\buf_im_reg[3]_5 ;
  wire [3:0]\buf_re_reg[14][11]_srl15_i_1 ;
  wire [3:0]\buf_re_reg[14][3]_srl15_i_1 ;
  wire [3:0]\buf_re_reg[14][7]_srl15_i_1 ;
  wire [4:0]\buf_re_reg[15][15]__0 ;
  wire [15:0]\buf_re_reg[15]_2 ;
  wire [3:0]\buf_re_reg[3][14]__0 ;
  wire [0:0]\buf_re_reg[3][15]__0 ;
  wire [15:0]\buf_re_reg[3]_4 ;
  wire clock;
  wire [4:0]db1_di_im;
  wire [4:0]db1_di_re;
  wire [15:0]db2_di_im;
  wire [15:0]db2_di_re;
  wire \di_count[6]_i_2__0_n_0 ;
  wire [1:0]\di_count_reg[4]_0 ;
  wire \di_count_reg_n_0_[1] ;
  wire \di_count_reg_n_0_[2] ;
  wire \di_count_reg_n_0_[3] ;
  wire \di_count_reg_n_0_[5] ;
  wire \di_count_reg_n_0_[6] ;
  wire [0:0]mu_do_en_reg_0;
  wire [3:0]\mu_do_im_reg[11]_0 ;
  wire [3:0]\mu_do_im_reg[15]_0 ;
  wire [0:0]\mu_do_im_reg[15]_1 ;
  wire [15:0]\mu_do_im_reg[15]_2 ;
  wire [3:0]\mu_do_im_reg[15]_3 ;
  wire [3:0]\mu_do_im_reg[3]_0 ;
  wire [3:0]\mu_do_im_reg[7]_0 ;
  wire [3:0]\mu_do_re_reg[11]_0 ;
  wire [3:0]\mu_do_re_reg[15]_0 ;
  wire [15:0]\mu_do_re_reg[15]_1 ;
  wire [3:0]\mu_do_re_reg[15]_2 ;
  wire [3:0]\mu_do_re_reg[3]_0 ;
  wire [3:0]\mu_do_re_reg[7]_0 ;
  wire [6:0]p_0_in__2;
  wire [6:1]p_0_in__3;
  wire [6:0]p_0_in__4;
  wire reset;
  wire su1_do_en;
  wire su2_do_en;
  wire [11:1]sub_im;
  wire [11:1]sub_re;
  wire tw_nz;
  wire tw_nz_1d;
  wire tw_nz_i_1__0_n_0;
  wire [16:1]y0_im0;
  wire [16:1]y0_re0;
  wire [16:1]y1_im0;
  wire [16:1]y1_re0;

  system_fft128_0_0_Butterfly_1 BF1
       (.CO(BF1_n_47),
        .DI(\buf_re_reg[15]_2 [3:0]),
        .O(O),
        .S(S),
        .add_im(add_im),
        .add_re(add_re),
        .\bf1_do_im_reg[10] (\buf_im_reg[15]_3 [11:8]),
        .\bf1_do_im_reg[10]_0 ({DB1_n_136,DB1_n_137,DB1_n_138,DB1_n_139}),
        .\bf1_do_im_reg[14] (DB1_n_72),
        .\bf1_do_im_reg[14]_0 ({DB1_n_68,DB1_n_69,DB1_n_70,DB1_n_71}),
        .\bf1_do_im_reg[2] (\buf_im_reg[15]_3 [3:0]),
        .\bf1_do_im_reg[2]_0 ({DB1_n_128,DB1_n_129,DB1_n_130,DB1_n_131}),
        .\bf1_do_im_reg[6] (\buf_im_reg[15]_3 [7:4]),
        .\bf1_do_im_reg[6]_0 ({DB1_n_132,DB1_n_133,DB1_n_134,DB1_n_135}),
        .\bf1_do_re_reg[10] (\buf_re_reg[15]_2 [11:8]),
        .\bf1_do_re_reg[10]_0 ({DB1_n_124,DB1_n_125,DB1_n_126,DB1_n_127}),
        .\bf1_do_re_reg[14] (DB1_n_115),
        .\bf1_do_re_reg[14]_0 ({DB1_n_64,DB1_n_65,DB1_n_66,DB1_n_67}),
        .\bf1_do_re_reg[2] ({DB1_n_116,DB1_n_117,DB1_n_118,DB1_n_119}),
        .\bf1_do_re_reg[6] (\buf_re_reg[15]_2 [7:4]),
        .\bf1_do_re_reg[6]_0 ({DB1_n_120,DB1_n_121,DB1_n_122,DB1_n_123}),
        .\buf_im_reg[14][0]_srl15_i_1 (\buf_im_reg[14][0]_srl15_i_1 ),
        .\buf_im_reg[14][11]_srl15_i_1 ({\buf_im_reg[14][11]_srl15_i_1 [15],\buf_im_reg[15]_3 [14:12]}),
        .\buf_im_reg[14][11]_srl15_i_1_0 (\buf_im_reg[14][11]_srl15_i_1_0 ),
        .\buf_im_reg[14][3]_srl15_i_1 (\buf_im_reg[14][3]_srl15_i_1 ),
        .\buf_im_reg[14][7]_srl15_i_1 (\buf_im_reg[14][7]_srl15_i_1 ),
        .\buf_im_reg[15][14]__0 (BF1_n_63),
        .\buf_re_reg[14][11]_srl15_i_1 ({Q[15],\buf_re_reg[15]_2 [14:12]}),
        .\buf_re_reg[14][11]_srl15_i_1_0 (\buf_re_reg[14][11]_srl15_i_1 ),
        .\buf_re_reg[14][3]_srl15_i_1 (\buf_re_reg[14][3]_srl15_i_1 ),
        .\buf_re_reg[14][7]_srl15_i_1 (\buf_re_reg[14][7]_srl15_i_1 ),
        .\mu_do_im_reg[15] (\mu_do_im_reg[15]_0 ),
        .\mu_do_im_reg[15]_0 (\mu_do_im_reg[15]_1 ),
        .\mu_do_re_reg[15] (\mu_do_re_reg[15]_0 ),
        .sub_im(sub_im),
        .sub_re(sub_re));
  system_fft128_0_0_Butterfly__parameterized0_2 BF2
       (.DI(DB2_n_96),
        .Q(bf1_do_re[15]),
        .S({DB2_n_32,DB2_n_33,DB2_n_34,DB2_n_35}),
        .y0_im0(y0_im0),
        .y0_im0__47_carry_0(DB2_n_28),
        .y0_im0__47_carry_1(DB2_n_29),
        .y0_im0__47_carry_2(DB2_n_30),
        .y0_im0__47_carry_3(DB2_n_31),
        .y0_im0__47_carry_4(DB2_n_24),
        .y0_im0__47_carry_5(DB2_n_25),
        .y0_im0__47_carry_6(DB2_n_26),
        .y0_im0__47_carry_7(DB2_n_27),
        .y0_im0__47_carry_8({DB2_n_84,DB2_n_85,DB2_n_86,DB2_n_87}),
        .y0_im0__47_carry_9({DB2_n_88,DB2_n_89,DB2_n_90,DB2_n_91}),
        .y0_im0__47_carry__0_0(DB2_n_20),
        .y0_im0__47_carry__0_1(DB2_n_21),
        .y0_im0__47_carry__0_2(DB2_n_22),
        .y0_im0__47_carry__0_3(DB2_n_23),
        .y0_im0__47_carry__0_4({DB2_n_92,DB2_n_93,DB2_n_94,DB2_n_95}),
        .y0_im0__47_carry__1_0(DB2_n_17),
        .y0_im0__47_carry__1_1(DB2_n_18),
        .y0_im0__47_carry__1_2(DB2_n_19),
        .y0_im0__47_carry__1_3(DB2_n_97),
        .y0_im0__47_carry__1_4({DB2_n_68,DB2_n_69,DB2_n_70,DB2_n_71}),
        .y0_re0(y0_re0),
        .y0_re0__47_carry_0(DB2_n_12),
        .y0_re0__47_carry_1(DB2_n_13),
        .y0_re0__47_carry_2(DB2_n_14),
        .y0_re0__47_carry_3(DB2_n_15),
        .y0_re0__47_carry_4(DB2_n_8),
        .y0_re0__47_carry_5(DB2_n_9),
        .y0_re0__47_carry_6(DB2_n_10),
        .y0_re0__47_carry_7(DB2_n_11),
        .y0_re0__47_carry_8({DB2_n_72,DB2_n_73,DB2_n_74,DB2_n_75}),
        .y0_re0__47_carry_9({DB2_n_76,DB2_n_77,DB2_n_78,DB2_n_79}),
        .y0_re0__47_carry__0_0(DB2_n_4),
        .y0_re0__47_carry__0_1(DB2_n_5),
        .y0_re0__47_carry__0_2(DB2_n_6),
        .y0_re0__47_carry__0_3(DB2_n_7),
        .y0_re0__47_carry__0_4({DB2_n_80,DB2_n_81,DB2_n_82,DB2_n_83}),
        .y0_re0__47_carry__1_0(DB2_n_1),
        .y0_re0__47_carry__1_1(DB2_n_2),
        .y0_re0__47_carry__1_2(DB2_n_3),
        .y0_re0__47_carry__1_3({DB2_n_64,DB2_n_65,DB2_n_66,DB2_n_67}),
        .y1_im0(y1_im0),
        .y1_im0__47_carry_0({DB2_n_48,DB2_n_49,DB2_n_50,DB2_n_51}),
        .y1_im0__47_carry_1({DB2_n_52,DB2_n_53,DB2_n_54,DB2_n_55}),
        .y1_im0__47_carry__0_0({DB2_n_56,DB2_n_57,DB2_n_58,DB2_n_59}),
        .y1_im0__47_carry__1_0(bf1_do_im[15]),
        .y1_im0__47_carry__1_1({DB2_n_60,DB2_n_61,DB2_n_62,DB2_n_63}),
        .y1_re0(y1_re0),
        .y1_re0__47_carry_0({DB2_n_36,DB2_n_37,DB2_n_38,DB2_n_39}),
        .y1_re0__47_carry__0_0({DB2_n_40,DB2_n_41,DB2_n_42,DB2_n_43}),
        .y1_re0__47_carry__1_0({DB2_n_44,DB2_n_45,DB2_n_46,DB2_n_47}));
  system_fft128_0_0_DelayBuffer__parameterized1 DB1
       (.CO(BF1_n_47),
        .D(bf1_sp_re),
        .DI(\buf_re_reg[15]_2 [3:0]),
        .Q(Q),
        .add_im(add_im),
        .add_im_carry__2(\buf_im_reg[14][11]_srl15_i_1 ),
        .add_re(add_re),
        .\bf1_count_reg[3] (bf1_sp_im),
        .\bf1_do_im_reg[15] (BF1_n_63),
        .\bf1_do_re_reg[14] (\di_count_reg[4]_0 [1]),
        .\bf1_do_re_reg[15] ({bf1_count_reg__0__0[4],bf1_count_reg}),
        .\buf_im_reg[15][11]__0_0 (\buf_im_reg[15]_3 [11:8]),
        .\buf_im_reg[15][11]__0_1 ({DB1_n_136,DB1_n_137,DB1_n_138,DB1_n_139}),
        .\buf_im_reg[15][14]__0_0 (\buf_im_reg[15]_3 [14:12]),
        .\buf_im_reg[15][15]__0_0 (\buf_im_reg[15]_3 [15]),
        .\buf_im_reg[15][15]__0_1 ({DB1_n_68,DB1_n_69,DB1_n_70,DB1_n_71}),
        .\buf_im_reg[15][15]__0_2 (DB1_n_72),
        .\buf_im_reg[15][15]__0_3 (\buf_im_reg[15][15]__0 ),
        .\buf_im_reg[15][3]__0_0 (\buf_im_reg[15]_3 [3:0]),
        .\buf_im_reg[15][3]__0_1 ({DB1_n_128,DB1_n_129,DB1_n_130,DB1_n_131}),
        .\buf_im_reg[15][7]__0_0 (\buf_im_reg[15]_3 [7:4]),
        .\buf_im_reg[15][7]__0_1 ({DB1_n_132,DB1_n_133,DB1_n_134,DB1_n_135}),
        .\buf_im_reg[3][11]__0 (\buf_im_reg[3][11]__0 [1]),
        .\buf_im_reg[3][14]__0 (\buf_im_reg[3][14]__0 ),
        .\buf_im_reg[3][15]__0 (\mu_do_im_reg[15]_2 ),
        .\buf_im_reg[3][15]__0_0 (\buf_im_reg[3][15]__0 ),
        .\buf_im_reg[3]_5 (\buf_im_reg[3]_5 ),
        .\buf_re_reg[15][11]__0_0 (\buf_re_reg[15]_2 [11:8]),
        .\buf_re_reg[15][11]__0_1 ({DB1_n_124,DB1_n_125,DB1_n_126,DB1_n_127}),
        .\buf_re_reg[15][14]__0_0 (\buf_re_reg[15]_2 [14:12]),
        .\buf_re_reg[15][15]__0_0 (\buf_re_reg[15]_2 [15]),
        .\buf_re_reg[15][15]__0_1 ({DB1_n_64,DB1_n_65,DB1_n_66,DB1_n_67}),
        .\buf_re_reg[15][15]__0_2 (DB1_n_115),
        .\buf_re_reg[15][15]__0_3 (\buf_re_reg[15][15]__0 ),
        .\buf_re_reg[15][3]__0_0 ({DB1_n_116,DB1_n_117,DB1_n_118,DB1_n_119}),
        .\buf_re_reg[15][7]__0_0 (\buf_re_reg[15]_2 [7:4]),
        .\buf_re_reg[15][7]__0_1 ({DB1_n_120,DB1_n_121,DB1_n_122,DB1_n_123}),
        .\buf_re_reg[3][14]__0 (\buf_re_reg[3][14]__0 ),
        .\buf_re_reg[3][15]__0 (\mu_do_re_reg[15]_1 ),
        .\buf_re_reg[3][15]__0_0 (\buf_re_reg[3][15]__0 ),
        .\buf_re_reg[3]_4 (\buf_re_reg[3]_4 ),
        .clock(clock),
        .db1_di_im(db1_di_im),
        .db1_di_re(db1_di_re),
        .\mu_do_im_reg[11] (\mu_do_im_reg[11]_0 ),
        .\mu_do_im_reg[15] (\mu_do_im_reg[15]_3 ),
        .\mu_do_im_reg[3] (\mu_do_im_reg[3]_0 ),
        .\mu_do_im_reg[7] (\mu_do_im_reg[7]_0 ),
        .\mu_do_re_reg[11] (\mu_do_re_reg[11]_0 ),
        .\mu_do_re_reg[15] (\mu_do_re_reg[15]_2 ),
        .\mu_do_re_reg[3] (\mu_do_re_reg[3]_0 ),
        .\mu_do_re_reg[7] (\mu_do_re_reg[7]_0 ),
        .sub_im(sub_im),
        .sub_re(sub_re));
  system_fft128_0_0_DelayBuffer__parameterized2 DB2
       (.DI(DB2_n_96),
        .Q(bf1_do_re),
        .S({DB2_n_32,DB2_n_33,DB2_n_34,DB2_n_35}),
        .\bf1_do_im_reg[11] ({DB2_n_56,DB2_n_57,DB2_n_58,DB2_n_59}),
        .\bf1_do_im_reg[15] ({DB2_n_60,DB2_n_61,DB2_n_62,DB2_n_63}),
        .\bf1_do_im_reg[3] ({DB2_n_48,DB2_n_49,DB2_n_50,DB2_n_51}),
        .\bf1_do_im_reg[7] ({DB2_n_52,DB2_n_53,DB2_n_54,DB2_n_55}),
        .\bf1_do_re_reg[11] ({DB2_n_40,DB2_n_41,DB2_n_42,DB2_n_43}),
        .\bf1_do_re_reg[15] ({DB2_n_44,DB2_n_45,DB2_n_46,DB2_n_47}),
        .\bf1_do_re_reg[7] ({DB2_n_36,DB2_n_37,DB2_n_38,DB2_n_39}),
        .\buf_im_reg[7][0]__0_0 (DB2_n_31),
        .\buf_im_reg[7][10]__0_0 (DB2_n_21),
        .\buf_im_reg[7][11]__0_0 (DB2_n_20),
        .\buf_im_reg[7][11]__0_1 ({DB2_n_92,DB2_n_93,DB2_n_94,DB2_n_95}),
        .\buf_im_reg[7][12]__0_0 (DB2_n_19),
        .\buf_im_reg[7][13]__0_0 (DB2_n_18),
        .\buf_im_reg[7][14]__0_0 (DB2_n_17),
        .\buf_im_reg[7][15]__0_0 (DB2_n_16),
        .\buf_im_reg[7][15]__0_1 ({DB2_n_68,DB2_n_69,DB2_n_70,DB2_n_71}),
        .\buf_im_reg[7][15]__0_2 (DB2_n_97),
        .\buf_im_reg[7][1]__0_0 (DB2_n_30),
        .\buf_im_reg[7][2]__0_0 (DB2_n_29),
        .\buf_im_reg[7][3]__0_0 (DB2_n_28),
        .\buf_im_reg[7][3]__0_1 ({DB2_n_84,DB2_n_85,DB2_n_86,DB2_n_87}),
        .\buf_im_reg[7][4]__0_0 (DB2_n_27),
        .\buf_im_reg[7][5]__0_0 (DB2_n_26),
        .\buf_im_reg[7][6]__0_0 (DB2_n_25),
        .\buf_im_reg[7][7]__0_0 (DB2_n_24),
        .\buf_im_reg[7][7]__0_1 ({DB2_n_88,DB2_n_89,DB2_n_90,DB2_n_91}),
        .\buf_im_reg[7][8]__0_0 (DB2_n_23),
        .\buf_im_reg[7][9]__0_0 (DB2_n_22),
        .\buf_re_reg[7][0]__0_0 (DB2_n_15),
        .\buf_re_reg[7][10]__0_0 (DB2_n_5),
        .\buf_re_reg[7][11]__0_0 (DB2_n_4),
        .\buf_re_reg[7][11]__0_1 ({DB2_n_80,DB2_n_81,DB2_n_82,DB2_n_83}),
        .\buf_re_reg[7][12]__0_0 (DB2_n_3),
        .\buf_re_reg[7][13]__0_0 (DB2_n_2),
        .\buf_re_reg[7][14]__0_0 (DB2_n_1),
        .\buf_re_reg[7][15]__0_0 (DB2_n_0),
        .\buf_re_reg[7][15]__0_1 ({DB2_n_64,DB2_n_65,DB2_n_66,DB2_n_67}),
        .\buf_re_reg[7][1]__0_0 (DB2_n_14),
        .\buf_re_reg[7][2]__0_0 (DB2_n_13),
        .\buf_re_reg[7][3]__0_0 (DB2_n_12),
        .\buf_re_reg[7][3]__0_1 ({DB2_n_72,DB2_n_73,DB2_n_74,DB2_n_75}),
        .\buf_re_reg[7][4]__0_0 (DB2_n_11),
        .\buf_re_reg[7][5]__0_0 (DB2_n_10),
        .\buf_re_reg[7][6]__0_0 (DB2_n_9),
        .\buf_re_reg[7][7]__0_0 (DB2_n_8),
        .\buf_re_reg[7][7]__0_1 ({DB2_n_76,DB2_n_77,DB2_n_78,DB2_n_79}),
        .\buf_re_reg[7][8]__0_0 (DB2_n_7),
        .\buf_re_reg[7][9]__0_0 (DB2_n_6),
        .clock(clock),
        .db2_di_im(db2_di_im),
        .db2_di_re(db2_di_re),
        .y0_im0_carry__2(bf1_do_im));
  system_fft128_0_0_Multiply_3 MU
       (.A(bf2_sp_re),
        .B({TC_n_0,TC_n_1,TC_n_2,TC_n_3,TC_n_4,TC_n_5,TC_n_6,TC_n_7,TC_n_8,TC_n_9,TC_n_10,TC_n_11,TC_n_12,TC_n_13,TC_n_14,TC_n_15}),
        .Q(bf2_do_re),
        .aibi_0({TC_n_16,TC_n_17,TC_n_18,TC_n_19,TC_n_20,TC_n_21,TC_n_22,TC_n_23,TC_n_24,TC_n_25,TC_n_26,TC_n_27,TC_n_28,TC_n_29,TC_n_30,TC_n_31}),
        .aibi_1(bf2_sp_im),
        .aibr_0({MU_n_16,MU_n_17,MU_n_18,MU_n_19,MU_n_20,MU_n_21,MU_n_22,MU_n_23,MU_n_24,MU_n_25,MU_n_26,MU_n_27,MU_n_28,MU_n_29,MU_n_30,MU_n_31}),
        .clock(clock),
        .\mu_do_im_reg[15] (bf2_do_im),
        .out({MU_n_0,MU_n_1,MU_n_2,MU_n_3,MU_n_4,MU_n_5,MU_n_6,MU_n_7,MU_n_8,MU_n_9,MU_n_10,MU_n_11,MU_n_12,MU_n_13,MU_n_14,MU_n_15}),
        .tw_nz_1d(tw_nz_1d));
  system_fft128_0_0_TwiddleConvert8_4 TC
       (.ADDRBWRADDR(ADDRBWRADDR[0]),
        .B({TC_n_0,TC_n_1,TC_n_2,TC_n_3,TC_n_4,TC_n_5,TC_n_6,TC_n_7,TC_n_8,TC_n_9,TC_n_10,TC_n_11,TC_n_12,TC_n_13,TC_n_14,TC_n_15}),
        .DOBDO(DOBDO),
        .Q(bf2_count_reg[4:0]),
        .aibi(aibi),
        .arbr(arbr),
        .arbr_i_25__0_0(arbr_i_25__0),
        .arbr_i_25__0_1(arbr_i_25__0_0),
        .arbr_i_33__0_0(arbr_i_33__0),
        .arbr_i_33__0_1(arbr_i_33__0_0),
        .arbr_i_41__0_0(arbr_i_41__0),
        .arbr_i_41__0_1(arbr_i_41__0_0),
        .arbr_i_47__0_0(arbr_i_47__0),
        .clock(clock),
        .\ff_addr_reg[5]_0 ({TC_n_16,TC_n_17,TC_n_18,TC_n_19,TC_n_20,TC_n_21,TC_n_22,TC_n_23,TC_n_24,TC_n_25,TC_n_26,TC_n_27,TC_n_28,TC_n_29,TC_n_30,TC_n_31}));
  LUT3 #(
    .INIT(8'hB8)) 
    aibi_i_17
       (.I0(y0_im0[16]),
        .I1(bf2_bf),
        .I2(DB2_n_16),
        .O(bf2_sp_im[15]));
  LUT3 #(
    .INIT(8'hB8)) 
    aibi_i_18
       (.I0(y0_im0[15]),
        .I1(bf2_bf),
        .I2(DB2_n_17),
        .O(bf2_sp_im[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    aibi_i_19
       (.I0(y0_im0[14]),
        .I1(bf2_bf),
        .I2(DB2_n_18),
        .O(bf2_sp_im[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    aibi_i_20
       (.I0(y0_im0[13]),
        .I1(bf2_bf),
        .I2(DB2_n_19),
        .O(bf2_sp_im[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    aibi_i_21
       (.I0(y0_im0[12]),
        .I1(bf2_bf),
        .I2(DB2_n_20),
        .O(bf2_sp_im[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    aibi_i_22
       (.I0(y0_im0[11]),
        .I1(bf2_bf),
        .I2(DB2_n_21),
        .O(bf2_sp_im[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    aibi_i_23
       (.I0(y0_im0[10]),
        .I1(bf2_bf),
        .I2(DB2_n_22),
        .O(bf2_sp_im[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    aibi_i_24
       (.I0(y0_im0[9]),
        .I1(bf2_bf),
        .I2(DB2_n_23),
        .O(bf2_sp_im[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    aibi_i_25
       (.I0(y0_im0[8]),
        .I1(bf2_bf),
        .I2(DB2_n_24),
        .O(bf2_sp_im[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    aibi_i_26
       (.I0(y0_im0[7]),
        .I1(bf2_bf),
        .I2(DB2_n_25),
        .O(bf2_sp_im[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    aibi_i_27
       (.I0(y0_im0[6]),
        .I1(bf2_bf),
        .I2(DB2_n_26),
        .O(bf2_sp_im[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    aibi_i_28
       (.I0(y0_im0[5]),
        .I1(bf2_bf),
        .I2(DB2_n_27),
        .O(bf2_sp_im[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    aibi_i_29
       (.I0(y0_im0[4]),
        .I1(bf2_bf),
        .I2(DB2_n_28),
        .O(bf2_sp_im[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    aibi_i_30
       (.I0(y0_im0[3]),
        .I1(bf2_bf),
        .I2(DB2_n_29),
        .O(bf2_sp_im[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    aibi_i_31
       (.I0(y0_im0[2]),
        .I1(bf2_bf),
        .I2(DB2_n_30),
        .O(bf2_sp_im[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    aibi_i_32
       (.I0(y0_im0[1]),
        .I1(bf2_bf),
        .I2(DB2_n_31),
        .O(bf2_sp_im[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \bf1_count[0]_i_1__0 
       (.I0(bf1_sp_en),
        .I1(bf1_count_reg__0__0[0]),
        .O(p_0_in__4[0]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \bf1_count[1]_i_1__0 
       (.I0(bf1_sp_en),
        .I1(bf1_count_reg__0__0[0]),
        .I2(bf1_count_reg__0__0[1]),
        .O(p_0_in__4[1]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \bf1_count[2]_i_1__0 
       (.I0(bf1_count_reg__0__0[1]),
        .I1(bf1_count_reg__0__0[0]),
        .I2(bf1_sp_en),
        .I3(bf1_count_reg__0__0[2]),
        .O(p_0_in__4[2]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \bf1_count[3]_i_1__0 
       (.I0(bf1_count_reg__0__0[0]),
        .I1(bf1_count_reg__0__0[1]),
        .I2(bf1_count_reg__0__0[2]),
        .I3(bf1_sp_en),
        .I4(bf1_count_reg),
        .O(p_0_in__4[3]));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \bf1_count[4]_i_1__0 
       (.I0(bf1_count_reg),
        .I1(bf1_count_reg__0__0[2]),
        .I2(bf1_count_reg__0__0[1]),
        .I3(bf1_count_reg__0__0[0]),
        .I4(bf1_sp_en),
        .I5(bf1_count_reg__0__0[4]),
        .O(p_0_in__4[4]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT5 #(
    .INIT(32'hBF004000)) 
    \bf1_count[5]_i_1__0 
       (.I0(\bf1_count[6]_i_2__0_n_0 ),
        .I1(bf1_count_reg),
        .I2(bf1_count_reg__0__0[4]),
        .I3(bf1_sp_en),
        .I4(bf1_count_reg__0__0[5]),
        .O(p_0_in__4[5]));
  LUT6 #(
    .INIT(64'hF7FF000008000000)) 
    \bf1_count[6]_i_1__0 
       (.I0(bf1_count_reg__0__0[4]),
        .I1(bf1_count_reg),
        .I2(\bf1_count[6]_i_2__0_n_0 ),
        .I3(bf1_count_reg__0__0[5]),
        .I4(bf1_sp_en),
        .I5(bf1_count_reg__0__0[6]),
        .O(p_0_in__4[6]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \bf1_count[6]_i_2__0 
       (.I0(bf1_count_reg__0__0[0]),
        .I1(bf1_count_reg__0__0[1]),
        .I2(bf1_count_reg__0__0[2]),
        .O(\bf1_count[6]_i_2__0_n_0 ));
  FDCE \bf1_count_reg[0] 
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in__4[0]),
        .Q(bf1_count_reg__0__0[0]));
  FDCE \bf1_count_reg[1] 
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in__4[1]),
        .Q(bf1_count_reg__0__0[1]));
  FDCE \bf1_count_reg[2] 
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in__4[2]),
        .Q(bf1_count_reg__0__0[2]));
  FDCE \bf1_count_reg[3] 
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in__4[3]),
        .Q(bf1_count_reg));
  FDCE \bf1_count_reg[4] 
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in__4[4]),
        .Q(bf1_count_reg__0__0[4]));
  FDCE \bf1_count_reg[5] 
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in__4[5]),
        .Q(bf1_count_reg__0__0[5]));
  FDCE \bf1_count_reg[6] 
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in__4[6]),
        .Q(bf1_count_reg__0__0[6]));
  FDRE \bf1_do_im_reg[0] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_im[0]),
        .Q(bf1_do_im[0]),
        .R(1'b0));
  FDRE \bf1_do_im_reg[10] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_im[10]),
        .Q(bf1_do_im[10]),
        .R(1'b0));
  FDRE \bf1_do_im_reg[11] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_im[11]),
        .Q(bf1_do_im[11]),
        .R(1'b0));
  FDRE \bf1_do_im_reg[12] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_im[12]),
        .Q(bf1_do_im[12]),
        .R(1'b0));
  FDRE \bf1_do_im_reg[13] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_im[13]),
        .Q(bf1_do_im[13]),
        .R(1'b0));
  FDRE \bf1_do_im_reg[14] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_im[14]),
        .Q(bf1_do_im[14]),
        .R(1'b0));
  FDRE \bf1_do_im_reg[15] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_im[15]),
        .Q(bf1_do_im[15]),
        .R(1'b0));
  FDRE \bf1_do_im_reg[1] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_im[1]),
        .Q(bf1_do_im[1]),
        .R(1'b0));
  FDRE \bf1_do_im_reg[2] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_im[2]),
        .Q(bf1_do_im[2]),
        .R(1'b0));
  FDRE \bf1_do_im_reg[3] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_im[3]),
        .Q(bf1_do_im[3]),
        .R(1'b0));
  FDRE \bf1_do_im_reg[4] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_im[4]),
        .Q(bf1_do_im[4]),
        .R(1'b0));
  FDRE \bf1_do_im_reg[5] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_im[5]),
        .Q(bf1_do_im[5]),
        .R(1'b0));
  FDRE \bf1_do_im_reg[6] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_im[6]),
        .Q(bf1_do_im[6]),
        .R(1'b0));
  FDRE \bf1_do_im_reg[7] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_im[7]),
        .Q(bf1_do_im[7]),
        .R(1'b0));
  FDRE \bf1_do_im_reg[8] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_im[8]),
        .Q(bf1_do_im[8]),
        .R(1'b0));
  FDRE \bf1_do_im_reg[9] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_im[9]),
        .Q(bf1_do_im[9]),
        .R(1'b0));
  FDRE \bf1_do_re_reg[0] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_re[0]),
        .Q(bf1_do_re[0]),
        .R(1'b0));
  FDRE \bf1_do_re_reg[10] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_re[10]),
        .Q(bf1_do_re[10]),
        .R(1'b0));
  FDRE \bf1_do_re_reg[11] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_re[11]),
        .Q(bf1_do_re[11]),
        .R(1'b0));
  FDRE \bf1_do_re_reg[12] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_re[12]),
        .Q(bf1_do_re[12]),
        .R(1'b0));
  FDRE \bf1_do_re_reg[13] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_re[13]),
        .Q(bf1_do_re[13]),
        .R(1'b0));
  FDRE \bf1_do_re_reg[14] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_re[14]),
        .Q(bf1_do_re[14]),
        .R(1'b0));
  FDRE \bf1_do_re_reg[15] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_re[15]),
        .Q(bf1_do_re[15]),
        .R(1'b0));
  FDRE \bf1_do_re_reg[1] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_re[1]),
        .Q(bf1_do_re[1]),
        .R(1'b0));
  FDRE \bf1_do_re_reg[2] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_re[2]),
        .Q(bf1_do_re[2]),
        .R(1'b0));
  FDRE \bf1_do_re_reg[3] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_re[3]),
        .Q(bf1_do_re[3]),
        .R(1'b0));
  FDRE \bf1_do_re_reg[4] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_re[4]),
        .Q(bf1_do_re[4]),
        .R(1'b0));
  FDRE \bf1_do_re_reg[5] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_re[5]),
        .Q(bf1_do_re[5]),
        .R(1'b0));
  FDRE \bf1_do_re_reg[6] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_re[6]),
        .Q(bf1_do_re[6]),
        .R(1'b0));
  FDRE \bf1_do_re_reg[7] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_re[7]),
        .Q(bf1_do_re[7]),
        .R(1'b0));
  FDRE \bf1_do_re_reg[8] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_re[8]),
        .Q(bf1_do_re[8]),
        .R(1'b0));
  FDRE \bf1_do_re_reg[9] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_re[9]),
        .Q(bf1_do_re[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFBFFFFFFF0000)) 
    bf1_sp_en_i_1__0
       (.I0(\bf1_count[6]_i_2__0_n_0 ),
        .I1(bf1_mj__0),
        .I2(bf1_count_reg__0__0[6]),
        .I3(bf1_count_reg__0__0[5]),
        .I4(bf1_start),
        .I5(bf1_sp_en),
        .O(bf1_sp_en_i_1__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h8)) 
    bf1_sp_en_i_2__1
       (.I0(bf1_count_reg),
        .I1(bf1_count_reg__0__0[4]),
        .O(bf1_mj__0));
  LUT5 #(
    .INIT(32'h00000010)) 
    bf1_sp_en_i_3
       (.I0(\di_count_reg_n_0_[5] ),
        .I1(\di_count_reg_n_0_[6] ),
        .I2(\di_count_reg_n_0_[3] ),
        .I3(\di_count_reg[4]_0 [1]),
        .I4(\di_count[6]_i_2__0_n_0 ),
        .O(bf1_start));
  FDCE bf1_sp_en_reg
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(bf1_sp_en_i_1__0_n_0),
        .Q(bf1_sp_en));
  FDRE bf2_bf_reg
       (.C(clock),
        .CE(1'b1),
        .D(bf1_count_reg),
        .Q(bf2_bf),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \bf2_count[0]_i_1__0 
       (.I0(bf2_ct_en),
        .I1(bf2_count_reg[0]),
        .O(p_0_in__2[0]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \bf2_count[1]_i_1__0 
       (.I0(bf2_ct_en),
        .I1(bf2_count_reg[0]),
        .I2(bf2_count_reg[1]),
        .O(p_0_in__2[1]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \bf2_count[2]_i_1__0 
       (.I0(bf2_count_reg[0]),
        .I1(bf2_count_reg[1]),
        .I2(bf2_ct_en),
        .I3(bf2_count_reg[2]),
        .O(p_0_in__2[2]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \bf2_count[3]_i_1__0 
       (.I0(bf2_count_reg[1]),
        .I1(bf2_count_reg[0]),
        .I2(bf2_count_reg[2]),
        .I3(bf2_ct_en),
        .I4(bf2_count_reg[3]),
        .O(p_0_in__2[3]));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \bf2_count[4]_i_1__0 
       (.I0(bf2_count_reg[3]),
        .I1(bf2_count_reg[2]),
        .I2(bf2_count_reg[1]),
        .I3(bf2_count_reg[0]),
        .I4(bf2_ct_en),
        .I5(bf2_count_reg[4]),
        .O(p_0_in__2[4]));
  LUT6 #(
    .INIT(64'hF7FF000008000000)) 
    \bf2_count[5]_i_1__0 
       (.I0(bf2_count_reg[0]),
        .I1(bf2_count_reg[1]),
        .I2(\bf2_count[5]_i_2_n_0 ),
        .I3(bf2_count_reg[4]),
        .I4(bf2_ct_en),
        .I5(bf2_count_reg[5]),
        .O(p_0_in__2[5]));
  LUT2 #(
    .INIT(4'h7)) 
    \bf2_count[5]_i_2 
       (.I0(bf2_count_reg[2]),
        .I1(bf2_count_reg[3]),
        .O(\bf2_count[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT4 #(
    .INIT(16'hB040)) 
    \bf2_count[6]_i_1__0 
       (.I0(\bf2_count[6]_i_2__0_n_0 ),
        .I1(bf2_count_reg[5]),
        .I2(bf2_ct_en),
        .I3(bf2_count_reg[6]),
        .O(p_0_in__2[6]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \bf2_count[6]_i_2__0 
       (.I0(bf2_count_reg[0]),
        .I1(bf2_count_reg[1]),
        .I2(bf2_count_reg[2]),
        .I3(bf2_count_reg[3]),
        .I4(bf2_count_reg[4]),
        .O(\bf2_count[6]_i_2__0_n_0 ));
  FDCE \bf2_count_reg[0] 
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in__2[0]),
        .Q(bf2_count_reg[0]));
  FDCE \bf2_count_reg[1] 
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in__2[1]),
        .Q(bf2_count_reg[1]));
  FDCE \bf2_count_reg[2] 
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in__2[2]),
        .Q(bf2_count_reg[2]));
  FDCE \bf2_count_reg[3] 
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in__2[3]),
        .Q(bf2_count_reg[3]));
  FDCE \bf2_count_reg[4] 
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in__2[4]),
        .Q(bf2_count_reg[4]));
  FDCE \bf2_count_reg[5] 
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in__2[5]),
        .Q(bf2_count_reg[5]));
  FDCE \bf2_count_reg[6] 
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in__2[6]),
        .Q(bf2_count_reg[6]));
  FDRE bf2_ct_en_1d_reg
       (.C(clock),
        .CE(1'b1),
        .D(bf2_ct_en),
        .Q(bf2_ct_en_1d),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFEFFFAAAAAAAA)) 
    bf2_ct_en_i_1__0
       (.I0(bf2_start),
        .I1(bf2_ct_en_i_3__0_n_0),
        .I2(bf2_count_reg[6]),
        .I3(bf2_count_reg[5]),
        .I4(\bf2_count[5]_i_2_n_0 ),
        .I5(bf2_ct_en),
        .O(bf2_ct_en_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    bf2_ct_en_i_2__0
       (.I0(bf1_count_reg__0__0[5]),
        .I1(bf1_count_reg__0__0[6]),
        .I2(bf1_count_reg__0__0[4]),
        .I3(bf1_count_reg),
        .I4(bf1_sp_en),
        .I5(\bf1_count[6]_i_2__0_n_0 ),
        .O(bf2_start));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    bf2_ct_en_i_3__0
       (.I0(bf2_count_reg[1]),
        .I1(bf2_count_reg[0]),
        .I2(bf2_count_reg[4]),
        .O(bf2_ct_en_i_3__0_n_0));
  FDCE bf2_ct_en_reg
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(bf2_ct_en_i_1__0_n_0),
        .Q(bf2_ct_en));
  FDCE bf2_do_en_reg
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(bf2_ct_en_1d),
        .Q(bf2_do_en));
  FDRE \bf2_do_im_reg[0] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_im[0]),
        .Q(bf2_do_im[0]),
        .R(1'b0));
  FDRE \bf2_do_im_reg[10] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_im[10]),
        .Q(bf2_do_im[10]),
        .R(1'b0));
  FDRE \bf2_do_im_reg[11] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_im[11]),
        .Q(bf2_do_im[11]),
        .R(1'b0));
  FDRE \bf2_do_im_reg[12] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_im[12]),
        .Q(bf2_do_im[12]),
        .R(1'b0));
  FDRE \bf2_do_im_reg[13] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_im[13]),
        .Q(bf2_do_im[13]),
        .R(1'b0));
  FDRE \bf2_do_im_reg[14] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_im[14]),
        .Q(bf2_do_im[14]),
        .R(1'b0));
  FDRE \bf2_do_im_reg[15] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_im[15]),
        .Q(bf2_do_im[15]),
        .R(1'b0));
  FDRE \bf2_do_im_reg[1] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_im[1]),
        .Q(bf2_do_im[1]),
        .R(1'b0));
  FDRE \bf2_do_im_reg[2] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_im[2]),
        .Q(bf2_do_im[2]),
        .R(1'b0));
  FDRE \bf2_do_im_reg[3] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_im[3]),
        .Q(bf2_do_im[3]),
        .R(1'b0));
  FDRE \bf2_do_im_reg[4] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_im[4]),
        .Q(bf2_do_im[4]),
        .R(1'b0));
  FDRE \bf2_do_im_reg[5] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_im[5]),
        .Q(bf2_do_im[5]),
        .R(1'b0));
  FDRE \bf2_do_im_reg[6] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_im[6]),
        .Q(bf2_do_im[6]),
        .R(1'b0));
  FDRE \bf2_do_im_reg[7] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_im[7]),
        .Q(bf2_do_im[7]),
        .R(1'b0));
  FDRE \bf2_do_im_reg[8] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_im[8]),
        .Q(bf2_do_im[8]),
        .R(1'b0));
  FDRE \bf2_do_im_reg[9] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_im[9]),
        .Q(bf2_do_im[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    \bf2_do_re[0]_i_1 
       (.I0(y0_re0[1]),
        .I1(bf2_bf),
        .I2(DB2_n_15),
        .O(bf2_sp_re[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bf2_do_re[10]_i_1 
       (.I0(y0_re0[11]),
        .I1(bf2_bf),
        .I2(DB2_n_5),
        .O(bf2_sp_re[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bf2_do_re[11]_i_1 
       (.I0(y0_re0[12]),
        .I1(bf2_bf),
        .I2(DB2_n_4),
        .O(bf2_sp_re[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bf2_do_re[12]_i_1 
       (.I0(y0_re0[13]),
        .I1(bf2_bf),
        .I2(DB2_n_3),
        .O(bf2_sp_re[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bf2_do_re[13]_i_1 
       (.I0(y0_re0[14]),
        .I1(bf2_bf),
        .I2(DB2_n_2),
        .O(bf2_sp_re[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bf2_do_re[14]_i_1 
       (.I0(y0_re0[15]),
        .I1(bf2_bf),
        .I2(DB2_n_1),
        .O(bf2_sp_re[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bf2_do_re[15]_i_1 
       (.I0(y0_re0[16]),
        .I1(bf2_bf),
        .I2(DB2_n_0),
        .O(bf2_sp_re[15]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bf2_do_re[1]_i_1 
       (.I0(y0_re0[2]),
        .I1(bf2_bf),
        .I2(DB2_n_14),
        .O(bf2_sp_re[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bf2_do_re[2]_i_1 
       (.I0(y0_re0[3]),
        .I1(bf2_bf),
        .I2(DB2_n_13),
        .O(bf2_sp_re[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bf2_do_re[3]_i_1 
       (.I0(y0_re0[4]),
        .I1(bf2_bf),
        .I2(DB2_n_12),
        .O(bf2_sp_re[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bf2_do_re[4]_i_1 
       (.I0(y0_re0[5]),
        .I1(bf2_bf),
        .I2(DB2_n_11),
        .O(bf2_sp_re[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bf2_do_re[5]_i_1 
       (.I0(y0_re0[6]),
        .I1(bf2_bf),
        .I2(DB2_n_10),
        .O(bf2_sp_re[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bf2_do_re[6]_i_1 
       (.I0(y0_re0[7]),
        .I1(bf2_bf),
        .I2(DB2_n_9),
        .O(bf2_sp_re[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bf2_do_re[7]_i_1 
       (.I0(y0_re0[8]),
        .I1(bf2_bf),
        .I2(DB2_n_8),
        .O(bf2_sp_re[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bf2_do_re[8]_i_1 
       (.I0(y0_re0[9]),
        .I1(bf2_bf),
        .I2(DB2_n_7),
        .O(bf2_sp_re[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bf2_do_re[9]_i_1 
       (.I0(y0_re0[10]),
        .I1(bf2_bf),
        .I2(DB2_n_6),
        .O(bf2_sp_re[9]));
  FDRE \bf2_do_re_reg[0] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_re[0]),
        .Q(bf2_do_re[0]),
        .R(1'b0));
  FDRE \bf2_do_re_reg[10] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_re[10]),
        .Q(bf2_do_re[10]),
        .R(1'b0));
  FDRE \bf2_do_re_reg[11] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_re[11]),
        .Q(bf2_do_re[11]),
        .R(1'b0));
  FDRE \bf2_do_re_reg[12] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_re[12]),
        .Q(bf2_do_re[12]),
        .R(1'b0));
  FDRE \bf2_do_re_reg[13] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_re[13]),
        .Q(bf2_do_re[13]),
        .R(1'b0));
  FDRE \bf2_do_re_reg[14] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_re[14]),
        .Q(bf2_do_re[14]),
        .R(1'b0));
  FDRE \bf2_do_re_reg[15] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_re[15]),
        .Q(bf2_do_re[15]),
        .R(1'b0));
  FDRE \bf2_do_re_reg[1] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_re[1]),
        .Q(bf2_do_re[1]),
        .R(1'b0));
  FDRE \bf2_do_re_reg[2] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_re[2]),
        .Q(bf2_do_re[2]),
        .R(1'b0));
  FDRE \bf2_do_re_reg[3] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_re[3]),
        .Q(bf2_do_re[3]),
        .R(1'b0));
  FDRE \bf2_do_re_reg[4] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_re[4]),
        .Q(bf2_do_re[4]),
        .R(1'b0));
  FDRE \bf2_do_re_reg[5] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_re[5]),
        .Q(bf2_do_re[5]),
        .R(1'b0));
  FDRE \bf2_do_re_reg[6] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_re[6]),
        .Q(bf2_do_re[6]),
        .R(1'b0));
  FDRE \bf2_do_re_reg[7] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_re[7]),
        .Q(bf2_do_re[7]),
        .R(1'b0));
  FDRE \bf2_do_re_reg[8] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_re[8]),
        .Q(bf2_do_re[8]),
        .R(1'b0));
  FDRE \bf2_do_re_reg[9] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_re[9]),
        .Q(bf2_do_re[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im_reg[6][0]_srl7_i_1 
       (.I0(y1_im0[1]),
        .I1(bf2_bf),
        .I2(bf1_do_im[0]),
        .O(db2_di_im[0]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im_reg[6][10]_srl7_i_1 
       (.I0(y1_im0[11]),
        .I1(bf2_bf),
        .I2(bf1_do_im[10]),
        .O(db2_di_im[10]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im_reg[6][11]_srl7_i_1 
       (.I0(y1_im0[12]),
        .I1(bf2_bf),
        .I2(bf1_do_im[11]),
        .O(db2_di_im[11]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im_reg[6][12]_srl7_i_1 
       (.I0(y1_im0[13]),
        .I1(bf2_bf),
        .I2(bf1_do_im[12]),
        .O(db2_di_im[12]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im_reg[6][13]_srl7_i_1 
       (.I0(y1_im0[14]),
        .I1(bf2_bf),
        .I2(bf1_do_im[13]),
        .O(db2_di_im[13]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im_reg[6][14]_srl7_i_1 
       (.I0(y1_im0[15]),
        .I1(bf2_bf),
        .I2(bf1_do_im[14]),
        .O(db2_di_im[14]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im_reg[6][15]_srl7_i_1 
       (.I0(y1_im0[16]),
        .I1(bf2_bf),
        .I2(bf1_do_im[15]),
        .O(db2_di_im[15]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im_reg[6][1]_srl7_i_1 
       (.I0(y1_im0[2]),
        .I1(bf2_bf),
        .I2(bf1_do_im[1]),
        .O(db2_di_im[1]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im_reg[6][2]_srl7_i_1 
       (.I0(y1_im0[3]),
        .I1(bf2_bf),
        .I2(bf1_do_im[2]),
        .O(db2_di_im[2]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im_reg[6][3]_srl7_i_1 
       (.I0(y1_im0[4]),
        .I1(bf2_bf),
        .I2(bf1_do_im[3]),
        .O(db2_di_im[3]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im_reg[6][4]_srl7_i_1 
       (.I0(y1_im0[5]),
        .I1(bf2_bf),
        .I2(bf1_do_im[4]),
        .O(db2_di_im[4]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im_reg[6][5]_srl7_i_1 
       (.I0(y1_im0[6]),
        .I1(bf2_bf),
        .I2(bf1_do_im[5]),
        .O(db2_di_im[5]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im_reg[6][6]_srl7_i_1 
       (.I0(y1_im0[7]),
        .I1(bf2_bf),
        .I2(bf1_do_im[6]),
        .O(db2_di_im[6]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im_reg[6][7]_srl7_i_1 
       (.I0(y1_im0[8]),
        .I1(bf2_bf),
        .I2(bf1_do_im[7]),
        .O(db2_di_im[7]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im_reg[6][8]_srl7_i_1 
       (.I0(y1_im0[9]),
        .I1(bf2_bf),
        .I2(bf1_do_im[8]),
        .O(db2_di_im[8]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im_reg[6][9]_srl7_i_1 
       (.I0(y1_im0[10]),
        .I1(bf2_bf),
        .I2(bf1_do_im[9]),
        .O(db2_di_im[9]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re_reg[6][0]_srl7_i_1 
       (.I0(y1_re0[1]),
        .I1(bf2_bf),
        .I2(bf1_do_re[0]),
        .O(db2_di_re[0]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re_reg[6][10]_srl7_i_1 
       (.I0(y1_re0[11]),
        .I1(bf2_bf),
        .I2(bf1_do_re[10]),
        .O(db2_di_re[10]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re_reg[6][11]_srl7_i_1 
       (.I0(y1_re0[12]),
        .I1(bf2_bf),
        .I2(bf1_do_re[11]),
        .O(db2_di_re[11]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re_reg[6][12]_srl7_i_1 
       (.I0(y1_re0[13]),
        .I1(bf2_bf),
        .I2(bf1_do_re[12]),
        .O(db2_di_re[12]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re_reg[6][13]_srl7_i_1 
       (.I0(y1_re0[14]),
        .I1(bf2_bf),
        .I2(bf1_do_re[13]),
        .O(db2_di_re[13]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re_reg[6][14]_srl7_i_1 
       (.I0(y1_re0[15]),
        .I1(bf2_bf),
        .I2(bf1_do_re[14]),
        .O(db2_di_re[14]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re_reg[6][15]_srl7_i_1 
       (.I0(y1_re0[16]),
        .I1(bf2_bf),
        .I2(bf1_do_re[15]),
        .O(db2_di_re[15]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re_reg[6][1]_srl7_i_1 
       (.I0(y1_re0[2]),
        .I1(bf2_bf),
        .I2(bf1_do_re[1]),
        .O(db2_di_re[1]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re_reg[6][2]_srl7_i_1 
       (.I0(y1_re0[3]),
        .I1(bf2_bf),
        .I2(bf1_do_re[2]),
        .O(db2_di_re[2]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re_reg[6][3]_srl7_i_1 
       (.I0(y1_re0[4]),
        .I1(bf2_bf),
        .I2(bf1_do_re[3]),
        .O(db2_di_re[3]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re_reg[6][4]_srl7_i_1 
       (.I0(y1_re0[5]),
        .I1(bf2_bf),
        .I2(bf1_do_re[4]),
        .O(db2_di_re[4]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re_reg[6][5]_srl7_i_1 
       (.I0(y1_re0[6]),
        .I1(bf2_bf),
        .I2(bf1_do_re[5]),
        .O(db2_di_re[5]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re_reg[6][6]_srl7_i_1 
       (.I0(y1_re0[7]),
        .I1(bf2_bf),
        .I2(bf1_do_re[6]),
        .O(db2_di_re[6]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re_reg[6][7]_srl7_i_1 
       (.I0(y1_re0[8]),
        .I1(bf2_bf),
        .I2(bf1_do_re[7]),
        .O(db2_di_re[7]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re_reg[6][8]_srl7_i_1 
       (.I0(y1_re0[9]),
        .I1(bf2_bf),
        .I2(bf1_do_re[8]),
        .O(db2_di_re[8]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re_reg[6][9]_srl7_i_1 
       (.I0(y1_re0[10]),
        .I1(bf2_bf),
        .I2(bf1_do_re[9]),
        .O(db2_di_re[9]));
  LUT2 #(
    .INIT(4'h2)) 
    \di_count[0]_i_1__1 
       (.I0(su2_do_en),
        .I1(\buf_im_reg[3][11]__0 [0]),
        .O(mu_do_en_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \di_count[1]_i_1__0 
       (.I0(su1_do_en),
        .I1(\di_count_reg[4]_0 [0]),
        .I2(\di_count_reg_n_0_[1] ),
        .O(p_0_in__3[1]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \di_count[2]_i_1__0 
       (.I0(\di_count_reg_n_0_[1] ),
        .I1(\di_count_reg[4]_0 [0]),
        .I2(su1_do_en),
        .I3(\di_count_reg_n_0_[2] ),
        .O(p_0_in__3[2]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \di_count[3]_i_1__0 
       (.I0(\di_count_reg[4]_0 [0]),
        .I1(\di_count_reg_n_0_[1] ),
        .I2(\di_count_reg_n_0_[2] ),
        .I3(su1_do_en),
        .I4(\di_count_reg_n_0_[3] ),
        .O(p_0_in__3[3]));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \di_count[4]_i_1__0 
       (.I0(\di_count_reg_n_0_[3] ),
        .I1(\di_count_reg_n_0_[2] ),
        .I2(\di_count_reg_n_0_[1] ),
        .I3(\di_count_reg[4]_0 [0]),
        .I4(su1_do_en),
        .I5(\di_count_reg[4]_0 [1]),
        .O(p_0_in__3[4]));
  LUT5 #(
    .INIT(32'hBF004000)) 
    \di_count[5]_i_1__0 
       (.I0(\di_count[6]_i_2__0_n_0 ),
        .I1(\di_count_reg_n_0_[3] ),
        .I2(\di_count_reg[4]_0 [1]),
        .I3(su1_do_en),
        .I4(\di_count_reg_n_0_[5] ),
        .O(p_0_in__3[5]));
  LUT6 #(
    .INIT(64'hF7FF000008000000)) 
    \di_count[6]_i_1__0 
       (.I0(\di_count_reg[4]_0 [1]),
        .I1(\di_count_reg_n_0_[3] ),
        .I2(\di_count[6]_i_2__0_n_0 ),
        .I3(\di_count_reg_n_0_[5] ),
        .I4(su1_do_en),
        .I5(\di_count_reg_n_0_[6] ),
        .O(p_0_in__3[6]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \di_count[6]_i_2__0 
       (.I0(\di_count_reg[4]_0 [0]),
        .I1(\di_count_reg_n_0_[1] ),
        .I2(\di_count_reg_n_0_[2] ),
        .O(\di_count[6]_i_2__0_n_0 ));
  FDCE \di_count_reg[0] 
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(D),
        .Q(\di_count_reg[4]_0 [0]));
  FDCE \di_count_reg[1] 
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in__3[1]),
        .Q(\di_count_reg_n_0_[1] ));
  FDCE \di_count_reg[2] 
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in__3[2]),
        .Q(\di_count_reg_n_0_[2] ));
  FDCE \di_count_reg[3] 
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in__3[3]),
        .Q(\di_count_reg_n_0_[3] ));
  FDCE \di_count_reg[4] 
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in__3[4]),
        .Q(\di_count_reg[4]_0 [1]));
  FDCE \di_count_reg[5] 
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in__3[5]),
        .Q(\di_count_reg_n_0_[5] ));
  FDCE \di_count_reg[6] 
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in__3[6]),
        .Q(\di_count_reg_n_0_[6] ));
  LUT5 #(
    .INIT(32'h9FC060C0)) 
    ff_re_reg_i_5
       (.I0(bf2_count_reg[2]),
        .I1(bf2_count_reg[1]),
        .I2(bf2_count_reg[4]),
        .I3(bf2_count_reg[0]),
        .I4(bf2_count_reg[3]),
        .O(ADDRBWRADDR[1]));
  LUT2 #(
    .INIT(4'h8)) 
    ff_re_reg_i_6
       (.I0(bf2_count_reg[4]),
        .I1(bf2_count_reg[0]),
        .O(ADDRBWRADDR[0]));
  FDCE mu_do_en_reg
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(bf2_do_en),
        .Q(su2_do_en));
  FDRE \mu_do_im_reg[0] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_31),
        .Q(\mu_do_im_reg[15]_2 [0]),
        .R(1'b0));
  FDRE \mu_do_im_reg[10] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_21),
        .Q(\mu_do_im_reg[15]_2 [10]),
        .R(1'b0));
  FDRE \mu_do_im_reg[11] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_20),
        .Q(\mu_do_im_reg[15]_2 [11]),
        .R(1'b0));
  FDRE \mu_do_im_reg[12] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_19),
        .Q(\mu_do_im_reg[15]_2 [12]),
        .R(1'b0));
  FDRE \mu_do_im_reg[13] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_18),
        .Q(\mu_do_im_reg[15]_2 [13]),
        .R(1'b0));
  FDRE \mu_do_im_reg[14] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_17),
        .Q(\mu_do_im_reg[15]_2 [14]),
        .R(1'b0));
  FDRE \mu_do_im_reg[15] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_16),
        .Q(\mu_do_im_reg[15]_2 [15]),
        .R(1'b0));
  FDRE \mu_do_im_reg[1] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_30),
        .Q(\mu_do_im_reg[15]_2 [1]),
        .R(1'b0));
  FDRE \mu_do_im_reg[2] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_29),
        .Q(\mu_do_im_reg[15]_2 [2]),
        .R(1'b0));
  FDRE \mu_do_im_reg[3] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_28),
        .Q(\mu_do_im_reg[15]_2 [3]),
        .R(1'b0));
  FDRE \mu_do_im_reg[4] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_27),
        .Q(\mu_do_im_reg[15]_2 [4]),
        .R(1'b0));
  FDRE \mu_do_im_reg[5] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_26),
        .Q(\mu_do_im_reg[15]_2 [5]),
        .R(1'b0));
  FDRE \mu_do_im_reg[6] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_25),
        .Q(\mu_do_im_reg[15]_2 [6]),
        .R(1'b0));
  FDRE \mu_do_im_reg[7] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_24),
        .Q(\mu_do_im_reg[15]_2 [7]),
        .R(1'b0));
  FDRE \mu_do_im_reg[8] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_23),
        .Q(\mu_do_im_reg[15]_2 [8]),
        .R(1'b0));
  FDRE \mu_do_im_reg[9] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_22),
        .Q(\mu_do_im_reg[15]_2 [9]),
        .R(1'b0));
  FDRE \mu_do_re_reg[0] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_15),
        .Q(\mu_do_re_reg[15]_1 [0]),
        .R(1'b0));
  FDRE \mu_do_re_reg[10] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_5),
        .Q(\mu_do_re_reg[15]_1 [10]),
        .R(1'b0));
  FDRE \mu_do_re_reg[11] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_4),
        .Q(\mu_do_re_reg[15]_1 [11]),
        .R(1'b0));
  FDRE \mu_do_re_reg[12] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_3),
        .Q(\mu_do_re_reg[15]_1 [12]),
        .R(1'b0));
  FDRE \mu_do_re_reg[13] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_2),
        .Q(\mu_do_re_reg[15]_1 [13]),
        .R(1'b0));
  FDRE \mu_do_re_reg[14] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_1),
        .Q(\mu_do_re_reg[15]_1 [14]),
        .R(1'b0));
  FDRE \mu_do_re_reg[15] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_0),
        .Q(\mu_do_re_reg[15]_1 [15]),
        .R(1'b0));
  FDRE \mu_do_re_reg[1] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_14),
        .Q(\mu_do_re_reg[15]_1 [1]),
        .R(1'b0));
  FDRE \mu_do_re_reg[2] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_13),
        .Q(\mu_do_re_reg[15]_1 [2]),
        .R(1'b0));
  FDRE \mu_do_re_reg[3] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_12),
        .Q(\mu_do_re_reg[15]_1 [3]),
        .R(1'b0));
  FDRE \mu_do_re_reg[4] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_11),
        .Q(\mu_do_re_reg[15]_1 [4]),
        .R(1'b0));
  FDRE \mu_do_re_reg[5] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_10),
        .Q(\mu_do_re_reg[15]_1 [5]),
        .R(1'b0));
  FDRE \mu_do_re_reg[6] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_9),
        .Q(\mu_do_re_reg[15]_1 [6]),
        .R(1'b0));
  FDRE \mu_do_re_reg[7] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_8),
        .Q(\mu_do_re_reg[15]_1 [7]),
        .R(1'b0));
  FDRE \mu_do_re_reg[8] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_7),
        .Q(\mu_do_re_reg[15]_1 [8]),
        .R(1'b0));
  FDRE \mu_do_re_reg[9] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_6),
        .Q(\mu_do_re_reg[15]_1 [9]),
        .R(1'b0));
  FDRE tw_nz_1d_reg
       (.C(clock),
        .CE(1'b1),
        .D(tw_nz),
        .Q(tw_nz_1d),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT5 #(
    .INIT(32'hFFCCFAC8)) 
    tw_nz_i_1__0
       (.I0(bf2_count_reg[2]),
        .I1(bf2_count_reg[3]),
        .I2(bf2_count_reg[0]),
        .I3(bf2_count_reg[4]),
        .I4(bf2_count_reg[1]),
        .O(tw_nz_i_1__0_n_0));
  FDRE tw_nz_reg
       (.C(clock),
        .CE(1'b1),
        .D(tw_nz_i_1__0_n_0),
        .Q(tw_nz),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "SdfUnit" *) 
module system_fft128_0_0_SdfUnit__parameterized1
   (\buf_re_reg[3]_4 ,
    \buf_im_reg[3]_5 ,
    su3_do_en,
    \mu_do_re_reg[15]_0 ,
    \mu_do_re_reg[15]_1 ,
    \mu_do_im_reg[15]_0 ,
    \mu_do_im_reg[15]_1 ,
    S,
    Q,
    \mu_do_re_reg[7]_0 ,
    \mu_do_re_reg[11]_0 ,
    \mu_do_re_reg[15]_2 ,
    \mu_do_im_reg[3]_0 ,
    \mu_do_im_reg[15]_2 ,
    \mu_do_im_reg[7]_0 ,
    \mu_do_im_reg[11]_0 ,
    \mu_do_im_reg[15]_3 ,
    bf_en0,
    \di_count_reg[2]_0 ,
    \buf_re_reg[3][15]__0 ,
    clock,
    \buf_im_reg[3][15]__0 ,
    reset,
    \buf_re_reg[2][0]_srl3_i_1 ,
    \buf_re_reg[2][3]_srl3_i_1 ,
    \buf_re_reg[2][7]_srl3_i_1 ,
    \buf_re_reg[2][11]_srl3_i_1 ,
    \buf_re_reg[2][11]_srl3_i_1_0 ,
    \buf_im_reg[2][0]_srl3_i_1 ,
    \buf_im_reg[2][3]_srl3_i_1 ,
    \buf_im_reg[2][7]_srl3_i_1 ,
    \buf_im_reg[2][11]_srl3_i_1 ,
    \buf_im_reg[2][11]_srl3_i_1_0 ,
    sub_re_carry__2,
    sub_im_carry__2,
    bf_en,
    D,
    su2_do_en);
  output [15:0]\buf_re_reg[3]_4 ;
  output [15:0]\buf_im_reg[3]_5 ;
  output su3_do_en;
  output [3:0]\mu_do_re_reg[15]_0 ;
  output [0:0]\mu_do_re_reg[15]_1 ;
  output [3:0]\mu_do_im_reg[15]_0 ;
  output [0:0]\mu_do_im_reg[15]_1 ;
  output [3:0]S;
  output [15:0]Q;
  output [3:0]\mu_do_re_reg[7]_0 ;
  output [3:0]\mu_do_re_reg[11]_0 ;
  output [3:0]\mu_do_re_reg[15]_2 ;
  output [3:0]\mu_do_im_reg[3]_0 ;
  output [15:0]\mu_do_im_reg[15]_2 ;
  output [3:0]\mu_do_im_reg[7]_0 ;
  output [3:0]\mu_do_im_reg[11]_0 ;
  output [3:0]\mu_do_im_reg[15]_3 ;
  output bf_en0;
  output [1:0]\di_count_reg[2]_0 ;
  input [4:0]\buf_re_reg[3][15]__0 ;
  input clock;
  input [4:0]\buf_im_reg[3][15]__0 ;
  input reset;
  input [3:0]\buf_re_reg[2][0]_srl3_i_1 ;
  input [3:0]\buf_re_reg[2][3]_srl3_i_1 ;
  input [3:0]\buf_re_reg[2][7]_srl3_i_1 ;
  input [15:0]\buf_re_reg[2][11]_srl3_i_1 ;
  input [3:0]\buf_re_reg[2][11]_srl3_i_1_0 ;
  input [3:0]\buf_im_reg[2][0]_srl3_i_1 ;
  input [3:0]\buf_im_reg[2][3]_srl3_i_1 ;
  input [3:0]\buf_im_reg[2][7]_srl3_i_1 ;
  input [15:0]\buf_im_reg[2][11]_srl3_i_1 ;
  input [3:0]\buf_im_reg[2][11]_srl3_i_1_0 ;
  input [15:0]sub_re_carry__2;
  input [15:0]sub_im_carry__2;
  input bf_en;
  input [0:0]D;
  input su2_do_en;

  wire BF1_n_47;
  wire BF1_n_63;
  wire [0:0]D;
  wire DB1_n_32;
  wire DB1_n_33;
  wire DB1_n_34;
  wire DB1_n_35;
  wire DB1_n_36;
  wire DB1_n_37;
  wire DB1_n_38;
  wire DB1_n_39;
  wire DB1_n_40;
  wire DB1_n_73;
  wire DB1_n_74;
  wire DB1_n_75;
  wire DB1_n_76;
  wire DB1_n_77;
  wire DB1_n_78;
  wire DB1_n_79;
  wire DB1_n_80;
  wire DB1_n_81;
  wire DB1_n_82;
  wire DB1_n_83;
  wire DB1_n_84;
  wire DB1_n_85;
  wire DB1_n_86;
  wire DB1_n_87;
  wire DB1_n_88;
  wire DB1_n_89;
  wire DB1_n_90;
  wire DB1_n_91;
  wire DB1_n_92;
  wire DB1_n_93;
  wire DB1_n_94;
  wire DB1_n_95;
  wire DB1_n_96;
  wire DB1_n_97;
  wire DB2_n_0;
  wire DB2_n_1;
  wire DB2_n_10;
  wire DB2_n_11;
  wire DB2_n_12;
  wire DB2_n_13;
  wire DB2_n_14;
  wire DB2_n_15;
  wire DB2_n_16;
  wire DB2_n_17;
  wire DB2_n_18;
  wire DB2_n_19;
  wire DB2_n_2;
  wire DB2_n_20;
  wire DB2_n_21;
  wire DB2_n_22;
  wire DB2_n_23;
  wire DB2_n_24;
  wire DB2_n_25;
  wire DB2_n_26;
  wire DB2_n_27;
  wire DB2_n_28;
  wire DB2_n_29;
  wire DB2_n_3;
  wire DB2_n_30;
  wire DB2_n_31;
  wire DB2_n_32;
  wire DB2_n_33;
  wire DB2_n_34;
  wire DB2_n_35;
  wire DB2_n_36;
  wire DB2_n_37;
  wire DB2_n_38;
  wire DB2_n_39;
  wire DB2_n_4;
  wire DB2_n_40;
  wire DB2_n_41;
  wire DB2_n_42;
  wire DB2_n_43;
  wire DB2_n_44;
  wire DB2_n_45;
  wire DB2_n_46;
  wire DB2_n_47;
  wire DB2_n_48;
  wire DB2_n_49;
  wire DB2_n_5;
  wire DB2_n_50;
  wire DB2_n_51;
  wire DB2_n_52;
  wire DB2_n_53;
  wire DB2_n_54;
  wire DB2_n_55;
  wire DB2_n_56;
  wire DB2_n_57;
  wire DB2_n_58;
  wire DB2_n_59;
  wire DB2_n_6;
  wire DB2_n_60;
  wire DB2_n_61;
  wire DB2_n_62;
  wire DB2_n_63;
  wire DB2_n_64;
  wire DB2_n_65;
  wire DB2_n_66;
  wire DB2_n_67;
  wire DB2_n_68;
  wire DB2_n_69;
  wire DB2_n_7;
  wire DB2_n_70;
  wire DB2_n_71;
  wire DB2_n_72;
  wire DB2_n_73;
  wire DB2_n_74;
  wire DB2_n_75;
  wire DB2_n_76;
  wire DB2_n_77;
  wire DB2_n_78;
  wire DB2_n_79;
  wire DB2_n_8;
  wire DB2_n_80;
  wire DB2_n_81;
  wire DB2_n_82;
  wire DB2_n_83;
  wire DB2_n_84;
  wire DB2_n_85;
  wire DB2_n_86;
  wire DB2_n_87;
  wire DB2_n_88;
  wire DB2_n_89;
  wire DB2_n_9;
  wire DB2_n_90;
  wire DB2_n_91;
  wire DB2_n_92;
  wire DB2_n_93;
  wire DB2_n_94;
  wire DB2_n_95;
  wire DB2_n_96;
  wire DB2_n_97;
  wire MU_n_0;
  wire MU_n_1;
  wire MU_n_10;
  wire MU_n_11;
  wire MU_n_12;
  wire MU_n_13;
  wire MU_n_14;
  wire MU_n_15;
  wire MU_n_16;
  wire MU_n_17;
  wire MU_n_18;
  wire MU_n_19;
  wire MU_n_2;
  wire MU_n_20;
  wire MU_n_21;
  wire MU_n_22;
  wire MU_n_23;
  wire MU_n_24;
  wire MU_n_25;
  wire MU_n_26;
  wire MU_n_27;
  wire MU_n_28;
  wire MU_n_29;
  wire MU_n_3;
  wire MU_n_30;
  wire MU_n_31;
  wire MU_n_4;
  wire MU_n_5;
  wire MU_n_6;
  wire MU_n_7;
  wire MU_n_8;
  wire MU_n_9;
  wire [15:0]Q;
  wire [3:0]S;
  wire TC_n_0;
  wire TC_n_1;
  wire TC_n_3;
  wire [15:1]add_im;
  wire [15:1]add_re;
  wire \bf1_count[6]_i_2__1_n_0 ;
  wire [1:1]bf1_count_reg;
  wire [6:0]bf1_count_reg__0;
  wire [15:0]bf1_do_im;
  wire [15:0]bf1_do_re;
  wire bf1_sp_en;
  wire bf1_sp_en_i_1__1_n_0;
  wire bf1_sp_en_i_2__0_n_0;
  wire [15:0]bf1_sp_im;
  wire [15:0]bf1_sp_re;
  wire bf1_start;
  wire bf2_bf;
  wire \bf2_count[5]_i_2__0_n_0 ;
  wire \bf2_count[6]_i_2__1_n_0 ;
  wire [6:0]bf2_count_reg;
  wire bf2_ct_en;
  wire bf2_ct_en_1d;
  wire bf2_ct_en_i_1__1_n_0;
  wire bf2_ct_en_i_3__1_n_0;
  wire bf2_ct_en_i_4_n_0;
  wire bf2_do_en;
  wire [15:0]bf2_do_im;
  wire [15:0]bf2_do_re;
  wire [15:0]bf2_sp_im;
  wire [15:0]bf2_sp_re;
  wire bf2_start;
  wire bf_en;
  wire bf_en0;
  wire [3:0]\buf_im_reg[2][0]_srl3_i_1 ;
  wire [15:0]\buf_im_reg[2][11]_srl3_i_1 ;
  wire [3:0]\buf_im_reg[2][11]_srl3_i_1_0 ;
  wire [3:0]\buf_im_reg[2][3]_srl3_i_1 ;
  wire [3:0]\buf_im_reg[2][7]_srl3_i_1 ;
  wire [4:0]\buf_im_reg[3][15]__0 ;
  wire [15:0]\buf_im_reg[3]_5 ;
  wire [3:0]\buf_re_reg[2][0]_srl3_i_1 ;
  wire [15:0]\buf_re_reg[2][11]_srl3_i_1 ;
  wire [3:0]\buf_re_reg[2][11]_srl3_i_1_0 ;
  wire [3:0]\buf_re_reg[2][3]_srl3_i_1 ;
  wire [3:0]\buf_re_reg[2][7]_srl3_i_1 ;
  wire [4:0]\buf_re_reg[3][15]__0 ;
  wire [15:0]\buf_re_reg[3]_4 ;
  wire clock;
  wire [15:0]db2_di_im;
  wire [15:0]db2_di_re;
  wire \di_count[5]_i_2_n_0 ;
  wire \di_count[6]_i_2__1_n_0 ;
  wire [1:0]\di_count_reg[2]_0 ;
  wire \di_count_reg_n_0_[1] ;
  wire \di_count_reg_n_0_[3] ;
  wire \di_count_reg_n_0_[4] ;
  wire \di_count_reg_n_0_[5] ;
  wire \di_count_reg_n_0_[6] ;
  wire [3:0]\mu_do_im_reg[11]_0 ;
  wire [3:0]\mu_do_im_reg[15]_0 ;
  wire [0:0]\mu_do_im_reg[15]_1 ;
  wire [15:0]\mu_do_im_reg[15]_2 ;
  wire [3:0]\mu_do_im_reg[15]_3 ;
  wire [3:0]\mu_do_im_reg[3]_0 ;
  wire [3:0]\mu_do_im_reg[7]_0 ;
  wire [3:0]\mu_do_re_reg[11]_0 ;
  wire [3:0]\mu_do_re_reg[15]_0 ;
  wire [0:0]\mu_do_re_reg[15]_1 ;
  wire [3:0]\mu_do_re_reg[15]_2 ;
  wire [3:0]\mu_do_re_reg[7]_0 ;
  wire [6:0]p_0_in__5;
  wire [6:1]p_0_in__6;
  wire [6:0]p_0_in__7;
  wire reset;
  wire [0:0]sel0;
  wire su2_do_en;
  wire su3_do_en;
  wire [11:1]sub_im;
  wire [15:0]sub_im_carry__2;
  wire [11:1]sub_re;
  wire [15:0]sub_re_carry__2;
  wire tw_nz;
  wire tw_nz_1d;
  wire tw_nz_i_1__1_n_0;
  wire [16:1]y0_im0;
  wire [16:1]y0_re0;
  wire [16:1]y1_im0;
  wire [16:1]y1_re0;

  system_fft128_0_0_Butterfly_0 BF1
       (.CO(BF1_n_47),
        .DI(\buf_re_reg[3]_4 [3:0]),
        .S({DB1_n_74,DB1_n_75,DB1_n_76,DB1_n_77}),
        .add_im(add_im),
        .add_re(add_re),
        .\bf1_do_im_reg[10] (\buf_im_reg[3]_5 [11:8]),
        .\bf1_do_im_reg[10]_0 ({DB1_n_94,DB1_n_95,DB1_n_96,DB1_n_97}),
        .\bf1_do_im_reg[14] (DB1_n_40),
        .\bf1_do_im_reg[14]_0 ({DB1_n_36,DB1_n_37,DB1_n_38,DB1_n_39}),
        .\bf1_do_im_reg[2] (\buf_im_reg[3]_5 [3:0]),
        .\bf1_do_im_reg[2]_0 ({DB1_n_86,DB1_n_87,DB1_n_88,DB1_n_89}),
        .\bf1_do_im_reg[6] (\buf_im_reg[3]_5 [7:4]),
        .\bf1_do_im_reg[6]_0 ({DB1_n_90,DB1_n_91,DB1_n_92,DB1_n_93}),
        .\bf1_do_re_reg[10] (\buf_re_reg[3]_4 [11:8]),
        .\bf1_do_re_reg[10]_0 ({DB1_n_82,DB1_n_83,DB1_n_84,DB1_n_85}),
        .\bf1_do_re_reg[14] (DB1_n_73),
        .\bf1_do_re_reg[14]_0 ({DB1_n_32,DB1_n_33,DB1_n_34,DB1_n_35}),
        .\bf1_do_re_reg[6] (\buf_re_reg[3]_4 [7:4]),
        .\bf1_do_re_reg[6]_0 ({DB1_n_78,DB1_n_79,DB1_n_80,DB1_n_81}),
        .\buf_im_reg[2][0]_srl3_i_1 (\buf_im_reg[2][0]_srl3_i_1 ),
        .\buf_im_reg[2][11]_srl3_i_1 ({\buf_im_reg[2][11]_srl3_i_1 [15],\buf_im_reg[3]_5 [14:12]}),
        .\buf_im_reg[2][11]_srl3_i_1_0 (\buf_im_reg[2][11]_srl3_i_1_0 ),
        .\buf_im_reg[2][3]_srl3_i_1 (\buf_im_reg[2][3]_srl3_i_1 ),
        .\buf_im_reg[2][7]_srl3_i_1 (\buf_im_reg[2][7]_srl3_i_1 ),
        .\buf_im_reg[3][14]__0 (BF1_n_63),
        .\buf_re_reg[2][0]_srl3_i_1 (\buf_re_reg[2][0]_srl3_i_1 ),
        .\buf_re_reg[2][11]_srl3_i_1 ({\buf_re_reg[2][11]_srl3_i_1 [15],\buf_re_reg[3]_4 [14:12]}),
        .\buf_re_reg[2][11]_srl3_i_1_0 (\buf_re_reg[2][11]_srl3_i_1_0 ),
        .\buf_re_reg[2][3]_srl3_i_1 (\buf_re_reg[2][3]_srl3_i_1 ),
        .\buf_re_reg[2][7]_srl3_i_1 (\buf_re_reg[2][7]_srl3_i_1 ),
        .\mu_do_im_reg[15] (\mu_do_im_reg[15]_0 ),
        .\mu_do_im_reg[15]_0 (\mu_do_im_reg[15]_1 ),
        .\mu_do_re_reg[15] (\mu_do_re_reg[15]_0 ),
        .\mu_do_re_reg[15]_0 (\mu_do_re_reg[15]_1 ),
        .sub_im(sub_im),
        .sub_re(sub_re));
  system_fft128_0_0_Butterfly__parameterized0 BF2
       (.DI(DB2_n_96),
        .Q({DB2_n_5,DB2_n_6,DB2_n_7,DB2_n_8,DB2_n_9,DB2_n_10,DB2_n_11,DB2_n_12,DB2_n_13,DB2_n_14,DB2_n_15,DB2_n_16,DB2_n_17,DB2_n_18,DB2_n_19}),
        .S({DB2_n_0,DB2_n_1,DB2_n_2,DB2_n_3}),
        .y0_im0(y0_im0),
        .y0_im0__47_carry_0({DB2_n_84,DB2_n_85,DB2_n_86,DB2_n_87}),
        .y0_im0__47_carry_1({DB2_n_88,DB2_n_89,DB2_n_90,DB2_n_91}),
        .y0_im0__47_carry__0_0({DB2_n_92,DB2_n_93,DB2_n_94,DB2_n_95}),
        .y0_im0__47_carry__1_0({DB2_n_37,DB2_n_38,DB2_n_39,DB2_n_40,DB2_n_41,DB2_n_42,DB2_n_43,DB2_n_44,DB2_n_45,DB2_n_46,DB2_n_47,DB2_n_48,DB2_n_49,DB2_n_50,DB2_n_51}),
        .y0_im0__47_carry__1_1(DB2_n_97),
        .y0_im0__47_carry__1_2({DB2_n_68,DB2_n_69,DB2_n_70,DB2_n_71}),
        .y0_re0(y0_re0),
        .y0_re0__47_carry_0({DB2_n_72,DB2_n_73,DB2_n_74,DB2_n_75}),
        .y0_re0__47_carry_1({DB2_n_76,DB2_n_77,DB2_n_78,DB2_n_79}),
        .y0_re0__47_carry__0_0({DB2_n_80,DB2_n_81,DB2_n_82,DB2_n_83}),
        .y0_re0__47_carry__1_0({DB2_n_64,DB2_n_65,DB2_n_66,DB2_n_67}),
        .y1_im0(y1_im0),
        .y1_im0__47_carry_0({DB2_n_32,DB2_n_33,DB2_n_34,DB2_n_35}),
        .y1_im0__47_carry_1({DB2_n_52,DB2_n_53,DB2_n_54,DB2_n_55}),
        .y1_im0__47_carry__0_0({DB2_n_56,DB2_n_57,DB2_n_58,DB2_n_59}),
        .y1_im0__47_carry__1_0(bf1_do_im[15]),
        .y1_im0__47_carry__1_1({DB2_n_60,DB2_n_61,DB2_n_62,DB2_n_63}),
        .y1_re0(y1_re0),
        .y1_re0__47_carry_0({DB2_n_20,DB2_n_21,DB2_n_22,DB2_n_23}),
        .y1_re0__47_carry__0_0({DB2_n_24,DB2_n_25,DB2_n_26,DB2_n_27}),
        .y1_re0__47_carry__1_0(bf1_do_re[15]),
        .y1_re0__47_carry__1_1({DB2_n_28,DB2_n_29,DB2_n_30,DB2_n_31}));
  system_fft128_0_0_DelayBuffer__parameterized3 DB1
       (.CO(BF1_n_47),
        .D(bf1_sp_re),
        .DI(\buf_re_reg[3]_4 [3:0]),
        .Q(\di_count_reg[2]_0 [1]),
        .S({DB1_n_74,DB1_n_75,DB1_n_76,DB1_n_77}),
        .add_im(add_im),
        .add_im_carry__2(\buf_im_reg[2][11]_srl3_i_1 ),
        .add_re(add_re),
        .add_re_carry__2(\buf_re_reg[2][11]_srl3_i_1 ),
        .\bf1_count_reg[1] (bf1_sp_im),
        .\bf1_do_im_reg[15] (BF1_n_63),
        .\bf1_do_re_reg[15] ({bf1_count_reg__0[2],bf1_count_reg}),
        .\buf_im_reg[3][11]__0_0 (\buf_im_reg[3]_5 [11:8]),
        .\buf_im_reg[3][11]__0_1 ({DB1_n_94,DB1_n_95,DB1_n_96,DB1_n_97}),
        .\buf_im_reg[3][14]__0_0 (\buf_im_reg[3]_5 [14:12]),
        .\buf_im_reg[3][15]__0_0 (\buf_im_reg[3]_5 [15]),
        .\buf_im_reg[3][15]__0_1 ({DB1_n_36,DB1_n_37,DB1_n_38,DB1_n_39}),
        .\buf_im_reg[3][15]__0_2 (DB1_n_40),
        .\buf_im_reg[3][15]__0_3 (\buf_im_reg[3][15]__0 ),
        .\buf_im_reg[3][3]__0_0 (\buf_im_reg[3]_5 [3:0]),
        .\buf_im_reg[3][3]__0_1 ({DB1_n_86,DB1_n_87,DB1_n_88,DB1_n_89}),
        .\buf_im_reg[3][7]__0_0 (\buf_im_reg[3]_5 [7:4]),
        .\buf_im_reg[3][7]__0_1 ({DB1_n_90,DB1_n_91,DB1_n_92,DB1_n_93}),
        .\buf_re_reg[3][11]__0_0 (\buf_re_reg[3]_4 [11:8]),
        .\buf_re_reg[3][11]__0_1 ({DB1_n_82,DB1_n_83,DB1_n_84,DB1_n_85}),
        .\buf_re_reg[3][14]__0_0 (\buf_re_reg[3]_4 [14:12]),
        .\buf_re_reg[3][15]__0_0 (\buf_re_reg[3]_4 [15]),
        .\buf_re_reg[3][15]__0_1 ({DB1_n_32,DB1_n_33,DB1_n_34,DB1_n_35}),
        .\buf_re_reg[3][15]__0_2 (DB1_n_73),
        .\buf_re_reg[3][15]__0_3 (\buf_re_reg[3][15]__0 ),
        .\buf_re_reg[3][7]__0_0 (\buf_re_reg[3]_4 [7:4]),
        .\buf_re_reg[3][7]__0_1 ({DB1_n_78,DB1_n_79,DB1_n_80,DB1_n_81}),
        .clock(clock),
        .sub_im(sub_im),
        .sub_re(sub_re));
  system_fft128_0_0_DelayBuffer__parameterized4 DB2
       (.D(db2_di_re),
        .DI(DB2_n_96),
        .Q(bf1_do_re),
        .S({DB2_n_0,DB2_n_1,DB2_n_2,DB2_n_3}),
        .\bf1_do_im_reg[11] ({DB2_n_56,DB2_n_57,DB2_n_58,DB2_n_59}),
        .\bf1_do_im_reg[15] ({DB2_n_60,DB2_n_61,DB2_n_62,DB2_n_63}),
        .\bf1_do_im_reg[3] ({DB2_n_32,DB2_n_33,DB2_n_34,DB2_n_35}),
        .\bf1_do_im_reg[7] ({DB2_n_52,DB2_n_53,DB2_n_54,DB2_n_55}),
        .\bf1_do_re_reg[11] ({DB2_n_24,DB2_n_25,DB2_n_26,DB2_n_27}),
        .\bf1_do_re_reg[15] ({DB2_n_28,DB2_n_29,DB2_n_30,DB2_n_31}),
        .\bf1_do_re_reg[7] ({DB2_n_20,DB2_n_21,DB2_n_22,DB2_n_23}),
        .\buf_im_reg[0][15]_0 (db2_di_im),
        .\buf_im_reg[1][11]_0 ({DB2_n_92,DB2_n_93,DB2_n_94,DB2_n_95}),
        .\buf_im_reg[1][15]_0 ({DB2_n_36,DB2_n_37,DB2_n_38,DB2_n_39,DB2_n_40,DB2_n_41,DB2_n_42,DB2_n_43,DB2_n_44,DB2_n_45,DB2_n_46,DB2_n_47,DB2_n_48,DB2_n_49,DB2_n_50,DB2_n_51}),
        .\buf_im_reg[1][15]_1 ({DB2_n_68,DB2_n_69,DB2_n_70,DB2_n_71}),
        .\buf_im_reg[1][15]_2 (DB2_n_97),
        .\buf_im_reg[1][3]_0 ({DB2_n_84,DB2_n_85,DB2_n_86,DB2_n_87}),
        .\buf_im_reg[1][7]_0 ({DB2_n_88,DB2_n_89,DB2_n_90,DB2_n_91}),
        .\buf_re_reg[1][11]_0 ({DB2_n_80,DB2_n_81,DB2_n_82,DB2_n_83}),
        .\buf_re_reg[1][15]_0 ({DB2_n_4,DB2_n_5,DB2_n_6,DB2_n_7,DB2_n_8,DB2_n_9,DB2_n_10,DB2_n_11,DB2_n_12,DB2_n_13,DB2_n_14,DB2_n_15,DB2_n_16,DB2_n_17,DB2_n_18,DB2_n_19}),
        .\buf_re_reg[1][15]_1 ({DB2_n_64,DB2_n_65,DB2_n_66,DB2_n_67}),
        .\buf_re_reg[1][3]_0 ({DB2_n_72,DB2_n_73,DB2_n_74,DB2_n_75}),
        .\buf_re_reg[1][7]_0 ({DB2_n_76,DB2_n_77,DB2_n_78,DB2_n_79}),
        .clock(clock),
        .y0_im0_carry__2(bf1_do_im));
  system_fft128_0_0_Multiply MU
       (.A(bf2_sp_re),
        .B({TC_n_0,TC_n_1,sel0}),
        .Q(bf2_do_re),
        .aibi_0(TC_n_3),
        .aibi_1(bf2_sp_im),
        .aibr_0({MU_n_16,MU_n_17,MU_n_18,MU_n_19,MU_n_20,MU_n_21,MU_n_22,MU_n_23,MU_n_24,MU_n_25,MU_n_26,MU_n_27,MU_n_28,MU_n_29,MU_n_30,MU_n_31}),
        .clock(clock),
        .\mu_do_im_reg[15] (bf2_do_im),
        .out({MU_n_0,MU_n_1,MU_n_2,MU_n_3,MU_n_4,MU_n_5,MU_n_6,MU_n_7,MU_n_8,MU_n_9,MU_n_10,MU_n_11,MU_n_12,MU_n_13,MU_n_14,MU_n_15}),
        .tw_nz_1d(tw_nz_1d));
  system_fft128_0_0_TwiddleConvert8 TC
       (.B({TC_n_0,TC_n_1,sel0}),
        .Q(bf2_count_reg[2:0]),
        .clock(clock),
        .\ff_addr_reg[4]_0 (TC_n_3));
  LUT3 #(
    .INIT(8'hB8)) 
    aibi_i_10
       (.I0(y0_im0[8]),
        .I1(bf2_bf),
        .I2(DB2_n_44),
        .O(bf2_sp_im[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    aibi_i_11
       (.I0(y0_im0[7]),
        .I1(bf2_bf),
        .I2(DB2_n_45),
        .O(bf2_sp_im[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    aibi_i_12
       (.I0(y0_im0[6]),
        .I1(bf2_bf),
        .I2(DB2_n_46),
        .O(bf2_sp_im[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    aibi_i_13
       (.I0(y0_im0[5]),
        .I1(bf2_bf),
        .I2(DB2_n_47),
        .O(bf2_sp_im[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    aibi_i_14
       (.I0(y0_im0[4]),
        .I1(bf2_bf),
        .I2(DB2_n_48),
        .O(bf2_sp_im[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    aibi_i_15
       (.I0(y0_im0[3]),
        .I1(bf2_bf),
        .I2(DB2_n_49),
        .O(bf2_sp_im[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    aibi_i_16
       (.I0(y0_im0[2]),
        .I1(bf2_bf),
        .I2(DB2_n_50),
        .O(bf2_sp_im[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    aibi_i_17
       (.I0(y0_im0[1]),
        .I1(bf2_bf),
        .I2(DB2_n_51),
        .O(bf2_sp_im[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    aibi_i_2
       (.I0(y0_im0[16]),
        .I1(bf2_bf),
        .I2(DB2_n_36),
        .O(bf2_sp_im[15]));
  LUT3 #(
    .INIT(8'hB8)) 
    aibi_i_3
       (.I0(y0_im0[15]),
        .I1(bf2_bf),
        .I2(DB2_n_37),
        .O(bf2_sp_im[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    aibi_i_4
       (.I0(y0_im0[14]),
        .I1(bf2_bf),
        .I2(DB2_n_38),
        .O(bf2_sp_im[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    aibi_i_5
       (.I0(y0_im0[13]),
        .I1(bf2_bf),
        .I2(DB2_n_39),
        .O(bf2_sp_im[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    aibi_i_6
       (.I0(y0_im0[12]),
        .I1(bf2_bf),
        .I2(DB2_n_40),
        .O(bf2_sp_im[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    aibi_i_7
       (.I0(y0_im0[11]),
        .I1(bf2_bf),
        .I2(DB2_n_41),
        .O(bf2_sp_im[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    aibi_i_8
       (.I0(y0_im0[10]),
        .I1(bf2_bf),
        .I2(DB2_n_42),
        .O(bf2_sp_im[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    aibi_i_9
       (.I0(y0_im0[9]),
        .I1(bf2_bf),
        .I2(DB2_n_43),
        .O(bf2_sp_im[8]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \bf1_count[0]_i_1__1 
       (.I0(bf1_sp_en),
        .I1(bf1_count_reg__0[0]),
        .O(p_0_in__7[0]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \bf1_count[1]_i_1__1 
       (.I0(bf1_sp_en),
        .I1(bf1_count_reg__0[0]),
        .I2(bf1_count_reg),
        .O(p_0_in__7[1]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \bf1_count[2]_i_1__1 
       (.I0(bf1_count_reg),
        .I1(bf1_count_reg__0[0]),
        .I2(bf1_sp_en),
        .I3(bf1_count_reg__0[2]),
        .O(p_0_in__7[2]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \bf1_count[3]_i_1__1 
       (.I0(bf1_count_reg__0[0]),
        .I1(bf1_count_reg),
        .I2(bf1_count_reg__0[2]),
        .I3(bf1_sp_en),
        .I4(bf1_count_reg__0[3]),
        .O(p_0_in__7[3]));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \bf1_count[4]_i_1__1 
       (.I0(bf1_count_reg__0[3]),
        .I1(bf1_count_reg__0[2]),
        .I2(bf1_count_reg),
        .I3(bf1_count_reg__0[0]),
        .I4(bf1_sp_en),
        .I5(bf1_count_reg__0[4]),
        .O(p_0_in__7[4]));
  LUT5 #(
    .INIT(32'hBF004000)) 
    \bf1_count[5]_i_1__1 
       (.I0(\bf1_count[6]_i_2__1_n_0 ),
        .I1(bf1_count_reg__0[3]),
        .I2(bf1_count_reg__0[4]),
        .I3(bf1_sp_en),
        .I4(bf1_count_reg__0[5]),
        .O(p_0_in__7[5]));
  LUT6 #(
    .INIT(64'hF7FF000008000000)) 
    \bf1_count[6]_i_1__1 
       (.I0(bf1_count_reg__0[4]),
        .I1(bf1_count_reg__0[3]),
        .I2(\bf1_count[6]_i_2__1_n_0 ),
        .I3(bf1_count_reg__0[5]),
        .I4(bf1_sp_en),
        .I5(bf1_count_reg__0[6]),
        .O(p_0_in__7[6]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \bf1_count[6]_i_2__1 
       (.I0(bf1_count_reg__0[0]),
        .I1(bf1_count_reg),
        .I2(bf1_count_reg__0[2]),
        .O(\bf1_count[6]_i_2__1_n_0 ));
  FDCE \bf1_count_reg[0] 
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in__7[0]),
        .Q(bf1_count_reg__0[0]));
  FDCE \bf1_count_reg[1] 
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in__7[1]),
        .Q(bf1_count_reg));
  FDCE \bf1_count_reg[2] 
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in__7[2]),
        .Q(bf1_count_reg__0[2]));
  FDCE \bf1_count_reg[3] 
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in__7[3]),
        .Q(bf1_count_reg__0[3]));
  FDCE \bf1_count_reg[4] 
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in__7[4]),
        .Q(bf1_count_reg__0[4]));
  FDCE \bf1_count_reg[5] 
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in__7[5]),
        .Q(bf1_count_reg__0[5]));
  FDCE \bf1_count_reg[6] 
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in__7[6]),
        .Q(bf1_count_reg__0[6]));
  FDRE \bf1_do_im_reg[0] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_im[0]),
        .Q(bf1_do_im[0]),
        .R(1'b0));
  FDRE \bf1_do_im_reg[10] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_im[10]),
        .Q(bf1_do_im[10]),
        .R(1'b0));
  FDRE \bf1_do_im_reg[11] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_im[11]),
        .Q(bf1_do_im[11]),
        .R(1'b0));
  FDRE \bf1_do_im_reg[12] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_im[12]),
        .Q(bf1_do_im[12]),
        .R(1'b0));
  FDRE \bf1_do_im_reg[13] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_im[13]),
        .Q(bf1_do_im[13]),
        .R(1'b0));
  FDRE \bf1_do_im_reg[14] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_im[14]),
        .Q(bf1_do_im[14]),
        .R(1'b0));
  FDRE \bf1_do_im_reg[15] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_im[15]),
        .Q(bf1_do_im[15]),
        .R(1'b0));
  FDRE \bf1_do_im_reg[1] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_im[1]),
        .Q(bf1_do_im[1]),
        .R(1'b0));
  FDRE \bf1_do_im_reg[2] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_im[2]),
        .Q(bf1_do_im[2]),
        .R(1'b0));
  FDRE \bf1_do_im_reg[3] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_im[3]),
        .Q(bf1_do_im[3]),
        .R(1'b0));
  FDRE \bf1_do_im_reg[4] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_im[4]),
        .Q(bf1_do_im[4]),
        .R(1'b0));
  FDRE \bf1_do_im_reg[5] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_im[5]),
        .Q(bf1_do_im[5]),
        .R(1'b0));
  FDRE \bf1_do_im_reg[6] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_im[6]),
        .Q(bf1_do_im[6]),
        .R(1'b0));
  FDRE \bf1_do_im_reg[7] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_im[7]),
        .Q(bf1_do_im[7]),
        .R(1'b0));
  FDRE \bf1_do_im_reg[8] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_im[8]),
        .Q(bf1_do_im[8]),
        .R(1'b0));
  FDRE \bf1_do_im_reg[9] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_im[9]),
        .Q(bf1_do_im[9]),
        .R(1'b0));
  FDRE \bf1_do_re_reg[0] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_re[0]),
        .Q(bf1_do_re[0]),
        .R(1'b0));
  FDRE \bf1_do_re_reg[10] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_re[10]),
        .Q(bf1_do_re[10]),
        .R(1'b0));
  FDRE \bf1_do_re_reg[11] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_re[11]),
        .Q(bf1_do_re[11]),
        .R(1'b0));
  FDRE \bf1_do_re_reg[12] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_re[12]),
        .Q(bf1_do_re[12]),
        .R(1'b0));
  FDRE \bf1_do_re_reg[13] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_re[13]),
        .Q(bf1_do_re[13]),
        .R(1'b0));
  FDRE \bf1_do_re_reg[14] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_re[14]),
        .Q(bf1_do_re[14]),
        .R(1'b0));
  FDRE \bf1_do_re_reg[15] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_re[15]),
        .Q(bf1_do_re[15]),
        .R(1'b0));
  FDRE \bf1_do_re_reg[1] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_re[1]),
        .Q(bf1_do_re[1]),
        .R(1'b0));
  FDRE \bf1_do_re_reg[2] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_re[2]),
        .Q(bf1_do_re[2]),
        .R(1'b0));
  FDRE \bf1_do_re_reg[3] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_re[3]),
        .Q(bf1_do_re[3]),
        .R(1'b0));
  FDRE \bf1_do_re_reg[4] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_re[4]),
        .Q(bf1_do_re[4]),
        .R(1'b0));
  FDRE \bf1_do_re_reg[5] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_re[5]),
        .Q(bf1_do_re[5]),
        .R(1'b0));
  FDRE \bf1_do_re_reg[6] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_re[6]),
        .Q(bf1_do_re[6]),
        .R(1'b0));
  FDRE \bf1_do_re_reg[7] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_re[7]),
        .Q(bf1_do_re[7]),
        .R(1'b0));
  FDRE \bf1_do_re_reg[8] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_re[8]),
        .Q(bf1_do_re[8]),
        .R(1'b0));
  FDRE \bf1_do_re_reg[9] 
       (.C(clock),
        .CE(1'b1),
        .D(bf1_sp_re[9]),
        .Q(bf1_do_re[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFF7FFFFFFF0000)) 
    bf1_sp_en_i_1__1
       (.I0(bf1_count_reg__0[0]),
        .I1(bf1_count_reg),
        .I2(bf1_count_reg__0[2]),
        .I3(bf1_sp_en_i_2__0_n_0),
        .I4(bf1_start),
        .I5(bf1_sp_en),
        .O(bf1_sp_en_i_1__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    bf1_sp_en_i_2__0
       (.I0(bf1_count_reg__0[4]),
        .I1(bf1_count_reg__0[3]),
        .I2(bf1_count_reg__0[6]),
        .I3(bf1_count_reg__0[5]),
        .O(bf1_sp_en_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    bf1_sp_en_i_3__0
       (.I0(\di_count[5]_i_2_n_0 ),
        .I1(\di_count_reg_n_0_[5] ),
        .I2(\di_count_reg_n_0_[6] ),
        .I3(\di_count_reg[2]_0 [1]),
        .I4(\di_count_reg_n_0_[3] ),
        .I5(\di_count_reg_n_0_[4] ),
        .O(bf1_start));
  FDCE bf1_sp_en_reg
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(bf1_sp_en_i_1__1_n_0),
        .Q(bf1_sp_en));
  FDRE bf2_bf_reg
       (.C(clock),
        .CE(1'b1),
        .D(bf1_count_reg),
        .Q(bf2_bf),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \bf2_count[0]_i_1__1 
       (.I0(bf2_ct_en),
        .I1(bf2_count_reg[0]),
        .O(p_0_in__5[0]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \bf2_count[1]_i_1__1 
       (.I0(bf2_ct_en),
        .I1(bf2_count_reg[0]),
        .I2(bf2_count_reg[1]),
        .O(p_0_in__5[1]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \bf2_count[2]_i_1__1 
       (.I0(bf2_count_reg[0]),
        .I1(bf2_count_reg[1]),
        .I2(bf2_ct_en),
        .I3(bf2_count_reg[2]),
        .O(p_0_in__5[2]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \bf2_count[3]_i_1__1 
       (.I0(bf2_count_reg[1]),
        .I1(bf2_count_reg[0]),
        .I2(bf2_count_reg[2]),
        .I3(bf2_ct_en),
        .I4(bf2_count_reg[3]),
        .O(p_0_in__5[3]));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \bf2_count[4]_i_1__1 
       (.I0(bf2_count_reg[3]),
        .I1(bf2_count_reg[2]),
        .I2(bf2_count_reg[0]),
        .I3(bf2_count_reg[1]),
        .I4(bf2_ct_en),
        .I5(bf2_count_reg[4]),
        .O(p_0_in__5[4]));
  LUT6 #(
    .INIT(64'hBFFF000040000000)) 
    \bf2_count[5]_i_1__1 
       (.I0(\bf2_count[5]_i_2__0_n_0 ),
        .I1(bf2_count_reg[2]),
        .I2(bf2_count_reg[3]),
        .I3(bf2_count_reg[4]),
        .I4(bf2_ct_en),
        .I5(bf2_count_reg[5]),
        .O(p_0_in__5[5]));
  LUT2 #(
    .INIT(4'h7)) 
    \bf2_count[5]_i_2__0 
       (.I0(bf2_count_reg[0]),
        .I1(bf2_count_reg[1]),
        .O(\bf2_count[5]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hF7FF000008000000)) 
    \bf2_count[6]_i_1__1 
       (.I0(bf2_count_reg[4]),
        .I1(bf2_count_reg[3]),
        .I2(\bf2_count[6]_i_2__1_n_0 ),
        .I3(bf2_count_reg[5]),
        .I4(bf2_ct_en),
        .I5(bf2_count_reg[6]),
        .O(p_0_in__5[6]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \bf2_count[6]_i_2__1 
       (.I0(bf2_count_reg[1]),
        .I1(bf2_count_reg[0]),
        .I2(bf2_count_reg[2]),
        .O(\bf2_count[6]_i_2__1_n_0 ));
  FDCE \bf2_count_reg[0] 
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in__5[0]),
        .Q(bf2_count_reg[0]));
  FDCE \bf2_count_reg[1] 
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in__5[1]),
        .Q(bf2_count_reg[1]));
  FDCE \bf2_count_reg[2] 
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in__5[2]),
        .Q(bf2_count_reg[2]));
  FDCE \bf2_count_reg[3] 
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in__5[3]),
        .Q(bf2_count_reg[3]));
  FDCE \bf2_count_reg[4] 
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in__5[4]),
        .Q(bf2_count_reg[4]));
  FDCE \bf2_count_reg[5] 
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in__5[5]),
        .Q(bf2_count_reg[5]));
  FDCE \bf2_count_reg[6] 
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in__5[6]),
        .Q(bf2_count_reg[6]));
  FDRE bf2_ct_en_1d_reg
       (.C(clock),
        .CE(1'b1),
        .D(bf2_ct_en),
        .Q(bf2_ct_en_1d),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hBFFFFFFFAAAAAAAA)) 
    bf2_ct_en_i_1__1
       (.I0(bf2_start),
        .I1(bf2_count_reg[1]),
        .I2(bf2_count_reg[0]),
        .I3(bf2_count_reg[2]),
        .I4(bf2_ct_en_i_3__1_n_0),
        .I5(bf2_ct_en),
        .O(bf2_ct_en_i_1__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    bf2_ct_en_i_2__1
       (.I0(bf1_count_reg__0[3]),
        .I1(bf1_count_reg__0[4]),
        .I2(bf1_count_reg__0[5]),
        .I3(bf1_count_reg__0[6]),
        .I4(bf2_ct_en_i_4_n_0),
        .O(bf2_start));
  LUT4 #(
    .INIT(16'h8000)) 
    bf2_ct_en_i_3__1
       (.I0(bf2_count_reg[4]),
        .I1(bf2_count_reg[3]),
        .I2(bf2_count_reg[6]),
        .I3(bf2_count_reg[5]),
        .O(bf2_ct_en_i_3__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    bf2_ct_en_i_4
       (.I0(bf1_count_reg__0[0]),
        .I1(bf1_sp_en),
        .I2(bf1_count_reg__0[2]),
        .I3(bf1_count_reg),
        .O(bf2_ct_en_i_4_n_0));
  FDCE bf2_ct_en_reg
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(bf2_ct_en_i_1__1_n_0),
        .Q(bf2_ct_en));
  FDCE bf2_do_en_reg
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(bf2_ct_en_1d),
        .Q(bf2_do_en));
  FDRE \bf2_do_im_reg[0] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_im[0]),
        .Q(bf2_do_im[0]),
        .R(1'b0));
  FDRE \bf2_do_im_reg[10] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_im[10]),
        .Q(bf2_do_im[10]),
        .R(1'b0));
  FDRE \bf2_do_im_reg[11] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_im[11]),
        .Q(bf2_do_im[11]),
        .R(1'b0));
  FDRE \bf2_do_im_reg[12] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_im[12]),
        .Q(bf2_do_im[12]),
        .R(1'b0));
  FDRE \bf2_do_im_reg[13] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_im[13]),
        .Q(bf2_do_im[13]),
        .R(1'b0));
  FDRE \bf2_do_im_reg[14] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_im[14]),
        .Q(bf2_do_im[14]),
        .R(1'b0));
  FDRE \bf2_do_im_reg[15] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_im[15]),
        .Q(bf2_do_im[15]),
        .R(1'b0));
  FDRE \bf2_do_im_reg[1] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_im[1]),
        .Q(bf2_do_im[1]),
        .R(1'b0));
  FDRE \bf2_do_im_reg[2] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_im[2]),
        .Q(bf2_do_im[2]),
        .R(1'b0));
  FDRE \bf2_do_im_reg[3] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_im[3]),
        .Q(bf2_do_im[3]),
        .R(1'b0));
  FDRE \bf2_do_im_reg[4] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_im[4]),
        .Q(bf2_do_im[4]),
        .R(1'b0));
  FDRE \bf2_do_im_reg[5] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_im[5]),
        .Q(bf2_do_im[5]),
        .R(1'b0));
  FDRE \bf2_do_im_reg[6] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_im[6]),
        .Q(bf2_do_im[6]),
        .R(1'b0));
  FDRE \bf2_do_im_reg[7] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_im[7]),
        .Q(bf2_do_im[7]),
        .R(1'b0));
  FDRE \bf2_do_im_reg[8] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_im[8]),
        .Q(bf2_do_im[8]),
        .R(1'b0));
  FDRE \bf2_do_im_reg[9] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_im[9]),
        .Q(bf2_do_im[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    \bf2_do_re[0]_i_1 
       (.I0(y0_re0[1]),
        .I1(bf2_bf),
        .I2(DB2_n_19),
        .O(bf2_sp_re[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bf2_do_re[10]_i_1 
       (.I0(y0_re0[11]),
        .I1(bf2_bf),
        .I2(DB2_n_9),
        .O(bf2_sp_re[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bf2_do_re[11]_i_1 
       (.I0(y0_re0[12]),
        .I1(bf2_bf),
        .I2(DB2_n_8),
        .O(bf2_sp_re[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bf2_do_re[12]_i_1 
       (.I0(y0_re0[13]),
        .I1(bf2_bf),
        .I2(DB2_n_7),
        .O(bf2_sp_re[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bf2_do_re[13]_i_1 
       (.I0(y0_re0[14]),
        .I1(bf2_bf),
        .I2(DB2_n_6),
        .O(bf2_sp_re[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bf2_do_re[14]_i_1 
       (.I0(y0_re0[15]),
        .I1(bf2_bf),
        .I2(DB2_n_5),
        .O(bf2_sp_re[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bf2_do_re[15]_i_1 
       (.I0(y0_re0[16]),
        .I1(bf2_bf),
        .I2(DB2_n_4),
        .O(bf2_sp_re[15]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bf2_do_re[1]_i_1 
       (.I0(y0_re0[2]),
        .I1(bf2_bf),
        .I2(DB2_n_18),
        .O(bf2_sp_re[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bf2_do_re[2]_i_1 
       (.I0(y0_re0[3]),
        .I1(bf2_bf),
        .I2(DB2_n_17),
        .O(bf2_sp_re[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bf2_do_re[3]_i_1 
       (.I0(y0_re0[4]),
        .I1(bf2_bf),
        .I2(DB2_n_16),
        .O(bf2_sp_re[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bf2_do_re[4]_i_1 
       (.I0(y0_re0[5]),
        .I1(bf2_bf),
        .I2(DB2_n_15),
        .O(bf2_sp_re[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bf2_do_re[5]_i_1 
       (.I0(y0_re0[6]),
        .I1(bf2_bf),
        .I2(DB2_n_14),
        .O(bf2_sp_re[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bf2_do_re[6]_i_1 
       (.I0(y0_re0[7]),
        .I1(bf2_bf),
        .I2(DB2_n_13),
        .O(bf2_sp_re[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bf2_do_re[7]_i_1 
       (.I0(y0_re0[8]),
        .I1(bf2_bf),
        .I2(DB2_n_12),
        .O(bf2_sp_re[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bf2_do_re[8]_i_1 
       (.I0(y0_re0[9]),
        .I1(bf2_bf),
        .I2(DB2_n_11),
        .O(bf2_sp_re[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bf2_do_re[9]_i_1 
       (.I0(y0_re0[10]),
        .I1(bf2_bf),
        .I2(DB2_n_10),
        .O(bf2_sp_re[9]));
  FDRE \bf2_do_re_reg[0] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_re[0]),
        .Q(bf2_do_re[0]),
        .R(1'b0));
  FDRE \bf2_do_re_reg[10] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_re[10]),
        .Q(bf2_do_re[10]),
        .R(1'b0));
  FDRE \bf2_do_re_reg[11] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_re[11]),
        .Q(bf2_do_re[11]),
        .R(1'b0));
  FDRE \bf2_do_re_reg[12] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_re[12]),
        .Q(bf2_do_re[12]),
        .R(1'b0));
  FDRE \bf2_do_re_reg[13] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_re[13]),
        .Q(bf2_do_re[13]),
        .R(1'b0));
  FDRE \bf2_do_re_reg[14] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_re[14]),
        .Q(bf2_do_re[14]),
        .R(1'b0));
  FDRE \bf2_do_re_reg[15] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_re[15]),
        .Q(bf2_do_re[15]),
        .R(1'b0));
  FDRE \bf2_do_re_reg[1] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_re[1]),
        .Q(bf2_do_re[1]),
        .R(1'b0));
  FDRE \bf2_do_re_reg[2] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_re[2]),
        .Q(bf2_do_re[2]),
        .R(1'b0));
  FDRE \bf2_do_re_reg[3] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_re[3]),
        .Q(bf2_do_re[3]),
        .R(1'b0));
  FDRE \bf2_do_re_reg[4] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_re[4]),
        .Q(bf2_do_re[4]),
        .R(1'b0));
  FDRE \bf2_do_re_reg[5] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_re[5]),
        .Q(bf2_do_re[5]),
        .R(1'b0));
  FDRE \bf2_do_re_reg[6] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_re[6]),
        .Q(bf2_do_re[6]),
        .R(1'b0));
  FDRE \bf2_do_re_reg[7] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_re[7]),
        .Q(bf2_do_re[7]),
        .R(1'b0));
  FDRE \bf2_do_re_reg[8] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_re[8]),
        .Q(bf2_do_re[8]),
        .R(1'b0));
  FDRE \bf2_do_re_reg[9] 
       (.C(clock),
        .CE(1'b1),
        .D(bf2_sp_re[9]),
        .Q(bf2_do_re[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    bf_en_i_1
       (.I0(su3_do_en),
        .I1(bf_en),
        .O(bf_en0));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im[0][0]_i_1 
       (.I0(y1_im0[1]),
        .I1(bf2_bf),
        .I2(bf1_do_im[0]),
        .O(db2_di_im[0]));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im[0][10]_i_1 
       (.I0(y1_im0[11]),
        .I1(bf2_bf),
        .I2(bf1_do_im[10]),
        .O(db2_di_im[10]));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im[0][11]_i_1 
       (.I0(y1_im0[12]),
        .I1(bf2_bf),
        .I2(bf1_do_im[11]),
        .O(db2_di_im[11]));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im[0][12]_i_1 
       (.I0(y1_im0[13]),
        .I1(bf2_bf),
        .I2(bf1_do_im[12]),
        .O(db2_di_im[12]));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im[0][13]_i_1 
       (.I0(y1_im0[14]),
        .I1(bf2_bf),
        .I2(bf1_do_im[13]),
        .O(db2_di_im[13]));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im[0][14]_i_1 
       (.I0(y1_im0[15]),
        .I1(bf2_bf),
        .I2(bf1_do_im[14]),
        .O(db2_di_im[14]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im[0][15]_i_1 
       (.I0(y1_im0[16]),
        .I1(bf2_bf),
        .I2(bf1_do_im[15]),
        .O(db2_di_im[15]));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im[0][1]_i_1 
       (.I0(y1_im0[2]),
        .I1(bf2_bf),
        .I2(bf1_do_im[1]),
        .O(db2_di_im[1]));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im[0][2]_i_1 
       (.I0(y1_im0[3]),
        .I1(bf2_bf),
        .I2(bf1_do_im[2]),
        .O(db2_di_im[2]));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im[0][3]_i_1 
       (.I0(y1_im0[4]),
        .I1(bf2_bf),
        .I2(bf1_do_im[3]),
        .O(db2_di_im[3]));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im[0][4]_i_1 
       (.I0(y1_im0[5]),
        .I1(bf2_bf),
        .I2(bf1_do_im[4]),
        .O(db2_di_im[4]));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im[0][5]_i_1 
       (.I0(y1_im0[6]),
        .I1(bf2_bf),
        .I2(bf1_do_im[5]),
        .O(db2_di_im[5]));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im[0][6]_i_1 
       (.I0(y1_im0[7]),
        .I1(bf2_bf),
        .I2(bf1_do_im[6]),
        .O(db2_di_im[6]));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im[0][7]_i_1 
       (.I0(y1_im0[8]),
        .I1(bf2_bf),
        .I2(bf1_do_im[7]),
        .O(db2_di_im[7]));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im[0][8]_i_1 
       (.I0(y1_im0[9]),
        .I1(bf2_bf),
        .I2(bf1_do_im[8]),
        .O(db2_di_im[8]));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_im[0][9]_i_1 
       (.I0(y1_im0[10]),
        .I1(bf2_bf),
        .I2(bf1_do_im[9]),
        .O(db2_di_im[9]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re[0][0]_i_1 
       (.I0(y1_re0[1]),
        .I1(bf2_bf),
        .I2(bf1_do_re[0]),
        .O(db2_di_re[0]));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re[0][10]_i_1 
       (.I0(y1_re0[11]),
        .I1(bf2_bf),
        .I2(bf1_do_re[10]),
        .O(db2_di_re[10]));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re[0][11]_i_1 
       (.I0(y1_re0[12]),
        .I1(bf2_bf),
        .I2(bf1_do_re[11]),
        .O(db2_di_re[11]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re[0][12]_i_1 
       (.I0(y1_re0[13]),
        .I1(bf2_bf),
        .I2(bf1_do_re[12]),
        .O(db2_di_re[12]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re[0][13]_i_1 
       (.I0(y1_re0[14]),
        .I1(bf2_bf),
        .I2(bf1_do_re[13]),
        .O(db2_di_re[13]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re[0][14]_i_1 
       (.I0(y1_re0[15]),
        .I1(bf2_bf),
        .I2(bf1_do_re[14]),
        .O(db2_di_re[14]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re[0][15]_i_1 
       (.I0(y1_re0[16]),
        .I1(bf2_bf),
        .I2(bf1_do_re[15]),
        .O(db2_di_re[15]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re[0][1]_i_1 
       (.I0(y1_re0[2]),
        .I1(bf2_bf),
        .I2(bf1_do_re[1]),
        .O(db2_di_re[1]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re[0][2]_i_1 
       (.I0(y1_re0[3]),
        .I1(bf2_bf),
        .I2(bf1_do_re[2]),
        .O(db2_di_re[2]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re[0][3]_i_1 
       (.I0(y1_re0[4]),
        .I1(bf2_bf),
        .I2(bf1_do_re[3]),
        .O(db2_di_re[3]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re[0][4]_i_1 
       (.I0(y1_re0[5]),
        .I1(bf2_bf),
        .I2(bf1_do_re[4]),
        .O(db2_di_re[4]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re[0][5]_i_1 
       (.I0(y1_re0[6]),
        .I1(bf2_bf),
        .I2(bf1_do_re[5]),
        .O(db2_di_re[5]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re[0][6]_i_1 
       (.I0(y1_re0[7]),
        .I1(bf2_bf),
        .I2(bf1_do_re[6]),
        .O(db2_di_re[6]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re[0][7]_i_1 
       (.I0(y1_re0[8]),
        .I1(bf2_bf),
        .I2(bf1_do_re[7]),
        .O(db2_di_re[7]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re[0][8]_i_1 
       (.I0(y1_re0[9]),
        .I1(bf2_bf),
        .I2(bf1_do_re[8]),
        .O(db2_di_re[8]));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buf_re[0][9]_i_1 
       (.I0(y1_re0[10]),
        .I1(bf2_bf),
        .I2(bf1_do_re[9]),
        .O(db2_di_re[9]));
  LUT3 #(
    .INIT(8'h28)) 
    \di_count[1]_i_1__1 
       (.I0(su2_do_en),
        .I1(\di_count_reg[2]_0 [0]),
        .I2(\di_count_reg_n_0_[1] ),
        .O(p_0_in__6[1]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \di_count[2]_i_1__1 
       (.I0(\di_count_reg_n_0_[1] ),
        .I1(\di_count_reg[2]_0 [0]),
        .I2(su2_do_en),
        .I3(\di_count_reg[2]_0 [1]),
        .O(p_0_in__6[2]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \di_count[3]_i_1__1 
       (.I0(\di_count_reg[2]_0 [0]),
        .I1(\di_count_reg_n_0_[1] ),
        .I2(\di_count_reg[2]_0 [1]),
        .I3(su2_do_en),
        .I4(\di_count_reg_n_0_[3] ),
        .O(p_0_in__6[3]));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \di_count[4]_i_1__1 
       (.I0(\di_count_reg_n_0_[3] ),
        .I1(\di_count_reg[2]_0 [1]),
        .I2(\di_count_reg_n_0_[1] ),
        .I3(\di_count_reg[2]_0 [0]),
        .I4(su2_do_en),
        .I5(\di_count_reg_n_0_[4] ),
        .O(p_0_in__6[4]));
  LUT6 #(
    .INIT(64'hBFFF000040000000)) 
    \di_count[5]_i_1__1 
       (.I0(\di_count[5]_i_2_n_0 ),
        .I1(\di_count_reg[2]_0 [1]),
        .I2(\di_count_reg_n_0_[3] ),
        .I3(\di_count_reg_n_0_[4] ),
        .I4(su2_do_en),
        .I5(\di_count_reg_n_0_[5] ),
        .O(p_0_in__6[5]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \di_count[5]_i_2 
       (.I0(\di_count_reg_n_0_[1] ),
        .I1(\di_count_reg[2]_0 [0]),
        .O(\di_count[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB040)) 
    \di_count[6]_i_1__1 
       (.I0(\di_count[6]_i_2__1_n_0 ),
        .I1(\di_count_reg_n_0_[5] ),
        .I2(su2_do_en),
        .I3(\di_count_reg_n_0_[6] ),
        .O(p_0_in__6[6]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \di_count[6]_i_2__1 
       (.I0(\di_count_reg[2]_0 [0]),
        .I1(\di_count_reg_n_0_[1] ),
        .I2(\di_count_reg[2]_0 [1]),
        .I3(\di_count_reg_n_0_[3] ),
        .I4(\di_count_reg_n_0_[4] ),
        .O(\di_count[6]_i_2__1_n_0 ));
  FDCE \di_count_reg[0] 
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(D),
        .Q(\di_count_reg[2]_0 [0]));
  FDCE \di_count_reg[1] 
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in__6[1]),
        .Q(\di_count_reg_n_0_[1] ));
  FDCE \di_count_reg[2] 
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in__6[2]),
        .Q(\di_count_reg[2]_0 [1]));
  FDCE \di_count_reg[3] 
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in__6[3]),
        .Q(\di_count_reg_n_0_[3] ));
  FDCE \di_count_reg[4] 
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in__6[4]),
        .Q(\di_count_reg_n_0_[4] ));
  FDCE \di_count_reg[5] 
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in__6[5]),
        .Q(\di_count_reg_n_0_[5] ));
  FDCE \di_count_reg[6] 
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in__6[6]),
        .Q(\di_count_reg_n_0_[6] ));
  FDCE mu_do_en_reg
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(bf2_do_en),
        .Q(su3_do_en));
  FDRE \mu_do_im_reg[0] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_31),
        .Q(\mu_do_im_reg[15]_2 [0]),
        .R(1'b0));
  FDRE \mu_do_im_reg[10] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_21),
        .Q(\mu_do_im_reg[15]_2 [10]),
        .R(1'b0));
  FDRE \mu_do_im_reg[11] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_20),
        .Q(\mu_do_im_reg[15]_2 [11]),
        .R(1'b0));
  FDRE \mu_do_im_reg[12] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_19),
        .Q(\mu_do_im_reg[15]_2 [12]),
        .R(1'b0));
  FDRE \mu_do_im_reg[13] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_18),
        .Q(\mu_do_im_reg[15]_2 [13]),
        .R(1'b0));
  FDRE \mu_do_im_reg[14] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_17),
        .Q(\mu_do_im_reg[15]_2 [14]),
        .R(1'b0));
  FDRE \mu_do_im_reg[15] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_16),
        .Q(\mu_do_im_reg[15]_2 [15]),
        .R(1'b0));
  FDRE \mu_do_im_reg[1] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_30),
        .Q(\mu_do_im_reg[15]_2 [1]),
        .R(1'b0));
  FDRE \mu_do_im_reg[2] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_29),
        .Q(\mu_do_im_reg[15]_2 [2]),
        .R(1'b0));
  FDRE \mu_do_im_reg[3] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_28),
        .Q(\mu_do_im_reg[15]_2 [3]),
        .R(1'b0));
  FDRE \mu_do_im_reg[4] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_27),
        .Q(\mu_do_im_reg[15]_2 [4]),
        .R(1'b0));
  FDRE \mu_do_im_reg[5] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_26),
        .Q(\mu_do_im_reg[15]_2 [5]),
        .R(1'b0));
  FDRE \mu_do_im_reg[6] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_25),
        .Q(\mu_do_im_reg[15]_2 [6]),
        .R(1'b0));
  FDRE \mu_do_im_reg[7] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_24),
        .Q(\mu_do_im_reg[15]_2 [7]),
        .R(1'b0));
  FDRE \mu_do_im_reg[8] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_23),
        .Q(\mu_do_im_reg[15]_2 [8]),
        .R(1'b0));
  FDRE \mu_do_im_reg[9] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_22),
        .Q(\mu_do_im_reg[15]_2 [9]),
        .R(1'b0));
  FDRE \mu_do_re_reg[0] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_15),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \mu_do_re_reg[10] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_5),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \mu_do_re_reg[11] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_4),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \mu_do_re_reg[12] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_3),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \mu_do_re_reg[13] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_2),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \mu_do_re_reg[14] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_1),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \mu_do_re_reg[15] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_0),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \mu_do_re_reg[1] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_14),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \mu_do_re_reg[2] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_13),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \mu_do_re_reg[3] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_12),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \mu_do_re_reg[4] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_11),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \mu_do_re_reg[5] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_10),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \mu_do_re_reg[6] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_9),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \mu_do_re_reg[7] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_8),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \mu_do_re_reg[8] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_7),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \mu_do_re_reg[9] 
       (.C(clock),
        .CE(1'b1),
        .D(MU_n_6),
        .Q(Q[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_im_carry__0_i_1
       (.I0(\mu_do_im_reg[15]_2 [7]),
        .I1(sub_im_carry__2[7]),
        .O(\mu_do_im_reg[7]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_im_carry__0_i_2
       (.I0(\mu_do_im_reg[15]_2 [6]),
        .I1(sub_im_carry__2[6]),
        .O(\mu_do_im_reg[7]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_im_carry__0_i_3
       (.I0(\mu_do_im_reg[15]_2 [5]),
        .I1(sub_im_carry__2[5]),
        .O(\mu_do_im_reg[7]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_im_carry__0_i_4
       (.I0(\mu_do_im_reg[15]_2 [4]),
        .I1(sub_im_carry__2[4]),
        .O(\mu_do_im_reg[7]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_im_carry__1_i_1
       (.I0(\mu_do_im_reg[15]_2 [11]),
        .I1(sub_im_carry__2[11]),
        .O(\mu_do_im_reg[11]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_im_carry__1_i_2
       (.I0(\mu_do_im_reg[15]_2 [10]),
        .I1(sub_im_carry__2[10]),
        .O(\mu_do_im_reg[11]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_im_carry__1_i_3
       (.I0(\mu_do_im_reg[15]_2 [9]),
        .I1(sub_im_carry__2[9]),
        .O(\mu_do_im_reg[11]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_im_carry__1_i_4
       (.I0(\mu_do_im_reg[15]_2 [8]),
        .I1(sub_im_carry__2[8]),
        .O(\mu_do_im_reg[11]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_im_carry__2_i_1
       (.I0(\mu_do_im_reg[15]_2 [15]),
        .I1(sub_im_carry__2[15]),
        .O(\mu_do_im_reg[15]_3 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_im_carry__2_i_2
       (.I0(\mu_do_im_reg[15]_2 [14]),
        .I1(sub_im_carry__2[14]),
        .O(\mu_do_im_reg[15]_3 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_im_carry__2_i_3
       (.I0(\mu_do_im_reg[15]_2 [13]),
        .I1(sub_im_carry__2[13]),
        .O(\mu_do_im_reg[15]_3 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_im_carry__2_i_4
       (.I0(\mu_do_im_reg[15]_2 [12]),
        .I1(sub_im_carry__2[12]),
        .O(\mu_do_im_reg[15]_3 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_im_carry_i_1
       (.I0(\mu_do_im_reg[15]_2 [3]),
        .I1(sub_im_carry__2[3]),
        .O(\mu_do_im_reg[3]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_im_carry_i_2
       (.I0(\mu_do_im_reg[15]_2 [2]),
        .I1(sub_im_carry__2[2]),
        .O(\mu_do_im_reg[3]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_im_carry_i_3
       (.I0(\mu_do_im_reg[15]_2 [1]),
        .I1(sub_im_carry__2[1]),
        .O(\mu_do_im_reg[3]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_im_carry_i_4
       (.I0(\mu_do_im_reg[15]_2 [0]),
        .I1(sub_im_carry__2[0]),
        .O(\mu_do_im_reg[3]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_re_carry__0_i_1
       (.I0(Q[7]),
        .I1(sub_re_carry__2[7]),
        .O(\mu_do_re_reg[7]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_re_carry__0_i_2
       (.I0(Q[6]),
        .I1(sub_re_carry__2[6]),
        .O(\mu_do_re_reg[7]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_re_carry__0_i_3
       (.I0(Q[5]),
        .I1(sub_re_carry__2[5]),
        .O(\mu_do_re_reg[7]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_re_carry__0_i_4
       (.I0(Q[4]),
        .I1(sub_re_carry__2[4]),
        .O(\mu_do_re_reg[7]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_re_carry__1_i_1
       (.I0(Q[11]),
        .I1(sub_re_carry__2[11]),
        .O(\mu_do_re_reg[11]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_re_carry__1_i_2
       (.I0(Q[10]),
        .I1(sub_re_carry__2[10]),
        .O(\mu_do_re_reg[11]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_re_carry__1_i_3
       (.I0(Q[9]),
        .I1(sub_re_carry__2[9]),
        .O(\mu_do_re_reg[11]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_re_carry__1_i_4
       (.I0(Q[8]),
        .I1(sub_re_carry__2[8]),
        .O(\mu_do_re_reg[11]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_re_carry__2_i_1
       (.I0(Q[15]),
        .I1(sub_re_carry__2[15]),
        .O(\mu_do_re_reg[15]_2 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_re_carry__2_i_2
       (.I0(Q[14]),
        .I1(sub_re_carry__2[14]),
        .O(\mu_do_re_reg[15]_2 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_re_carry__2_i_3
       (.I0(Q[13]),
        .I1(sub_re_carry__2[13]),
        .O(\mu_do_re_reg[15]_2 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_re_carry__2_i_4
       (.I0(Q[12]),
        .I1(sub_re_carry__2[12]),
        .O(\mu_do_re_reg[15]_2 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_re_carry_i_1
       (.I0(Q[3]),
        .I1(sub_re_carry__2[3]),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_re_carry_i_2
       (.I0(Q[2]),
        .I1(sub_re_carry__2[2]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_re_carry_i_3
       (.I0(Q[1]),
        .I1(sub_re_carry__2[1]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_re_carry_i_4
       (.I0(Q[0]),
        .I1(sub_re_carry__2[0]),
        .O(S[0]));
  FDRE tw_nz_1d_reg
       (.C(clock),
        .CE(1'b1),
        .D(tw_nz),
        .Q(tw_nz_1d),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    tw_nz_i_1__1
       (.I0(bf2_count_reg[2]),
        .I1(bf2_count_reg[1]),
        .I2(bf2_count_reg[0]),
        .O(tw_nz_i_1__1_n_0));
  FDRE tw_nz_reg
       (.C(clock),
        .CE(1'b1),
        .D(tw_nz_i_1__1_n_0),
        .Q(tw_nz),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "Twiddle" *) 
module system_fft128_0_0_Twiddle
   (DOADO,
    DOBDO,
    \bf2_count_reg[4] ,
    ff_im_reg_0,
    ff_im_reg_1,
    \bf2_count_reg[6] ,
    ff_im_reg_2,
    ff_im_reg_3,
    ff_im_reg_4,
    ff_im_reg_5,
    ff_re_reg_0,
    ff_re_reg_1,
    ff_re_reg_2,
    ff_re_reg_3,
    S,
    ff_im_reg_6,
    ff_im_reg_7,
    ff_im_reg_8,
    ff_re_reg_4,
    ff_re_reg_5,
    ff_re_reg_6,
    ff_re_reg_7,
    ff_im_reg_9,
    ff_re_reg_8,
    clock,
    ADDRBWRADDR,
    Q,
    \ff_addr_reg[4] ,
    arbr,
    aibi,
    O,
    aibi_0);
  output [14:0]DOADO;
  output [15:0]DOBDO;
  output [2:0]\bf2_count_reg[4] ;
  output [15:0]ff_im_reg_0;
  output [15:0]ff_im_reg_1;
  output \bf2_count_reg[6] ;
  output [2:0]ff_im_reg_2;
  output [3:0]ff_im_reg_3;
  output [3:0]ff_im_reg_4;
  output [3:0]ff_im_reg_5;
  output [2:0]ff_re_reg_0;
  output [3:0]ff_re_reg_1;
  output [3:0]ff_re_reg_2;
  output [3:0]ff_re_reg_3;
  output [2:0]S;
  output [3:0]ff_im_reg_6;
  output [3:0]ff_im_reg_7;
  output [3:0]ff_im_reg_8;
  output [2:0]ff_re_reg_4;
  output [3:0]ff_re_reg_5;
  output [3:0]ff_re_reg_6;
  output [3:0]ff_re_reg_7;
  output ff_im_reg_9;
  output [0:0]ff_re_reg_8;
  input clock;
  input [1:0]ADDRBWRADDR;
  input [6:0]Q;
  input \ff_addr_reg[4] ;
  input [0:0]arbr;
  input [2:0]aibi;
  input [0:0]O;
  input aibi_0;

  wire [1:0]ADDRBWRADDR;
  wire [14:0]DOADO;
  wire [15:0]DOBDO;
  wire [0:0]O;
  wire [6:0]Q;
  wire [2:0]S;
  wire [2:0]aibi;
  wire aibi_0;
  wire [0:0]arbr;
  wire [2:0]\bf2_count_reg[4] ;
  wire \bf2_count_reg[6] ;
  wire clock;
  wire \ff_addr_reg[4] ;
  wire [15:0]ff_im_reg_0;
  wire [15:0]ff_im_reg_1;
  wire [2:0]ff_im_reg_2;
  wire [3:0]ff_im_reg_3;
  wire [3:0]ff_im_reg_4;
  wire [3:0]ff_im_reg_5;
  wire [3:0]ff_im_reg_6;
  wire [3:0]ff_im_reg_7;
  wire [3:0]ff_im_reg_8;
  wire ff_im_reg_9;
  wire [15:15]\^ff_re_reg ;
  wire [2:0]ff_re_reg_0;
  wire [3:0]ff_re_reg_1;
  wire [3:0]ff_re_reg_2;
  wire [3:0]ff_re_reg_3;
  wire [2:0]ff_re_reg_4;
  wire [3:0]ff_re_reg_5;
  wire [3:0]ff_re_reg_6;
  wire [3:0]ff_re_reg_7;
  wire [0:0]ff_re_reg_8;
  wire [3:1]tw_addr_tc;
  wire [1:0]NLW_ff_im_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_ff_im_reg_DOPBDOP_UNCONNECTED;
  wire [1:0]NLW_ff_re_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_ff_re_reg_DOPBDOP_UNCONNECTED;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    aibi_i_33
       (.I0(\^ff_re_reg ),
        .I1(O),
        .I2(aibi[2]),
        .I3(arbr),
        .I4(aibi_0),
        .I5(ff_im_reg_0[15]),
        .O(ff_re_reg_8));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    arbr_i_18
       (.I0(arbr),
        .I1(ff_im_reg_0[15]),
        .I2(aibi[1]),
        .I3(O),
        .I4(aibi[0]),
        .I5(\^ff_re_reg ),
        .O(ff_im_reg_9));
  LUT6 #(
    .INIT(64'hA5FF7800F000F000)) 
    \ff_addr[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[6]),
        .I4(Q[2]),
        .I5(Q[5]),
        .O(\bf2_count_reg[4] [1]));
  LUT5 #(
    .INIT(32'h956A6A6A)) 
    \ff_addr[4]_i_1 
       (.I0(\ff_addr_reg[4] ),
        .I1(Q[4]),
        .I2(Q[6]),
        .I3(Q[3]),
        .I4(Q[5]),
        .O(\bf2_count_reg[4] [2]));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "TW/ff_im" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "15" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "15" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h809E8276858389BE8F1D95929D0EA57EAECCB8E3C3A9CF04DAD8E707F3740000),
    .INIT_01(256'hFFFFE707FFFFCF04C3A9B8E3FFFFA57EFFFF95928F1D89BEFFFF8276FFFF8000),
    .INIT_02(256'hFFFFFFFF7A7DFFFFFFFF6A6EFFFFFFFF5134FFFFFFFF30FCFFFFFFFF0C8CFFFF),
    .INIT_03(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    ff_im_reg
       (.ADDRARDADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,tw_addr_tc,\bf2_count_reg[4] [0],1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ADDRBWRADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DIADI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO(ff_im_reg_0),
        .DOBDO(ff_im_reg_1),
        .DOPADOP(NLW_ff_im_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_ff_im_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "TW/ff_re" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "15" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "15" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0C8C18F9252830FC3C57471D51345A8262F26A6E70E376427A7D7D8A7F620000),
    .INIT_01(256'hFFFF8276FFFF89BE8F1D9592FFFFA57EFFFFB8E3C3A9CF04FFFFE707FFFF0000),
    .INIT_02(256'hFFFFFFFFDAD8FFFFFFFFB8E3FFFFFFFF9D0EFFFFFFFF89BEFFFFFFFF809EFFFF),
    .INIT_03(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    ff_re_reg
       (.ADDRARDADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,tw_addr_tc,\bf2_count_reg[4] [0],1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ADDRBWRADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DIADI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO({\^ff_re_reg ,DOADO}),
        .DOBDO(DOBDO),
        .DOPADOP(NLW_ff_re_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_ff_re_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT3 #(
    .INIT(8'h78)) 
    ff_re_reg_i_1
       (.I0(\bf2_count_reg[4] [2]),
        .I1(\bf2_count_reg[6] ),
        .I2(\bf2_count_reg[4] [1]),
        .O(tw_addr_tc[3]));
  LUT6 #(
    .INIT(64'h596A4848B7C048C0)) 
    ff_re_reg_i_2
       (.I0(\bf2_count_reg[4] [2]),
        .I1(Q[6]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[5]),
        .I5(Q[0]),
        .O(tw_addr_tc[2]));
  LUT5 #(
    .INIT(32'h9FC060C0)) 
    ff_re_reg_i_3
       (.I0(\bf2_count_reg[4] [2]),
        .I1(Q[5]),
        .I2(Q[0]),
        .I3(Q[6]),
        .I4(Q[1]),
        .O(tw_addr_tc[1]));
  LUT2 #(
    .INIT(4'h8)) 
    ff_re_reg_i_4
       (.I0(Q[0]),
        .I1(Q[6]),
        .O(\bf2_count_reg[4] [0]));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_1
       (.I0(DOADO[7]),
        .O(ff_re_reg_5[3]));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_1__0
       (.I0(DOBDO[7]),
        .O(ff_re_reg_1[3]));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_2
       (.I0(DOADO[6]),
        .O(ff_re_reg_5[2]));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_2__0
       (.I0(DOBDO[6]),
        .O(ff_re_reg_1[2]));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_3
       (.I0(DOADO[5]),
        .O(ff_re_reg_5[1]));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_3__0
       (.I0(DOBDO[5]),
        .O(ff_re_reg_1[1]));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_4
       (.I0(DOADO[4]),
        .O(ff_re_reg_5[0]));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_4__0
       (.I0(DOBDO[4]),
        .O(ff_re_reg_1[0]));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_1
       (.I0(DOADO[11]),
        .O(ff_re_reg_6[3]));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_1__0
       (.I0(DOBDO[11]),
        .O(ff_re_reg_2[3]));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_2
       (.I0(DOADO[10]),
        .O(ff_re_reg_6[2]));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_2__0
       (.I0(DOBDO[10]),
        .O(ff_re_reg_2[2]));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_3
       (.I0(DOADO[9]),
        .O(ff_re_reg_6[1]));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_3__0
       (.I0(DOBDO[9]),
        .O(ff_re_reg_2[1]));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_4
       (.I0(DOADO[8]),
        .O(ff_re_reg_6[0]));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_4__0
       (.I0(DOBDO[8]),
        .O(ff_re_reg_2[0]));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_1
       (.I0(\^ff_re_reg ),
        .O(ff_re_reg_7[3]));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_1__0
       (.I0(DOBDO[15]),
        .O(ff_re_reg_3[3]));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_2
       (.I0(DOADO[14]),
        .O(ff_re_reg_7[2]));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_2__0
       (.I0(DOBDO[14]),
        .O(ff_re_reg_3[2]));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_3
       (.I0(DOADO[13]),
        .O(ff_re_reg_7[1]));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_3__0
       (.I0(DOBDO[13]),
        .O(ff_re_reg_3[1]));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_4
       (.I0(DOADO[12]),
        .O(ff_re_reg_7[0]));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_4__0
       (.I0(DOBDO[12]),
        .O(ff_re_reg_3[0]));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_1
       (.I0(DOADO[3]),
        .O(ff_re_reg_4[2]));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_1__0
       (.I0(DOBDO[3]),
        .O(ff_re_reg_0[2]));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_2
       (.I0(DOADO[2]),
        .O(ff_re_reg_4[1]));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_2__0
       (.I0(DOBDO[2]),
        .O(ff_re_reg_0[1]));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_3
       (.I0(DOADO[1]),
        .O(ff_re_reg_4[0]));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_3__0
       (.I0(DOBDO[1]),
        .O(ff_re_reg_0[0]));
  LUT1 #(
    .INIT(2'h1)) 
    mx_re0_carry__0_i_1
       (.I0(ff_im_reg_0[7]),
        .O(ff_im_reg_6[3]));
  LUT1 #(
    .INIT(2'h1)) 
    mx_re0_carry__0_i_1__0
       (.I0(ff_im_reg_1[7]),
        .O(ff_im_reg_3[3]));
  LUT1 #(
    .INIT(2'h1)) 
    mx_re0_carry__0_i_2
       (.I0(ff_im_reg_0[6]),
        .O(ff_im_reg_6[2]));
  LUT1 #(
    .INIT(2'h1)) 
    mx_re0_carry__0_i_2__0
       (.I0(ff_im_reg_1[6]),
        .O(ff_im_reg_3[2]));
  LUT1 #(
    .INIT(2'h1)) 
    mx_re0_carry__0_i_3
       (.I0(ff_im_reg_0[5]),
        .O(ff_im_reg_6[1]));
  LUT1 #(
    .INIT(2'h1)) 
    mx_re0_carry__0_i_3__0
       (.I0(ff_im_reg_1[5]),
        .O(ff_im_reg_3[1]));
  LUT1 #(
    .INIT(2'h1)) 
    mx_re0_carry__0_i_4
       (.I0(ff_im_reg_0[4]),
        .O(ff_im_reg_6[0]));
  LUT1 #(
    .INIT(2'h1)) 
    mx_re0_carry__0_i_4__0
       (.I0(ff_im_reg_1[4]),
        .O(ff_im_reg_3[0]));
  LUT1 #(
    .INIT(2'h1)) 
    mx_re0_carry__1_i_1
       (.I0(ff_im_reg_0[11]),
        .O(ff_im_reg_7[3]));
  LUT1 #(
    .INIT(2'h1)) 
    mx_re0_carry__1_i_1__0
       (.I0(ff_im_reg_1[11]),
        .O(ff_im_reg_4[3]));
  LUT1 #(
    .INIT(2'h1)) 
    mx_re0_carry__1_i_2
       (.I0(ff_im_reg_0[10]),
        .O(ff_im_reg_7[2]));
  LUT1 #(
    .INIT(2'h1)) 
    mx_re0_carry__1_i_2__0
       (.I0(ff_im_reg_1[10]),
        .O(ff_im_reg_4[2]));
  LUT1 #(
    .INIT(2'h1)) 
    mx_re0_carry__1_i_3
       (.I0(ff_im_reg_0[9]),
        .O(ff_im_reg_7[1]));
  LUT1 #(
    .INIT(2'h1)) 
    mx_re0_carry__1_i_3__0
       (.I0(ff_im_reg_1[9]),
        .O(ff_im_reg_4[1]));
  LUT1 #(
    .INIT(2'h1)) 
    mx_re0_carry__1_i_4
       (.I0(ff_im_reg_0[8]),
        .O(ff_im_reg_7[0]));
  LUT1 #(
    .INIT(2'h1)) 
    mx_re0_carry__1_i_4__0
       (.I0(ff_im_reg_1[8]),
        .O(ff_im_reg_4[0]));
  LUT1 #(
    .INIT(2'h1)) 
    mx_re0_carry__2_i_1
       (.I0(ff_im_reg_0[15]),
        .O(ff_im_reg_8[3]));
  LUT1 #(
    .INIT(2'h1)) 
    mx_re0_carry__2_i_1__0
       (.I0(ff_im_reg_1[15]),
        .O(ff_im_reg_5[3]));
  LUT1 #(
    .INIT(2'h1)) 
    mx_re0_carry__2_i_2
       (.I0(ff_im_reg_0[14]),
        .O(ff_im_reg_8[2]));
  LUT1 #(
    .INIT(2'h1)) 
    mx_re0_carry__2_i_2__0
       (.I0(ff_im_reg_1[14]),
        .O(ff_im_reg_5[2]));
  LUT1 #(
    .INIT(2'h1)) 
    mx_re0_carry__2_i_3
       (.I0(ff_im_reg_0[13]),
        .O(ff_im_reg_8[1]));
  LUT1 #(
    .INIT(2'h1)) 
    mx_re0_carry__2_i_3__0
       (.I0(ff_im_reg_1[13]),
        .O(ff_im_reg_5[1]));
  LUT1 #(
    .INIT(2'h1)) 
    mx_re0_carry__2_i_4
       (.I0(ff_im_reg_0[12]),
        .O(ff_im_reg_8[0]));
  LUT1 #(
    .INIT(2'h1)) 
    mx_re0_carry__2_i_4__0
       (.I0(ff_im_reg_1[12]),
        .O(ff_im_reg_5[0]));
  LUT1 #(
    .INIT(2'h1)) 
    mx_re0_carry_i_1
       (.I0(ff_im_reg_0[3]),
        .O(S[2]));
  LUT1 #(
    .INIT(2'h1)) 
    mx_re0_carry_i_1__0
       (.I0(ff_im_reg_1[3]),
        .O(ff_im_reg_2[2]));
  LUT1 #(
    .INIT(2'h1)) 
    mx_re0_carry_i_2
       (.I0(ff_im_reg_0[2]),
        .O(S[1]));
  LUT1 #(
    .INIT(2'h1)) 
    mx_re0_carry_i_2__0
       (.I0(ff_im_reg_1[2]),
        .O(ff_im_reg_2[1]));
  LUT1 #(
    .INIT(2'h1)) 
    mx_re0_carry_i_3
       (.I0(ff_im_reg_0[1]),
        .O(S[0]));
  LUT1 #(
    .INIT(2'h1)) 
    mx_re0_carry_i_3__0
       (.I0(ff_im_reg_1[1]),
        .O(ff_im_reg_2[0]));
  LUT5 #(
    .INIT(32'hFFAAF8A8)) 
    tw_nz_i_2
       (.I0(Q[6]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[5]),
        .I4(Q[0]),
        .O(\bf2_count_reg[6] ));
endmodule

(* ORIG_REF_NAME = "TwiddleConvert8" *) 
module system_fft128_0_0_TwiddleConvert8
   (B,
    \ff_addr_reg[4]_0 ,
    Q,
    clock);
  output [2:0]B;
  output [0:0]\ff_addr_reg[4]_0 ;
  input [2:0]Q;
  input clock;

  wire [2:0]B;
  wire [2:0]Q;
  wire clock;
  wire [0:0]\ff_addr_reg[4]_0 ;
  wire [1:1]sel0;
  wire [5:5]tw_addr;
  wire [4:4]tw_addr__0;

  LUT2 #(
    .INIT(4'hE)) 
    aibi_i_1__1
       (.I0(B[0]),
        .I1(sel0),
        .O(\ff_addr_reg[4]_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    arbr_i_1__1
       (.I0(B[0]),
        .I1(sel0),
        .O(B[2]));
  LUT2 #(
    .INIT(4'h2)) 
    arbr_i_2__1
       (.I0(B[0]),
        .I1(sel0),
        .O(B[1]));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ff_addr[4]_i_1__1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .O(tw_addr__0));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ff_addr[5]_i_1__1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(tw_addr));
  FDRE \ff_addr_reg[4] 
       (.C(clock),
        .CE(1'b1),
        .D(tw_addr__0),
        .Q(B[0]),
        .R(1'b0));
  FDRE \ff_addr_reg[5] 
       (.C(clock),
        .CE(1'b1),
        .D(tw_addr),
        .Q(sel0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "TwiddleConvert8" *) 
module system_fft128_0_0_TwiddleConvert8_4
   (B,
    \ff_addr_reg[5]_0 ,
    arbr_i_47__0_0,
    arbr_i_41__0_0,
    arbr_i_33__0_0,
    arbr_i_25__0_0,
    arbr,
    arbr_i_41__0_1,
    arbr_i_33__0_1,
    arbr_i_25__0_1,
    Q,
    aibi,
    DOBDO,
    clock,
    ADDRBWRADDR);
  output [15:0]B;
  output [15:0]\ff_addr_reg[5]_0 ;
  input [3:0]arbr_i_47__0_0;
  input [3:0]arbr_i_41__0_0;
  input [3:0]arbr_i_33__0_0;
  input [3:0]arbr_i_25__0_0;
  input [3:0]arbr;
  input [3:0]arbr_i_41__0_1;
  input [3:0]arbr_i_33__0_1;
  input [3:0]arbr_i_25__0_1;
  input [4:0]Q;
  input [14:0]aibi;
  input [14:0]DOBDO;
  input clock;
  input [0:0]ADDRBWRADDR;

  wire [0:0]ADDRBWRADDR;
  wire [15:0]B;
  wire [14:0]DOBDO;
  wire [4:0]Q;
  wire [14:0]aibi;
  wire aibi_i_49__0_n_0;
  wire [3:0]arbr;
  wire arbr_i_17__0_n_0;
  wire arbr_i_18__0_n_0;
  wire arbr_i_19__0_n_0;
  wire arbr_i_20__0_n_0;
  wire arbr_i_21__0_n_0;
  wire arbr_i_22__0_n_0;
  wire arbr_i_23__0_n_0;
  wire arbr_i_24__0_n_0;
  wire [3:0]arbr_i_25__0_0;
  wire [3:0]arbr_i_25__0_1;
  wire arbr_i_25__0_n_0;
  wire arbr_i_26__0_n_0;
  wire arbr_i_27__0_n_0;
  wire arbr_i_28__0_n_0;
  wire arbr_i_29__0_n_0;
  wire arbr_i_30__0_n_0;
  wire arbr_i_31__0_n_0;
  wire arbr_i_32__0_n_0;
  wire [3:0]arbr_i_33__0_0;
  wire [3:0]arbr_i_33__0_1;
  wire arbr_i_33__0_n_0;
  wire arbr_i_34__0_n_0;
  wire arbr_i_35__0_n_0;
  wire arbr_i_36__0_n_0;
  wire arbr_i_37__0_n_0;
  wire arbr_i_38__0_n_0;
  wire arbr_i_39__0_n_0;
  wire arbr_i_40__0_n_0;
  wire [3:0]arbr_i_41__0_0;
  wire [3:0]arbr_i_41__0_1;
  wire arbr_i_41__0_n_0;
  wire arbr_i_42__0_n_0;
  wire arbr_i_43__0_n_0;
  wire arbr_i_44__0_n_0;
  wire arbr_i_45__0_n_0;
  wire arbr_i_46__0_n_0;
  wire [3:0]arbr_i_47__0_0;
  wire arbr_i_47__0_n_0;
  wire clock;
  wire [15:0]\ff_addr_reg[5]_0 ;
  wire [15:0]mx_im__50;
  wire mx_re0_carry__0_n_0;
  wire mx_re0_carry__0_n_1;
  wire mx_re0_carry__0_n_2;
  wire mx_re0_carry__0_n_3;
  wire mx_re0_carry__1_n_0;
  wire mx_re0_carry__1_n_1;
  wire mx_re0_carry__1_n_2;
  wire mx_re0_carry__1_n_3;
  wire mx_re0_carry__2_n_1;
  wire mx_re0_carry__2_n_2;
  wire mx_re0_carry__2_n_3;
  wire mx_re0_carry_n_0;
  wire mx_re0_carry_n_1;
  wire mx_re0_carry_n_2;
  wire mx_re0_carry_n_3;
  wire \mx_re0_inferred__0/i__carry__0_n_0 ;
  wire \mx_re0_inferred__0/i__carry__0_n_1 ;
  wire \mx_re0_inferred__0/i__carry__0_n_2 ;
  wire \mx_re0_inferred__0/i__carry__0_n_3 ;
  wire \mx_re0_inferred__0/i__carry__1_n_0 ;
  wire \mx_re0_inferred__0/i__carry__1_n_1 ;
  wire \mx_re0_inferred__0/i__carry__1_n_2 ;
  wire \mx_re0_inferred__0/i__carry__1_n_3 ;
  wire \mx_re0_inferred__0/i__carry__2_n_1 ;
  wire \mx_re0_inferred__0/i__carry__2_n_2 ;
  wire \mx_re0_inferred__0/i__carry__2_n_3 ;
  wire \mx_re0_inferred__0/i__carry_n_0 ;
  wire \mx_re0_inferred__0/i__carry_n_1 ;
  wire \mx_re0_inferred__0/i__carry_n_2 ;
  wire \mx_re0_inferred__0/i__carry_n_3 ;
  wire [15:0]p_0_in1_in;
  wire [15:0]p_2_in;
  wire [6:0]sel0;
  wire [6:5]tw_addr;
  wire [4:3]tw_addr__0;
  wire [3:3]NLW_mx_re0_carry__2_CO_UNCONNECTED;
  wire [3:3]\NLW_mx_re0_inferred__0/i__carry__2_CO_UNCONNECTED ;

  LUT4 #(
    .INIT(16'hFE02)) 
    aibi_i_10__0
       (.I0(sel0[0]),
        .I1(sel0[5]),
        .I2(sel0[6]),
        .I3(mx_im__50[6]),
        .O(\ff_addr_reg[5]_0 [6]));
  LUT4 #(
    .INIT(16'hFE02)) 
    aibi_i_11__0
       (.I0(sel0[0]),
        .I1(sel0[5]),
        .I2(sel0[6]),
        .I3(mx_im__50[5]),
        .O(\ff_addr_reg[5]_0 [5]));
  LUT4 #(
    .INIT(16'hFE02)) 
    aibi_i_12__0
       (.I0(sel0[0]),
        .I1(sel0[5]),
        .I2(sel0[6]),
        .I3(mx_im__50[4]),
        .O(\ff_addr_reg[5]_0 [4]));
  LUT4 #(
    .INIT(16'hFE02)) 
    aibi_i_13__0
       (.I0(sel0[0]),
        .I1(sel0[5]),
        .I2(sel0[6]),
        .I3(mx_im__50[3]),
        .O(\ff_addr_reg[5]_0 [3]));
  LUT4 #(
    .INIT(16'hFE02)) 
    aibi_i_14__0
       (.I0(sel0[0]),
        .I1(sel0[5]),
        .I2(sel0[6]),
        .I3(mx_im__50[2]),
        .O(\ff_addr_reg[5]_0 [2]));
  LUT4 #(
    .INIT(16'hFE02)) 
    aibi_i_15__0
       (.I0(sel0[0]),
        .I1(sel0[5]),
        .I2(sel0[6]),
        .I3(mx_im__50[1]),
        .O(\ff_addr_reg[5]_0 [1]));
  LUT3 #(
    .INIT(8'hA8)) 
    aibi_i_16
       (.I0(mx_im__50[0]),
        .I1(sel0[6]),
        .I2(sel0[5]),
        .O(\ff_addr_reg[5]_0 [0]));
  LUT5 #(
    .INIT(32'hAAAFAAAC)) 
    aibi_i_1__0
       (.I0(mx_im__50[15]),
        .I1(sel0[1]),
        .I2(sel0[6]),
        .I3(sel0[5]),
        .I4(sel0[0]),
        .O(\ff_addr_reg[5]_0 [15]));
  LUT3 #(
    .INIT(8'hA8)) 
    aibi_i_2
       (.I0(mx_im__50[14]),
        .I1(sel0[6]),
        .I2(sel0[5]),
        .O(\ff_addr_reg[5]_0 [14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    aibi_i_33__0
       (.I0(DOBDO[14]),
        .I1(p_0_in1_in[15]),
        .I2(sel0[2]),
        .I3(p_2_in[15]),
        .I4(aibi_i_49__0_n_0),
        .I5(aibi[14]),
        .O(mx_im__50[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    aibi_i_34__0
       (.I0(DOBDO[13]),
        .I1(p_0_in1_in[14]),
        .I2(sel0[2]),
        .I3(p_2_in[14]),
        .I4(aibi_i_49__0_n_0),
        .I5(aibi[13]),
        .O(mx_im__50[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    aibi_i_35__0
       (.I0(DOBDO[12]),
        .I1(p_0_in1_in[13]),
        .I2(sel0[2]),
        .I3(p_2_in[13]),
        .I4(aibi_i_49__0_n_0),
        .I5(aibi[12]),
        .O(mx_im__50[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    aibi_i_36__0
       (.I0(DOBDO[11]),
        .I1(p_0_in1_in[12]),
        .I2(sel0[2]),
        .I3(p_2_in[12]),
        .I4(aibi_i_49__0_n_0),
        .I5(aibi[11]),
        .O(mx_im__50[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    aibi_i_37__0
       (.I0(DOBDO[10]),
        .I1(p_0_in1_in[11]),
        .I2(sel0[2]),
        .I3(p_2_in[11]),
        .I4(aibi_i_49__0_n_0),
        .I5(aibi[10]),
        .O(mx_im__50[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    aibi_i_38__0
       (.I0(DOBDO[9]),
        .I1(p_0_in1_in[10]),
        .I2(sel0[2]),
        .I3(p_2_in[10]),
        .I4(aibi_i_49__0_n_0),
        .I5(aibi[9]),
        .O(mx_im__50[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    aibi_i_39__0
       (.I0(DOBDO[8]),
        .I1(p_0_in1_in[9]),
        .I2(sel0[2]),
        .I3(p_2_in[9]),
        .I4(aibi_i_49__0_n_0),
        .I5(aibi[8]),
        .O(mx_im__50[9]));
  LUT4 #(
    .INIT(16'hFE02)) 
    aibi_i_3__0
       (.I0(sel0[0]),
        .I1(sel0[5]),
        .I2(sel0[6]),
        .I3(mx_im__50[13]),
        .O(\ff_addr_reg[5]_0 [13]));
  LUT3 #(
    .INIT(8'hA8)) 
    aibi_i_4
       (.I0(mx_im__50[12]),
        .I1(sel0[6]),
        .I2(sel0[5]),
        .O(\ff_addr_reg[5]_0 [12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    aibi_i_40__0
       (.I0(DOBDO[7]),
        .I1(p_0_in1_in[8]),
        .I2(sel0[2]),
        .I3(p_2_in[8]),
        .I4(aibi_i_49__0_n_0),
        .I5(aibi[7]),
        .O(mx_im__50[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    aibi_i_41__0
       (.I0(DOBDO[6]),
        .I1(p_0_in1_in[7]),
        .I2(sel0[2]),
        .I3(p_2_in[7]),
        .I4(aibi_i_49__0_n_0),
        .I5(aibi[6]),
        .O(mx_im__50[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    aibi_i_42__0
       (.I0(DOBDO[5]),
        .I1(p_0_in1_in[6]),
        .I2(sel0[2]),
        .I3(p_2_in[6]),
        .I4(aibi_i_49__0_n_0),
        .I5(aibi[5]),
        .O(mx_im__50[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    aibi_i_43__0
       (.I0(DOBDO[4]),
        .I1(p_0_in1_in[5]),
        .I2(sel0[2]),
        .I3(p_2_in[5]),
        .I4(aibi_i_49__0_n_0),
        .I5(aibi[4]),
        .O(mx_im__50[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    aibi_i_44__0
       (.I0(DOBDO[3]),
        .I1(p_0_in1_in[4]),
        .I2(sel0[2]),
        .I3(p_2_in[4]),
        .I4(aibi_i_49__0_n_0),
        .I5(aibi[3]),
        .O(mx_im__50[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    aibi_i_45__0
       (.I0(DOBDO[2]),
        .I1(p_0_in1_in[3]),
        .I2(sel0[2]),
        .I3(p_2_in[3]),
        .I4(aibi_i_49__0_n_0),
        .I5(aibi[2]),
        .O(mx_im__50[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    aibi_i_46__0
       (.I0(DOBDO[1]),
        .I1(p_0_in1_in[2]),
        .I2(sel0[2]),
        .I3(p_2_in[2]),
        .I4(aibi_i_49__0_n_0),
        .I5(aibi[1]),
        .O(mx_im__50[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    aibi_i_47__0
       (.I0(DOBDO[0]),
        .I1(p_0_in1_in[1]),
        .I2(sel0[2]),
        .I3(p_2_in[1]),
        .I4(aibi_i_49__0_n_0),
        .I5(aibi[0]),
        .O(mx_im__50[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    aibi_i_48__0
       (.I0(arbr[0]),
        .I1(p_0_in1_in[0]),
        .I2(sel0[2]),
        .I3(p_2_in[0]),
        .I4(aibi_i_49__0_n_0),
        .I5(arbr_i_47__0_0[0]),
        .O(mx_im__50[0]));
  LUT3 #(
    .INIT(8'h9A)) 
    aibi_i_49__0
       (.I0(sel0[0]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .O(aibi_i_49__0_n_0));
  LUT3 #(
    .INIT(8'hA8)) 
    aibi_i_5
       (.I0(mx_im__50[11]),
        .I1(sel0[6]),
        .I2(sel0[5]),
        .O(\ff_addr_reg[5]_0 [11]));
  LUT4 #(
    .INIT(16'hFE02)) 
    aibi_i_6__0
       (.I0(sel0[0]),
        .I1(sel0[5]),
        .I2(sel0[6]),
        .I3(mx_im__50[10]),
        .O(\ff_addr_reg[5]_0 [10]));
  LUT3 #(
    .INIT(8'hA8)) 
    aibi_i_7
       (.I0(mx_im__50[9]),
        .I1(sel0[6]),
        .I2(sel0[5]),
        .O(\ff_addr_reg[5]_0 [9]));
  LUT4 #(
    .INIT(16'hFE02)) 
    aibi_i_8__0
       (.I0(sel0[0]),
        .I1(sel0[5]),
        .I2(sel0[6]),
        .I3(mx_im__50[8]),
        .O(\ff_addr_reg[5]_0 [8]));
  LUT3 #(
    .INIT(8'hA8)) 
    aibi_i_9
       (.I0(mx_im__50[7]),
        .I1(sel0[6]),
        .I2(sel0[5]),
        .O(\ff_addr_reg[5]_0 [7]));
  LUT6 #(
    .INIT(64'hB8B8FF00B8B80000)) 
    arbr_i_10__0
       (.I0(arbr_i_36__0_n_0),
        .I1(sel0[2]),
        .I2(arbr_i_37__0_n_0),
        .I3(sel0[1]),
        .I4(arbr_i_19__0_n_0),
        .I5(sel0[0]),
        .O(B[6]));
  LUT6 #(
    .INIT(64'hB8B8FF00B8B80000)) 
    arbr_i_11__0
       (.I0(arbr_i_38__0_n_0),
        .I1(sel0[2]),
        .I2(arbr_i_39__0_n_0),
        .I3(sel0[1]),
        .I4(arbr_i_19__0_n_0),
        .I5(sel0[0]),
        .O(B[5]));
  LUT6 #(
    .INIT(64'hB8B8FF00B8B80000)) 
    arbr_i_12__0
       (.I0(arbr_i_40__0_n_0),
        .I1(sel0[2]),
        .I2(arbr_i_41__0_n_0),
        .I3(sel0[1]),
        .I4(arbr_i_19__0_n_0),
        .I5(sel0[0]),
        .O(B[4]));
  LUT6 #(
    .INIT(64'hB8B8FF00B8B80000)) 
    arbr_i_13__0
       (.I0(arbr_i_42__0_n_0),
        .I1(sel0[2]),
        .I2(arbr_i_43__0_n_0),
        .I3(sel0[1]),
        .I4(arbr_i_19__0_n_0),
        .I5(sel0[0]),
        .O(B[3]));
  LUT6 #(
    .INIT(64'hB8B8FF00B8B80000)) 
    arbr_i_14__0
       (.I0(arbr_i_44__0_n_0),
        .I1(sel0[2]),
        .I2(arbr_i_45__0_n_0),
        .I3(sel0[1]),
        .I4(arbr_i_19__0_n_0),
        .I5(sel0[0]),
        .O(B[2]));
  LUT6 #(
    .INIT(64'hDAD0FAFADAD05050)) 
    arbr_i_15__0
       (.I0(arbr_i_19__0_n_0),
        .I1(aibi[0]),
        .I2(sel0[0]),
        .I3(p_2_in[1]),
        .I4(sel0[2]),
        .I5(arbr_i_46__0_n_0),
        .O(B[1]));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    arbr_i_16
       (.I0(arbr_i_47__0_n_0),
        .I1(sel0[2]),
        .I2(p_2_in[0]),
        .I3(sel0[0]),
        .I4(arbr_i_47__0_0[0]),
        .I5(arbr_i_19__0_n_0),
        .O(B[0]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    arbr_i_17__0
       (.I0(aibi[14]),
        .I1(sel0[0]),
        .I2(p_2_in[15]),
        .O(arbr_i_17__0_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    arbr_i_18__0
       (.I0(p_2_in[15]),
        .I1(aibi[14]),
        .I2(sel0[1]),
        .I3(p_0_in1_in[15]),
        .I4(sel0[0]),
        .I5(DOBDO[14]),
        .O(arbr_i_18__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    arbr_i_19__0
       (.I0(sel0[5]),
        .I1(sel0[6]),
        .O(arbr_i_19__0_n_0));
  LUT6 #(
    .INIT(64'hB8B8FF00B8B80000)) 
    arbr_i_1__0
       (.I0(arbr_i_17__0_n_0),
        .I1(sel0[2]),
        .I2(arbr_i_18__0_n_0),
        .I3(sel0[1]),
        .I4(arbr_i_19__0_n_0),
        .I5(sel0[0]),
        .O(B[15]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    arbr_i_20__0
       (.I0(aibi[13]),
        .I1(sel0[0]),
        .I2(p_2_in[14]),
        .O(arbr_i_20__0_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    arbr_i_21__0
       (.I0(p_2_in[14]),
        .I1(aibi[13]),
        .I2(sel0[1]),
        .I3(p_0_in1_in[14]),
        .I4(sel0[0]),
        .I5(DOBDO[13]),
        .O(arbr_i_21__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    arbr_i_22__0
       (.I0(aibi[12]),
        .I1(sel0[0]),
        .I2(p_2_in[13]),
        .O(arbr_i_22__0_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    arbr_i_23__0
       (.I0(p_2_in[13]),
        .I1(aibi[12]),
        .I2(sel0[1]),
        .I3(p_0_in1_in[13]),
        .I4(sel0[0]),
        .I5(DOBDO[12]),
        .O(arbr_i_23__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    arbr_i_24__0
       (.I0(aibi[11]),
        .I1(sel0[0]),
        .I2(p_2_in[12]),
        .O(arbr_i_24__0_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    arbr_i_25__0
       (.I0(p_2_in[12]),
        .I1(aibi[11]),
        .I2(sel0[1]),
        .I3(p_0_in1_in[12]),
        .I4(sel0[0]),
        .I5(DOBDO[11]),
        .O(arbr_i_25__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    arbr_i_26__0
       (.I0(aibi[10]),
        .I1(sel0[0]),
        .I2(p_2_in[11]),
        .O(arbr_i_26__0_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    arbr_i_27__0
       (.I0(p_2_in[11]),
        .I1(aibi[10]),
        .I2(sel0[1]),
        .I3(p_0_in1_in[11]),
        .I4(sel0[0]),
        .I5(DOBDO[10]),
        .O(arbr_i_27__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    arbr_i_28__0
       (.I0(aibi[9]),
        .I1(sel0[0]),
        .I2(p_2_in[10]),
        .O(arbr_i_28__0_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    arbr_i_29__0
       (.I0(p_2_in[10]),
        .I1(aibi[9]),
        .I2(sel0[1]),
        .I3(p_0_in1_in[10]),
        .I4(sel0[0]),
        .I5(DOBDO[9]),
        .O(arbr_i_29__0_n_0));
  LUT6 #(
    .INIT(64'hB800B800B8FFB800)) 
    arbr_i_2__0
       (.I0(arbr_i_20__0_n_0),
        .I1(sel0[2]),
        .I2(arbr_i_21__0_n_0),
        .I3(arbr_i_19__0_n_0),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(B[14]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    arbr_i_30__0
       (.I0(aibi[8]),
        .I1(sel0[0]),
        .I2(p_2_in[9]),
        .O(arbr_i_30__0_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    arbr_i_31__0
       (.I0(p_2_in[9]),
        .I1(aibi[8]),
        .I2(sel0[1]),
        .I3(p_0_in1_in[9]),
        .I4(sel0[0]),
        .I5(DOBDO[8]),
        .O(arbr_i_31__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    arbr_i_32__0
       (.I0(aibi[7]),
        .I1(sel0[0]),
        .I2(p_2_in[8]),
        .O(arbr_i_32__0_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    arbr_i_33__0
       (.I0(p_2_in[8]),
        .I1(aibi[7]),
        .I2(sel0[1]),
        .I3(p_0_in1_in[8]),
        .I4(sel0[0]),
        .I5(DOBDO[7]),
        .O(arbr_i_33__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    arbr_i_34__0
       (.I0(aibi[6]),
        .I1(sel0[0]),
        .I2(p_2_in[7]),
        .O(arbr_i_34__0_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    arbr_i_35__0
       (.I0(p_2_in[7]),
        .I1(aibi[6]),
        .I2(sel0[1]),
        .I3(p_0_in1_in[7]),
        .I4(sel0[0]),
        .I5(DOBDO[6]),
        .O(arbr_i_35__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    arbr_i_36__0
       (.I0(aibi[5]),
        .I1(sel0[0]),
        .I2(p_2_in[6]),
        .O(arbr_i_36__0_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    arbr_i_37__0
       (.I0(p_2_in[6]),
        .I1(aibi[5]),
        .I2(sel0[1]),
        .I3(p_0_in1_in[6]),
        .I4(sel0[0]),
        .I5(DOBDO[5]),
        .O(arbr_i_37__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    arbr_i_38__0
       (.I0(aibi[4]),
        .I1(sel0[0]),
        .I2(p_2_in[5]),
        .O(arbr_i_38__0_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    arbr_i_39__0
       (.I0(p_2_in[5]),
        .I1(aibi[4]),
        .I2(sel0[1]),
        .I3(p_0_in1_in[5]),
        .I4(sel0[0]),
        .I5(DOBDO[4]),
        .O(arbr_i_39__0_n_0));
  LUT6 #(
    .INIT(64'hB8B8FF00B8B80000)) 
    arbr_i_3__0
       (.I0(arbr_i_22__0_n_0),
        .I1(sel0[2]),
        .I2(arbr_i_23__0_n_0),
        .I3(sel0[1]),
        .I4(arbr_i_19__0_n_0),
        .I5(sel0[0]),
        .O(B[13]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    arbr_i_40__0
       (.I0(aibi[3]),
        .I1(sel0[0]),
        .I2(p_2_in[4]),
        .O(arbr_i_40__0_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    arbr_i_41__0
       (.I0(p_2_in[4]),
        .I1(aibi[3]),
        .I2(sel0[1]),
        .I3(p_0_in1_in[4]),
        .I4(sel0[0]),
        .I5(DOBDO[3]),
        .O(arbr_i_41__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    arbr_i_42__0
       (.I0(aibi[2]),
        .I1(sel0[0]),
        .I2(p_2_in[3]),
        .O(arbr_i_42__0_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    arbr_i_43__0
       (.I0(p_2_in[3]),
        .I1(aibi[2]),
        .I2(sel0[1]),
        .I3(p_0_in1_in[3]),
        .I4(sel0[0]),
        .I5(DOBDO[2]),
        .O(arbr_i_43__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    arbr_i_44__0
       (.I0(aibi[1]),
        .I1(sel0[0]),
        .I2(p_2_in[2]),
        .O(arbr_i_44__0_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    arbr_i_45__0
       (.I0(p_2_in[2]),
        .I1(aibi[1]),
        .I2(sel0[1]),
        .I3(p_0_in1_in[2]),
        .I4(sel0[0]),
        .I5(DOBDO[1]),
        .O(arbr_i_45__0_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    arbr_i_46__0
       (.I0(p_2_in[1]),
        .I1(aibi[0]),
        .I2(sel0[1]),
        .I3(p_0_in1_in[1]),
        .I4(sel0[0]),
        .I5(DOBDO[0]),
        .O(arbr_i_46__0_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    arbr_i_47__0
       (.I0(p_2_in[0]),
        .I1(arbr_i_47__0_0[0]),
        .I2(sel0[1]),
        .I3(p_0_in1_in[0]),
        .I4(sel0[0]),
        .I5(arbr[0]),
        .O(arbr_i_47__0_n_0));
  LUT6 #(
    .INIT(64'hB800B800B8FFB800)) 
    arbr_i_4__0
       (.I0(arbr_i_24__0_n_0),
        .I1(sel0[2]),
        .I2(arbr_i_25__0_n_0),
        .I3(arbr_i_19__0_n_0),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(B[12]));
  LUT6 #(
    .INIT(64'hB800B800B8FFB800)) 
    arbr_i_5__0
       (.I0(arbr_i_26__0_n_0),
        .I1(sel0[2]),
        .I2(arbr_i_27__0_n_0),
        .I3(arbr_i_19__0_n_0),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(B[11]));
  LUT6 #(
    .INIT(64'hB8B8FF00B8B80000)) 
    arbr_i_6__0
       (.I0(arbr_i_28__0_n_0),
        .I1(sel0[2]),
        .I2(arbr_i_29__0_n_0),
        .I3(sel0[1]),
        .I4(arbr_i_19__0_n_0),
        .I5(sel0[0]),
        .O(B[10]));
  LUT6 #(
    .INIT(64'hB800B800B8FFB800)) 
    arbr_i_7__0
       (.I0(arbr_i_30__0_n_0),
        .I1(sel0[2]),
        .I2(arbr_i_31__0_n_0),
        .I3(arbr_i_19__0_n_0),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(B[9]));
  LUT6 #(
    .INIT(64'hB8B8FF00B8B80000)) 
    arbr_i_8__0
       (.I0(arbr_i_32__0_n_0),
        .I1(sel0[2]),
        .I2(arbr_i_33__0_n_0),
        .I3(sel0[1]),
        .I4(arbr_i_19__0_n_0),
        .I5(sel0[0]),
        .O(B[8]));
  LUT6 #(
    .INIT(64'hB800B800B8FFB800)) 
    arbr_i_9__0
       (.I0(arbr_i_34__0_n_0),
        .I1(sel0[2]),
        .I2(arbr_i_35__0_n_0),
        .I3(arbr_i_19__0_n_0),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(B[7]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'h7888)) 
    \ff_addr[3]_i_1__0 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[4]),
        .I3(Q[1]),
        .O(tw_addr__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT5 #(
    .INIT(32'h9FC0C0C0)) 
    \ff_addr[4]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[4]),
        .I3(Q[3]),
        .I4(Q[1]),
        .O(tw_addr__0[4]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT5 #(
    .INIT(32'h5F008000)) 
    \ff_addr[5]_i_1__0 
       (.I0(Q[4]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[2]),
        .O(tw_addr[5]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \ff_addr[6]_i_1__0 
       (.I0(Q[4]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[2]),
        .O(tw_addr[6]));
  FDRE \ff_addr_reg[2] 
       (.C(clock),
        .CE(1'b1),
        .D(ADDRBWRADDR),
        .Q(sel0[5]),
        .R(1'b0));
  FDRE \ff_addr_reg[3] 
       (.C(clock),
        .CE(1'b1),
        .D(tw_addr__0[3]),
        .Q(sel0[6]),
        .R(1'b0));
  FDRE \ff_addr_reg[4] 
       (.C(clock),
        .CE(1'b1),
        .D(tw_addr__0[4]),
        .Q(sel0[0]),
        .R(1'b0));
  FDRE \ff_addr_reg[5] 
       (.C(clock),
        .CE(1'b1),
        .D(tw_addr[5]),
        .Q(sel0[1]),
        .R(1'b0));
  FDRE \ff_addr_reg[6] 
       (.C(clock),
        .CE(1'b1),
        .D(tw_addr[6]),
        .Q(sel0[2]),
        .R(1'b0));
  CARRY4 mx_re0_carry
       (.CI(1'b0),
        .CO({mx_re0_carry_n_0,mx_re0_carry_n_1,mx_re0_carry_n_2,mx_re0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O(p_0_in1_in[3:0]),
        .S(arbr_i_47__0_0));
  CARRY4 mx_re0_carry__0
       (.CI(mx_re0_carry_n_0),
        .CO({mx_re0_carry__0_n_0,mx_re0_carry__0_n_1,mx_re0_carry__0_n_2,mx_re0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in1_in[7:4]),
        .S(arbr_i_41__0_0));
  CARRY4 mx_re0_carry__1
       (.CI(mx_re0_carry__0_n_0),
        .CO({mx_re0_carry__1_n_0,mx_re0_carry__1_n_1,mx_re0_carry__1_n_2,mx_re0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in1_in[11:8]),
        .S(arbr_i_33__0_0));
  CARRY4 mx_re0_carry__2
       (.CI(mx_re0_carry__1_n_0),
        .CO({NLW_mx_re0_carry__2_CO_UNCONNECTED[3],mx_re0_carry__2_n_1,mx_re0_carry__2_n_2,mx_re0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in1_in[15:12]),
        .S(arbr_i_25__0_0));
  CARRY4 \mx_re0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\mx_re0_inferred__0/i__carry_n_0 ,\mx_re0_inferred__0/i__carry_n_1 ,\mx_re0_inferred__0/i__carry_n_2 ,\mx_re0_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O(p_2_in[3:0]),
        .S(arbr));
  CARRY4 \mx_re0_inferred__0/i__carry__0 
       (.CI(\mx_re0_inferred__0/i__carry_n_0 ),
        .CO({\mx_re0_inferred__0/i__carry__0_n_0 ,\mx_re0_inferred__0/i__carry__0_n_1 ,\mx_re0_inferred__0/i__carry__0_n_2 ,\mx_re0_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_2_in[7:4]),
        .S(arbr_i_41__0_1));
  CARRY4 \mx_re0_inferred__0/i__carry__1 
       (.CI(\mx_re0_inferred__0/i__carry__0_n_0 ),
        .CO({\mx_re0_inferred__0/i__carry__1_n_0 ,\mx_re0_inferred__0/i__carry__1_n_1 ,\mx_re0_inferred__0/i__carry__1_n_2 ,\mx_re0_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_2_in[11:8]),
        .S(arbr_i_33__0_1));
  CARRY4 \mx_re0_inferred__0/i__carry__2 
       (.CI(\mx_re0_inferred__0/i__carry__1_n_0 ),
        .CO({\NLW_mx_re0_inferred__0/i__carry__2_CO_UNCONNECTED [3],\mx_re0_inferred__0/i__carry__2_n_1 ,\mx_re0_inferred__0/i__carry__2_n_2 ,\mx_re0_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_2_in[15:12]),
        .S(arbr_i_25__0_1));
endmodule

(* ORIG_REF_NAME = "TwiddleConvert8" *) 
module system_fft128_0_0_TwiddleConvert8_8
   (O,
    ff_re_reg,
    \ff_addr_reg[5]_0 ,
    Q,
    B,
    \bf2_count_reg[1] ,
    \ff_addr_reg[4]_0 ,
    S,
    arbr_i_41_0,
    arbr_i_33_0,
    arbr_i_25_0,
    arbr,
    arbr_i_41_1,
    arbr_i_33_1,
    arbr_i_25_1,
    aibi,
    \ff_addr_reg[4]_1 ,
    \ff_addr_reg[2]_0 ,
    arbr_0,
    DOADO,
    arbr_1,
    clock);
  output [0:0]O;
  output [0:0]ff_re_reg;
  output [15:0]\ff_addr_reg[5]_0 ;
  output [2:0]Q;
  output [15:0]B;
  output \bf2_count_reg[1] ;
  output \ff_addr_reg[4]_0 ;
  input [3:0]S;
  input [3:0]arbr_i_41_0;
  input [3:0]arbr_i_33_0;
  input [3:0]arbr_i_25_0;
  input [3:0]arbr;
  input [3:0]arbr_i_41_1;
  input [3:0]arbr_i_33_1;
  input [3:0]arbr_i_25_1;
  input [0:0]aibi;
  input [2:0]\ff_addr_reg[4]_1 ;
  input [6:0]\ff_addr_reg[2]_0 ;
  input arbr_0;
  input [14:0]DOADO;
  input [13:0]arbr_1;
  input clock;

  wire [15:0]B;
  wire [14:0]DOADO;
  wire [0:0]O;
  wire [2:0]Q;
  wire [3:0]S;
  wire [0:0]aibi;
  wire [3:0]arbr;
  wire arbr_0;
  wire [13:0]arbr_1;
  wire arbr_i_17_n_0;
  wire arbr_i_19_n_0;
  wire arbr_i_20_n_0;
  wire arbr_i_21_n_0;
  wire arbr_i_22_n_0;
  wire arbr_i_23_n_0;
  wire arbr_i_24_n_0;
  wire [3:0]arbr_i_25_0;
  wire [3:0]arbr_i_25_1;
  wire arbr_i_25_n_0;
  wire arbr_i_26_n_0;
  wire arbr_i_27_n_0;
  wire arbr_i_28_n_0;
  wire arbr_i_29_n_0;
  wire arbr_i_30_n_0;
  wire arbr_i_31_n_0;
  wire arbr_i_32_n_0;
  wire [3:0]arbr_i_33_0;
  wire [3:0]arbr_i_33_1;
  wire arbr_i_33_n_0;
  wire arbr_i_34_n_0;
  wire arbr_i_35_n_0;
  wire arbr_i_36_n_0;
  wire arbr_i_37_n_0;
  wire arbr_i_38_n_0;
  wire arbr_i_39_n_0;
  wire arbr_i_40_n_0;
  wire [3:0]arbr_i_41_0;
  wire [3:0]arbr_i_41_1;
  wire arbr_i_41_n_0;
  wire arbr_i_42_n_0;
  wire arbr_i_43_n_0;
  wire arbr_i_44_n_0;
  wire arbr_i_45_n_0;
  wire arbr_i_46_n_0;
  wire arbr_i_47_n_0;
  wire \bf2_count_reg[1] ;
  wire clock;
  wire [6:0]\ff_addr_reg[2]_0 ;
  wire \ff_addr_reg[4]_0 ;
  wire [2:0]\ff_addr_reg[4]_1 ;
  wire [15:0]\ff_addr_reg[5]_0 ;
  wire [0:0]ff_re_reg;
  wire [14:0]mx_im__50;
  wire mx_re0_carry__0_n_0;
  wire mx_re0_carry__0_n_1;
  wire mx_re0_carry__0_n_2;
  wire mx_re0_carry__0_n_3;
  wire mx_re0_carry__1_n_0;
  wire mx_re0_carry__1_n_1;
  wire mx_re0_carry__1_n_2;
  wire mx_re0_carry__1_n_3;
  wire mx_re0_carry__2_n_1;
  wire mx_re0_carry__2_n_2;
  wire mx_re0_carry__2_n_3;
  wire mx_re0_carry_n_0;
  wire mx_re0_carry_n_1;
  wire mx_re0_carry_n_2;
  wire mx_re0_carry_n_3;
  wire \mx_re0_inferred__0/i__carry__0_n_0 ;
  wire \mx_re0_inferred__0/i__carry__0_n_1 ;
  wire \mx_re0_inferred__0/i__carry__0_n_2 ;
  wire \mx_re0_inferred__0/i__carry__0_n_3 ;
  wire \mx_re0_inferred__0/i__carry__1_n_0 ;
  wire \mx_re0_inferred__0/i__carry__1_n_1 ;
  wire \mx_re0_inferred__0/i__carry__1_n_2 ;
  wire \mx_re0_inferred__0/i__carry__1_n_3 ;
  wire \mx_re0_inferred__0/i__carry__2_n_1 ;
  wire \mx_re0_inferred__0/i__carry__2_n_2 ;
  wire \mx_re0_inferred__0/i__carry__2_n_3 ;
  wire \mx_re0_inferred__0/i__carry_n_0 ;
  wire \mx_re0_inferred__0/i__carry_n_1 ;
  wire \mx_re0_inferred__0/i__carry_n_2 ;
  wire \mx_re0_inferred__0/i__carry_n_3 ;
  wire [14:0]p_0_in1_in;
  wire [14:0]p_2_in;
  wire [6:3]sel0;
  wire [6:5]tw_addr;
  wire [2:1]tw_addr__0;
  wire [3:3]NLW_mx_re0_carry__2_CO_UNCONNECTED;
  wire [3:3]\NLW_mx_re0_inferred__0/i__carry__2_CO_UNCONNECTED ;

  LUT4 #(
    .INIT(16'hFACA)) 
    aibi_i_1
       (.I0(aibi),
        .I1(Q[1]),
        .I2(arbr_i_19_n_0),
        .I3(Q[0]),
        .O(\ff_addr_reg[5]_0 [15]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    aibi_i_10
       (.I0(Q[0]),
        .I1(sel0[6]),
        .I2(sel0[5]),
        .I3(sel0[3]),
        .I4(sel0[4]),
        .I5(mx_im__50[6]),
        .O(\ff_addr_reg[5]_0 [6]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    aibi_i_11
       (.I0(Q[0]),
        .I1(sel0[6]),
        .I2(sel0[5]),
        .I3(sel0[3]),
        .I4(sel0[4]),
        .I5(mx_im__50[5]),
        .O(\ff_addr_reg[5]_0 [5]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    aibi_i_12
       (.I0(Q[0]),
        .I1(sel0[6]),
        .I2(sel0[5]),
        .I3(sel0[3]),
        .I4(sel0[4]),
        .I5(mx_im__50[4]),
        .O(\ff_addr_reg[5]_0 [4]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    aibi_i_13
       (.I0(Q[0]),
        .I1(sel0[6]),
        .I2(sel0[5]),
        .I3(sel0[3]),
        .I4(sel0[4]),
        .I5(mx_im__50[3]),
        .O(\ff_addr_reg[5]_0 [3]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    aibi_i_14
       (.I0(Q[0]),
        .I1(sel0[6]),
        .I2(sel0[5]),
        .I3(sel0[3]),
        .I4(sel0[4]),
        .I5(mx_im__50[2]),
        .O(\ff_addr_reg[5]_0 [2]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    aibi_i_15
       (.I0(Q[0]),
        .I1(sel0[6]),
        .I2(sel0[5]),
        .I3(sel0[3]),
        .I4(sel0[4]),
        .I5(mx_im__50[1]),
        .O(\ff_addr_reg[5]_0 [1]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    aibi_i_16__0
       (.I0(mx_im__50[0]),
        .I1(sel0[4]),
        .I2(sel0[3]),
        .I3(sel0[5]),
        .I4(sel0[6]),
        .O(\ff_addr_reg[5]_0 [0]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    aibi_i_2__0
       (.I0(mx_im__50[14]),
        .I1(sel0[4]),
        .I2(sel0[3]),
        .I3(sel0[5]),
        .I4(sel0[6]),
        .O(\ff_addr_reg[5]_0 [14]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    aibi_i_3
       (.I0(Q[0]),
        .I1(sel0[6]),
        .I2(sel0[5]),
        .I3(sel0[3]),
        .I4(sel0[4]),
        .I5(mx_im__50[13]),
        .O(\ff_addr_reg[5]_0 [13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    aibi_i_34
       (.I0(arbr_1[13]),
        .I1(p_0_in1_in[14]),
        .I2(Q[2]),
        .I3(p_2_in[14]),
        .I4(\ff_addr_reg[4]_0 ),
        .I5(DOADO[13]),
        .O(mx_im__50[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    aibi_i_35
       (.I0(arbr_1[12]),
        .I1(p_0_in1_in[13]),
        .I2(Q[2]),
        .I3(p_2_in[13]),
        .I4(\ff_addr_reg[4]_0 ),
        .I5(DOADO[12]),
        .O(mx_im__50[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    aibi_i_36
       (.I0(arbr_1[11]),
        .I1(p_0_in1_in[12]),
        .I2(Q[2]),
        .I3(p_2_in[12]),
        .I4(\ff_addr_reg[4]_0 ),
        .I5(DOADO[11]),
        .O(mx_im__50[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    aibi_i_37
       (.I0(arbr_1[10]),
        .I1(p_0_in1_in[11]),
        .I2(Q[2]),
        .I3(p_2_in[11]),
        .I4(\ff_addr_reg[4]_0 ),
        .I5(DOADO[10]),
        .O(mx_im__50[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    aibi_i_38
       (.I0(arbr_1[9]),
        .I1(p_0_in1_in[10]),
        .I2(Q[2]),
        .I3(p_2_in[10]),
        .I4(\ff_addr_reg[4]_0 ),
        .I5(DOADO[9]),
        .O(mx_im__50[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    aibi_i_39
       (.I0(arbr_1[8]),
        .I1(p_0_in1_in[9]),
        .I2(Q[2]),
        .I3(p_2_in[9]),
        .I4(\ff_addr_reg[4]_0 ),
        .I5(DOADO[8]),
        .O(mx_im__50[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    aibi_i_40
       (.I0(arbr_1[7]),
        .I1(p_0_in1_in[8]),
        .I2(Q[2]),
        .I3(p_2_in[8]),
        .I4(\ff_addr_reg[4]_0 ),
        .I5(DOADO[7]),
        .O(mx_im__50[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    aibi_i_41
       (.I0(arbr_1[6]),
        .I1(p_0_in1_in[7]),
        .I2(Q[2]),
        .I3(p_2_in[7]),
        .I4(\ff_addr_reg[4]_0 ),
        .I5(DOADO[6]),
        .O(mx_im__50[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    aibi_i_42
       (.I0(arbr_1[5]),
        .I1(p_0_in1_in[6]),
        .I2(Q[2]),
        .I3(p_2_in[6]),
        .I4(\ff_addr_reg[4]_0 ),
        .I5(DOADO[5]),
        .O(mx_im__50[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    aibi_i_43
       (.I0(arbr_1[4]),
        .I1(p_0_in1_in[5]),
        .I2(Q[2]),
        .I3(p_2_in[5]),
        .I4(\ff_addr_reg[4]_0 ),
        .I5(DOADO[4]),
        .O(mx_im__50[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    aibi_i_44
       (.I0(arbr_1[3]),
        .I1(p_0_in1_in[4]),
        .I2(Q[2]),
        .I3(p_2_in[4]),
        .I4(\ff_addr_reg[4]_0 ),
        .I5(DOADO[3]),
        .O(mx_im__50[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    aibi_i_45
       (.I0(arbr_1[2]),
        .I1(p_0_in1_in[3]),
        .I2(Q[2]),
        .I3(p_2_in[3]),
        .I4(\ff_addr_reg[4]_0 ),
        .I5(DOADO[2]),
        .O(mx_im__50[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    aibi_i_46
       (.I0(arbr_1[1]),
        .I1(p_0_in1_in[2]),
        .I2(Q[2]),
        .I3(p_2_in[2]),
        .I4(\ff_addr_reg[4]_0 ),
        .I5(DOADO[1]),
        .O(mx_im__50[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    aibi_i_47
       (.I0(arbr_1[0]),
        .I1(p_0_in1_in[1]),
        .I2(Q[2]),
        .I3(p_2_in[1]),
        .I4(\ff_addr_reg[4]_0 ),
        .I5(DOADO[0]),
        .O(mx_im__50[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    aibi_i_48
       (.I0(arbr[0]),
        .I1(p_0_in1_in[0]),
        .I2(Q[2]),
        .I3(p_2_in[0]),
        .I4(\ff_addr_reg[4]_0 ),
        .I5(S[0]),
        .O(mx_im__50[0]));
  LUT3 #(
    .INIT(8'h9A)) 
    aibi_i_49
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .O(\ff_addr_reg[4]_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    aibi_i_4__0
       (.I0(mx_im__50[12]),
        .I1(sel0[4]),
        .I2(sel0[3]),
        .I3(sel0[5]),
        .I4(sel0[6]),
        .O(\ff_addr_reg[5]_0 [12]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    aibi_i_5__0
       (.I0(mx_im__50[11]),
        .I1(sel0[4]),
        .I2(sel0[3]),
        .I3(sel0[5]),
        .I4(sel0[6]),
        .O(\ff_addr_reg[5]_0 [11]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    aibi_i_6
       (.I0(Q[0]),
        .I1(sel0[6]),
        .I2(sel0[5]),
        .I3(sel0[3]),
        .I4(sel0[4]),
        .I5(mx_im__50[10]),
        .O(\ff_addr_reg[5]_0 [10]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    aibi_i_7__0
       (.I0(mx_im__50[9]),
        .I1(sel0[4]),
        .I2(sel0[3]),
        .I3(sel0[5]),
        .I4(sel0[6]),
        .O(\ff_addr_reg[5]_0 [9]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    aibi_i_8
       (.I0(Q[0]),
        .I1(sel0[6]),
        .I2(sel0[5]),
        .I3(sel0[3]),
        .I4(sel0[4]),
        .I5(mx_im__50[8]),
        .O(\ff_addr_reg[5]_0 [8]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    aibi_i_9__0
       (.I0(mx_im__50[7]),
        .I1(sel0[4]),
        .I2(sel0[3]),
        .I3(sel0[5]),
        .I4(sel0[6]),
        .O(\ff_addr_reg[5]_0 [7]));
  LUT6 #(
    .INIT(64'hFF00B8B80000B8B8)) 
    arbr_i_1
       (.I0(arbr_i_17_n_0),
        .I1(Q[2]),
        .I2(arbr_0),
        .I3(Q[1]),
        .I4(arbr_i_19_n_0),
        .I5(Q[0]),
        .O(B[15]));
  LUT6 #(
    .INIT(64'hFF00B8B80000B8B8)) 
    arbr_i_10
       (.I0(arbr_i_36_n_0),
        .I1(Q[2]),
        .I2(arbr_i_37_n_0),
        .I3(Q[1]),
        .I4(arbr_i_19_n_0),
        .I5(Q[0]),
        .O(B[6]));
  LUT6 #(
    .INIT(64'hFF00B8B80000B8B8)) 
    arbr_i_11
       (.I0(arbr_i_38_n_0),
        .I1(Q[2]),
        .I2(arbr_i_39_n_0),
        .I3(Q[1]),
        .I4(arbr_i_19_n_0),
        .I5(Q[0]),
        .O(B[5]));
  LUT6 #(
    .INIT(64'hFF00B8B80000B8B8)) 
    arbr_i_12
       (.I0(arbr_i_40_n_0),
        .I1(Q[2]),
        .I2(arbr_i_41_n_0),
        .I3(Q[1]),
        .I4(arbr_i_19_n_0),
        .I5(Q[0]),
        .O(B[4]));
  LUT6 #(
    .INIT(64'hFF00B8B80000B8B8)) 
    arbr_i_13
       (.I0(arbr_i_42_n_0),
        .I1(Q[2]),
        .I2(arbr_i_43_n_0),
        .I3(Q[1]),
        .I4(arbr_i_19_n_0),
        .I5(Q[0]),
        .O(B[3]));
  LUT6 #(
    .INIT(64'hFF00B8B80000B8B8)) 
    arbr_i_14
       (.I0(arbr_i_44_n_0),
        .I1(Q[2]),
        .I2(arbr_i_45_n_0),
        .I3(Q[1]),
        .I4(arbr_i_19_n_0),
        .I5(Q[0]),
        .O(B[2]));
  LUT6 #(
    .INIT(64'hE5E0F5F5E5E0A0A0)) 
    arbr_i_15
       (.I0(arbr_i_19_n_0),
        .I1(DOADO[0]),
        .I2(Q[0]),
        .I3(p_2_in[1]),
        .I4(Q[2]),
        .I5(arbr_i_46_n_0),
        .O(B[1]));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    arbr_i_16__0
       (.I0(arbr_i_47_n_0),
        .I1(Q[2]),
        .I2(p_2_in[0]),
        .I3(Q[0]),
        .I4(S[0]),
        .I5(arbr_i_19_n_0),
        .O(B[0]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    arbr_i_17
       (.I0(DOADO[14]),
        .I1(Q[0]),
        .I2(ff_re_reg),
        .O(arbr_i_17_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    arbr_i_19
       (.I0(sel0[6]),
        .I1(sel0[5]),
        .I2(sel0[3]),
        .I3(sel0[4]),
        .O(arbr_i_19_n_0));
  LUT6 #(
    .INIT(64'h0000B8B8FF00B8B8)) 
    arbr_i_2
       (.I0(arbr_i_20_n_0),
        .I1(Q[2]),
        .I2(arbr_i_21_n_0),
        .I3(Q[0]),
        .I4(arbr_i_19_n_0),
        .I5(Q[1]),
        .O(B[14]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    arbr_i_20
       (.I0(DOADO[13]),
        .I1(Q[0]),
        .I2(p_2_in[14]),
        .O(arbr_i_20_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    arbr_i_21
       (.I0(p_2_in[14]),
        .I1(DOADO[13]),
        .I2(Q[1]),
        .I3(p_0_in1_in[14]),
        .I4(Q[0]),
        .I5(arbr_1[13]),
        .O(arbr_i_21_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    arbr_i_22
       (.I0(DOADO[12]),
        .I1(Q[0]),
        .I2(p_2_in[13]),
        .O(arbr_i_22_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    arbr_i_23
       (.I0(p_2_in[13]),
        .I1(DOADO[12]),
        .I2(Q[1]),
        .I3(p_0_in1_in[13]),
        .I4(Q[0]),
        .I5(arbr_1[12]),
        .O(arbr_i_23_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    arbr_i_24
       (.I0(DOADO[11]),
        .I1(Q[0]),
        .I2(p_2_in[12]),
        .O(arbr_i_24_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    arbr_i_25
       (.I0(p_2_in[12]),
        .I1(DOADO[11]),
        .I2(Q[1]),
        .I3(p_0_in1_in[12]),
        .I4(Q[0]),
        .I5(arbr_1[11]),
        .O(arbr_i_25_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    arbr_i_26
       (.I0(DOADO[10]),
        .I1(Q[0]),
        .I2(p_2_in[11]),
        .O(arbr_i_26_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    arbr_i_27
       (.I0(p_2_in[11]),
        .I1(DOADO[10]),
        .I2(Q[1]),
        .I3(p_0_in1_in[11]),
        .I4(Q[0]),
        .I5(arbr_1[10]),
        .O(arbr_i_27_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    arbr_i_28
       (.I0(DOADO[9]),
        .I1(Q[0]),
        .I2(p_2_in[10]),
        .O(arbr_i_28_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    arbr_i_29
       (.I0(p_2_in[10]),
        .I1(DOADO[9]),
        .I2(Q[1]),
        .I3(p_0_in1_in[10]),
        .I4(Q[0]),
        .I5(arbr_1[9]),
        .O(arbr_i_29_n_0));
  LUT6 #(
    .INIT(64'hFF00B8B80000B8B8)) 
    arbr_i_3
       (.I0(arbr_i_22_n_0),
        .I1(Q[2]),
        .I2(arbr_i_23_n_0),
        .I3(Q[1]),
        .I4(arbr_i_19_n_0),
        .I5(Q[0]),
        .O(B[13]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    arbr_i_30
       (.I0(DOADO[8]),
        .I1(Q[0]),
        .I2(p_2_in[9]),
        .O(arbr_i_30_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    arbr_i_31
       (.I0(p_2_in[9]),
        .I1(DOADO[8]),
        .I2(Q[1]),
        .I3(p_0_in1_in[9]),
        .I4(Q[0]),
        .I5(arbr_1[8]),
        .O(arbr_i_31_n_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    arbr_i_32
       (.I0(DOADO[7]),
        .I1(Q[0]),
        .I2(p_2_in[8]),
        .O(arbr_i_32_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    arbr_i_33
       (.I0(p_2_in[8]),
        .I1(DOADO[7]),
        .I2(Q[1]),
        .I3(p_0_in1_in[8]),
        .I4(Q[0]),
        .I5(arbr_1[7]),
        .O(arbr_i_33_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    arbr_i_34
       (.I0(DOADO[6]),
        .I1(Q[0]),
        .I2(p_2_in[7]),
        .O(arbr_i_34_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    arbr_i_35
       (.I0(p_2_in[7]),
        .I1(DOADO[6]),
        .I2(Q[1]),
        .I3(p_0_in1_in[7]),
        .I4(Q[0]),
        .I5(arbr_1[6]),
        .O(arbr_i_35_n_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    arbr_i_36
       (.I0(DOADO[5]),
        .I1(Q[0]),
        .I2(p_2_in[6]),
        .O(arbr_i_36_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    arbr_i_37
       (.I0(p_2_in[6]),
        .I1(DOADO[5]),
        .I2(Q[1]),
        .I3(p_0_in1_in[6]),
        .I4(Q[0]),
        .I5(arbr_1[5]),
        .O(arbr_i_37_n_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    arbr_i_38
       (.I0(DOADO[4]),
        .I1(Q[0]),
        .I2(p_2_in[5]),
        .O(arbr_i_38_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    arbr_i_39
       (.I0(p_2_in[5]),
        .I1(DOADO[4]),
        .I2(Q[1]),
        .I3(p_0_in1_in[5]),
        .I4(Q[0]),
        .I5(arbr_1[4]),
        .O(arbr_i_39_n_0));
  LUT6 #(
    .INIT(64'h0000B8B8FF00B8B8)) 
    arbr_i_4
       (.I0(arbr_i_24_n_0),
        .I1(Q[2]),
        .I2(arbr_i_25_n_0),
        .I3(Q[0]),
        .I4(arbr_i_19_n_0),
        .I5(Q[1]),
        .O(B[12]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    arbr_i_40
       (.I0(DOADO[3]),
        .I1(Q[0]),
        .I2(p_2_in[4]),
        .O(arbr_i_40_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    arbr_i_41
       (.I0(p_2_in[4]),
        .I1(DOADO[3]),
        .I2(Q[1]),
        .I3(p_0_in1_in[4]),
        .I4(Q[0]),
        .I5(arbr_1[3]),
        .O(arbr_i_41_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    arbr_i_42
       (.I0(DOADO[2]),
        .I1(Q[0]),
        .I2(p_2_in[3]),
        .O(arbr_i_42_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    arbr_i_43
       (.I0(p_2_in[3]),
        .I1(DOADO[2]),
        .I2(Q[1]),
        .I3(p_0_in1_in[3]),
        .I4(Q[0]),
        .I5(arbr_1[2]),
        .O(arbr_i_43_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    arbr_i_44
       (.I0(DOADO[1]),
        .I1(Q[0]),
        .I2(p_2_in[2]),
        .O(arbr_i_44_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    arbr_i_45
       (.I0(p_2_in[2]),
        .I1(DOADO[1]),
        .I2(Q[1]),
        .I3(p_0_in1_in[2]),
        .I4(Q[0]),
        .I5(arbr_1[1]),
        .O(arbr_i_45_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    arbr_i_46
       (.I0(p_2_in[1]),
        .I1(DOADO[0]),
        .I2(Q[1]),
        .I3(p_0_in1_in[1]),
        .I4(Q[0]),
        .I5(arbr_1[0]),
        .O(arbr_i_46_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    arbr_i_47
       (.I0(p_2_in[0]),
        .I1(S[0]),
        .I2(Q[1]),
        .I3(p_0_in1_in[0]),
        .I4(Q[0]),
        .I5(arbr[0]),
        .O(arbr_i_47_n_0));
  LUT6 #(
    .INIT(64'h0000B8B8FF00B8B8)) 
    arbr_i_5
       (.I0(arbr_i_26_n_0),
        .I1(Q[2]),
        .I2(arbr_i_27_n_0),
        .I3(Q[0]),
        .I4(arbr_i_19_n_0),
        .I5(Q[1]),
        .O(B[11]));
  LUT6 #(
    .INIT(64'hFF00B8B80000B8B8)) 
    arbr_i_6
       (.I0(arbr_i_28_n_0),
        .I1(Q[2]),
        .I2(arbr_i_29_n_0),
        .I3(Q[1]),
        .I4(arbr_i_19_n_0),
        .I5(Q[0]),
        .O(B[10]));
  LUT6 #(
    .INIT(64'h0000B8B8FF00B8B8)) 
    arbr_i_7
       (.I0(arbr_i_30_n_0),
        .I1(Q[2]),
        .I2(arbr_i_31_n_0),
        .I3(Q[0]),
        .I4(arbr_i_19_n_0),
        .I5(Q[1]),
        .O(B[9]));
  LUT6 #(
    .INIT(64'hFF00B8B80000B8B8)) 
    arbr_i_8
       (.I0(arbr_i_32_n_0),
        .I1(Q[2]),
        .I2(arbr_i_33_n_0),
        .I3(Q[1]),
        .I4(arbr_i_19_n_0),
        .I5(Q[0]),
        .O(B[8]));
  LUT6 #(
    .INIT(64'h0000B8B8FF00B8B8)) 
    arbr_i_9
       (.I0(arbr_i_34_n_0),
        .I1(Q[2]),
        .I2(arbr_i_35_n_0),
        .I3(Q[0]),
        .I4(arbr_i_19_n_0),
        .I5(Q[1]),
        .O(B[7]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h7888)) 
    \ff_addr[1]_i_1 
       (.I0(\ff_addr_reg[2]_0 [1]),
        .I1(\ff_addr_reg[2]_0 [6]),
        .I2(\ff_addr_reg[2]_0 [0]),
        .I3(\ff_addr_reg[2]_0 [5]),
        .O(tw_addr__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'hBF40C0C0)) 
    \ff_addr[2]_i_1 
       (.I0(\ff_addr_reg[2]_0 [0]),
        .I1(\ff_addr_reg[2]_0 [5]),
        .I2(\ff_addr_reg[2]_0 [1]),
        .I3(\ff_addr_reg[2]_0 [2]),
        .I4(\ff_addr_reg[2]_0 [6]),
        .O(tw_addr__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h1CA07000)) 
    \ff_addr[5]_i_1 
       (.I0(\ff_addr_reg[2]_0 [6]),
        .I1(\ff_addr_reg[2]_0 [3]),
        .I2(\ff_addr_reg[2]_0 [4]),
        .I3(\ff_addr_reg[2]_0 [5]),
        .I4(\bf2_count_reg[1] ),
        .O(tw_addr[5]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hE8000000)) 
    \ff_addr[6]_i_1 
       (.I0(\ff_addr_reg[2]_0 [6]),
        .I1(\ff_addr_reg[2]_0 [3]),
        .I2(\bf2_count_reg[1] ),
        .I3(\ff_addr_reg[2]_0 [4]),
        .I4(\ff_addr_reg[2]_0 [5]),
        .O(tw_addr[6]));
  LUT6 #(
    .INIT(64'hFA00800000000000)) 
    \ff_addr[6]_i_2 
       (.I0(\ff_addr_reg[2]_0 [1]),
        .I1(\ff_addr_reg[2]_0 [0]),
        .I2(\ff_addr_reg[2]_0 [3]),
        .I3(\ff_addr_reg[2]_0 [6]),
        .I4(\ff_addr_reg[2]_0 [2]),
        .I5(\ff_addr_reg[2]_0 [5]),
        .O(\bf2_count_reg[1] ));
  FDRE \ff_addr_reg[0] 
       (.C(clock),
        .CE(1'b1),
        .D(\ff_addr_reg[4]_1 [0]),
        .Q(sel0[3]),
        .R(1'b0));
  FDRE \ff_addr_reg[1] 
       (.C(clock),
        .CE(1'b1),
        .D(tw_addr__0[1]),
        .Q(sel0[4]),
        .R(1'b0));
  FDRE \ff_addr_reg[2] 
       (.C(clock),
        .CE(1'b1),
        .D(tw_addr__0[2]),
        .Q(sel0[5]),
        .R(1'b0));
  FDRE \ff_addr_reg[3] 
       (.C(clock),
        .CE(1'b1),
        .D(\ff_addr_reg[4]_1 [1]),
        .Q(sel0[6]),
        .R(1'b0));
  FDRE \ff_addr_reg[4] 
       (.C(clock),
        .CE(1'b1),
        .D(\ff_addr_reg[4]_1 [2]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \ff_addr_reg[5] 
       (.C(clock),
        .CE(1'b1),
        .D(tw_addr[5]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \ff_addr_reg[6] 
       (.C(clock),
        .CE(1'b1),
        .D(tw_addr[6]),
        .Q(Q[2]),
        .R(1'b0));
  CARRY4 mx_re0_carry
       (.CI(1'b0),
        .CO({mx_re0_carry_n_0,mx_re0_carry_n_1,mx_re0_carry_n_2,mx_re0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O(p_0_in1_in[3:0]),
        .S(S));
  CARRY4 mx_re0_carry__0
       (.CI(mx_re0_carry_n_0),
        .CO({mx_re0_carry__0_n_0,mx_re0_carry__0_n_1,mx_re0_carry__0_n_2,mx_re0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in1_in[7:4]),
        .S(arbr_i_41_0));
  CARRY4 mx_re0_carry__1
       (.CI(mx_re0_carry__0_n_0),
        .CO({mx_re0_carry__1_n_0,mx_re0_carry__1_n_1,mx_re0_carry__1_n_2,mx_re0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in1_in[11:8]),
        .S(arbr_i_33_0));
  CARRY4 mx_re0_carry__2
       (.CI(mx_re0_carry__1_n_0),
        .CO({NLW_mx_re0_carry__2_CO_UNCONNECTED[3],mx_re0_carry__2_n_1,mx_re0_carry__2_n_2,mx_re0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({O,p_0_in1_in[14:12]}),
        .S(arbr_i_25_0));
  CARRY4 \mx_re0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\mx_re0_inferred__0/i__carry_n_0 ,\mx_re0_inferred__0/i__carry_n_1 ,\mx_re0_inferred__0/i__carry_n_2 ,\mx_re0_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O(p_2_in[3:0]),
        .S(arbr));
  CARRY4 \mx_re0_inferred__0/i__carry__0 
       (.CI(\mx_re0_inferred__0/i__carry_n_0 ),
        .CO({\mx_re0_inferred__0/i__carry__0_n_0 ,\mx_re0_inferred__0/i__carry__0_n_1 ,\mx_re0_inferred__0/i__carry__0_n_2 ,\mx_re0_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_2_in[7:4]),
        .S(arbr_i_41_1));
  CARRY4 \mx_re0_inferred__0/i__carry__1 
       (.CI(\mx_re0_inferred__0/i__carry__0_n_0 ),
        .CO({\mx_re0_inferred__0/i__carry__1_n_0 ,\mx_re0_inferred__0/i__carry__1_n_1 ,\mx_re0_inferred__0/i__carry__1_n_2 ,\mx_re0_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_2_in[11:8]),
        .S(arbr_i_33_1));
  CARRY4 \mx_re0_inferred__0/i__carry__2 
       (.CI(\mx_re0_inferred__0/i__carry__1_n_0 ),
        .CO({\NLW_mx_re0_inferred__0/i__carry__2_CO_UNCONNECTED [3],\mx_re0_inferred__0/i__carry__2_n_1 ,\mx_re0_inferred__0/i__carry__2_n_2 ,\mx_re0_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({ff_re_reg,p_2_in[14:12]}),
        .S(arbr_i_25_1));
endmodule

(* ORIG_REF_NAME = "fft128" *) 
module system_fft128_0_0_fft128
   (do_en,
    do_re,
    do_im,
    clock,
    di_re,
    di_im,
    reset,
    di_en);
  output do_en;
  output [15:0]do_re;
  output [15:0]do_im;
  input clock;
  input [15:0]di_re;
  input [15:0]di_im;
  input reset;
  input di_en;

  wire SU1_n_108;
  wire SU1_n_109;
  wire SU1_n_110;
  wire SU1_n_111;
  wire SU1_n_112;
  wire SU1_n_113;
  wire SU1_n_114;
  wire SU1_n_115;
  wire SU1_n_116;
  wire SU1_n_117;
  wire SU1_n_118;
  wire SU1_n_119;
  wire SU1_n_120;
  wire SU1_n_121;
  wire SU1_n_122;
  wire SU1_n_123;
  wire SU1_n_124;
  wire SU1_n_125;
  wire SU1_n_126;
  wire SU1_n_127;
  wire SU1_n_128;
  wire SU1_n_129;
  wire SU1_n_130;
  wire SU1_n_131;
  wire SU1_n_132;
  wire SU1_n_133;
  wire SU1_n_134;
  wire SU1_n_135;
  wire SU1_n_136;
  wire SU1_n_137;
  wire SU1_n_33;
  wire SU1_n_34;
  wire SU1_n_35;
  wire SU1_n_36;
  wire SU1_n_53;
  wire SU1_n_54;
  wire SU1_n_55;
  wire SU1_n_56;
  wire SU1_n_57;
  wire SU1_n_58;
  wire SU1_n_59;
  wire SU1_n_60;
  wire SU1_n_61;
  wire SU1_n_62;
  wire SU1_n_63;
  wire SU1_n_64;
  wire SU1_n_65;
  wire SU1_n_66;
  wire SU1_n_67;
  wire SU1_n_68;
  wire SU1_n_85;
  wire SU1_n_86;
  wire SU1_n_87;
  wire SU1_n_88;
  wire SU1_n_89;
  wire SU1_n_90;
  wire SU1_n_91;
  wire SU1_n_92;
  wire SU1_n_93;
  wire SU1_n_94;
  wire SU1_n_95;
  wire SU1_n_96;
  wire SU2_n_100;
  wire SU2_n_101;
  wire SU2_n_102;
  wire SU2_n_103;
  wire SU2_n_104;
  wire SU2_n_105;
  wire SU2_n_106;
  wire SU2_n_110;
  wire SU2_n_37;
  wire SU2_n_42;
  wire SU2_n_43;
  wire SU2_n_44;
  wire SU2_n_45;
  wire SU2_n_46;
  wire SU2_n_63;
  wire SU2_n_64;
  wire SU2_n_65;
  wire SU2_n_66;
  wire SU2_n_67;
  wire SU2_n_68;
  wire SU2_n_69;
  wire SU2_n_70;
  wire SU2_n_71;
  wire SU2_n_72;
  wire SU2_n_73;
  wire SU2_n_74;
  wire SU2_n_75;
  wire SU2_n_76;
  wire SU2_n_77;
  wire SU2_n_78;
  wire SU2_n_95;
  wire SU2_n_96;
  wire SU2_n_97;
  wire SU2_n_98;
  wire SU2_n_99;
  wire SU3_n_100;
  wire SU3_n_101;
  wire SU3_n_102;
  wire SU3_n_103;
  wire SU3_n_104;
  wire SU3_n_105;
  wire SU3_n_106;
  wire SU3_n_109;
  wire SU3_n_37;
  wire SU3_n_42;
  wire SU3_n_43;
  wire SU3_n_44;
  wire SU3_n_45;
  wire SU3_n_46;
  wire SU3_n_63;
  wire SU3_n_64;
  wire SU3_n_65;
  wire SU3_n_66;
  wire SU3_n_67;
  wire SU3_n_68;
  wire SU3_n_69;
  wire SU3_n_70;
  wire SU3_n_71;
  wire SU3_n_72;
  wire SU3_n_73;
  wire SU3_n_74;
  wire SU3_n_75;
  wire SU3_n_76;
  wire SU3_n_77;
  wire SU3_n_78;
  wire SU3_n_95;
  wire SU3_n_96;
  wire SU3_n_97;
  wire SU3_n_98;
  wire SU3_n_99;
  wire [15:0]\TW/ff_im_reg ;
  wire [15:0]\TW/ff_re_reg ;
  wire bf1_bf;
  wire bf1_bf_2;
  wire bf_en;
  wire bf_en0;
  wire [15:0]\buf_im_reg[0]_7 ;
  wire [15:0]\buf_im_reg[15]_3 ;
  wire [15:0]\buf_im_reg[3]_5 ;
  wire [15:0]\buf_re_reg[0]_6 ;
  wire [15:0]\buf_re_reg[15]_2 ;
  wire [15:0]\buf_re_reg[3]_4 ;
  wire clock;
  wire [15:11]db1_di_im;
  wire [15:11]db1_di_im_0;
  wire [15:11]db1_di_re;
  wire [15:11]db1_di_re_1;
  wire di_en;
  wire [15:0]di_im;
  wire [15:0]di_re;
  wire do_en;
  wire [15:0]do_im;
  wire [15:0]do_re;
  wire [0:0]p_0_in__3;
  wire [0:0]p_0_in__6;
  wire reset;
  wire su1_do_en;
  wire [15:0]su1_do_im;
  wire [15:0]su1_do_re;
  wire su2_do_en;
  wire [15:0]su2_do_im;
  wire [15:0]su2_do_re;
  wire su3_do_en;
  wire [15:0]su3_do_im;
  wire [15:0]su3_do_re;
  wire [15:12]sub_im;
  wire [15:12]sub_im_3;
  wire [15:12]sub_re;
  wire [15:12]sub_re_4;
  wire [2:2]tw_addr__0;
  wire [3:3]tw_addr_tc;

  system_fft128_0_0_SdfUnit SU1
       (.ADDRBWRADDR({tw_addr_tc,tw_addr__0}),
        .D(p_0_in__3),
        .DOBDO(\TW/ff_re_reg ),
        .O(SU2_n_37),
        .Q(su1_do_re),
        .S({SU1_n_33,SU1_n_34,SU1_n_35,SU1_n_36}),
        .\buf_im_reg[15][11]__0 ({bf1_bf,SU2_n_110}),
        .\buf_im_reg[15][14]__0 (sub_im),
        .\buf_im_reg[15][15]__0 (SU2_n_42),
        .\buf_im_reg[15]_3 (\buf_im_reg[15]_3 ),
        .\buf_re_reg[15][14]__0 (sub_re),
        .\buf_re_reg[15]_2 (\buf_re_reg[15]_2 ),
        .clock(clock),
        .db1_di_im(db1_di_im),
        .db1_di_re(db1_di_re),
        .di_en(di_en),
        .di_im(di_im),
        .di_re(di_re),
        .ff_im_reg_0(\TW/ff_im_reg ),
        .ff_im_reg_1({SU1_n_108,SU1_n_109,SU1_n_110}),
        .ff_im_reg_2({SU1_n_111,SU1_n_112,SU1_n_113,SU1_n_114}),
        .ff_im_reg_3({SU1_n_115,SU1_n_116,SU1_n_117,SU1_n_118}),
        .ff_im_reg_4({SU1_n_119,SU1_n_120,SU1_n_121,SU1_n_122}),
        .ff_re_reg_0({SU1_n_123,SU1_n_124,SU1_n_125}),
        .ff_re_reg_1({SU1_n_126,SU1_n_127,SU1_n_128,SU1_n_129}),
        .ff_re_reg_2({SU1_n_130,SU1_n_131,SU1_n_132,SU1_n_133}),
        .ff_re_reg_3({SU1_n_134,SU1_n_135,SU1_n_136,SU1_n_137}),
        .\mu_do_im_reg[11]_0 ({SU1_n_89,SU1_n_90,SU1_n_91,SU1_n_92}),
        .\mu_do_im_reg[15]_0 (su1_do_im),
        .\mu_do_im_reg[15]_1 ({SU1_n_93,SU1_n_94,SU1_n_95,SU1_n_96}),
        .\mu_do_im_reg[3]_0 ({SU1_n_65,SU1_n_66,SU1_n_67,SU1_n_68}),
        .\mu_do_im_reg[7]_0 ({SU1_n_85,SU1_n_86,SU1_n_87,SU1_n_88}),
        .\mu_do_re_reg[11]_0 ({SU1_n_57,SU1_n_58,SU1_n_59,SU1_n_60}),
        .\mu_do_re_reg[15]_0 ({SU1_n_61,SU1_n_62,SU1_n_63,SU1_n_64}),
        .\mu_do_re_reg[7]_0 ({SU1_n_53,SU1_n_54,SU1_n_55,SU1_n_56}),
        .reset(reset),
        .su1_do_en(su1_do_en));
  system_fft128_0_0_SdfUnit__parameterized0 SU2
       (.ADDRBWRADDR({tw_addr_tc,tw_addr__0}),
        .D(p_0_in__3),
        .DOBDO(\TW/ff_re_reg [15:1]),
        .O(SU2_n_37),
        .Q(su1_do_re),
        .S({SU1_n_33,SU1_n_34,SU1_n_35,SU1_n_36}),
        .aibi(\TW/ff_im_reg [15:1]),
        .arbr({SU1_n_123,SU1_n_124,SU1_n_125,\TW/ff_re_reg [0]}),
        .arbr_i_25__0({SU1_n_119,SU1_n_120,SU1_n_121,SU1_n_122}),
        .arbr_i_25__0_0({SU1_n_134,SU1_n_135,SU1_n_136,SU1_n_137}),
        .arbr_i_33__0({SU1_n_115,SU1_n_116,SU1_n_117,SU1_n_118}),
        .arbr_i_33__0_0({SU1_n_130,SU1_n_131,SU1_n_132,SU1_n_133}),
        .arbr_i_41__0({SU1_n_111,SU1_n_112,SU1_n_113,SU1_n_114}),
        .arbr_i_41__0_0({SU1_n_126,SU1_n_127,SU1_n_128,SU1_n_129}),
        .arbr_i_47__0({SU1_n_108,SU1_n_109,SU1_n_110,\TW/ff_im_reg [0]}),
        .\buf_im_reg[14][0]_srl15_i_1 ({SU1_n_65,SU1_n_66,SU1_n_67,SU1_n_68}),
        .\buf_im_reg[14][11]_srl15_i_1 (su1_do_im),
        .\buf_im_reg[14][11]_srl15_i_1_0 ({SU1_n_93,SU1_n_94,SU1_n_95,SU1_n_96}),
        .\buf_im_reg[14][3]_srl15_i_1 ({SU1_n_85,SU1_n_86,SU1_n_87,SU1_n_88}),
        .\buf_im_reg[14][7]_srl15_i_1 ({SU1_n_89,SU1_n_90,SU1_n_91,SU1_n_92}),
        .\buf_im_reg[15][15]__0 (db1_di_im),
        .\buf_im_reg[15]_3 (\buf_im_reg[15]_3 ),
        .\buf_im_reg[3][11]__0 ({bf1_bf_2,SU3_n_109}),
        .\buf_im_reg[3][14]__0 (sub_im_3),
        .\buf_im_reg[3][15]__0 (SU3_n_42),
        .\buf_im_reg[3]_5 (\buf_im_reg[3]_5 ),
        .\buf_re_reg[14][11]_srl15_i_1 ({SU1_n_61,SU1_n_62,SU1_n_63,SU1_n_64}),
        .\buf_re_reg[14][3]_srl15_i_1 ({SU1_n_53,SU1_n_54,SU1_n_55,SU1_n_56}),
        .\buf_re_reg[14][7]_srl15_i_1 ({SU1_n_57,SU1_n_58,SU1_n_59,SU1_n_60}),
        .\buf_re_reg[15][15]__0 (db1_di_re),
        .\buf_re_reg[15]_2 (\buf_re_reg[15]_2 ),
        .\buf_re_reg[3][14]__0 (sub_re_4),
        .\buf_re_reg[3][15]__0 (SU3_n_37),
        .\buf_re_reg[3]_4 (\buf_re_reg[3]_4 ),
        .clock(clock),
        .db1_di_im(db1_di_im_0),
        .db1_di_re(db1_di_re_1),
        .\di_count_reg[4]_0 ({bf1_bf,SU2_n_110}),
        .mu_do_en_reg_0(p_0_in__6),
        .\mu_do_im_reg[11]_0 ({SU2_n_99,SU2_n_100,SU2_n_101,SU2_n_102}),
        .\mu_do_im_reg[15]_0 (sub_im),
        .\mu_do_im_reg[15]_1 (SU2_n_42),
        .\mu_do_im_reg[15]_2 (su2_do_im),
        .\mu_do_im_reg[15]_3 ({SU2_n_103,SU2_n_104,SU2_n_105,SU2_n_106}),
        .\mu_do_im_reg[3]_0 ({SU2_n_75,SU2_n_76,SU2_n_77,SU2_n_78}),
        .\mu_do_im_reg[7]_0 ({SU2_n_95,SU2_n_96,SU2_n_97,SU2_n_98}),
        .\mu_do_re_reg[11]_0 ({SU2_n_67,SU2_n_68,SU2_n_69,SU2_n_70}),
        .\mu_do_re_reg[15]_0 (sub_re),
        .\mu_do_re_reg[15]_1 (su2_do_re),
        .\mu_do_re_reg[15]_2 ({SU2_n_71,SU2_n_72,SU2_n_73,SU2_n_74}),
        .\mu_do_re_reg[3]_0 ({SU2_n_43,SU2_n_44,SU2_n_45,SU2_n_46}),
        .\mu_do_re_reg[7]_0 ({SU2_n_63,SU2_n_64,SU2_n_65,SU2_n_66}),
        .reset(reset),
        .su1_do_en(su1_do_en),
        .su2_do_en(su2_do_en));
  system_fft128_0_0_SdfUnit__parameterized1 SU3
       (.D(p_0_in__6),
        .Q(su3_do_re),
        .S({SU3_n_43,SU3_n_44,SU3_n_45,SU3_n_46}),
        .bf_en(bf_en),
        .bf_en0(bf_en0),
        .\buf_im_reg[2][0]_srl3_i_1 ({SU2_n_75,SU2_n_76,SU2_n_77,SU2_n_78}),
        .\buf_im_reg[2][11]_srl3_i_1 (su2_do_im),
        .\buf_im_reg[2][11]_srl3_i_1_0 ({SU2_n_103,SU2_n_104,SU2_n_105,SU2_n_106}),
        .\buf_im_reg[2][3]_srl3_i_1 ({SU2_n_95,SU2_n_96,SU2_n_97,SU2_n_98}),
        .\buf_im_reg[2][7]_srl3_i_1 ({SU2_n_99,SU2_n_100,SU2_n_101,SU2_n_102}),
        .\buf_im_reg[3][15]__0 (db1_di_im_0),
        .\buf_im_reg[3]_5 (\buf_im_reg[3]_5 ),
        .\buf_re_reg[2][0]_srl3_i_1 ({SU2_n_43,SU2_n_44,SU2_n_45,SU2_n_46}),
        .\buf_re_reg[2][11]_srl3_i_1 (su2_do_re),
        .\buf_re_reg[2][11]_srl3_i_1_0 ({SU2_n_71,SU2_n_72,SU2_n_73,SU2_n_74}),
        .\buf_re_reg[2][3]_srl3_i_1 ({SU2_n_63,SU2_n_64,SU2_n_65,SU2_n_66}),
        .\buf_re_reg[2][7]_srl3_i_1 ({SU2_n_67,SU2_n_68,SU2_n_69,SU2_n_70}),
        .\buf_re_reg[3][15]__0 (db1_di_re_1),
        .\buf_re_reg[3]_4 (\buf_re_reg[3]_4 ),
        .clock(clock),
        .\di_count_reg[2]_0 ({bf1_bf_2,SU3_n_109}),
        .\mu_do_im_reg[11]_0 ({SU3_n_99,SU3_n_100,SU3_n_101,SU3_n_102}),
        .\mu_do_im_reg[15]_0 (sub_im_3),
        .\mu_do_im_reg[15]_1 (SU3_n_42),
        .\mu_do_im_reg[15]_2 (su3_do_im),
        .\mu_do_im_reg[15]_3 ({SU3_n_103,SU3_n_104,SU3_n_105,SU3_n_106}),
        .\mu_do_im_reg[3]_0 ({SU3_n_75,SU3_n_76,SU3_n_77,SU3_n_78}),
        .\mu_do_im_reg[7]_0 ({SU3_n_95,SU3_n_96,SU3_n_97,SU3_n_98}),
        .\mu_do_re_reg[11]_0 ({SU3_n_67,SU3_n_68,SU3_n_69,SU3_n_70}),
        .\mu_do_re_reg[15]_0 (sub_re_4),
        .\mu_do_re_reg[15]_1 (SU3_n_37),
        .\mu_do_re_reg[15]_2 ({SU3_n_71,SU3_n_72,SU3_n_73,SU3_n_74}),
        .\mu_do_re_reg[7]_0 ({SU3_n_63,SU3_n_64,SU3_n_65,SU3_n_66}),
        .reset(reset),
        .su2_do_en(su2_do_en),
        .su3_do_en(su3_do_en),
        .sub_im_carry__2(\buf_im_reg[0]_7 ),
        .sub_re_carry__2(\buf_re_reg[0]_6 ));
  system_fft128_0_0_SdfUnit2 SU4
       (.Q(\buf_re_reg[0]_6 ),
        .S({SU3_n_43,SU3_n_44,SU3_n_45,SU3_n_46}),
        .bf_en(bf_en),
        .bf_en0(bf_en0),
        .\buf_im_reg[0][10] ({SU3_n_99,SU3_n_100,SU3_n_101,SU3_n_102}),
        .\buf_im_reg[0][14] ({SU3_n_103,SU3_n_104,SU3_n_105,SU3_n_106}),
        .\buf_im_reg[0][15] (\buf_im_reg[0]_7 ),
        .\buf_im_reg[0][15]_0 (su3_do_im),
        .\buf_im_reg[0][2] ({SU3_n_75,SU3_n_76,SU3_n_77,SU3_n_78}),
        .\buf_im_reg[0][6] ({SU3_n_95,SU3_n_96,SU3_n_97,SU3_n_98}),
        .\buf_re_reg[0][10] ({SU3_n_67,SU3_n_68,SU3_n_69,SU3_n_70}),
        .\buf_re_reg[0][14] ({SU3_n_71,SU3_n_72,SU3_n_73,SU3_n_74}),
        .\buf_re_reg[0][15] (su3_do_re),
        .\buf_re_reg[0][6] ({SU3_n_63,SU3_n_64,SU3_n_65,SU3_n_66}),
        .clock(clock),
        .do_en(do_en),
        .do_im(do_im),
        .do_re(do_re),
        .reset(reset),
        .su3_do_en(su3_do_en));
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
