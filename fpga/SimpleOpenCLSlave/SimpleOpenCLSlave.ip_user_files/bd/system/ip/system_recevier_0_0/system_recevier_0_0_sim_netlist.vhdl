-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Wed May  1 16:28:07 2024
-- Host        : DESKTOP-7S7UGPP running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/wkk/Desktop/OpenCL/SimpleOpenCLSlave/fpga/SimpleOpenCLSlave/SimpleOpenCLSlave.srcs/sources_1/bd/system/ip/system_recevier_0_0/system_recevier_0_0_sim_netlist.vhdl
-- Design      : system_recevier_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_recevier_0_0_recevier is
  port (
    param_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    param_len : out STD_LOGIC_VECTOR ( 31 downto 0 );
    result_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    result_len : out STD_LOGIC_VECTOR ( 31 downto 0 );
    calc_start : out STD_LOGIC;
    bus_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk_in : in STD_LOGIC;
    rst_n_in : in STD_LOGIC;
    bus_addr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    bus_id : in STD_LOGIC_VECTOR ( 9 downto 0 );
    bus_vld : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_recevier_0_0_recevier : entity is "recevier";
end system_recevier_0_0_recevier;

architecture STRUCTURE of system_recevier_0_0_recevier is
  signal calc_start0 : STD_LOGIC;
  signal calc_start_i_2_n_0 : STD_LOGIC;
  signal csr : STD_LOGIC;
  signal \csr[2][31]_i_1_n_0\ : STD_LOGIC;
  signal \csr[2][31]_i_2_n_0\ : STD_LOGIC;
  signal \csr[2][31]_i_3_n_0\ : STD_LOGIC;
  signal \csr[2][31]_i_4_n_0\ : STD_LOGIC;
  signal \csr[2][31]_i_5_n_0\ : STD_LOGIC;
  signal \csr[3][31]_i_1_n_0\ : STD_LOGIC;
  signal \csr[4][31]_i_1_n_0\ : STD_LOGIC;
  signal \csr[4][31]_i_2_n_0\ : STD_LOGIC;
begin
calc_start_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000100000"
    )
        port map (
      I0 => \csr[2][31]_i_2_n_0\,
      I1 => \csr[2][31]_i_3_n_0\,
      I2 => \csr[2][31]_i_4_n_0\,
      I3 => bus_addr(1),
      I4 => bus_addr(0),
      I5 => \csr[2][31]_i_5_n_0\,
      O => calc_start0
    );
calc_start_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n_in,
      O => calc_start_i_2_n_0
    );
calc_start_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => calc_start_i_2_n_0,
      D => calc_start0,
      Q => calc_start
    );
\csr[2][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000100000"
    )
        port map (
      I0 => \csr[2][31]_i_2_n_0\,
      I1 => \csr[2][31]_i_3_n_0\,
      I2 => \csr[2][31]_i_4_n_0\,
      I3 => bus_addr(0),
      I4 => bus_addr(1),
      I5 => \csr[2][31]_i_5_n_0\,
      O => \csr[2][31]_i_1_n_0\
    );
\csr[2][31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => bus_id(8),
      I1 => bus_id(6),
      I2 => bus_id(9),
      I3 => bus_id(1),
      O => \csr[2][31]_i_2_n_0\
    );
\csr[2][31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => bus_id(4),
      I1 => bus_id(2),
      I2 => bus_id(5),
      I3 => bus_id(3),
      O => \csr[2][31]_i_3_n_0\
    );
\csr[2][31]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => bus_id(0),
      I1 => bus_vld,
      I2 => bus_id(7),
      O => \csr[2][31]_i_4_n_0\
    );
\csr[2][31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => bus_addr(5),
      I1 => bus_addr(7),
      I2 => bus_addr(4),
      I3 => bus_addr(6),
      I4 => bus_addr(3),
      I5 => bus_addr(2),
      O => \csr[2][31]_i_5_n_0\
    );
\csr[3][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010000000"
    )
        port map (
      I0 => \csr[2][31]_i_2_n_0\,
      I1 => \csr[2][31]_i_3_n_0\,
      I2 => \csr[2][31]_i_4_n_0\,
      I3 => bus_addr(1),
      I4 => bus_addr(0),
      I5 => \csr[2][31]_i_5_n_0\,
      O => \csr[3][31]_i_1_n_0\
    );
