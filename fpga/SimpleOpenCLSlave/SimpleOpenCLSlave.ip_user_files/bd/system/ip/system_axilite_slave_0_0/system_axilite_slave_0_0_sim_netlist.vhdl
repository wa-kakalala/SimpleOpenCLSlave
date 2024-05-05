-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Wed May  1 16:28:07 2024
-- Host        : DESKTOP-7S7UGPP running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/wkk/Desktop/OpenCL/SimpleOpenCLSlave/fpga/SimpleOpenCLSlave/SimpleOpenCLSlave.srcs/sources_1/bd/system/ip/system_axilite_slave_0_0/system_axilite_slave_0_0_sim_netlist.vhdl
-- Design      : system_axilite_slave_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axilite_slave_0_0_axilite_slave is
  port (
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s_axi_write_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_write_addr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_write_valid : out STD_LOGIC;
    s_axi_read_valid : out STD_LOGIC;
    axi_rvalid_reg_0 : out STD_LOGIC;
    s_axi_read_addr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_axilite_slave_0_0_axilite_slave : entity is "axilite_slave";
end system_axilite_slave_0_0_axilite_slave;

architecture STRUCTURE of system_axilite_slave_0_0_axilite_slave is
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal axi_araddr : STD_LOGIC_VECTOR ( 9 downto 2 );
  signal axi_arready0 : STD_LOGIC;
  signal \axi_awready0__0\ : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal \^axi_rvalid_reg_0\ : STD_LOGIC;
  signal axi_wready_i_1_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \s_axi_write_data_reg[31]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \s_axi_read_addr[0]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \s_axi_read_addr[1]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \s_axi_read_addr[2]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \s_axi_read_addr[3]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \s_axi_read_addr[4]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \s_axi_read_addr[5]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \s_axi_read_addr[6]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \s_axi_read_addr[7]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \s_axi_read_valid__0\ : label is "soft_lutpair0";
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_BVALID <= \^s_axi_bvalid\;
  S_AXI_WREADY <= \^s_axi_wready\;
  axi_rvalid_reg_0 <= \^axi_rvalid_reg_0\;
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFF700F700F700"
    )
        port map (
      I0 => S_AXI_WVALID,
      I1 => S_AXI_AWVALID,
      I2 => \^s_axi_awready\,
      I3 => aw_en_reg_n_0,
      I4 => S_AXI_BREADY,
      I5 => \^s_axi_bvalid\,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en_reg_n_0,
      S => p_0_in
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_arready0,
      D => S_AXI_ARADDR(0),
      Q => axi_araddr(2),
      R => p_0_in
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_arready0,
      D => S_AXI_ARADDR(1),
      Q => axi_araddr(3),
      R => p_0_in
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_arready0,
      D => S_AXI_ARADDR(2),
      Q => axi_araddr(4),
      R => p_0_in
    );
\axi_araddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_arready0,
      D => S_AXI_ARADDR(3),
      Q => axi_araddr(5),
      R => p_0_in
    );
\axi_araddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_arready0,
      D => S_AXI_ARADDR(4),
      Q => axi_araddr(6),
      R => p_0_in
    );
\axi_araddr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_arready0,
      D => S_AXI_ARADDR(5),
      Q => axi_araddr(7),
      R => p_0_in
    );
\axi_araddr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_arready0,
      D => S_AXI_ARADDR(6),
      Q => axi_araddr(8),
      R => p_0_in
    );
\axi_araddr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_arready0,
      D => S_AXI_ARADDR(7),
      Q => axi_araddr(9),
      R => p_0_in
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => S_AXI_ARVALID,
      I1 => \^s_axi_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_arready0,
      Q => \^s_axi_arready\,
      R => p_0_in
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_awready0__0\,
      D => S_AXI_AWADDR(0),
      Q => p_1_in(0),
      R => p_0_in
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_awready0__0\,
      D => S_AXI_AWADDR(1),
      Q => p_1_in(1),
      R => p_0_in
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_awready0__0\,
      D => S_AXI_AWADDR(2),
      Q => p_1_in(2),
      R => p_0_in
    );
