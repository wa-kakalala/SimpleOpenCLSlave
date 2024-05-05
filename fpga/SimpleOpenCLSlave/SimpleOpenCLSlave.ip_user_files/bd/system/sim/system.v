//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Wed May  1 16:38:04 2024
//Host        : DESKTOP-7S7UGPP running 64-bit major release  (build 9200)
//Command     : generate_target system.bd
//Design      : system
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module fft128_imp_1SLPDR
   (bus_addr,
    bus_data,
    bus_id,
    bus_vld,
    clock,
    reset_0);
  input [7:0]bus_addr;
  input [31:0]bus_data;
  input [9:0]bus_id;
  input bus_vld;
  input clock;
  input reset_0;

  wire [7:0]bus_addr_1;
  wire [31:0]bus_data_1;
  wire [9:0]bus_id_1;
  wire bus_vld_1;
  wire clk_wiz_clk_out1;
  wire fft128_0_do_en;
  wire [15:0]fft128_0_do_im;
  wire [15:0]fft128_0_do_re;
  wire fft_read_ram_0_data_valid;
  wire [15:0]fft_read_ram_0_im_data;
  wire [6:0]fft_read_ram_0_ram_addr;
  wire [15:0]fft_read_ram_0_re_data;
  wire fft_read_ram_0_read_en;
  wire [6:0]fft_write_ram_0_wr_addr;
  wire [31:0]fft_write_ram_0_wr_d;
  wire fft_write_ram_0_wr_en;
  wire fft_write_ram_0_wr_we;
  wire [31:0]ram_128_0_doutb;
  wire recevier_0_calc_start;
  wire reset_0_1;

  assign bus_addr_1 = bus_addr[7:0];
  assign bus_data_1 = bus_data[31:0];
  assign bus_id_1 = bus_id[9:0];
  assign bus_vld_1 = bus_vld;
  assign clk_wiz_clk_out1 = clock;
  assign reset_0_1 = reset_0;
  system_fft128_0_0 fft128_0
       (.clock(clk_wiz_clk_out1),
        .di_en(fft_read_ram_0_data_valid),
        .di_im(fft_read_ram_0_im_data),
        .di_re(fft_read_ram_0_re_data),
        .do_en(fft128_0_do_en),
        .do_im(fft128_0_do_im),
        .do_re(fft128_0_do_re),
        .reset(reset_0_1));
  system_fft_read_ram_0_0 fft_read_ram_0
       (.clk_in(clk_wiz_clk_out1),
        .data_valid(fft_read_ram_0_data_valid),
        .en_in(recevier_0_calc_start),
        .im_data(fft_read_ram_0_im_data),
        .ram_addr(fft_read_ram_0_ram_addr),
        .ram_data(ram_128_0_doutb),
        .re_data(fft_read_ram_0_re_data),
        .read_en(fft_read_ram_0_read_en),
        .rst_n_in(reset_0_1));
  system_fft_write_ram_0_0 fft_write_ram_0
       (.clk_in(clk_wiz_clk_out1),
        .data_vld(fft128_0_do_en),
        .en_in(recevier_0_calc_start),
        .im_d(fft128_0_do_im),
        .re_d(fft128_0_do_re),
        .rst_n_in(reset_0_1),
        .wr_addr(fft_write_ram_0_wr_addr),
        .wr_d(fft_write_ram_0_wr_d),
        .wr_en(fft_write_ram_0_wr_en),
        .wr_we(fft_write_ram_0_wr_we));
  system_ram_128_0_0 ram_128_0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .addrb(fft_read_ram_0_ram_addr),
        .clka(clk_wiz_clk_out1),
        .clkb(clk_wiz_clk_out1),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .doutb(ram_128_0_doutb),
        .ena(1'b0),
        .enb(fft_read_ram_0_read_en),
        .wea(1'b0));
  system_ram_128_1_0 ram_128_1
       (.addra(fft_write_ram_0_wr_addr),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clk_wiz_clk_out1),
        .clkb(1'b0),
        .dina(fft_write_ram_0_wr_d),
        .ena(fft_write_ram_0_wr_en),
        .enb(1'b0),
        .wea(fft_write_ram_0_wr_we));
  system_recevier_0_0 recevier_0
       (.bus_addr(bus_addr_1),
        .bus_data(bus_data_1),
        .bus_id(bus_id_1),
        .bus_vld(bus_vld_1),
        .calc_start(recevier_0_calc_start),
        .clk_in(clk_wiz_clk_out1),
        .rst_n_in(reset_0_1));
endmodule

module main_controller_imp_QT1XA0
   (S_AXI_ACLK,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    bus_addr,
    bus_data,
    bus_id,
    bus_vld,
    interrupt_flag_0,
    reset_0);
  input S_AXI_ACLK;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;
  output [7:0]bus_addr;
  output [31:0]bus_data;
  output [9:0]bus_id;
  output bus_vld;
  output interrupt_flag_0;
  input reset_0;

  wire [31:0]axi_traffic_gen_0_M_AXI_LITE_CH1_AWADDR;
  wire [2:0]axi_traffic_gen_0_M_AXI_LITE_CH1_AWPROT;
  wire axi_traffic_gen_0_M_AXI_LITE_CH1_AWREADY;
  wire axi_traffic_gen_0_M_AXI_LITE_CH1_AWVALID;
  wire axi_traffic_gen_0_M_AXI_LITE_CH1_BREADY;
  wire [1:0]axi_traffic_gen_0_M_AXI_LITE_CH1_BRESP;
  wire axi_traffic_gen_0_M_AXI_LITE_CH1_BVALID;
  wire [31:0]axi_traffic_gen_0_M_AXI_LITE_CH1_WDATA;
  wire axi_traffic_gen_0_M_AXI_LITE_CH1_WREADY;
  wire [3:0]axi_traffic_gen_0_M_AXI_LITE_CH1_WSTRB;
  wire axi_traffic_gen_0_M_AXI_LITE_CH1_WVALID;
  wire [7:0]axilite_slave_0_s_axi_write_addr;
  wire [31:0]axilite_slave_0_s_axi_write_data;
  wire axilite_slave_0_s_axi_write_valid;
  wire clk_wiz_clk_out1;
  wire main_csr_0_calc_start;
  wire [31:0]main_csr_0_config_data;
  wire main_csr_0_interrupt_flag;
  wire [31:0]main_csr_0_param_addr;
  wire [31:0]main_csr_0_param_len;
  wire [31:0]main_csr_0_result_addr;
  wire [31:0]main_csr_0_result_len;
  wire reset_0_1;
  wire [7:0]transiter_0_bus_addr;
  wire [31:0]transiter_0_bus_data;
  wire [9:0]transiter_0_bus_id;
  wire transiter_0_bus_vld;

  assign S_AXI_awready = axi_traffic_gen_0_M_AXI_LITE_CH1_AWREADY;
  assign S_AXI_bresp[1:0] = axi_traffic_gen_0_M_AXI_LITE_CH1_BRESP;
  assign S_AXI_bvalid = axi_traffic_gen_0_M_AXI_LITE_CH1_BVALID;
  assign S_AXI_wready = axi_traffic_gen_0_M_AXI_LITE_CH1_WREADY;
  assign axi_traffic_gen_0_M_AXI_LITE_CH1_AWADDR = S_AXI_awaddr[31:0];
  assign axi_traffic_gen_0_M_AXI_LITE_CH1_AWPROT = S_AXI_awprot[2:0];
  assign axi_traffic_gen_0_M_AXI_LITE_CH1_AWVALID = S_AXI_awvalid;
  assign axi_traffic_gen_0_M_AXI_LITE_CH1_BREADY = S_AXI_bready;
  assign axi_traffic_gen_0_M_AXI_LITE_CH1_WDATA = S_AXI_wdata[31:0];
  assign axi_traffic_gen_0_M_AXI_LITE_CH1_WSTRB = S_AXI_wstrb[3:0];
  assign axi_traffic_gen_0_M_AXI_LITE_CH1_WVALID = S_AXI_wvalid;
  assign bus_addr[7:0] = transiter_0_bus_addr;
  assign bus_data[31:0] = transiter_0_bus_data;
  assign bus_id[9:0] = transiter_0_bus_id;
  assign bus_vld = transiter_0_bus_vld;
  assign clk_wiz_clk_out1 = S_AXI_ACLK;
  assign interrupt_flag_0 = main_csr_0_interrupt_flag;
  assign reset_0_1 = reset_0;
  system_axilite_slave_0_0 axilite_slave_0
       (.S_AXI_ACLK(clk_wiz_clk_out1),
        .S_AXI_ARADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_ARESETN(reset_0_1),
        .S_AXI_ARPROT({1'b0,1'b0,1'b0}),
        .S_AXI_ARVALID(1'b0),
        .S_AXI_AWADDR(axi_traffic_gen_0_M_AXI_LITE_CH1_AWADDR[9:0]),
        .S_AXI_AWPROT(axi_traffic_gen_0_M_AXI_LITE_CH1_AWPROT),
        .S_AXI_AWREADY(axi_traffic_gen_0_M_AXI_LITE_CH1_AWREADY),
        .S_AXI_AWVALID(axi_traffic_gen_0_M_AXI_LITE_CH1_AWVALID),
        .S_AXI_BREADY(axi_traffic_gen_0_M_AXI_LITE_CH1_BREADY),
        .S_AXI_BRESP(axi_traffic_gen_0_M_AXI_LITE_CH1_BRESP),
        .S_AXI_BVALID(axi_traffic_gen_0_M_AXI_LITE_CH1_BVALID),
        .S_AXI_RREADY(1'b0),
        .S_AXI_WDATA(axi_traffic_gen_0_M_AXI_LITE_CH1_WDATA),
        .S_AXI_WREADY(axi_traffic_gen_0_M_AXI_LITE_CH1_WREADY),
        .S_AXI_WSTRB(axi_traffic_gen_0_M_AXI_LITE_CH1_WSTRB),
        .S_AXI_WVALID(axi_traffic_gen_0_M_AXI_LITE_CH1_WVALID),
        .s_axi_back_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_back_valid(1'b0),
        .s_axi_write_addr(axilite_slave_0_s_axi_write_addr),
        .s_axi_write_data(axilite_slave_0_s_axi_write_data),
        .s_axi_write_valid(axilite_slave_0_s_axi_write_valid));
  system_main_csr_0_0 main_csr_0
       (.calc_start(main_csr_0_calc_start),
        .clk_in(clk_wiz_clk_out1),
        .config_data(main_csr_0_config_data),
        .interrupt_flag(main_csr_0_interrupt_flag),
        .param_addr(main_csr_0_param_addr),
        .param_len(main_csr_0_param_len),
        .result_addr(main_csr_0_result_addr),
        .result_len(main_csr_0_result_len),
        .rst_n_in(reset_0_1),
        .s_axi_write_addr(axilite_slave_0_s_axi_write_addr),
        .s_axi_write_data(axilite_slave_0_s_axi_write_data),
        .s_axi_write_valid(axilite_slave_0_s_axi_write_valid));
  system_transiter_0_0 transiter_0
       (.bus_addr(transiter_0_bus_addr),
        .bus_data(transiter_0_bus_data),
        .bus_id(transiter_0_bus_id),
        .bus_vld(transiter_0_bus_vld),
        .calc_start(main_csr_0_calc_start),
        .clk_in(clk_wiz_clk_out1),
        .config_data(main_csr_0_config_data),
        .param_addr(main_csr_0_param_addr),
        .param_len(main_csr_0_param_len),
        .result_addr(main_csr_0_result_addr),
        .result_len(main_csr_0_result_len),
        .rst_n_in(reset_0_1));
endmodule

(* CORE_GENERATION_INFO = "system,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=system,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=13,numReposBlks=11,numNonXlnxBlks=0,numHierBlks=2,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=9,numPkgbdBlks=0,bdsource=USER,da_board_cnt=1,da_clkrst_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "system.hwdef" *) 
module system
   (clk_in1_0,
    interrupt_flag_0,
    reset_0);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_IN1_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_IN1_0, CLK_DOMAIN system_clk_in1_0, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input clk_in1_0;
  output interrupt_flag_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input reset_0;

  wire [31:0]axi_traffic_gen_0_M_AXI_LITE_CH1_AWADDR;
  wire [2:0]axi_traffic_gen_0_M_AXI_LITE_CH1_AWPROT;
  wire axi_traffic_gen_0_M_AXI_LITE_CH1_AWREADY;
  wire axi_traffic_gen_0_M_AXI_LITE_CH1_AWVALID;
  wire axi_traffic_gen_0_M_AXI_LITE_CH1_BREADY;
  wire [1:0]axi_traffic_gen_0_M_AXI_LITE_CH1_BRESP;
  wire axi_traffic_gen_0_M_AXI_LITE_CH1_BVALID;
  wire [31:0]axi_traffic_gen_0_M_AXI_LITE_CH1_WDATA;
  wire axi_traffic_gen_0_M_AXI_LITE_CH1_WREADY;
  wire [3:0]axi_traffic_gen_0_M_AXI_LITE_CH1_WSTRB;
  wire axi_traffic_gen_0_M_AXI_LITE_CH1_WVALID;
  wire clk_in1_0_1;
  wire clk_wiz_clk_out1;
  wire main_csr_0_interrupt_flag;
  wire reset_0_1;
  wire [7:0]transiter_0_bus_addr;
  wire [31:0]transiter_0_bus_data;
  wire [9:0]transiter_0_bus_id;
  wire transiter_0_bus_vld;

  assign clk_in1_0_1 = clk_in1_0;
  assign interrupt_flag_0 = main_csr_0_interrupt_flag;
  assign reset_0_1 = reset_0;
  system_axi_traffic_gen_0_0 axi_traffic_gen_0
       (.m_axi_lite_ch1_awaddr(axi_traffic_gen_0_M_AXI_LITE_CH1_AWADDR),
        .m_axi_lite_ch1_awprot(axi_traffic_gen_0_M_AXI_LITE_CH1_AWPROT),
        .m_axi_lite_ch1_awready(axi_traffic_gen_0_M_AXI_LITE_CH1_AWREADY),
        .m_axi_lite_ch1_awvalid(axi_traffic_gen_0_M_AXI_LITE_CH1_AWVALID),
        .m_axi_lite_ch1_bready(axi_traffic_gen_0_M_AXI_LITE_CH1_BREADY),
        .m_axi_lite_ch1_bresp(axi_traffic_gen_0_M_AXI_LITE_CH1_BRESP),
        .m_axi_lite_ch1_bvalid(axi_traffic_gen_0_M_AXI_LITE_CH1_BVALID),
        .m_axi_lite_ch1_wdata(axi_traffic_gen_0_M_AXI_LITE_CH1_WDATA),
        .m_axi_lite_ch1_wready(axi_traffic_gen_0_M_AXI_LITE_CH1_WREADY),
        .m_axi_lite_ch1_wstrb(axi_traffic_gen_0_M_AXI_LITE_CH1_WSTRB),
        .m_axi_lite_ch1_wvalid(axi_traffic_gen_0_M_AXI_LITE_CH1_WVALID),
        .s_axi_aclk(clk_wiz_clk_out1),
        .s_axi_aresetn(reset_0_1));
  system_clk_wiz_0 clk_wiz
       (.clk_in1(clk_in1_0_1),
        .clk_out1(clk_wiz_clk_out1),
        .resetn(reset_0_1));
  fft128_imp_1SLPDR fft128
       (.bus_addr(transiter_0_bus_addr),
        .bus_data(transiter_0_bus_data),
        .bus_id(transiter_0_bus_id),
        .bus_vld(transiter_0_bus_vld),
        .clock(clk_wiz_clk_out1),
        .reset_0(reset_0_1));
  main_controller_imp_QT1XA0 main_controller
       (.S_AXI_ACLK(clk_wiz_clk_out1),
        .S_AXI_awaddr(axi_traffic_gen_0_M_AXI_LITE_CH1_AWADDR),
        .S_AXI_awprot(axi_traffic_gen_0_M_AXI_LITE_CH1_AWPROT),
        .S_AXI_awready(axi_traffic_gen_0_M_AXI_LITE_CH1_AWREADY),
        .S_AXI_awvalid(axi_traffic_gen_0_M_AXI_LITE_CH1_AWVALID),
        .S_AXI_bready(axi_traffic_gen_0_M_AXI_LITE_CH1_BREADY),
        .S_AXI_bresp(axi_traffic_gen_0_M_AXI_LITE_CH1_BRESP),
        .S_AXI_bvalid(axi_traffic_gen_0_M_AXI_LITE_CH1_BVALID),
        .S_AXI_wdata(axi_traffic_gen_0_M_AXI_LITE_CH1_WDATA),
        .S_AXI_wready(axi_traffic_gen_0_M_AXI_LITE_CH1_WREADY),
        .S_AXI_wstrb(axi_traffic_gen_0_M_AXI_LITE_CH1_WSTRB),
        .S_AXI_wvalid(axi_traffic_gen_0_M_AXI_LITE_CH1_WVALID),
        .bus_addr(transiter_0_bus_addr),
        .bus_data(transiter_0_bus_data),
        .bus_id(transiter_0_bus_id),
        .bus_vld(transiter_0_bus_vld),
        .interrupt_flag_0(main_csr_0_interrupt_flag),
        .reset_0(reset_0_1));
endmodule