\csr[4][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => \csr[2][31]_i_2_n_0\,
      I1 => \csr[2][31]_i_3_n_0\,
      I2 => \csr[2][31]_i_4_n_0\,
      I3 => bus_addr(1),
      I4 => bus_addr(0),
      I5 => \csr[4][31]_i_2_n_0\,
      O => \csr[4][31]_i_1_n_0\
    );
\csr[4][31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFFFF"
    )
        port map (
      I0 => bus_addr(5),
      I1 => bus_addr(7),
      I2 => bus_addr(4),
      I3 => bus_addr(6),
      I4 => bus_addr(2),
      I5 => bus_addr(3),
      O => \csr[4][31]_i_2_n_0\
    );
\csr[5][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000100000"
    )
        port map (
      I0 => \csr[2][31]_i_2_n_0\,
      I1 => \csr[2][31]_i_3_n_0\,
      I2 => \csr[2][31]_i_4_n_0\,
      I3 => bus_addr(1),
      I4 => bus_addr(0),
      I5 => \csr[4][31]_i_2_n_0\,
      O => csr
    );
\csr_reg[2][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[2][31]_i_1_n_0\,
      D => bus_data(0),
      Q => param_addr(0),
      R => '0'
    );
\csr_reg[2][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[2][31]_i_1_n_0\,
      D => bus_data(10),
      Q => param_addr(10),
      R => '0'
    );
\csr_reg[2][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[2][31]_i_1_n_0\,
      D => bus_data(11),
      Q => param_addr(11),
      R => '0'
    );
\csr_reg[2][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[2][31]_i_1_n_0\,
      D => bus_data(12),
      Q => param_addr(12),
      R => '0'
    );
\csr_reg[2][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[2][31]_i_1_n_0\,
      D => bus_data(13),
      Q => param_addr(13),
      R => '0'
    );
\csr_reg[2][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[2][31]_i_1_n_0\,
      D => bus_data(14),
      Q => param_addr(14),
      R => '0'
    );
\csr_reg[2][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[2][31]_i_1_n_0\,
      D => bus_data(15),
      Q => param_addr(15),
      R => '0'
    );
\csr_reg[2][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[2][31]_i_1_n_0\,
      D => bus_data(16),
      Q => param_addr(16),
      R => '0'
    );
\csr_reg[2][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[2][31]_i_1_n_0\,
      D => bus_data(17),
      Q => param_addr(17),
      R => '0'
    );
\csr_reg[2][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[2][31]_i_1_n_0\,
      D => bus_data(18),
      Q => param_addr(18),
      R => '0'
    );
\csr_reg[2][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[2][31]_i_1_n_0\,
      D => bus_data(19),
      Q => param_addr(19),
      R => '0'
    );
\csr_reg[2][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[2][31]_i_1_n_0\,
      D => bus_data(1),
      Q => param_addr(1),
      R => '0'
    );
\csr_reg[2][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[2][31]_i_1_n_0\,
      D => bus_data(20),
      Q => param_addr(20),
      R => '0'
    );
\csr_reg[2][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[2][31]_i_1_n_0\,
      D => bus_data(21),
      Q => param_addr(21),
      R => '0'
    );
\csr_reg[2][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[2][31]_i_1_n_0\,
      D => bus_data(22),
      Q => param_addr(22),
      R => '0'
    );
\csr_reg[2][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[2][31]_i_1_n_0\,
      D => bus_data(23),
      Q => param_addr(23),
      R => '0'
    );
\csr_reg[2][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[2][31]_i_1_n_0\,
      D => bus_data(24),
      Q => param_addr(24),
      R => '0'
    );
\csr_reg[2][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[2][31]_i_1_n_0\,
      D => bus_data(25),
      Q => param_addr(25),
      R => '0'
    );
\csr_reg[2][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[2][31]_i_1_n_0\,
      D => bus_data(26),
      Q => param_addr(26),
      R => '0'
    );
