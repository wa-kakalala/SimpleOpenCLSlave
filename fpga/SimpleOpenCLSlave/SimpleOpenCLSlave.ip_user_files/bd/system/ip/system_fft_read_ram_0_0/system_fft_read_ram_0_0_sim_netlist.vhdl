-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Wed May  1 16:28:07 2024
-- Host        : DESKTOP-7S7UGPP running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/wkk/Desktop/OpenCL/SimpleOpenCLSlave/fpga/SimpleOpenCLSlave/SimpleOpenCLSlave.srcs/sources_1/bd/system/ip/system_fft_read_ram_0_0/system_fft_read_ram_0_0_sim_netlist.vhdl
-- Design      : system_fft_read_ram_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_fft_read_ram_0_0_fft_read_ram is
  port (
    Q : out STD_LOGIC_VECTOR ( 6 downto 0 );
    working_reg_0 : out STD_LOGIC;
    data_valid : out STD_LOGIC;
    ready_out : out STD_LOGIC;
    clk_in : in STD_LOGIC;
    rst_n_in : in STD_LOGIC;
    en_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_fft_read_ram_0_0_fft_read_ram : entity is "fft_read_ram";
end system_fft_read_ram_0_0_fft_read_ram;

architecture STRUCTURE of system_fft_read_ram_0_0_fft_read_ram is
  signal \^q\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \ram_addr_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \ram_addr_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \ram_addr_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \ram_addr_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \ram_addr_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \ram_addr_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \ram_addr_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \ram_addr_reg[6]_i_2_n_0\ : STD_LOGIC;
  signal \ram_addr_reg[6]_i_3_n_0\ : STD_LOGIC;
  signal ready_i_1_n_0 : STD_LOGIC;
  signal \^ready_out\ : STD_LOGIC;
  signal working_i_1_n_0 : STD_LOGIC;
  signal working_i_2_n_0 : STD_LOGIC;
  signal \^working_reg_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ram_addr_reg[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \ram_addr_reg[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \ram_addr_reg[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \ram_addr_reg[5]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \ram_addr_reg[6]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \ram_addr_reg[6]_i_3\ : label is "soft_lutpair2";
begin
  Q(6 downto 0) <= \^q\(6 downto 0);
  ready_out <= \^ready_out\;
  working_reg_0 <= \^working_reg_0\;
\ram_addr_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^working_reg_0\,
      I1 => \^q\(0),
      O => \ram_addr_reg[0]_i_1_n_0\
    );
\ram_addr_reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^working_reg_0\,
      O => \ram_addr_reg[1]_i_1_n_0\
    );
\ram_addr_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7800"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^working_reg_0\,
      O => \ram_addr_reg[2]_i_1_n_0\
    );
\ram_addr_reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \^working_reg_0\,
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(3),
      O => \ram_addr_reg[3]_i_1_n_0\
    );
\ram_addr_reg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \^working_reg_0\,
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(3),
      I4 => \^q\(2),
      I5 => \^q\(4),
      O => \ram_addr_reg[4]_i_1_n_0\
    );
\ram_addr_reg[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7800"
    )
        port map (
      I0 => \ram_addr_reg[6]_i_3_n_0\,
      I1 => \^q\(4),
      I2 => \^q\(5),
      I3 => \^working_reg_0\,
      O => \ram_addr_reg[5]_i_1_n_0\
    );
\ram_addr_reg[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \^working_reg_0\,
      I1 => \ram_addr_reg[6]_i_3_n_0\,
      I2 => \^q\(5),
      I3 => \^q\(4),
      I4 => \^q\(6),
      O => \ram_addr_reg[6]_i_1_n_0\
    );
\ram_addr_reg[6]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n_in,
      O => \ram_addr_reg[6]_i_2_n_0\
    );
\ram_addr_reg[6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(3),
      I3 => \^q\(2),
      O => \ram_addr_reg[6]_i_3_n_0\
    );
