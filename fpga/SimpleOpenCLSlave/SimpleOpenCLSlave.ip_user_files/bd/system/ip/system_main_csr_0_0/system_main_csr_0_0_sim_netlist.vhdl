-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Wed May  1 16:28:07 2024
-- Host        : DESKTOP-7S7UGPP running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/wkk/Desktop/OpenCL/SimpleOpenCLSlave/fpga/SimpleOpenCLSlave/SimpleOpenCLSlave.srcs/sources_1/bd/system/ip/system_main_csr_0_0/system_main_csr_0_0_sim_netlist.vhdl
-- Design      : system_main_csr_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_main_csr_0_0_main_csr is
  port (
    calc_start : out STD_LOGIC;
    s_axi_write_addr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clk_in : in STD_LOGIC;
    rst_n_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_main_csr_0_0_main_csr : entity is "main_csr";
end system_main_csr_0_0_main_csr;

architecture STRUCTURE of system_main_csr_0_0_main_csr is
  signal \calc_start__0\ : STD_LOGIC;
  signal calc_start_i_2_n_0 : STD_LOGIC;
  signal calc_start_i_3_n_0 : STD_LOGIC;
begin
calc_start_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => s_axi_write_addr(5),
      I1 => s_axi_write_addr(4),
      I2 => s_axi_write_addr(6),
      I3 => s_axi_write_addr(7),
      I4 => calc_start_i_3_n_0,
      O => \calc_start__0\
    );
calc_start_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n_in,
      O => calc_start_i_2_n_0
    );
calc_start_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => s_axi_write_addr(0),
      I1 => s_axi_write_addr(3),
      I2 => s_axi_write_addr(2),
      I3 => s_axi_write_addr(1),
      O => calc_start_i_3_n_0
    );