\csr_reg[2][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[2][31]_i_1_n_0\,
      D => bus_data(27),
      Q => param_addr(27),
      R => '0'
    );
\csr_reg[2][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[2][31]_i_1_n_0\,
      D => bus_data(28),
      Q => param_addr(28),
      R => '0'
    );
\csr_reg[2][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[2][31]_i_1_n_0\,
      D => bus_data(29),
      Q => param_addr(29),
      R => '0'
    );
\csr_reg[2][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[2][31]_i_1_n_0\,
      D => bus_data(2),
      Q => param_addr(2),
      R => '0'
    );
\csr_reg[2][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[2][31]_i_1_n_0\,
      D => bus_data(30),
      Q => param_addr(30),
      R => '0'
    );
\csr_reg[2][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[2][31]_i_1_n_0\,
      D => bus_data(31),
      Q => param_addr(31),
      R => '0'
    );
\csr_reg[2][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[2][31]_i_1_n_0\,
      D => bus_data(3),
      Q => param_addr(3),
      R => '0'
    );
\csr_reg[2][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[2][31]_i_1_n_0\,
      D => bus_data(4),
      Q => param_addr(4),
      R => '0'
    );
\csr_reg[2][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[2][31]_i_1_n_0\,
      D => bus_data(5),
      Q => param_addr(5),
      R => '0'
    );
\csr_reg[2][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[2][31]_i_1_n_0\,
      D => bus_data(6),
      Q => param_addr(6),
      R => '0'
    );
\csr_reg[2][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[2][31]_i_1_n_0\,
      D => bus_data(7),
      Q => param_addr(7),
      R => '0'
    );
\csr_reg[2][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[2][31]_i_1_n_0\,
      D => bus_data(8),
      Q => param_addr(8),
      R => '0'
    );
\csr_reg[2][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[2][31]_i_1_n_0\,
      D => bus_data(9),
      Q => param_addr(9),
      R => '0'
    );
\csr_reg[3][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[3][31]_i_1_n_0\,
      D => bus_data(0),
      Q => param_len(0),
      R => '0'
    );
\csr_reg[3][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[3][31]_i_1_n_0\,
      D => bus_data(10),
      Q => param_len(10),
      R => '0'
    );
\csr_reg[3][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[3][31]_i_1_n_0\,
      D => bus_data(11),
      Q => param_len(11),
      R => '0'
    );
\csr_reg[3][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[3][31]_i_1_n_0\,
      D => bus_data(12),
      Q => param_len(12),
      R => '0'
    );
\csr_reg[3][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[3][31]_i_1_n_0\,
      D => bus_data(13),
      Q => param_len(13),
      R => '0'
    );
\csr_reg[3][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[3][31]_i_1_n_0\,
      D => bus_data(14),
      Q => param_len(14),
      R => '0'
    );
\csr_reg[3][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[3][31]_i_1_n_0\,
      D => bus_data(15),
      Q => param_len(15),
      R => '0'
    );
\csr_reg[3][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[3][31]_i_1_n_0\,
      D => bus_data(16),
      Q => param_len(16),
      R => '0'
    );
\csr_reg[3][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[3][31]_i_1_n_0\,
      D => bus_data(17),
      Q => param_len(17),
      R => '0'
    );
\csr_reg[3][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[3][31]_i_1_n_0\,
      D => bus_data(18),
      Q => param_len(18),
      R => '0'
    );
\csr_reg[3][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[3][31]_i_1_n_0\,
      D => bus_data(19),
      Q => param_len(19),
      R => '0'
    );
\csr_reg[3][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[3][31]_i_1_n_0\,
      D => bus_data(1),
      Q => param_len(1),
      R => '0'
    );
\csr_reg[3][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[3][31]_i_1_n_0\,
      D => bus_data(20),
      Q => param_len(20),
      R => '0'
    );
\csr_reg[3][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[3][31]_i_1_n_0\,
      D => bus_data(21),
      Q => param_len(21),
      R => '0'
    );
\csr_reg[3][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[3][31]_i_1_n_0\,
      D => bus_data(22),
      Q => param_len(22),
      R => '0'
    );
\csr_reg[3][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[3][31]_i_1_n_0\,
      D => bus_data(23),
      Q => param_len(23),
      R => '0'
    );