\ram_addr_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => \ram_addr_reg[6]_i_2_n_0\,
      D => \ram_addr_reg[0]_i_1_n_0\,
      Q => \^q\(0)
    );
\ram_addr_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => \ram_addr_reg[6]_i_2_n_0\,
      D => \ram_addr_reg[1]_i_1_n_0\,
      Q => \^q\(1)
    );
\ram_addr_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => \ram_addr_reg[6]_i_2_n_0\,
      D => \ram_addr_reg[2]_i_1_n_0\,
      Q => \^q\(2)
    );
\ram_addr_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => \ram_addr_reg[6]_i_2_n_0\,
      D => \ram_addr_reg[3]_i_1_n_0\,
      Q => \^q\(3)
    );
\ram_addr_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => \ram_addr_reg[6]_i_2_n_0\,
      D => \ram_addr_reg[4]_i_1_n_0\,
      Q => \^q\(4)
    );
\ram_addr_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => \ram_addr_reg[6]_i_2_n_0\,
      D => \ram_addr_reg[5]_i_1_n_0\,
      Q => \^q\(5)
    );
\ram_addr_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => \ram_addr_reg[6]_i_2_n_0\,
      D => \ram_addr_reg[6]_i_1_n_0\,
      Q => \^q\(6)
    );
read_en_reg_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => \ram_addr_reg[6]_i_2_n_0\,
      D => \^working_reg_0\,
      Q => data_valid
    );
ready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7222222222222222"
    )
        port map (
      I0 => \^ready_out\,
      I1 => en_in,
      I2 => \^q\(6),
      I3 => \ram_addr_reg[6]_i_3_n_0\,
      I4 => \^q\(5),
      I5 => \^q\(4),
      O => ready_i_1_n_0
    );
ready_reg: unisim.vcomponents.FDPE
     port map (
      C => clk_in,
      CE => '1',
      D => ready_i_1_n_0,
      PRE => \ram_addr_reg[6]_i_2_n_0\,
      Q => \^ready_out\
    );
working_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FFF8888"
    )
        port map (
      I0 => \^ready_out\,
      I1 => en_in,
      I2 => \^q\(6),
      I3 => working_i_2_n_0,
      I4 => \^working_reg_0\,
      O => working_i_1_n_0
    );
working_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(5),
      I5 => \^q\(4),
      O => working_i_2_n_0
    );
working_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => \ram_addr_reg[6]_i_2_n_0\,
      D => working_i_1_n_0,
      Q => \^working_reg_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_fft_read_ram_0_0 is
  port (
    clk_in : in STD_LOGIC;
    rst_n_in : in STD_LOGIC;
    en_in : in STD_LOGIC;
    ram_addr : out STD_LOGIC_VECTOR ( 6 downto 0 );
    read_en : out STD_LOGIC;
    ram_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    re_data : out STD_LOGIC_VECTOR ( 15 downto 0 );
    im_data : out STD_LOGIC_VECTOR ( 15 downto 0 );
    data_valid : out STD_LOGIC;
    ready_out : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_fft_read_ram_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_fft_read_ram_0_0 : entity is "system_fft_read_ram_0_0,fft_read_ram,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of system_fft_read_ram_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of system_fft_read_ram_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of system_fft_read_ram_0_0 : entity is "fft_read_ram,Vivado 2018.3";
end system_fft_read_ram_0_0;

architecture STRUCTURE of system_fft_read_ram_0_0 is
  signal \^ram_data\ : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  \^ram_data\(31 downto 0) <= ram_data(31 downto 0);
  im_data(15 downto 0) <= \^ram_data\(31 downto 16);
  re_data(15 downto 0) <= \^ram_data\(15 downto 0);
inst: entity work.system_fft_read_ram_0_0_fft_read_ram
     port map (
      Q(6 downto 0) => ram_addr(6 downto 0),
      clk_in => clk_in,
      data_valid => data_valid,
      en_in => en_in,
      ready_out => ready_out,
      rst_n_in => rst_n_in,
      working_reg_0 => read_en
    );
end STRUCTURE;
