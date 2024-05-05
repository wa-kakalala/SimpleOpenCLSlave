// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed May  1 16:28:07 2024
// Host        : DESKTOP-7S7UGPP running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/wkk/Desktop/OpenCL/SimpleOpenCLSlave/fpga/SimpleOpenCLSlave/SimpleOpenCLSlave.srcs/sources_1/bd/system/ip/system_axilite_slave_0_0/system_axilite_slave_0_0_sim_netlist.v
// Design      : system_axilite_slave_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_axilite_slave_0_0,axilite_slave,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "axilite_slave,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module system_axilite_slave_0_0
   (S_AXI_ACLK,
    S_AXI_ARESETN,
    S_AXI_AWADDR,
    S_AXI_AWPROT,
    S_AXI_AWVALID,
    S_AXI_AWREADY,
    S_AXI_WDATA,
    S_AXI_WSTRB,
    S_AXI_WVALID,
    S_AXI_WREADY,
    S_AXI_BRESP,
    S_AXI_BVALID,
    S_AXI_BREADY,
    S_AXI_ARADDR,
    S_AXI_ARPROT,
    S_AXI_ARVALID,
    S_AXI_ARREADY,
    S_AXI_RDATA,
    S_AXI_RRESP,
    S_AXI_RVALID,
    S_AXI_RREADY,
    s_axi_write_data,
    s_axi_write_addr,
    s_axi_write_valid,
    s_axi_read_addr,
    s_axi_read_valid,
    s_axi_back_data,
    s_axi_back_valid);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_ARESETN, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, INSERT_VIP 0" *) input S_AXI_ACLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input S_AXI_ARESETN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [9:0]S_AXI_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]S_AXI_AWPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input S_AXI_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output S_AXI_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]S_AXI_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]S_AXI_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input S_AXI_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output S_AXI_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]S_AXI_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output S_AXI_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input S_AXI_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [9:0]S_AXI_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]S_AXI_ARPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input S_AXI_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output S_AXI_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]S_AXI_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]S_AXI_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output S_AXI_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 10, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input S_AXI_RREADY;
  output [31:0]s_axi_write_data;
  output [7:0]s_axi_write_addr;
  output s_axi_write_valid;
  output [7:0]s_axi_read_addr;
  output s_axi_read_valid;
  input [31:0]s_axi_back_data;
  input s_axi_back_valid;

  wire \<const0> ;
  wire S_AXI_ACLK;
  wire [9:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [9:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire S_AXI_WVALID;
  wire [31:0]s_axi_back_data;
  wire [7:0]s_axi_read_addr;
  wire s_axi_read_valid;
  wire [7:0]s_axi_write_addr;
  wire [31:0]s_axi_write_data;
  wire s_axi_write_valid;

  assign S_AXI_BRESP[1] = \<const0> ;
  assign S_AXI_BRESP[0] = \<const0> ;
  assign S_AXI_RDATA[31:0] = s_axi_back_data;
  assign S_AXI_RRESP[1] = \<const0> ;
  assign S_AXI_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  system_axilite_slave_0_0_axilite_slave inst
       (.S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARADDR(S_AXI_ARADDR[9:2]),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR(S_AXI_AWADDR[9:2]),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_WDATA(S_AXI_WDATA),
        .S_AXI_WREADY(S_AXI_WREADY),
        .S_AXI_WVALID(S_AXI_WVALID),
        .axi_rvalid_reg_0(S_AXI_RVALID),
        .s_axi_read_addr(s_axi_read_addr),
        .s_axi_read_valid(s_axi_read_valid),
        .s_axi_write_addr(s_axi_write_addr),
        .s_axi_write_data(s_axi_write_data),
        .s_axi_write_valid(s_axi_write_valid));
endmodule

(* ORIG_REF_NAME = "axilite_slave" *) 
module system_axilite_slave_0_0_axilite_slave
   (S_AXI_AWREADY,
    S_AXI_WREADY,
    S_AXI_ARREADY,
    s_axi_write_data,
    s_axi_write_addr,
    s_axi_write_valid,
    s_axi_read_valid,
    axi_rvalid_reg_0,
    s_axi_read_addr,
    S_AXI_BVALID,
    S_AXI_AWVALID,
    S_AXI_WVALID,
    S_AXI_ACLK,
    S_AXI_WDATA,
    S_AXI_AWADDR,
    S_AXI_ARADDR,
    S_AXI_ARVALID,
    S_AXI_ARESETN,
    S_AXI_BREADY,
    S_AXI_RREADY);
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output S_AXI_ARREADY;
  output [31:0]s_axi_write_data;
  output [7:0]s_axi_write_addr;
  output s_axi_write_valid;
  output s_axi_read_valid;
  output axi_rvalid_reg_0;
  output [7:0]s_axi_read_addr;
  output S_AXI_BVALID;
  input S_AXI_AWVALID;
  input S_AXI_WVALID;
  input S_AXI_ACLK;
  input [31:0]S_AXI_WDATA;
  input [7:0]S_AXI_AWADDR;
  input [7:0]S_AXI_ARADDR;
  input S_AXI_ARVALID;
  input S_AXI_ARESETN;
  input S_AXI_BREADY;
  input S_AXI_RREADY;

  wire S_AXI_ACLK;
  wire [7:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [7:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire S_AXI_RREADY;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire S_AXI_WVALID;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire [9:2]axi_araddr;
  wire axi_arready0;
  wire axi_awready0__0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_rvalid_reg_0;
  wire axi_wready_i_1_n_0;
  wire p_0_in;
  wire [7:0]p_1_in;
  wire [7:0]s_axi_read_addr;
  wire s_axi_read_valid;
  wire [7:0]s_axi_write_addr;
  wire [31:0]s_axi_write_data;
  wire \s_axi_write_data_reg[31]_i_1_n_0 ;
  wire s_axi_write_valid;

  LUT6 #(
    .INIT(64'hF7FFF700F700F700)) 
    aw_en_i_1
       (.I0(S_AXI_WVALID),
        .I1(S_AXI_AWVALID),
        .I2(S_AXI_AWREADY),
        .I3(aw_en_reg_n_0),
        .I4(S_AXI_BREADY),
        .I5(S_AXI_BVALID),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(p_0_in));
  FDRE \axi_araddr_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready0),
        .D(S_AXI_ARADDR[0]),
        .Q(axi_araddr[2]),
        .R(p_0_in));
  FDRE \axi_araddr_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready0),
        .D(S_AXI_ARADDR[1]),
        .Q(axi_araddr[3]),
        .R(p_0_in));
  FDRE \axi_araddr_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready0),
        .D(S_AXI_ARADDR[2]),
        .Q(axi_araddr[4]),
        .R(p_0_in));
  FDRE \axi_araddr_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready0),
        .D(S_AXI_ARADDR[3]),
        .Q(axi_araddr[5]),
        .R(p_0_in));
  FDRE \axi_araddr_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready0),
        .D(S_AXI_ARADDR[4]),
        .Q(axi_araddr[6]),
        .R(p_0_in));
  FDRE \axi_araddr_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready0),
        .D(S_AXI_ARADDR[5]),
        .Q(axi_araddr[7]),
        .R(p_0_in));
  FDRE \axi_araddr_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready0),
        .D(S_AXI_ARADDR[6]),
        .Q(axi_araddr[8]),
        .R(p_0_in));
  FDRE \axi_araddr_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready0),
        .D(S_AXI_ARADDR[7]),
        .Q(axi_araddr[9]),
        .R(p_0_in));
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(S_AXI_ARVALID),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready0__0),
        .D(S_AXI_AWADDR[0]),
        .Q(p_1_in[0]),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready0__0),
        .D(S_AXI_AWADDR[1]),
        .Q(p_1_in[1]),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready0__0),
        .D(S_AXI_AWADDR[2]),
        .Q(p_1_in[2]),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready0__0),
        .D(S_AXI_AWADDR[3]),
        .Q(p_1_in[3]),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready0__0),
        .D(S_AXI_AWADDR[4]),
        .Q(p_1_in[4]),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready0__0),
        .D(S_AXI_AWADDR[5]),
        .Q(p_1_in[5]),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready0__0),
        .D(S_AXI_AWADDR[6]),
        .Q(p_1_in[6]),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready0__0),
        .D(S_AXI_AWADDR[7]),
        .Q(p_1_in[7]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h2000)) 
    axi_awready0
       (.I0(aw_en_reg_n_0),
        .I1(S_AXI_AWREADY),
        .I2(S_AXI_AWVALID),
        .I3(S_AXI_WVALID),
        .O(axi_awready0__0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(S_AXI_ARESETN),
        .O(p_0_in));
  FDRE axi_awready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_awready0__0),
        .Q(S_AXI_AWREADY),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(S_AXI_AWVALID),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_AWREADY),
        .I4(S_AXI_BREADY),
        .I5(S_AXI_BVALID),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(S_AXI_BVALID),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(S_AXI_ARREADY),
        .I1(S_AXI_ARVALID),
        .I2(axi_rvalid_reg_0),
        .I3(S_AXI_RREADY),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(axi_rvalid_reg_0),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h4000)) 
    axi_wready_i_1
       (.I0(S_AXI_WREADY),
        .I1(aw_en_reg_n_0),
        .I2(S_AXI_AWVALID),
        .I3(S_AXI_WVALID),
        .O(axi_wready_i_1_n_0));
  FDRE axi_wready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_wready_i_1_n_0),
        .Q(S_AXI_WREADY),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \s_axi_read_addr[0]_INST_0 
       (.I0(axi_rvalid_reg_0),
        .I1(S_AXI_ARREADY),
        .I2(S_AXI_ARVALID),
        .I3(axi_araddr[2]),
        .O(s_axi_read_addr[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \s_axi_read_addr[1]_INST_0 
       (.I0(axi_rvalid_reg_0),
        .I1(S_AXI_ARREADY),
        .I2(S_AXI_ARVALID),
        .I3(axi_araddr[3]),
        .O(s_axi_read_addr[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \s_axi_read_addr[2]_INST_0 
       (.I0(axi_rvalid_reg_0),
        .I1(S_AXI_ARREADY),
        .I2(S_AXI_ARVALID),
        .I3(axi_araddr[4]),
        .O(s_axi_read_addr[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \s_axi_read_addr[3]_INST_0 
       (.I0(axi_rvalid_reg_0),
        .I1(S_AXI_ARREADY),
        .I2(S_AXI_ARVALID),
        .I3(axi_araddr[5]),
        .O(s_axi_read_addr[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \s_axi_read_addr[4]_INST_0 
       (.I0(axi_rvalid_reg_0),
        .I1(S_AXI_ARREADY),
        .I2(S_AXI_ARVALID),
        .I3(axi_araddr[6]),
        .O(s_axi_read_addr[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \s_axi_read_addr[5]_INST_0 
       (.I0(axi_rvalid_reg_0),
        .I1(S_AXI_ARREADY),
        .I2(S_AXI_ARVALID),
        .I3(axi_araddr[7]),
        .O(s_axi_read_addr[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \s_axi_read_addr[6]_INST_0 
       (.I0(axi_rvalid_reg_0),
        .I1(S_AXI_ARREADY),
        .I2(S_AXI_ARVALID),
        .I3(axi_araddr[8]),
        .O(s_axi_read_addr[6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \s_axi_read_addr[7]_INST_0 
       (.I0(axi_rvalid_reg_0),
        .I1(S_AXI_ARREADY),
        .I2(S_AXI_ARVALID),
        .I3(axi_araddr[9]),
        .O(s_axi_read_addr[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h08)) 
    s_axi_read_valid__0
       (.I0(S_AXI_ARVALID),
        .I1(S_AXI_ARREADY),
        .I2(axi_rvalid_reg_0),
        .O(s_axi_read_valid));
  FDRE \s_axi_write_addr_reg_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\s_axi_write_data_reg[31]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(s_axi_write_addr[0]),
        .R(p_0_in));
  FDRE \s_axi_write_addr_reg_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\s_axi_write_data_reg[31]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(s_axi_write_addr[1]),
        .R(p_0_in));
  FDRE \s_axi_write_addr_reg_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\s_axi_write_data_reg[31]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(s_axi_write_addr[2]),
        .R(p_0_in));
  FDRE \s_axi_write_addr_reg_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\s_axi_write_data_reg[31]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(s_axi_write_addr[3]),
        .R(p_0_in));
  FDRE \s_axi_write_addr_reg_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\s_axi_write_data_reg[31]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(s_axi_write_addr[4]),
        .R(p_0_in));
  FDRE \s_axi_write_addr_reg_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\s_axi_write_data_reg[31]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(s_axi_write_addr[5]),
        .R(p_0_in));
  FDRE \s_axi_write_addr_reg_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\s_axi_write_data_reg[31]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(s_axi_write_addr[6]),
        .R(p_0_in));
  FDRE \s_axi_write_addr_reg_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\s_axi_write_data_reg[31]_i_1_n_0 ),
        .D(p_1_in[7]),
        .Q(s_axi_write_addr[7]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h8000)) 
    \s_axi_write_data_reg[31]_i_1 
       (.I0(S_AXI_AWREADY),
        .I1(S_AXI_WREADY),
        .I2(S_AXI_AWVALID),
        .I3(S_AXI_WVALID),
        .O(\s_axi_write_data_reg[31]_i_1_n_0 ));
  FDRE \s_axi_write_data_reg_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\s_axi_write_data_reg[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(s_axi_write_data[0]),
        .R(p_0_in));
  FDRE \s_axi_write_data_reg_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(\s_axi_write_data_reg[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[10]),
        .Q(s_axi_write_data[10]),
        .R(p_0_in));
  FDRE \s_axi_write_data_reg_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(\s_axi_write_data_reg[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[11]),
        .Q(s_axi_write_data[11]),
        .R(p_0_in));
  FDRE \s_axi_write_data_reg_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(\s_axi_write_data_reg[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[12]),
        .Q(s_axi_write_data[12]),
        .R(p_0_in));
  FDRE \s_axi_write_data_reg_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(\s_axi_write_data_reg[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[13]),
        .Q(s_axi_write_data[13]),
        .R(p_0_in));
  FDRE \s_axi_write_data_reg_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(\s_axi_write_data_reg[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[14]),
        .Q(s_axi_write_data[14]),
        .R(p_0_in));
  FDRE \s_axi_write_data_reg_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(\s_axi_write_data_reg[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[15]),
        .Q(s_axi_write_data[15]),
        .R(p_0_in));
  FDRE \s_axi_write_data_reg_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(\s_axi_write_data_reg[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[16]),
        .Q(s_axi_write_data[16]),
        .R(p_0_in));
  FDRE \s_axi_write_data_reg_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(\s_axi_write_data_reg[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[17]),
        .Q(s_axi_write_data[17]),
        .R(p_0_in));
  FDRE \s_axi_write_data_reg_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(\s_axi_write_data_reg[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[18]),
        .Q(s_axi_write_data[18]),
        .R(p_0_in));
  FDRE \s_axi_write_data_reg_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(\s_axi_write_data_reg[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[19]),
        .Q(s_axi_write_data[19]),
        .R(p_0_in));
  FDRE \s_axi_write_data_reg_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\s_axi_write_data_reg[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(s_axi_write_data[1]),
        .R(p_0_in));
  FDRE \s_axi_write_data_reg_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(\s_axi_write_data_reg[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[20]),
        .Q(s_axi_write_data[20]),
        .R(p_0_in));
  FDRE \s_axi_write_data_reg_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(\s_axi_write_data_reg[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[21]),
        .Q(s_axi_write_data[21]),
        .R(p_0_in));
  FDRE \s_axi_write_data_reg_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(\s_axi_write_data_reg[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[22]),
        .Q(s_axi_write_data[22]),
        .R(p_0_in));
  FDRE \s_axi_write_data_reg_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(\s_axi_write_data_reg[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[23]),
        .Q(s_axi_write_data[23]),
        .R(p_0_in));
  FDRE \s_axi_write_data_reg_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(\s_axi_write_data_reg[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[24]),
        .Q(s_axi_write_data[24]),
        .R(p_0_in));
  FDRE \s_axi_write_data_reg_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(\s_axi_write_data_reg[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[25]),
        .Q(s_axi_write_data[25]),
        .R(p_0_in));
  FDRE \s_axi_write_data_reg_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(\s_axi_write_data_reg[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[26]),
        .Q(s_axi_write_data[26]),
        .R(p_0_in));
  FDRE \s_axi_write_data_reg_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(\s_axi_write_data_reg[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[27]),
        .Q(s_axi_write_data[27]),
        .R(p_0_in));
  FDRE \s_axi_write_data_reg_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(\s_axi_write_data_reg[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[28]),
        .Q(s_axi_write_data[28]),
        .R(p_0_in));
  FDRE \s_axi_write_data_reg_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(\s_axi_write_data_reg[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[29]),
        .Q(s_axi_write_data[29]),
        .R(p_0_in));
  FDRE \s_axi_write_data_reg_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\s_axi_write_data_reg[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(s_axi_write_data[2]),
        .R(p_0_in));
  FDRE \s_axi_write_data_reg_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(\s_axi_write_data_reg[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[30]),
        .Q(s_axi_write_data[30]),
        .R(p_0_in));
  FDRE \s_axi_write_data_reg_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(\s_axi_write_data_reg[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[31]),
        .Q(s_axi_write_data[31]),
        .R(p_0_in));
  FDRE \s_axi_write_data_reg_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\s_axi_write_data_reg[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(s_axi_write_data[3]),
        .R(p_0_in));
  FDRE \s_axi_write_data_reg_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\s_axi_write_data_reg[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[4]),
        .Q(s_axi_write_data[4]),
        .R(p_0_in));
  FDRE \s_axi_write_data_reg_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\s_axi_write_data_reg[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[5]),
        .Q(s_axi_write_data[5]),
        .R(p_0_in));
  FDRE \s_axi_write_data_reg_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\s_axi_write_data_reg[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[6]),
        .Q(s_axi_write_data[6]),
        .R(p_0_in));
  FDRE \s_axi_write_data_reg_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\s_axi_write_data_reg[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[7]),
        .Q(s_axi_write_data[7]),
        .R(p_0_in));
  FDRE \s_axi_write_data_reg_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(\s_axi_write_data_reg[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[8]),
        .Q(s_axi_write_data[8]),
        .R(p_0_in));
  FDRE \s_axi_write_data_reg_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(\s_axi_write_data_reg[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[9]),
        .Q(s_axi_write_data[9]),
        .R(p_0_in));
  FDRE s_axi_write_valid_reg_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\s_axi_write_data_reg[31]_i_1_n_0 ),
        .Q(s_axi_write_valid),
        .R(p_0_in));
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