\csr_reg[3][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[3][31]_i_1_n_0\,
      D => bus_data(24),
      Q => param_len(24),
      R => '0'
    );
\csr_reg[3][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[3][31]_i_1_n_0\,
      D => bus_data(25),
      Q => param_len(25),
      R => '0'
    );
\csr_reg[3][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[3][31]_i_1_n_0\,
      D => bus_data(26),
      Q => param_len(26),
      R => '0'
    );
\csr_reg[3][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[3][31]_i_1_n_0\,
      D => bus_data(27),
      Q => param_len(27),
      R => '0'
    );
\csr_reg[3][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[3][31]_i_1_n_0\,
      D => bus_data(28),
      Q => param_len(28),
      R => '0'
    );
\csr_reg[3][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[3][31]_i_1_n_0\,
      D => bus_data(29),
      Q => param_len(29),
      R => '0'
    );
\csr_reg[3][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[3][31]_i_1_n_0\,
      D => bus_data(2),
      Q => param_len(2),
      R => '0'
    );
\csr_reg[3][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[3][31]_i_1_n_0\,
      D => bus_data(30),
      Q => param_len(30),
      R => '0'
    );
\csr_reg[3][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[3][31]_i_1_n_0\,
      D => bus_data(31),
      Q => param_len(31),
      R => '0'
    );
\csr_reg[3][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[3][31]_i_1_n_0\,
      D => bus_data(3),
      Q => param_len(3),
      R => '0'
    );
\csr_reg[3][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[3][31]_i_1_n_0\,
      D => bus_data(4),
      Q => param_len(4),
      R => '0'
    );
\csr_reg[3][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[3][31]_i_1_n_0\,
      D => bus_data(5),
      Q => param_len(5),
      R => '0'
    );
\csr_reg[3][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[3][31]_i_1_n_0\,
      D => bus_data(6),
      Q => param_len(6),
      R => '0'
    );
\csr_reg[3][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[3][31]_i_1_n_0\,
      D => bus_data(7),
      Q => param_len(7),
      R => '0'
    );
\csr_reg[3][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[3][31]_i_1_n_0\,
      D => bus_data(8),
      Q => param_len(8),
      R => '0'
    );
\csr_reg[3][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[3][31]_i_1_n_0\,
      D => bus_data(9),
      Q => param_len(9),
      R => '0'
    );
\csr_reg[4][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[4][31]_i_1_n_0\,
      D => bus_data(0),
      Q => result_addr(0),
      R => '0'
    );
\csr_reg[4][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[4][31]_i_1_n_0\,
      D => bus_data(10),
      Q => result_addr(10),
      R => '0'
    );
\csr_reg[4][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[4][31]_i_1_n_0\,
      D => bus_data(11),
      Q => result_addr(11),
      R => '0'
    );
\csr_reg[4][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[4][31]_i_1_n_0\,
      D => bus_data(12),
      Q => result_addr(12),
      R => '0'
    );
\csr_reg[4][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[4][31]_i_1_n_0\,
      D => bus_data(13),
      Q => result_addr(13),
      R => '0'
    );
\csr_reg[4][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[4][31]_i_1_n_0\,
      D => bus_data(14),
      Q => result_addr(14),
      R => '0'
    );
\csr_reg[4][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[4][31]_i_1_n_0\,
      D => bus_data(15),
      Q => result_addr(15),
      R => '0'
    );
\csr_reg[4][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[4][31]_i_1_n_0\,
      D => bus_data(16),
      Q => result_addr(16),
      R => '0'
    );
\csr_reg[4][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[4][31]_i_1_n_0\,
      D => bus_data(17),
      Q => result_addr(17),
      R => '0'
    );
\csr_reg[4][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[4][31]_i_1_n_0\,
      D => bus_data(18),
      Q => result_addr(18),
      R => '0'
    );
\csr_reg[4][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[4][31]_i_1_n_0\,
      D => bus_data(19),
      Q => result_addr(19),
      R => '0'
    );
\csr_reg[4][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[4][31]_i_1_n_0\,
      D => bus_data(1),
      Q => result_addr(1),
      R => '0'
    );