calc_start_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => calc_start_i_2_n_0,
      D => \calc_start__0\,
      Q => calc_start
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_main_csr_0_0 is
  port (
    clk_in : in STD_LOGIC;
    rst_n_in : in STD_LOGIC;
    s_axi_write_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_write_addr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_write_valid : in STD_LOGIC;
    interrupt_flag : out STD_LOGIC;
    config_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    param_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    param_len : out STD_LOGIC_VECTOR ( 31 downto 0 );
    result_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    result_len : out STD_LOGIC_VECTOR ( 31 downto 0 );
    calc_start : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_main_csr_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_main_csr_0_0 : entity is "system_main_csr_0_0,main_csr,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of system_main_csr_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of system_main_csr_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of system_main_csr_0_0 : entity is "main_csr,Vivado 2018.3";
end system_main_csr_0_0;

architecture STRUCTURE of system_main_csr_0_0 is
  signal \<const0>\ : STD_LOGIC;
begin
  config_data(31) <= \<const0>\;
  config_data(30) <= \<const0>\;
  config_data(29) <= \<const0>\;
  config_data(28) <= \<const0>\;
  config_data(27) <= \<const0>\;
  config_data(26) <= \<const0>\;
  config_data(25) <= \<const0>\;
  config_data(24) <= \<const0>\;
  config_data(23) <= \<const0>\;
  config_data(22) <= \<const0>\;
  config_data(21) <= \<const0>\;
  config_data(20) <= \<const0>\;
  config_data(19) <= \<const0>\;
  config_data(18) <= \<const0>\;
  config_data(17) <= \<const0>\;
  config_data(16) <= \<const0>\;
  config_data(15) <= \<const0>\;
  config_data(14) <= \<const0>\;
  config_data(13) <= \<const0>\;
  config_data(12) <= \<const0>\;
  config_data(11) <= \<const0>\;
  config_data(10) <= \<const0>\;
  config_data(9) <= \<const0>\;
  config_data(8) <= \<const0>\;
  config_data(7) <= \<const0>\;
  config_data(6) <= \<const0>\;
  config_data(5) <= \<const0>\;
  config_data(4) <= \<const0>\;
  config_data(3) <= \<const0>\;
  config_data(2) <= \<const0>\;
  config_data(1) <= \<const0>\;
  config_data(0) <= \<const0>\;
  param_addr(31) <= \<const0>\;
  param_addr(30) <= \<const0>\;
  param_addr(29) <= \<const0>\;
  param_addr(28) <= \<const0>\;
  param_addr(27) <= \<const0>\;
  param_addr(26) <= \<const0>\;
  param_addr(25) <= \<const0>\;
  param_addr(24) <= \<const0>\;
  param_addr(23) <= \<const0>\;
  param_addr(22) <= \<const0>\;
  param_addr(21) <= \<const0>\;
  param_addr(20) <= \<const0>\;
  param_addr(19) <= \<const0>\;
  param_addr(18) <= \<const0>\;
  param_addr(17) <= \<const0>\;
  param_addr(16) <= \<const0>\;
  param_addr(15) <= \<const0>\;
  param_addr(14) <= \<const0>\;
  param_addr(13) <= \<const0>\;
  param_addr(12) <= \<const0>\;
  param_addr(11) <= \<const0>\;
  param_addr(10) <= \<const0>\;
  param_addr(9) <= \<const0>\;
  param_addr(8) <= \<const0>\;
  param_addr(7) <= \<const0>\;
  param_addr(6) <= \<const0>\;
  param_addr(5) <= \<const0>\;
  param_addr(4) <= \<const0>\;
  param_addr(3) <= \<const0>\;
  param_addr(2) <= \<const0>\;
  param_addr(1) <= \<const0>\;
  param_addr(0) <= \<const0>\;
  param_len(31) <= \<const0>\;
  param_len(30) <= \<const0>\;
  param_len(29) <= \<const0>\;
  param_len(28) <= \<const0>\;
  param_len(27) <= \<const0>\;
  param_len(26) <= \<const0>\;
  param_len(25) <= \<const0>\;
  param_len(24) <= \<const0>\;
  param_len(23) <= \<const0>\;
  param_len(22) <= \<const0>\;
  param_len(21) <= \<const0>\;
  param_len(20) <= \<const0>\;
  param_len(19) <= \<const0>\;
  param_len(18) <= \<const0>\;
  param_len(17) <= \<const0>\;
  param_len(16) <= \<const0>\;
  param_len(15) <= \<const0>\;
  param_len(14) <= \<const0>\;
  param_len(13) <= \<const0>\;
  param_len(12) <= \<const0>\;
  param_len(11) <= \<const0>\;
  param_len(10) <= \<const0>\;
  param_len(9) <= \<const0>\;
  param_len(8) <= \<const0>\;
  param_len(7) <= \<const0>\;
  param_len(6) <= \<const0>\;
  param_len(5) <= \<const0>\;
  param_len(4) <= \<const0>\;
  param_len(3) <= \<const0>\;
  param_len(2) <= \<const0>\;
  param_len(1) <= \<const0>\;
  param_len(0) <= \<const0>\;
  result_addr(31) <= \<const0>\;
  result_addr(30) <= \<const0>\;
  result_addr(29) <= \<const0>\;
  result_addr(28) <= \<const0>\;
  result_addr(27) <= \<const0>\;
  result_addr(26) <= \<const0>\;
  result_addr(25) <= \<const0>\;
  result_addr(24) <= \<const0>\;
  result_addr(23) <= \<const0>\;
  result_addr(22) <= \<const0>\;
  result_addr(21) <= \<const0>\;
  result_addr(20) <= \<const0>\;
  result_addr(19) <= \<const0>\;
  result_addr(18) <= \<const0>\;
  result_addr(17) <= \<const0>\;
  result_addr(16) <= \<const0>\;
  result_addr(15) <= \<const0>\;
  result_addr(14) <= \<const0>\;
  result_addr(13) <= \<const0>\;
  result_addr(12) <= \<const0>\;
  result_addr(11) <= \<const0>\;
  result_addr(10) <= \<const0>\;
  result_addr(9) <= \<const0>\;
  result_addr(8) <= \<const0>\;
  result_addr(7) <= \<const0>\;
  result_addr(6) <= \<const0>\;
  result_addr(5) <= \<const0>\;
  result_addr(4) <= \<const0>\;
  result_addr(3) <= \<const0>\;
  result_addr(2) <= \<const0>\;
  result_addr(1) <= \<const0>\;
  result_addr(0) <= \<const0>\;
  result_len(31) <= \<const0>\;
  result_len(30) <= \<const0>\;
  result_len(29) <= \<const0>\;
  result_len(28) <= \<const0>\;
  result_len(27) <= \<const0>\;
  result_len(26) <= \<const0>\;
  result_len(25) <= \<const0>\;
  result_len(24) <= \<const0>\;
  result_len(23) <= \<const0>\;
  result_len(22) <= \<const0>\;
  result_len(21) <= \<const0>\;
  result_len(20) <= \<const0>\;
  result_len(19) <= \<const0>\;
  result_len(18) <= \<const0>\;
  result_len(17) <= \<const0>\;
  result_len(16) <= \<const0>\;
  result_len(15) <= \<const0>\;
  result_len(14) <= \<const0>\;
  result_len(13) <= \<const0>\;
  result_len(12) <= \<const0>\;
  result_len(11) <= \<const0>\;
  result_len(10) <= \<const0>\;
  result_len(9) <= \<const0>\;
  result_len(8) <= \<const0>\;
  result_len(7) <= \<const0>\;
  result_len(6) <= \<const0>\;
  result_len(5) <= \<const0>\;
  result_len(4) <= \<const0>\;
  result_len(3) <= \<const0>\;
  result_len(2) <= \<const0>\;
  result_len(1) <= \<const0>\;
  result_len(0) <= \<const0>\;
  interrupt_flag <= 'Z';
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.system_main_csr_0_0_main_csr
     port map (
      calc_start => calc_start,
      clk_in => clk_in,
      rst_n_in => rst_n_in,
      s_axi_write_addr(7 downto 0) => s_axi_write_addr(7 downto 0)
    );
end STRUCTURE;