\axi_awaddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_awready0__0\,
      D => S_AXI_AWADDR(3),
      Q => p_1_in(3),
      R => p_0_in
    );
\axi_awaddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_awready0__0\,
      D => S_AXI_AWADDR(4),
      Q => p_1_in(4),
      R => p_0_in
    );
\axi_awaddr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_awready0__0\,
      D => S_AXI_AWADDR(5),
      Q => p_1_in(5),
      R => p_0_in
    );
\axi_awaddr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_awready0__0\,
      D => S_AXI_AWADDR(6),
      Q => p_1_in(6),
      R => p_0_in
    );
\axi_awaddr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_awready0__0\,
      D => S_AXI_AWADDR(7),
      Q => p_1_in(7),
      R => p_0_in
    );
axi_awready0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => aw_en_reg_n_0,
      I1 => \^s_axi_awready\,
      I2 => S_AXI_AWVALID,
      I3 => S_AXI_WVALID,
      O => \axi_awready0__0\
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => S_AXI_ARESETN,
      O => p_0_in
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \axi_awready0__0\,
      Q => \^s_axi_awready\,
      R => p_0_in
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => S_AXI_AWVALID,
      I1 => S_AXI_WVALID,
      I2 => \^s_axi_wready\,
      I3 => \^s_axi_awready\,
      I4 => S_AXI_BREADY,
      I5 => \^s_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s_axi_bvalid\,
      R => p_0_in
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => S_AXI_ARVALID,
      I2 => \^axi_rvalid_reg_0\,
      I3 => S_AXI_RREADY,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^axi_rvalid_reg_0\,
      R => p_0_in
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => aw_en_reg_n_0,
      I2 => S_AXI_AWVALID,
      I3 => S_AXI_WVALID,
      O => axi_wready_i_1_n_0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_wready_i_1_n_0,
      Q => \^s_axi_wready\,
      R => p_0_in
    );
\s_axi_read_addr[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^axi_rvalid_reg_0\,
      I1 => \^s_axi_arready\,
      I2 => S_AXI_ARVALID,
      I3 => axi_araddr(2),
      O => s_axi_read_addr(0)
    );
\s_axi_read_addr[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^axi_rvalid_reg_0\,
      I1 => \^s_axi_arready\,
      I2 => S_AXI_ARVALID,
      I3 => axi_araddr(3),
      O => s_axi_read_addr(1)
    );
\s_axi_read_addr[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^axi_rvalid_reg_0\,
      I1 => \^s_axi_arready\,
      I2 => S_AXI_ARVALID,
      I3 => axi_araddr(4),
      O => s_axi_read_addr(2)
    );
\s_axi_read_addr[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^axi_rvalid_reg_0\,
      I1 => \^s_axi_arready\,
      I2 => S_AXI_ARVALID,
      I3 => axi_araddr(5),
      O => s_axi_read_addr(3)
    );
\s_axi_read_addr[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^axi_rvalid_reg_0\,
      I1 => \^s_axi_arready\,
      I2 => S_AXI_ARVALID,
      I3 => axi_araddr(6),
      O => s_axi_read_addr(4)
    );
\s_axi_read_addr[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^axi_rvalid_reg_0\,
      I1 => \^s_axi_arready\,
      I2 => S_AXI_ARVALID,
      I3 => axi_araddr(7),
      O => s_axi_read_addr(5)
    );
\s_axi_read_addr[6]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^axi_rvalid_reg_0\,
      I1 => \^s_axi_arready\,
      I2 => S_AXI_ARVALID,
      I3 => axi_araddr(8),
      O => s_axi_read_addr(6)
    );
\s_axi_read_addr[7]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^axi_rvalid_reg_0\,
      I1 => \^s_axi_arready\,
      I2 => S_AXI_ARVALID,
      I3 => axi_araddr(9),
      O => s_axi_read_addr(7)
    );
\s_axi_read_valid__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => S_AXI_ARVALID,
      I1 => \^s_axi_arready\,
      I2 => \^axi_rvalid_reg_0\,
      O => s_axi_read_valid
    );