\csr_reg[4][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[4][31]_i_1_n_0\,
      D => bus_data(20),
      Q => result_addr(20),
      R => '0'
    );
\csr_reg[4][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[4][31]_i_1_n_0\,
      D => bus_data(21),
      Q => result_addr(21),
      R => '0'
    );
\csr_reg[4][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[4][31]_i_1_n_0\,
      D => bus_data(22),
      Q => result_addr(22),
      R => '0'
    );
\csr_reg[4][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[4][31]_i_1_n_0\,
      D => bus_data(23),
      Q => result_addr(23),
      R => '0'
    );
\csr_reg[4][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[4][31]_i_1_n_0\,
      D => bus_data(24),
      Q => result_addr(24),
      R => '0'
    );
\csr_reg[4][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[4][31]_i_1_n_0\,
      D => bus_data(25),
      Q => result_addr(25),
      R => '0'
    );
\csr_reg[4][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[4][31]_i_1_n_0\,
      D => bus_data(26),
      Q => result_addr(26),
      R => '0'
    );
\csr_reg[4][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[4][31]_i_1_n_0\,
      D => bus_data(27),
      Q => result_addr(27),
      R => '0'
    );
\csr_reg[4][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[4][31]_i_1_n_0\,
      D => bus_data(28),
      Q => result_addr(28),
      R => '0'
    );
\csr_reg[4][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[4][31]_i_1_n_0\,
      D => bus_data(29),
      Q => result_addr(29),
      R => '0'
    );
\csr_reg[4][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[4][31]_i_1_n_0\,
      D => bus_data(2),
      Q => result_addr(2),
      R => '0'
    );
\csr_reg[4][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[4][31]_i_1_n_0\,
      D => bus_data(30),
      Q => result_addr(30),
      R => '0'
    );
\csr_reg[4][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[4][31]_i_1_n_0\,
      D => bus_data(31),
      Q => result_addr(31),
      R => '0'
    );
\csr_reg[4][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[4][31]_i_1_n_0\,
      D => bus_data(3),
      Q => result_addr(3),
      R => '0'
    );
\csr_reg[4][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[4][31]_i_1_n_0\,
      D => bus_data(4),
      Q => result_addr(4),
      R => '0'
    );
\csr_reg[4][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[4][31]_i_1_n_0\,
      D => bus_data(5),
      Q => result_addr(5),
      R => '0'
    );
\csr_reg[4][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[4][31]_i_1_n_0\,
      D => bus_data(6),
      Q => result_addr(6),
      R => '0'
    );
\csr_reg[4][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[4][31]_i_1_n_0\,
      D => bus_data(7),
      Q => result_addr(7),
      R => '0'
    );
\csr_reg[4][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[4][31]_i_1_n_0\,
      D => bus_data(8),
      Q => result_addr(8),
      R => '0'
    );
\csr_reg[4][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \csr[4][31]_i_1_n_0\,
      D => bus_data(9),
      Q => result_addr(9),
      R => '0'
    );
\csr_reg[5][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => csr,
      D => bus_data(0),
      Q => result_len(0),
      R => '0'
    );
\csr_reg[5][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => csr,
      D => bus_data(10),
      Q => result_len(10),
      R => '0'
    );
\csr_reg[5][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => csr,
      D => bus_data(11),
      Q => result_len(11),
      R => '0'
    );
\csr_reg[5][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => csr,
      D => bus_data(12),
      Q => result_len(12),
      R => '0'
    );
\csr_reg[5][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => csr,
      D => bus_data(13),
      Q => result_len(13),
      R => '0'
    );
\csr_reg[5][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => csr,
      D => bus_data(14),
      Q => result_len(14),
      R => '0'
    );
\csr_reg[5][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => csr,
      D => bus_data(15),
      Q => result_len(15),
      R => '0'
    );
\csr_reg[5][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => csr,
      D => bus_data(16),
      Q => result_len(16),
      R => '0'
    );
\csr_reg[5][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => csr,
      D => bus_data(17),
      Q => result_len(17),
      R => '0'
    );
\csr_reg[5][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => csr,
      D => bus_data(18),
      Q => result_len(18),
      R => '0'
    );
