// (c) Copyright 1995-2024 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:transiter:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module system_transiter_0_0 (
  clk_in,
  rst_n_in,
  calc_start,
  config_data,
  param_addr,
  param_len,
  result_addr,
  result_len,
  bus_addr,
  bus_data,
  bus_id,
  bus_vld,
  ready
);

input wire clk_in;
input wire rst_n_in;
input wire calc_start;
input wire [31 : 0] config_data;
input wire [31 : 0] param_addr;
input wire [31 : 0] param_len;
input wire [31 : 0] result_addr;
input wire [31 : 0] result_len;
output wire [7 : 0] bus_addr;
output wire [31 : 0] bus_data;
output wire [9 : 0] bus_id;
output wire bus_vld;
output wire ready;

  transiter #(
    .DWIDTH(32),
    .AWIDTH(8),
    .IDWIDTH(10)
  ) inst (
    .clk_in(clk_in),
    .rst_n_in(rst_n_in),
    .calc_start(calc_start),
    .config_data(config_data),
    .param_addr(param_addr),
    .param_len(param_len),
    .result_addr(result_addr),
    .result_len(result_len),
    .bus_addr(bus_addr),
    .bus_data(bus_data),
    .bus_id(bus_id),
    .bus_vld(bus_vld),
    .ready(ready)
  );
endmodule