\s_axi_write_addr_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \s_axi_write_data_reg[31]_i_1_n_0\,
      D => p_1_in(0),
      Q => s_axi_write_addr(0),
      R => p_0_in
    );
\s_axi_write_addr_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \s_axi_write_data_reg[31]_i_1_n_0\,
      D => p_1_in(1),
      Q => s_axi_write_addr(1),
      R => p_0_in
    );
\s_axi_write_addr_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \s_axi_write_data_reg[31]_i_1_n_0\,
      D => p_1_in(2),
      Q => s_axi_write_addr(2),
      R => p_0_in
    );
\s_axi_write_addr_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \s_axi_write_data_reg[31]_i_1_n_0\,
      D => p_1_in(3),
      Q => s_axi_write_addr(3),
      R => p_0_in
    );
\s_axi_write_addr_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \s_axi_write_data_reg[31]_i_1_n_0\,
      D => p_1_in(4),
      Q => s_axi_write_addr(4),
      R => p_0_in
    );
\s_axi_write_addr_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \s_axi_write_data_reg[31]_i_1_n_0\,
      D => p_1_in(5),
      Q => s_axi_write_addr(5),
      R => p_0_in
    );
\s_axi_write_addr_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \s_axi_write_data_reg[31]_i_1_n_0\,
      D => p_1_in(6),
      Q => s_axi_write_addr(6),
      R => p_0_in
    );
\s_axi_write_addr_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \s_axi_write_data_reg[31]_i_1_n_0\,
      D => p_1_in(7),
      Q => s_axi_write_addr(7),
      R => p_0_in
    );
\s_axi_write_data_reg[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^s_axi_awready\,
      I1 => \^s_axi_wready\,
      I2 => S_AXI_AWVALID,
      I3 => S_AXI_WVALID,
      O => \s_axi_write_data_reg[31]_i_1_n_0\
    );
\s_axi_write_data_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \s_axi_write_data_reg[31]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => s_axi_write_data(0),
      R => p_0_in
    );
\s_axi_write_data_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \s_axi_write_data_reg[31]_i_1_n_0\,
      D => S_AXI_WDATA(10),
      Q => s_axi_write_data(10),
      R => p_0_in
    );
\s_axi_write_data_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \s_axi_write_data_reg[31]_i_1_n_0\,
      D => S_AXI_WDATA(11),
      Q => s_axi_write_data(11),
      R => p_0_in
    );
\s_axi_write_data_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \s_axi_write_data_reg[31]_i_1_n_0\,
      D => S_AXI_WDATA(12),
      Q => s_axi_write_data(12),
      R => p_0_in
    );
\s_axi_write_data_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \s_axi_write_data_reg[31]_i_1_n_0\,
      D => S_AXI_WDATA(13),
      Q => s_axi_write_data(13),
      R => p_0_in
    );
\s_axi_write_data_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \s_axi_write_data_reg[31]_i_1_n_0\,
      D => S_AXI_WDATA(14),
      Q => s_axi_write_data(14),
      R => p_0_in
    );
\s_axi_write_data_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \s_axi_write_data_reg[31]_i_1_n_0\,
      D => S_AXI_WDATA(15),
      Q => s_axi_write_data(15),
      R => p_0_in
    );
\s_axi_write_data_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \s_axi_write_data_reg[31]_i_1_n_0\,
      D => S_AXI_WDATA(16),
      Q => s_axi_write_data(16),
      R => p_0_in
    );
\s_axi_write_data_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \s_axi_write_data_reg[31]_i_1_n_0\,
      D => S_AXI_WDATA(17),
      Q => s_axi_write_data(17),
      R => p_0_in
    );
\s_axi_write_data_reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \s_axi_write_data_reg[31]_i_1_n_0\,
      D => S_AXI_WDATA(18),
      Q => s_axi_write_data(18),
      R => p_0_in
    );
\s_axi_write_data_reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \s_axi_write_data_reg[31]_i_1_n_0\,
      D => S_AXI_WDATA(19),
      Q => s_axi_write_data(19),
      R => p_0_in
    );