\csr_reg[5][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => csr,
      D => bus_data(19),
      Q => result_len(19),
      R => '0'
    );
\csr_reg[5][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => csr,
      D => bus_data(1),
      Q => result_len(1),
      R => '0'
    );
\csr_reg[5][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => csr,
      D => bus_data(20),
      Q => result_len(20),
      R => '0'
    );
\csr_reg[5][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => csr,
      D => bus_data(21),
      Q => result_len(21),
      R => '0'
    );
\csr_reg[5][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => csr,
      D => bus_data(22),
      Q => result_len(22),
      R => '0'
    );
\csr_reg[5][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => csr,
      D => bus_data(23),
      Q => result_len(23),
      R => '0'
    );
\csr_reg[5][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => csr,
      D => bus_data(24),
      Q => result_len(24),
      R => '0'
    );
\csr_reg[5][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => csr,
      D => bus_data(25),
      Q => result_len(25),
      R => '0'
    );
\csr_reg[5][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => csr,
      D => bus_data(26),
      Q => result_len(26),
      R => '0'
    );
\csr_reg[5][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => csr,
      D => bus_data(27),
      Q => result_len(27),
      R => '0'
    );
\csr_reg[5][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => csr,
      D => bus_data(28),
      Q => result_len(28),
      R => '0'
    );
\csr_reg[5][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => csr,
      D => bus_data(29),
      Q => result_len(29),
      R => '0'
    );
\csr_reg[5][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => csr,
      D => bus_data(2),
      Q => result_len(2),
      R => '0'
    );
\csr_reg[5][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => csr,
      D => bus_data(30),
      Q => result_len(30),
      R => '0'
    );
\csr_reg[5][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => csr,
      D => bus_data(31),
      Q => result_len(31),
      R => '0'
    );
\csr_reg[5][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => csr,
      D => bus_data(3),
      Q => result_len(3),
      R => '0'
    );
\csr_reg[5][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => csr,
      D => bus_data(4),
      Q => result_len(4),
      R => '0'
    );
\csr_reg[5][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => csr,
      D => bus_data(5),
      Q => result_len(5),
      R => '0'
    );
\csr_reg[5][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => csr,
      D => bus_data(6),
      Q => result_len(6),
      R => '0'
    );
\csr_reg[5][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => csr,
      D => bus_data(7),
      Q => result_len(7),
      R => '0'
    );
\csr_reg[5][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => csr,
      D => bus_data(8),
      Q => result_len(8),
      R => '0'
    );
\csr_reg[5][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => csr,
      D => bus_data(9),
      Q => result_len(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_recevier_0_0 is
  port (
    clk_in : in STD_LOGIC;
    rst_n_in : in STD_LOGIC;
    bus_addr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    bus_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    bus_id : in STD_LOGIC_VECTOR ( 9 downto 0 );
    bus_vld : in STD_LOGIC;
    param_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    param_len : out STD_LOGIC_VECTOR ( 31 downto 0 );
    result_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    result_len : out STD_LOGIC_VECTOR ( 31 downto 0 );
    calc_start : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_recevier_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_recevier_0_0 : entity is "system_recevier_0_0,recevier,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of system_recevier_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of system_recevier_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of system_recevier_0_0 : entity is "recevier,Vivado 2018.3";
end system_recevier_0_0;

architecture STRUCTURE of system_recevier_0_0 is
begin
inst: entity work.system_recevier_0_0_recevier
     port map (
      bus_addr(7 downto 0) => bus_addr(7 downto 0),
      bus_data(31 downto 0) => bus_data(31 downto 0),
      bus_id(9 downto 0) => bus_id(9 downto 0),
      bus_vld => bus_vld,
      calc_start => calc_start,
      clk_in => clk_in,
      param_addr(31 downto 0) => param_addr(31 downto 0),
      param_len(31 downto 0) => param_len(31 downto 0),
      result_addr(31 downto 0) => result_addr(31 downto 0),
      result_len(31 downto 0) => result_len(31 downto 0),
      rst_n_in => rst_n_in
    );
end STRUCTURE;