\s_axi_write_data_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \s_axi_write_data_reg[31]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => s_axi_write_data(1),
      R => p_0_in
    );
\s_axi_write_data_reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \s_axi_write_data_reg[31]_i_1_n_0\,
      D => S_AXI_WDATA(20),
      Q => s_axi_write_data(20),
      R => p_0_in
    );
\s_axi_write_data_reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \s_axi_write_data_reg[31]_i_1_n_0\,
      D => S_AXI_WDATA(21),
      Q => s_axi_write_data(21),
      R => p_0_in
    );
\s_axi_write_data_reg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \s_axi_write_data_reg[31]_i_1_n_0\,
      D => S_AXI_WDATA(22),
      Q => s_axi_write_data(22),
      R => p_0_in
    );
\s_axi_write_data_reg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \s_axi_write_data_reg[31]_i_1_n_0\,
      D => S_AXI_WDATA(23),
      Q => s_axi_write_data(23),
      R => p_0_in
    );
\s_axi_write_data_reg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \s_axi_write_data_reg[31]_i_1_n_0\,
      D => S_AXI_WDATA(24),
      Q => s_axi_write_data(24),
      R => p_0_in
    );
\s_axi_write_data_reg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \s_axi_write_data_reg[31]_i_1_n_0\,
      D => S_AXI_WDATA(25),
      Q => s_axi_write_data(25),
      R => p_0_in
    );
\s_axi_write_data_reg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \s_axi_write_data_reg[31]_i_1_n_0\,
      D => S_AXI_WDATA(26),
      Q => s_axi_write_data(26),
      R => p_0_in
    );
\s_axi_write_data_reg_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \s_axi_write_data_reg[31]_i_1_n_0\,
      D => S_AXI_WDATA(27),
      Q => s_axi_write_data(27),
      R => p_0_in
    );
\s_axi_write_data_reg_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \s_axi_write_data_reg[31]_i_1_n_0\,
      D => S_AXI_WDATA(28),
      Q => s_axi_write_data(28),
      R => p_0_in
    );
\s_axi_write_data_reg_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \s_axi_write_data_reg[31]_i_1_n_0\,
      D => S_AXI_WDATA(29),
      Q => s_axi_write_data(29),
      R => p_0_in
    );
\s_axi_write_data_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \s_axi_write_data_reg[31]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => s_axi_write_data(2),
      R => p_0_in
    );
\s_axi_write_data_reg_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \s_axi_write_data_reg[31]_i_1_n_0\,
      D => S_AXI_WDATA(30),
      Q => s_axi_write_data(30),
      R => p_0_in
    );
\s_axi_write_data_reg_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \s_axi_write_data_reg[31]_i_1_n_0\,
      D => S_AXI_WDATA(31),
      Q => s_axi_write_data(31),
      R => p_0_in
    );
\s_axi_write_data_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \s_axi_write_data_reg[31]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => s_axi_write_data(3),
      R => p_0_in
    );
\s_axi_write_data_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \s_axi_write_data_reg[31]_i_1_n_0\,
      D => S_AXI_WDATA(4),
      Q => s_axi_write_data(4),
      R => p_0_in
    );
\s_axi_write_data_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \s_axi_write_data_reg[31]_i_1_n_0\,
      D => S_AXI_WDATA(5),
      Q => s_axi_write_data(5),
      R => p_0_in
    );
\s_axi_write_data_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \s_axi_write_data_reg[31]_i_1_n_0\,
      D => S_AXI_WDATA(6),
      Q => s_axi_write_data(6),
      R => p_0_in
    );
\s_axi_write_data_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \s_axi_write_data_reg[31]_i_1_n_0\,
      D => S_AXI_WDATA(7),
      Q => s_axi_write_data(7),
      R => p_0_in
    );
\s_axi_write_data_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \s_axi_write_data_reg[31]_i_1_n_0\,
      D => S_AXI_WDATA(8),
      Q => s_axi_write_data(8),
      R => p_0_in
    );
\s_axi_write_data_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \s_axi_write_data_reg[31]_i_1_n_0\,
      D => S_AXI_WDATA(9),
      Q => s_axi_write_data(9),
      R => p_0_in
    );
s_axi_write_valid_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \s_axi_write_data_reg[31]_i_1_n_0\,
      Q => s_axi_write_valid,
      R => p_0_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axilite_slave_0_0 is
  port (
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 9 downto 0 );
    S_AXI_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 9 downto 0 );
    S_AXI_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC;
    s_axi_write_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_write_addr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_write_valid : out STD_LOGIC;
    s_axi_read_addr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_read_valid : out STD_LOGIC;
    s_axi_back_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_back_valid : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_axilite_slave_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_axilite_slave_0_0 : entity is "system_axilite_slave_0_0,axilite_slave,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of system_axilite_slave_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of system_axilite_slave_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of system_axilite_slave_0_0 : entity is "axilite_slave,Vivado 2018.3";
end system_axilite_slave_0_0;

architecture STRUCTURE of system_axilite_slave_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^s_axi_back_data\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of S_AXI_ACLK : signal is "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of S_AXI_ACLK : signal is "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_ARESETN, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXI_ARESETN : signal is "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST";
  attribute X_INTERFACE_PARAMETER of S_AXI_ARESETN : signal is "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXI_ARREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute X_INTERFACE_INFO of S_AXI_ARVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute X_INTERFACE_INFO of S_AXI_AWREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute X_INTERFACE_INFO of S_AXI_AWVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute X_INTERFACE_INFO of S_AXI_BREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute X_INTERFACE_INFO of S_AXI_BVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute X_INTERFACE_INFO of S_AXI_RREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of S_AXI_RREADY : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 10, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXI_RVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute X_INTERFACE_INFO of S_AXI_WREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute X_INTERFACE_INFO of S_AXI_WVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute X_INTERFACE_INFO of S_AXI_ARADDR : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute X_INTERFACE_INFO of S_AXI_ARPROT : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARPROT";
  attribute X_INTERFACE_INFO of S_AXI_AWADDR : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute X_INTERFACE_INFO of S_AXI_AWPROT : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWPROT";
  attribute X_INTERFACE_INFO of S_AXI_BRESP : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute X_INTERFACE_INFO of S_AXI_RDATA : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute X_INTERFACE_INFO of S_AXI_RRESP : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute X_INTERFACE_INFO of S_AXI_WDATA : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute X_INTERFACE_INFO of S_AXI_WSTRB : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
begin
  S_AXI_BRESP(1) <= \<const0>\;
  S_AXI_BRESP(0) <= \<const0>\;
  S_AXI_RDATA(31 downto 0) <= \^s_axi_back_data\(31 downto 0);
  S_AXI_RRESP(1) <= \<const0>\;
  S_AXI_RRESP(0) <= \<const0>\;
  \^s_axi_back_data\(31 downto 0) <= s_axi_back_data(31 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.system_axilite_slave_0_0_axilite_slave
     port map (
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARADDR(7 downto 0) => S_AXI_ARADDR(9 downto 2),
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_AWADDR(7 downto 0) => S_AXI_AWADDR(9 downto 2),
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_BREADY => S_AXI_BREADY,
      S_AXI_BVALID => S_AXI_BVALID,
      S_AXI_RREADY => S_AXI_RREADY,
      S_AXI_WDATA(31 downto 0) => S_AXI_WDATA(31 downto 0),
      S_AXI_WREADY => S_AXI_WREADY,
      S_AXI_WVALID => S_AXI_WVALID,
      axi_rvalid_reg_0 => S_AXI_RVALID,
      s_axi_read_addr(7 downto 0) => s_axi_read_addr(7 downto 0),
      s_axi_read_valid => s_axi_read_valid,
      s_axi_write_addr(7 downto 0) => s_axi_write_addr(7 downto 0),
      s_axi_write_data(31 downto 0) => s_axi_write_data(31 downto 0),
      s_axi_write_valid => s_axi_write_valid
    );
end STRUCTURE;
