-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon Jan  5 22:07:41 2026
-- Host        : violet running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ inst_rom_sim_netlist.vhdl
-- Design      : inst_rom
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rom is
  port (
    spo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    a : in STD_LOGIC_VECTOR ( 13 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rom;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rom is
  signal \spo[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[14]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \spo[14]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \spo[14]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[14]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[14]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[14]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[14]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[14]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[14]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[14]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[14]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \spo[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[15]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[15]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[15]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[15]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[15]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[16]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[16]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[16]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[16]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[17]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[18]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[18]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[18]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[18]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[18]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[19]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[19]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[19]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[19]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[19]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[19]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[19]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \spo[20]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[20]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[20]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[20]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[20]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \spo[22]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[22]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[22]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[22]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[22]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[22]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[22]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[22]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[22]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[24]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[24]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[24]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[24]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[24]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[24]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[24]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[25]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[25]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[25]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[25]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[25]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[25]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[25]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_4_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \spo[0]_INST_0_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \spo[10]_INST_0_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \spo[11]_INST_0_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \spo[11]_INST_0_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \spo[11]_INST_0_i_3\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \spo[12]_INST_0_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \spo[13]_INST_0_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \spo[13]_INST_0_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \spo[14]_INST_0_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \spo[14]_INST_0_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \spo[14]_INST_0_i_4\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \spo[15]_INST_0_i_4\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \spo[19]_INST_0_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \spo[19]_INST_0_i_4\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \spo[1]_INST_0_i_4\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \spo[1]_INST_0_i_7\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \spo[1]_INST_0_i_9\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \spo[20]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \spo[21]_INST_0_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \spo[21]_INST_0_i_5\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \spo[21]_INST_0_i_6\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \spo[21]_INST_0_i_7\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \spo[21]_INST_0_i_8\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \spo[22]_INST_0_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \spo[22]_INST_0_i_5\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \spo[22]_INST_0_i_6\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \spo[22]_INST_0_i_7\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \spo[23]_INST_0_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \spo[23]_INST_0_i_4\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \spo[23]_INST_0_i_6\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \spo[24]_INST_0_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \spo[24]_INST_0_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \spo[25]_INST_0_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \spo[25]_INST_0_i_5\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \spo[26]_INST_0_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \spo[26]_INST_0_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \spo[27]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \spo[28]_INST_0_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \spo[29]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \spo[29]_INST_0_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \spo[30]_INST_0_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \spo[31]_INST_0_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \spo[31]_INST_0_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \spo[31]_INST_0_i_4\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \spo[31]_INST_0_i_5\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \spo[3]_INST_0_i_4\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \spo[3]_INST_0_i_5\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \spo[3]_INST_0_i_6\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \spo[4]_INST_0_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \spo[4]_INST_0_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \spo[5]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \spo[5]_INST_0_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \spo[5]_INST_0_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \spo[6]_INST_0_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \spo[7]_INST_0_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \spo[9]_INST_0\ : label is "soft_lutpair21";
begin
\spo[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFEA0000"
    )
        port map (
      I0 => \spo[0]_INST_0_i_1_n_0\,
      I1 => a(0),
      I2 => \spo[14]_INST_0_i_2_n_0\,
      I3 => \spo[0]_INST_0_i_2_n_0\,
      I4 => \spo[29]_INST_0_i_2_n_0\,
      I5 => a(13),
      O => spo(0)
    );
\spo[0]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFE2"
    )
        port map (
      I0 => \spo[0]_INST_0_i_3_n_0\,
      I1 => a(2),
      I2 => \spo[0]_INST_0_i_4_n_0\,
      I3 => \spo[14]_INST_0_i_11_n_0\,
      I4 => a(0),
      O => \spo[0]_INST_0_i_1_n_0\
    );
\spo[0]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \spo[0]_INST_0_i_5_n_0\,
      I1 => a(7),
      I2 => \spo[0]_INST_0_i_6_n_0\,
      O => \spo[0]_INST_0_i_2_n_0\
    );
\spo[0]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1F1C4F5EACFF01DE"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(7),
      I3 => a(3),
      I4 => a(1),
      I5 => a(6),
      O => \spo[0]_INST_0_i_3_n_0\
    );
\spo[0]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"14392FE904192FF9"
    )
        port map (
      I0 => a(3),
      I1 => a(7),
      I2 => a(5),
      I3 => a(4),
      I4 => a(6),
      I5 => a(1),
      O => \spo[0]_INST_0_i_4_n_0\
    );
\spo[0]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000D00000022"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(1),
      I3 => a(6),
      I4 => a(3),
      I5 => a(2),
      O => \spo[0]_INST_0_i_5_n_0\
    );
\spo[0]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00008000400000A0"
    )
        port map (
      I0 => a(6),
      I1 => a(3),
      I2 => a(2),
      I3 => a(1),
      I4 => a(5),
      I5 => a(4),
      O => \spo[0]_INST_0_i_6_n_0\
    );
\spo[10]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA808080"
    )
        port map (
      I0 => \spo[31]_INST_0_i_1_n_0\,
      I1 => \spo[12]_INST_0_i_1_n_0\,
      I2 => \spo[10]_INST_0_i_1_n_0\,
      I3 => \spo[10]_INST_0_i_2_n_0\,
      I4 => \spo[10]_INST_0_i_3_n_0\,
      O => spo(10)
    );
\spo[10]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2002000108040000"
    )
        port map (
      I0 => a(3),
      I1 => a(4),
      I2 => a(1),
      I3 => a(2),
      I4 => a(6),
      I5 => a(5),
      O => \spo[10]_INST_0_i_1_n_0\
    );
\spo[10]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => a(8),
      I1 => a(3),
      I2 => a(7),
      O => \spo[10]_INST_0_i_2_n_0\
    );
\spo[10]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100200000100000"
    )
        port map (
      I0 => a(6),
      I1 => a(5),
      I2 => a(1),
      I3 => a(0),
      I4 => a(4),
      I5 => a(2),
      O => \spo[10]_INST_0_i_3_n_0\
    );
\spo[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => a(7),
      I1 => \spo[11]_INST_0_i_1_n_0\,
      I2 => \spo[12]_INST_0_i_4_n_0\,
      I3 => a(4),
      I4 => \spo[11]_INST_0_i_2_n_0\,
      I5 => \spo[11]_INST_0_i_3_n_0\,
      O => spo(11)
    );
\spo[11]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => a(12),
      I1 => a(13),
      O => \spo[11]_INST_0_i_1_n_0\
    );
\spo[11]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => a(8),
      I1 => a(9),
      O => \spo[11]_INST_0_i_2_n_0\
    );
\spo[11]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => a(10),
      I1 => a(11),
      O => \spo[11]_INST_0_i_3_n_0\
    );
\spo[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA80808080808080"
    )
        port map (
      I0 => \spo[31]_INST_0_i_1_n_0\,
      I1 => \spo[12]_INST_0_i_1_n_0\,
      I2 => \spo[12]_INST_0_i_2_n_0\,
      I3 => a(7),
      I4 => \spo[12]_INST_0_i_3_n_0\,
      I5 => \spo[12]_INST_0_i_4_n_0\,
      O => spo(12)
    );
\spo[12]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => a(8),
      I1 => a(0),
      I2 => a(7),
      O => \spo[12]_INST_0_i_1_n_0\
    );
\spo[12]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000008020020"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(1),
      I3 => a(2),
      I4 => a(6),
      I5 => a(5),
      O => \spo[12]_INST_0_i_2_n_0\
    );
\spo[12]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => a(8),
      I1 => a(4),
      O => \spo[12]_INST_0_i_3_n_0\
    );
\spo[12]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000002"
    )
        port map (
      I0 => a(5),
      I1 => a(6),
      I2 => a(1),
      I3 => a(0),
      I4 => a(3),
      I5 => a(2),
      O => \spo[12]_INST_0_i_4_n_0\
    );
\spo[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0088008000080000"
    )
        port map (
      I0 => \spo[13]_INST_0_i_1_n_0\,
      I1 => \spo[13]_INST_0_i_2_n_0\,
      I2 => a(7),
      I3 => a(8),
      I4 => \spo[13]_INST_0_i_3_n_0\,
      I5 => \spo[13]_INST_0_i_4_n_0\,
      O => spo(13)
    );
\spo[13]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => a(11),
      I1 => a(0),
      I2 => a(13),
      I3 => a(12),
      O => \spo[13]_INST_0_i_1_n_0\
    );
\spo[13]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => a(9),
      I1 => a(10),
      O => \spo[13]_INST_0_i_2_n_0\
    );
\spo[13]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => a(3),
      I1 => a(4),
      I2 => a(1),
      I3 => a(2),
      I4 => a(6),
      I5 => a(5),
      O => \spo[13]_INST_0_i_3_n_0\
    );
\spo[13]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100400000000000"
    )
        port map (
      I0 => a(5),
      I1 => a(6),
      I2 => a(1),
      I3 => a(2),
      I4 => a(4),
      I5 => a(3),
      O => \spo[13]_INST_0_i_4_n_0\
    );
\spo[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAA808080"
    )
        port map (
      I0 => \spo[31]_INST_0_i_1_n_0\,
      I1 => \spo[14]_INST_0_i_1_n_0\,
      I2 => \spo[14]_INST_0_i_2_n_0\,
      I3 => \spo[14]_INST_0_i_3_n_0\,
      I4 => \spo[14]_INST_0_i_4_n_0\,
      I5 => \spo[14]_INST_0_i_5_n_0\,
      O => spo(14)
    );
\spo[14]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => a(0),
      I1 => a(8),
      O => \spo[14]_INST_0_i_1_n_0\
    );
\spo[14]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"34392FE904192FF9"
    )
        port map (
      I0 => a(3),
      I1 => a(7),
      I2 => a(5),
      I3 => a(4),
      I4 => a(6),
      I5 => a(1),
      O => \spo[14]_INST_0_i_10_n_0\
    );
\spo[14]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"032201CC01000100"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(7),
      I3 => a(6),
      I4 => a(3),
      I5 => a(4),
      O => \spo[14]_INST_0_i_11_n_0\
    );
\spo[14]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFEA"
    )
        port map (
      I0 => \spo[14]_INST_0_i_6_n_0\,
      I1 => \spo[14]_INST_0_i_7_n_0\,
      I2 => a(2),
      I3 => \spo[14]_INST_0_i_8_n_0\,
      O => \spo[14]_INST_0_i_2_n_0\
    );
\spo[14]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000020000000110C"
    )
        port map (
      I0 => a(4),
      I1 => a(7),
      I2 => a(3),
      I3 => a(6),
      I4 => a(5),
      I5 => a(1),
      O => \spo[14]_INST_0_i_3_n_0\
    );
\spo[14]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => a(2),
      I1 => a(8),
      O => \spo[14]_INST_0_i_4_n_0\
    );
\spo[14]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111111111100010"
    )
        port map (
      I0 => a(0),
      I1 => a(8),
      I2 => \spo[14]_INST_0_i_9_n_0\,
      I3 => a(2),
      I4 => \spo[14]_INST_0_i_10_n_0\,
      I5 => \spo[14]_INST_0_i_11_n_0\,
      O => \spo[14]_INST_0_i_5_n_0\
    );
\spo[14]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0081008000034042"
    )
        port map (
      I0 => a(1),
      I1 => a(4),
      I2 => a(5),
      I3 => a(6),
      I4 => a(3),
      I5 => a(7),
      O => \spo[14]_INST_0_i_6_n_0\
    );
\spo[14]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7403575C7033535C"
    )
        port map (
      I0 => a(6),
      I1 => a(7),
      I2 => a(5),
      I3 => a(4),
      I4 => a(3),
      I5 => a(1),
      O => \spo[14]_INST_0_i_7_n_0\
    );
\spo[14]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02040FFF23EB2615"
    )
        port map (
      I0 => a(1),
      I1 => a(7),
      I2 => a(4),
      I3 => a(5),
      I4 => a(6),
      I5 => a(3),
      O => \spo[14]_INST_0_i_8_n_0\
    );
\spo[14]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1F1A2F3EDAFF01BE"
    )
        port map (
      I0 => a(4),
      I1 => a(5),
      I2 => a(7),
      I3 => a(3),
      I4 => a(1),
      I5 => a(6),
      O => \spo[14]_INST_0_i_9_n_0\
    );
\spo[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA00080000"
    )
        port map (
      I0 => \spo[31]_INST_0_i_1_n_0\,
      I1 => a(7),
      I2 => a(8),
      I3 => a(6),
      I4 => \spo[15]_INST_0_i_1_n_0\,
      I5 => \spo[15]_INST_0_i_2_n_0\,
      O => spo(15)
    );
\spo[15]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0081002012011000"
    )
        port map (
      I0 => a(4),
      I1 => a(2),
      I2 => a(1),
      I3 => a(0),
      I4 => a(5),
      I5 => a(3),
      O => \spo[15]_INST_0_i_1_n_0\
    );
\spo[15]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8FFF88888888888"
    )
        port map (
      I0 => \spo[15]_INST_0_i_3_n_0\,
      I1 => \spo[15]_INST_0_i_4_n_0\,
      I2 => \spo[15]_INST_0_i_5_n_0\,
      I3 => a(4),
      I4 => \spo[15]_INST_0_i_6_n_0\,
      I5 => \spo[22]_INST_0_i_5_n_0\,
      O => \spo[15]_INST_0_i_2_n_0\
    );
\spo[15]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010000008014"
    )
        port map (
      I0 => a(2),
      I1 => a(3),
      I2 => a(0),
      I3 => a(1),
      I4 => a(5),
      I5 => a(4),
      O => \spo[15]_INST_0_i_3_n_0\
    );
\spo[15]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => a(8),
      I1 => a(6),
      I2 => a(7),
      O => \spo[15]_INST_0_i_4_n_0\
    );
\spo[15]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2004000404000002"
    )
        port map (
      I0 => a(3),
      I1 => a(2),
      I2 => a(0),
      I3 => a(1),
      I4 => a(6),
      I5 => a(5),
      O => \spo[15]_INST_0_i_5_n_0\
    );
\spo[15]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20400180502C8001"
    )
        port map (
      I0 => a(5),
      I1 => a(6),
      I2 => a(3),
      I3 => a(2),
      I4 => a(1),
      I5 => a(0),
      O => \spo[15]_INST_0_i_6_n_0\
    );
\spo[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA00080000"
    )
        port map (
      I0 => \spo[31]_INST_0_i_1_n_0\,
      I1 => a(4),
      I2 => a(8),
      I3 => a(7),
      I4 => \spo[16]_INST_0_i_1_n_0\,
      I5 => \spo[16]_INST_0_i_2_n_0\,
      O => spo(16)
    );
\spo[16]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6008000800080020"
    )
        port map (
      I0 => a(0),
      I1 => a(3),
      I2 => a(1),
      I3 => a(6),
      I4 => a(2),
      I5 => a(5),
      O => \spo[16]_INST_0_i_1_n_0\
    );
\spo[16]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8FFF88888888888"
    )
        port map (
      I0 => \spo[16]_INST_0_i_3_n_0\,
      I1 => \spo[21]_INST_0_i_6_n_0\,
      I2 => \spo[16]_INST_0_i_4_n_0\,
      I3 => a(5),
      I4 => \spo[31]_INST_0_i_7_n_0\,
      I5 => \spo[21]_INST_0_i_5_n_0\,
      O => \spo[16]_INST_0_i_2_n_0\
    );
\spo[16]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000104000000"
    )
        port map (
      I0 => a(5),
      I1 => a(6),
      I2 => a(1),
      I3 => a(0),
      I4 => a(2),
      I5 => a(3),
      O => \spo[16]_INST_0_i_3_n_0\
    );
\spo[16]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000080180008020"
    )
        port map (
      I0 => a(2),
      I1 => a(3),
      I2 => a(1),
      I3 => a(0),
      I4 => a(6),
      I5 => a(7),
      O => \spo[16]_INST_0_i_4_n_0\
    );
\spo[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA00200000"
    )
        port map (
      I0 => \spo[31]_INST_0_i_1_n_0\,
      I1 => a(7),
      I2 => a(6),
      I3 => a(8),
      I4 => \spo[17]_INST_0_i_1_n_0\,
      I5 => \spo[30]_INST_0_i_2_n_0\,
      O => spo(17)
    );
\spo[17]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000002000D000000"
    )
        port map (
      I0 => a(2),
      I1 => a(3),
      I2 => a(1),
      I3 => a(0),
      I4 => a(4),
      I5 => a(5),
      O => \spo[17]_INST_0_i_1_n_0\
    );
\spo[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA00080000"
    )
        port map (
      I0 => \spo[31]_INST_0_i_1_n_0\,
      I1 => a(6),
      I2 => a(8),
      I3 => a(7),
      I4 => \spo[18]_INST_0_i_1_n_0\,
      I5 => \spo[18]_INST_0_i_2_n_0\,
      O => spo(18)
    );
\spo[18]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0600002083208000"
    )
        port map (
      I0 => a(1),
      I1 => a(5),
      I2 => a(2),
      I3 => a(0),
      I4 => a(3),
      I5 => a(4),
      O => \spo[18]_INST_0_i_1_n_0\
    );
\spo[18]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8FFF88888888888"
    )
        port map (
      I0 => \spo[18]_INST_0_i_3_n_0\,
      I1 => \spo[23]_INST_0_i_4_n_0\,
      I2 => \spo[18]_INST_0_i_4_n_0\,
      I3 => a(4),
      I4 => \spo[18]_INST_0_i_5_n_0\,
      I5 => \spo[3]_INST_0_i_4_n_0\,
      O => \spo[18]_INST_0_i_2_n_0\
    );
\spo[18]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000060042010"
    )
        port map (
      I0 => a(3),
      I1 => a(4),
      I2 => a(0),
      I3 => a(2),
      I4 => a(1),
      I5 => a(5),
      O => \spo[18]_INST_0_i_3_n_0\
    );
\spo[18]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0810200400109000"
    )
        port map (
      I0 => a(3),
      I1 => a(2),
      I2 => a(0),
      I3 => a(1),
      I4 => a(7),
      I5 => a(5),
      O => \spo[18]_INST_0_i_4_n_0\
    );
\spo[18]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C002000000080000"
    )
        port map (
      I0 => a(7),
      I1 => a(3),
      I2 => a(5),
      I3 => a(2),
      I4 => a(1),
      I5 => a(0),
      O => \spo[18]_INST_0_i_5_n_0\
    );
\spo[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAA808080"
    )
        port map (
      I0 => \spo[31]_INST_0_i_1_n_0\,
      I1 => \spo[19]_INST_0_i_1_n_0\,
      I2 => \spo[19]_INST_0_i_2_n_0\,
      I3 => \spo[19]_INST_0_i_3_n_0\,
      I4 => \spo[19]_INST_0_i_4_n_0\,
      I5 => \spo[19]_INST_0_i_5_n_0\,
      O => spo(19)
    );
\spo[19]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => a(4),
      I1 => a(8),
      I2 => a(5),
      O => \spo[19]_INST_0_i_1_n_0\
    );
\spo[19]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000818402"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(6),
      I4 => a(3),
      I5 => a(7),
      O => \spo[19]_INST_0_i_2_n_0\
    );
\spo[19]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000150000200"
    )
        port map (
      I0 => a(7),
      I1 => a(6),
      I2 => a(1),
      I3 => a(0),
      I4 => a(3),
      I5 => a(2),
      O => \spo[19]_INST_0_i_3_n_0\
    );
\spo[19]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => a(8),
      I1 => a(4),
      I2 => a(5),
      O => \spo[19]_INST_0_i_4_n_0\
    );
\spo[19]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11100010"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => \spo[19]_INST_0_i_6_n_0\,
      I3 => a(3),
      I4 => \spo[19]_INST_0_i_7_n_0\,
      O => \spo[19]_INST_0_i_5_n_0\
    );
\spo[19]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000082000000041"
    )
        port map (
      I0 => a(4),
      I1 => a(2),
      I2 => a(0),
      I3 => a(1),
      I4 => a(7),
      I5 => a(6),
      O => \spo[19]_INST_0_i_6_n_0\
    );
\spo[19]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"182260000000015C"
    )
        port map (
      I0 => a(6),
      I1 => a(7),
      I2 => a(4),
      I3 => a(2),
      I4 => a(1),
      I5 => a(0),
      O => \spo[19]_INST_0_i_7_n_0\
    );
\spo[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888808080"
    )
        port map (
      I0 => \spo[11]_INST_0_i_1_n_0\,
      I1 => \spo[11]_INST_0_i_3_n_0\,
      I2 => \spo[1]_INST_0_i_1_n_0\,
      I3 => \spo[1]_INST_0_i_2_n_0\,
      I4 => \spo[11]_INST_0_i_2_n_0\,
      I5 => \spo[1]_INST_0_i_3_n_0\,
      O => spo(1)
    );
\spo[1]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA808"
    )
        port map (
      I0 => \spo[1]_INST_0_i_4_n_0\,
      I1 => \spo[1]_INST_0_i_5_n_0\,
      I2 => a(7),
      I3 => \spo[1]_INST_0_i_6_n_0\,
      I4 => \spo[1]_INST_0_i_7_n_0\,
      O => \spo[1]_INST_0_i_1_n_0\
    );
\spo[1]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8FFFFC2FFD1FF9FF"
    )
        port map (
      I0 => a(7),
      I1 => a(1),
      I2 => a(0),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => \spo[1]_INST_0_i_10_n_0\
    );
\spo[1]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"310033FC315F33FF"
    )
        port map (
      I0 => a(4),
      I1 => a(7),
      I2 => a(1),
      I3 => a(5),
      I4 => a(3),
      I5 => a(0),
      O => \spo[1]_INST_0_i_11_n_0\
    );
\spo[1]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"010111310103FD13"
    )
        port map (
      I0 => a(3),
      I1 => a(5),
      I2 => a(0),
      I3 => a(1),
      I4 => a(4),
      I5 => a(7),
      O => \spo[1]_INST_0_i_12_n_0\
    );
\spo[1]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCCCDCECCCF"
    )
        port map (
      I0 => a(4),
      I1 => \spo[1]_INST_0_i_8_n_0\,
      I2 => a(3),
      I3 => a(0),
      I4 => a(7),
      I5 => a(5),
      O => \spo[1]_INST_0_i_2_n_0\
    );
\spo[1]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA808"
    )
        port map (
      I0 => \spo[1]_INST_0_i_9_n_0\,
      I1 => \spo[1]_INST_0_i_10_n_0\,
      I2 => a(6),
      I3 => \spo[1]_INST_0_i_11_n_0\,
      I4 => \spo[1]_INST_0_i_12_n_0\,
      O => \spo[1]_INST_0_i_3_n_0\
    );
\spo[1]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => a(9),
      I1 => a(2),
      I2 => a(8),
      O => \spo[1]_INST_0_i_4_n_0\
    );
\spo[1]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CBFFF3FF5DCFDFF0"
    )
        port map (
      I0 => a(6),
      I1 => a(3),
      I2 => a(5),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[1]_INST_0_i_5_n_0\
    );
\spo[1]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00C332C20003020F"
    )
        port map (
      I0 => a(3),
      I1 => a(4),
      I2 => a(0),
      I3 => a(6),
      I4 => a(5),
      I5 => a(1),
      O => \spo[1]_INST_0_i_6_n_0\
    );
\spo[1]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"51104544"
    )
        port map (
      I0 => a(6),
      I1 => a(0),
      I2 => a(5),
      I3 => a(4),
      I4 => a(3),
      O => \spo[1]_INST_0_i_7_n_0\
    );
\spo[1]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000001A000FF0100"
    )
        port map (
      I0 => a(1),
      I1 => a(4),
      I2 => a(5),
      I3 => a(0),
      I4 => a(6),
      I5 => a(7),
      O => \spo[1]_INST_0_i_8_n_0\
    );
\spo[1]_INST_0_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => a(2),
      I1 => a(9),
      I2 => a(8),
      O => \spo[1]_INST_0_i_9_n_0\
    );
\spo[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \spo[20]_INST_0_i_1_n_0\,
      I1 => \spo[29]_INST_0_i_2_n_0\,
      I2 => a(13),
      O => spo(20)
    );
\spo[20]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \spo[20]_INST_0_i_2_n_0\,
      I1 => \spo[20]_INST_0_i_3_n_0\,
      I2 => a(5),
      I3 => a(4),
      I4 => \spo[20]_INST_0_i_4_n_0\,
      I5 => \spo[20]_INST_0_i_5_n_0\,
      O => \spo[20]_INST_0_i_1_n_0\
    );
\spo[20]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0018000220080084"
    )
        port map (
      I0 => a(0),
      I1 => a(3),
      I2 => a(2),
      I3 => a(7),
      I4 => a(6),
      I5 => a(1),
      O => \spo[20]_INST_0_i_2_n_0\
    );
\spo[20]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020642800204"
    )
        port map (
      I0 => a(0),
      I1 => a(2),
      I2 => a(6),
      I3 => a(3),
      I4 => a(1),
      I5 => a(7),
      O => \spo[20]_INST_0_i_3_n_0\
    );
\spo[20]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8804000450CA800"
    )
        port map (
      I0 => a(7),
      I1 => a(1),
      I2 => a(6),
      I3 => a(2),
      I4 => a(3),
      I5 => a(0),
      O => \spo[20]_INST_0_i_4_n_0\
    );
\spo[20]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0090002420800040"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(7),
      I4 => a(3),
      I5 => a(6),
      O => \spo[20]_INST_0_i_5_n_0\
    );
\spo[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAA80AA80AA80"
    )
        port map (
      I0 => \spo[31]_INST_0_i_1_n_0\,
      I1 => \spo[21]_INST_0_i_1_n_0\,
      I2 => \spo[21]_INST_0_i_2_n_0\,
      I3 => \spo[21]_INST_0_i_3_n_0\,
      I4 => \spo[21]_INST_0_i_4_n_0\,
      I5 => \spo[21]_INST_0_i_5_n_0\,
      O => spo(21)
    );
\spo[21]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => a(7),
      I1 => a(8),
      I2 => a(4),
      O => \spo[21]_INST_0_i_1_n_0\
    );
\spo[21]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800080018010"
    )
        port map (
      I0 => a(2),
      I1 => a(3),
      I2 => a(0),
      I3 => a(1),
      I4 => a(7),
      I5 => a(6),
      O => \spo[21]_INST_0_i_10_n_0\
    );
\spo[21]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0808000008811008"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(5),
      I4 => a(3),
      I5 => a(6),
      O => \spo[21]_INST_0_i_2_n_0\
    );
\spo[21]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000800080A0A0008"
    )
        port map (
      I0 => \spo[21]_INST_0_i_6_n_0\,
      I1 => \spo[21]_INST_0_i_7_n_0\,
      I2 => a(6),
      I3 => a(3),
      I4 => \spo[21]_INST_0_i_8_n_0\,
      I5 => a(5),
      O => \spo[21]_INST_0_i_3_n_0\
    );
\spo[21]_INST_0_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[21]_INST_0_i_9_n_0\,
      I1 => \spo[21]_INST_0_i_10_n_0\,
      O => \spo[21]_INST_0_i_4_n_0\,
      S => a(5)
    );
\spo[21]_INST_0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => a(4),
      I1 => a(8),
      O => \spo[21]_INST_0_i_5_n_0\
    );
\spo[21]_INST_0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => a(8),
      I1 => a(7),
      I2 => a(4),
      O => \spo[21]_INST_0_i_6_n_0\
    );
\spo[21]_INST_0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => a(2),
      I1 => a(1),
      I2 => a(0),
      O => \spo[21]_INST_0_i_7_n_0\
    );
\spo[21]_INST_0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => a(1),
      I1 => a(0),
      I2 => a(3),
      I3 => a(2),
      O => \spo[21]_INST_0_i_8_n_0\
    );
\spo[21]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000800000001201"
    )
        port map (
      I0 => a(3),
      I1 => a(6),
      I2 => a(0),
      I3 => a(2),
      I4 => a(1),
      I5 => a(7),
      O => \spo[21]_INST_0_i_9_n_0\
    );
\spo[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAA80AA80AA80"
    )
        port map (
      I0 => \spo[31]_INST_0_i_1_n_0\,
      I1 => \spo[22]_INST_0_i_1_n_0\,
      I2 => \spo[22]_INST_0_i_2_n_0\,
      I3 => \spo[22]_INST_0_i_3_n_0\,
      I4 => \spo[22]_INST_0_i_4_n_0\,
      I5 => \spo[22]_INST_0_i_5_n_0\,
      O => spo(22)
    );
\spo[22]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => a(6),
      I1 => a(8),
      I2 => a(7),
      O => \spo[22]_INST_0_i_1_n_0\
    );
\spo[22]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400000000010002"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(1),
      I3 => a(0),
      I4 => a(3),
      I5 => a(2),
      O => \spo[22]_INST_0_i_2_n_0\
    );
\spo[22]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0808000008000000"
    )
        port map (
      I0 => a(7),
      I1 => a(6),
      I2 => a(8),
      I3 => \spo[22]_INST_0_i_6_n_0\,
      I4 => \spo[22]_INST_0_i_7_n_0\,
      I5 => \spo[25]_INST_0_i_5_n_0\,
      O => \spo[22]_INST_0_i_3_n_0\
    );
\spo[22]_INST_0_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[22]_INST_0_i_8_n_0\,
      I1 => \spo[22]_INST_0_i_9_n_0\,
      O => \spo[22]_INST_0_i_4_n_0\,
      S => a(5)
    );
\spo[22]_INST_0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => a(7),
      I1 => a(8),
      O => \spo[22]_INST_0_i_5_n_0\
    );
\spo[22]_INST_0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(3),
      I3 => a(2),
      O => \spo[22]_INST_0_i_6_n_0\
    );
\spo[22]_INST_0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => a(4),
      I1 => a(5),
      O => \spo[22]_INST_0_i_7_n_0\
    );
\spo[22]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2C50840200840800"
    )
        port map (
      I0 => a(4),
      I1 => a(6),
      I2 => a(2),
      I3 => a(0),
      I4 => a(1),
      I5 => a(3),
      O => \spo[22]_INST_0_i_8_n_0\
    );
\spo[22]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1280401A20000100"
    )
        port map (
      I0 => a(4),
      I1 => a(6),
      I2 => a(1),
      I3 => a(0),
      I4 => a(3),
      I5 => a(2),
      O => \spo[22]_INST_0_i_9_n_0\
    );
\spo[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAA808080"
    )
        port map (
      I0 => \spo[31]_INST_0_i_1_n_0\,
      I1 => \spo[23]_INST_0_i_1_n_0\,
      I2 => \spo[23]_INST_0_i_2_n_0\,
      I3 => \spo[23]_INST_0_i_3_n_0\,
      I4 => \spo[23]_INST_0_i_4_n_0\,
      I5 => \spo[23]_INST_0_i_5_n_0\,
      O => spo(23)
    );
\spo[23]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => a(7),
      I1 => a(8),
      I2 => a(6),
      O => \spo[23]_INST_0_i_1_n_0\
    );
\spo[23]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00404280A1004100"
    )
        port map (
      I0 => a(2),
      I1 => a(3),
      I2 => a(0),
      I3 => a(1),
      I4 => a(5),
      I5 => a(4),
      O => \spo[23]_INST_0_i_2_n_0\
    );
\spo[23]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => a(2),
      I1 => a(3),
      I2 => a(0),
      I3 => a(1),
      I4 => a(5),
      I5 => a(4),
      O => \spo[23]_INST_0_i_3_n_0\
    );
\spo[23]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => a(8),
      I1 => a(7),
      I2 => a(6),
      O => \spo[23]_INST_0_i_4_n_0\
    );
\spo[23]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111100000001000"
    )
        port map (
      I0 => a(8),
      I1 => a(6),
      I2 => \spo[23]_INST_0_i_6_n_0\,
      I3 => \spo[25]_INST_0_i_5_n_0\,
      I4 => a(5),
      I5 => \spo[23]_INST_0_i_7_n_0\,
      O => \spo[23]_INST_0_i_5_n_0\
    );
\spo[23]_INST_0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => a(4),
      I1 => a(7),
      O => \spo[23]_INST_0_i_6_n_0\
    );
\spo[23]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000120801040"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(4),
      I4 => a(3),
      I5 => a(7),
      O => \spo[23]_INST_0_i_7_n_0\
    );
\spo[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A8A8A8A8AAA8"
    )
        port map (
      I0 => \spo[31]_INST_0_i_1_n_0\,
      I1 => \spo[24]_INST_0_i_1_n_0\,
      I2 => \spo[24]_INST_0_i_2_n_0\,
      I3 => \spo[24]_INST_0_i_3_n_0\,
      I4 => a(1),
      I5 => a(8),
      O => spo(24)
    );
\spo[24]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => a(1),
      I1 => a(6),
      I2 => a(8),
      I3 => \spo[24]_INST_0_i_4_n_0\,
      O => \spo[24]_INST_0_i_1_n_0\
    );
\spo[24]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => a(1),
      I1 => a(8),
      I2 => a(6),
      I3 => \spo[24]_INST_0_i_5_n_0\,
      O => \spo[24]_INST_0_i_2_n_0\
    );
\spo[24]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[24]_INST_0_i_6_n_0\,
      I1 => \spo[24]_INST_0_i_7_n_0\,
      O => \spo[24]_INST_0_i_3_n_0\,
      S => a(7)
    );
\spo[24]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0012001040028000"
    )
        port map (
      I0 => a(0),
      I1 => a(2),
      I2 => a(4),
      I3 => a(5),
      I4 => a(3),
      I5 => a(7),
      O => \spo[24]_INST_0_i_4_n_0\
    );
\spo[24]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000080400400444"
    )
        port map (
      I0 => a(0),
      I1 => a(3),
      I2 => a(7),
      I3 => a(5),
      I4 => a(4),
      I5 => a(2),
      O => \spo[24]_INST_0_i_5_n_0\
    );
\spo[24]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0482400080900008"
    )
        port map (
      I0 => a(0),
      I1 => a(2),
      I2 => a(3),
      I3 => a(5),
      I4 => a(4),
      I5 => a(6),
      O => \spo[24]_INST_0_i_6_n_0\
    );
\spo[24]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000211440840000"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(0),
      I3 => a(2),
      I4 => a(5),
      I5 => a(6),
      O => \spo[24]_INST_0_i_7_n_0\
    );
\spo[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A8A8A8A8AAA8"
    )
        port map (
      I0 => \spo[31]_INST_0_i_1_n_0\,
      I1 => \spo[25]_INST_0_i_1_n_0\,
      I2 => \spo[25]_INST_0_i_2_n_0\,
      I3 => \spo[25]_INST_0_i_3_n_0\,
      I4 => a(5),
      I5 => a(8),
      O => spo(25)
    );
\spo[25]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(8),
      I3 => \spo[25]_INST_0_i_4_n_0\,
      O => \spo[25]_INST_0_i_1_n_0\
    );
\spo[25]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020000000000"
    )
        port map (
      I0 => a(5),
      I1 => a(8),
      I2 => a(4),
      I3 => a(6),
      I4 => a(7),
      I5 => \spo[25]_INST_0_i_5_n_0\,
      O => \spo[25]_INST_0_i_2_n_0\
    );
\spo[25]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[25]_INST_0_i_6_n_0\,
      I1 => \spo[25]_INST_0_i_7_n_0\,
      O => \spo[25]_INST_0_i_3_n_0\,
      S => a(7)
    );
\spo[25]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0021010900000A08"
    )
        port map (
      I0 => a(0),
      I1 => a(3),
      I2 => a(1),
      I3 => a(7),
      I4 => a(6),
      I5 => a(2),
      O => \spo[25]_INST_0_i_4_n_0\
    );
\spo[25]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => a(1),
      I1 => a(0),
      I2 => a(3),
      I3 => a(2),
      O => \spo[25]_INST_0_i_5_n_0\
    );
\spo[25]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0900008018040000"
    )
        port map (
      I0 => a(2),
      I1 => a(3),
      I2 => a(1),
      I3 => a(0),
      I4 => a(4),
      I5 => a(6),
      O => \spo[25]_INST_0_i_6_n_0\
    );
\spo[25]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020001001000"
    )
        port map (
      I0 => a(4),
      I1 => a(6),
      I2 => a(0),
      I3 => a(1),
      I4 => a(2),
      I5 => a(3),
      O => \spo[25]_INST_0_i_7_n_0\
    );
\spo[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A8A8A8A8AAA8"
    )
        port map (
      I0 => \spo[31]_INST_0_i_1_n_0\,
      I1 => \spo[26]_INST_0_i_1_n_0\,
      I2 => \spo[26]_INST_0_i_2_n_0\,
      I3 => \spo[26]_INST_0_i_3_n_0\,
      I4 => a(1),
      I5 => a(8),
      O => spo(26)
    );
\spo[26]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => a(1),
      I1 => a(3),
      I2 => a(8),
      I3 => \spo[26]_INST_0_i_4_n_0\,
      O => \spo[26]_INST_0_i_1_n_0\
    );
\spo[26]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => a(1),
      I1 => a(8),
      I2 => a(3),
      I3 => \spo[26]_INST_0_i_5_n_0\,
      O => \spo[26]_INST_0_i_2_n_0\
    );
\spo[26]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[26]_INST_0_i_6_n_0\,
      I1 => \spo[26]_INST_0_i_7_n_0\,
      O => \spo[26]_INST_0_i_3_n_0\,
      S => a(5)
    );
\spo[26]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0030408809018007"
    )
        port map (
      I0 => a(2),
      I1 => a(5),
      I2 => a(6),
      I3 => a(4),
      I4 => a(7),
      I5 => a(0),
      O => \spo[26]_INST_0_i_4_n_0\
    );
\spo[26]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010800401380820"
    )
        port map (
      I0 => a(4),
      I1 => a(6),
      I2 => a(0),
      I3 => a(2),
      I4 => a(7),
      I5 => a(5),
      O => \spo[26]_INST_0_i_5_n_0\
    );
\spo[26]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5201000880001881"
    )
        port map (
      I0 => a(6),
      I1 => a(7),
      I2 => a(2),
      I3 => a(0),
      I4 => a(4),
      I5 => a(3),
      O => \spo[26]_INST_0_i_6_n_0\
    );
\spo[26]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"011202002850E10C"
    )
        port map (
      I0 => a(3),
      I1 => a(7),
      I2 => a(4),
      I3 => a(0),
      I4 => a(2),
      I5 => a(6),
      O => \spo[26]_INST_0_i_7_n_0\
    );
\spo[27]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \spo[27]_INST_0_i_1_n_0\,
      I1 => \spo[29]_INST_0_i_2_n_0\,
      I2 => a(13),
      O => spo(27)
    );
\spo[27]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \spo[27]_INST_0_i_2_n_0\,
      I1 => \spo[27]_INST_0_i_3_n_0\,
      I2 => a(4),
      I3 => a(1),
      I4 => \spo[27]_INST_0_i_4_n_0\,
      I5 => \spo[27]_INST_0_i_5_n_0\,
      O => \spo[27]_INST_0_i_1_n_0\
    );
\spo[27]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0081880402860404"
    )
        port map (
      I0 => a(0),
      I1 => a(3),
      I2 => a(6),
      I3 => a(5),
      I4 => a(7),
      I5 => a(2),
      O => \spo[27]_INST_0_i_2_n_0\
    );
\spo[27]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001488001800100"
    )
        port map (
      I0 => a(3),
      I1 => a(5),
      I2 => a(2),
      I3 => a(0),
      I4 => a(7),
      I5 => a(6),
      O => \spo[27]_INST_0_i_3_n_0\
    );
\spo[27]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0220801C04481001"
    )
        port map (
      I0 => a(3),
      I1 => a(7),
      I2 => a(0),
      I3 => a(2),
      I4 => a(6),
      I5 => a(5),
      O => \spo[27]_INST_0_i_4_n_0\
    );
\spo[27]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1500500104708000"
    )
        port map (
      I0 => a(6),
      I1 => a(7),
      I2 => a(2),
      I3 => a(0),
      I4 => a(5),
      I5 => a(3),
      O => \spo[27]_INST_0_i_5_n_0\
    );
\spo[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA00200000"
    )
        port map (
      I0 => \spo[31]_INST_0_i_1_n_0\,
      I1 => a(7),
      I2 => a(6),
      I3 => a(8),
      I4 => \spo[28]_INST_0_i_1_n_0\,
      I5 => \spo[28]_INST_0_i_2_n_0\,
      O => spo(28)
    );
\spo[28]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0014510804430000"
    )
        port map (
      I0 => a(5),
      I1 => a(2),
      I2 => a(3),
      I3 => a(4),
      I4 => a(1),
      I5 => a(0),
      O => \spo[28]_INST_0_i_1_n_0\
    );
\spo[28]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => a(7),
      I1 => a(4),
      I2 => a(8),
      I3 => a(5),
      I4 => a(6),
      I5 => \spo[28]_INST_0_i_3_n_0\,
      O => \spo[28]_INST_0_i_2_n_0\
    );
\spo[28]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      O => \spo[28]_INST_0_i_3_n_0\
    );
\spo[29]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \spo[29]_INST_0_i_1_n_0\,
      I1 => \spo[29]_INST_0_i_2_n_0\,
      I2 => a(13),
      O => spo(29)
    );
\spo[29]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0C0C0C0FF00AAAA"
    )
        port map (
      I0 => \spo[29]_INST_0_i_3_n_0\,
      I1 => a(0),
      I2 => \spo[29]_INST_0_i_4_n_0\,
      I3 => \spo[29]_INST_0_i_5_n_0\,
      I4 => a(5),
      I5 => a(6),
      O => \spo[29]_INST_0_i_1_n_0\
    );
\spo[29]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => a(8),
      I1 => a(9),
      I2 => a(10),
      I3 => a(12),
      I4 => a(11),
      O => \spo[29]_INST_0_i_2_n_0\
    );
\spo[29]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4800004000000000"
    )
        port map (
      I0 => a(4),
      I1 => a(7),
      I2 => a(1),
      I3 => a(0),
      I4 => a(3),
      I5 => a(2),
      O => \spo[29]_INST_0_i_3_n_0\
    );
\spo[29]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100001201000100"
    )
        port map (
      I0 => a(5),
      I1 => a(7),
      I2 => a(1),
      I3 => a(4),
      I4 => a(3),
      I5 => a(2),
      O => \spo[29]_INST_0_i_4_n_0\
    );
\spo[29]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0108002408088002"
    )
        port map (
      I0 => a(0),
      I1 => a(3),
      I2 => a(1),
      I3 => a(2),
      I4 => a(4),
      I5 => a(7),
      O => \spo[29]_INST_0_i_5_n_0\
    );
\spo[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0088008000080000"
    )
        port map (
      I0 => \spo[13]_INST_0_i_1_n_0\,
      I1 => \spo[13]_INST_0_i_2_n_0\,
      I2 => a(7),
      I3 => a(8),
      I4 => \spo[13]_INST_0_i_3_n_0\,
      I5 => \spo[2]_INST_0_i_1_n_0\,
      O => spo(2)
    );
\spo[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010020001000000"
    )
        port map (
      I0 => a(6),
      I1 => a(5),
      I2 => a(2),
      I3 => a(1),
      I4 => a(4),
      I5 => a(3),
      O => \spo[2]_INST_0_i_1_n_0\
    );
\spo[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA00200000"
    )
        port map (
      I0 => \spo[31]_INST_0_i_1_n_0\,
      I1 => a(7),
      I2 => a(0),
      I3 => a(8),
      I4 => \spo[30]_INST_0_i_1_n_0\,
      I5 => \spo[30]_INST_0_i_2_n_0\,
      O => spo(30)
    );
\spo[30]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4100100800000800"
    )
        port map (
      I0 => a(3),
      I1 => a(4),
      I2 => a(1),
      I3 => a(2),
      I4 => a(5),
      I5 => a(6),
      O => \spo[30]_INST_0_i_1_n_0\
    );
\spo[30]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => a(7),
      I1 => a(5),
      I2 => a(8),
      I3 => \spo[30]_INST_0_i_3_n_0\,
      O => \spo[30]_INST_0_i_2_n_0\
    );
\spo[30]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004200001004"
    )
        port map (
      I0 => a(2),
      I1 => a(3),
      I2 => a(0),
      I3 => a(1),
      I4 => a(6),
      I5 => a(4),
      O => \spo[30]_INST_0_i_3_n_0\
    );
\spo[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAA8888888"
    )
        port map (
      I0 => \spo[31]_INST_0_i_1_n_0\,
      I1 => \spo[31]_INST_0_i_2_n_0\,
      I2 => \spo[31]_INST_0_i_3_n_0\,
      I3 => \spo[31]_INST_0_i_4_n_0\,
      I4 => a(4),
      I5 => \spo[31]_INST_0_i_5_n_0\,
      O => spo(31)
    );
\spo[31]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => a(9),
      I1 => a(10),
      I2 => a(11),
      I3 => a(13),
      I4 => a(12),
      O => \spo[31]_INST_0_i_1_n_0\
    );
\spo[31]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => a(4),
      I1 => a(8),
      I2 => a(6),
      I3 => \spo[31]_INST_0_i_6_n_0\,
      O => \spo[31]_INST_0_i_2_n_0\
    );
\spo[31]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040420000000000"
    )
        port map (
      I0 => a(7),
      I1 => a(5),
      I2 => a(1),
      I3 => a(0),
      I4 => a(3),
      I5 => a(2),
      O => \spo[31]_INST_0_i_3_n_0\
    );
\spo[31]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => a(6),
      I1 => a(8),
      O => \spo[31]_INST_0_i_4_n_0\
    );
\spo[31]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11100010"
    )
        port map (
      I0 => a(8),
      I1 => a(4),
      I2 => \spo[31]_INST_0_i_7_n_0\,
      I3 => a(5),
      I4 => \spo[31]_INST_0_i_8_n_0\,
      O => \spo[31]_INST_0_i_5_n_0\
    );
\spo[31]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"020A040009080020"
    )
        port map (
      I0 => a(0),
      I1 => a(2),
      I2 => a(1),
      I3 => a(7),
      I4 => a(3),
      I5 => a(5),
      O => \spo[31]_INST_0_i_6_n_0\
    );
\spo[31]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4002200086000400"
    )
        port map (
      I0 => a(2),
      I1 => a(3),
      I2 => a(0),
      I3 => a(1),
      I4 => a(7),
      I5 => a(6),
      O => \spo[31]_INST_0_i_7_n_0\
    );
\spo[31]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000408200002412"
    )
        port map (
      I0 => a(7),
      I1 => a(2),
      I2 => a(0),
      I3 => a(1),
      I4 => a(6),
      I5 => a(3),
      O => \spo[31]_INST_0_i_8_n_0\
    );
\spo[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAA80AA80AA80"
    )
        port map (
      I0 => \spo[31]_INST_0_i_1_n_0\,
      I1 => \spo[23]_INST_0_i_1_n_0\,
      I2 => \spo[3]_INST_0_i_1_n_0\,
      I3 => \spo[3]_INST_0_i_2_n_0\,
      I4 => \spo[3]_INST_0_i_3_n_0\,
      I5 => \spo[3]_INST_0_i_4_n_0\,
      O => spo(3)
    );
\spo[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000004000202000"
    )
        port map (
      I0 => a(2),
      I1 => a(3),
      I2 => a(0),
      I3 => a(1),
      I4 => a(5),
      I5 => a(4),
      O => \spo[3]_INST_0_i_1_n_0\
    );
\spo[3]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0808000008000000"
    )
        port map (
      I0 => a(6),
      I1 => a(7),
      I2 => a(8),
      I3 => \spo[3]_INST_0_i_5_n_0\,
      I4 => \spo[22]_INST_0_i_7_n_0\,
      I5 => \spo[3]_INST_0_i_6_n_0\,
      O => \spo[3]_INST_0_i_2_n_0\
    );
\spo[3]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[3]_INST_0_i_7_n_0\,
      I1 => \spo[3]_INST_0_i_8_n_0\,
      O => \spo[3]_INST_0_i_3_n_0\,
      S => a(5)
    );
\spo[3]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => a(6),
      I1 => a(8),
      O => \spo[3]_INST_0_i_4_n_0\
    );
\spo[3]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => a(1),
      I1 => a(0),
      I2 => a(3),
      I3 => a(2),
      O => \spo[3]_INST_0_i_5_n_0\
    );
\spo[3]_INST_0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => a(1),
      I1 => a(0),
      I2 => a(2),
      I3 => a(3),
      O => \spo[3]_INST_0_i_6_n_0\
    );
\spo[3]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1004008082000400"
    )
        port map (
      I0 => a(2),
      I1 => a(3),
      I2 => a(0),
      I3 => a(1),
      I4 => a(7),
      I5 => a(4),
      O => \spo[3]_INST_0_i_7_n_0\
    );
\spo[3]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0042108400400200"
    )
        port map (
      I0 => a(2),
      I1 => a(3),
      I2 => a(0),
      I3 => a(1),
      I4 => a(4),
      I5 => a(7),
      O => \spo[3]_INST_0_i_8_n_0\
    );
\spo[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A8A8A8A8AAA8"
    )
        port map (
      I0 => \spo[31]_INST_0_i_1_n_0\,
      I1 => \spo[4]_INST_0_i_1_n_0\,
      I2 => \spo[4]_INST_0_i_2_n_0\,
      I3 => \spo[4]_INST_0_i_3_n_0\,
      I4 => a(3),
      I5 => a(8),
      O => spo(4)
    );
\spo[4]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => a(3),
      I1 => a(2),
      I2 => a(8),
      I3 => \spo[4]_INST_0_i_4_n_0\,
      O => \spo[4]_INST_0_i_1_n_0\
    );
\spo[4]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => a(3),
      I1 => a(8),
      I2 => a(2),
      I3 => \spo[4]_INST_0_i_5_n_0\,
      O => \spo[4]_INST_0_i_2_n_0\
    );
\spo[4]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[4]_INST_0_i_6_n_0\,
      I1 => \spo[4]_INST_0_i_7_n_0\,
      O => \spo[4]_INST_0_i_3_n_0\,
      S => a(7)
    );
\spo[4]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200020802002809"
    )
        port map (
      I0 => a(0),
      I1 => a(4),
      I2 => a(6),
      I3 => a(7),
      I4 => a(5),
      I5 => a(1),
      O => \spo[4]_INST_0_i_4_n_0\
    );
\spo[4]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"020000054D00C012"
    )
        port map (
      I0 => a(1),
      I1 => a(4),
      I2 => a(5),
      I3 => a(0),
      I4 => a(6),
      I5 => a(7),
      O => \spo[4]_INST_0_i_5_n_0\
    );
\spo[4]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8084008000820000"
    )
        port map (
      I0 => a(0),
      I1 => a(2),
      I2 => a(6),
      I3 => a(4),
      I4 => a(5),
      I5 => a(1),
      O => \spo[4]_INST_0_i_6_n_0\
    );
\spo[4]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0084002400040020"
    )
        port map (
      I0 => a(0),
      I1 => a(2),
      I2 => a(4),
      I3 => a(5),
      I4 => a(6),
      I5 => a(1),
      O => \spo[4]_INST_0_i_7_n_0\
    );
\spo[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => a(12),
      I1 => a(13),
      I2 => a(7),
      I3 => a(11),
      I4 => \spo[5]_INST_0_i_1_n_0\,
      O => spo(5)
    );
\spo[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"008800F000000000"
    )
        port map (
      I0 => \spo[5]_INST_0_i_2_n_0\,
      I1 => \spo[5]_INST_0_i_3_n_0\,
      I2 => \spo[5]_INST_0_i_4_n_0\,
      I3 => a(8),
      I4 => a(6),
      I5 => \spo[13]_INST_0_i_2_n_0\,
      O => \spo[5]_INST_0_i_1_n_0\
    );
\spo[5]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => a(1),
      I1 => a(0),
      I2 => a(3),
      I3 => a(2),
      O => \spo[5]_INST_0_i_2_n_0\
    );
\spo[5]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => a(4),
      I1 => a(5),
      O => \spo[5]_INST_0_i_3_n_0\
    );
\spo[5]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0042100400000000"
    )
        port map (
      I0 => a(2),
      I1 => a(3),
      I2 => a(0),
      I3 => a(1),
      I4 => a(4),
      I5 => a(5),
      O => \spo[5]_INST_0_i_4_n_0\
    );
\spo[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAA80AA80AA80"
    )
        port map (
      I0 => \spo[31]_INST_0_i_1_n_0\,
      I1 => \spo[10]_INST_0_i_2_n_0\,
      I2 => \spo[6]_INST_0_i_1_n_0\,
      I3 => \spo[6]_INST_0_i_2_n_0\,
      I4 => \spo[6]_INST_0_i_3_n_0\,
      I5 => \spo[22]_INST_0_i_5_n_0\,
      O => spo(6)
    );
\spo[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000800280181"
    )
        port map (
      I0 => a(0),
      I1 => a(2),
      I2 => a(6),
      I3 => a(4),
      I4 => a(1),
      I5 => a(5),
      O => \spo[6]_INST_0_i_1_n_0\
    );
\spo[6]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => a(7),
      I1 => a(8),
      I2 => a(3),
      I3 => \spo[6]_INST_0_i_4_n_0\,
      O => \spo[6]_INST_0_i_2_n_0\
    );
\spo[6]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[6]_INST_0_i_5_n_0\,
      I1 => \spo[6]_INST_0_i_6_n_0\,
      O => \spo[6]_INST_0_i_3_n_0\,
      S => a(6)
    );
\spo[6]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0084000400840020"
    )
        port map (
      I0 => a(0),
      I1 => a(2),
      I2 => a(4),
      I3 => a(5),
      I4 => a(6),
      I5 => a(1),
      O => \spo[6]_INST_0_i_4_n_0\
    );
\spo[6]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0180008280028200"
    )
        port map (
      I0 => a(3),
      I1 => a(4),
      I2 => a(0),
      I3 => a(2),
      I4 => a(1),
      I5 => a(5),
      O => \spo[6]_INST_0_i_5_n_0\
    );
\spo[6]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2008080820202008"
    )
        port map (
      I0 => a(0),
      I1 => a(3),
      I2 => a(2),
      I3 => a(5),
      I4 => a(1),
      I5 => a(4),
      O => \spo[6]_INST_0_i_6_n_0\
    );
\spo[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => a(4),
      I1 => \spo[7]_INST_0_i_1_n_0\,
      I2 => \spo[7]_INST_0_i_2_n_0\,
      I3 => a(3),
      I4 => \spo[11]_INST_0_i_3_n_0\,
      I5 => \spo[11]_INST_0_i_1_n_0\,
      O => spo(7)
    );
\spo[7]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => a(6),
      I1 => a(7),
      O => \spo[7]_INST_0_i_1_n_0\
    );
\spo[7]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000110"
    )
        port map (
      I0 => a(8),
      I1 => a(9),
      I2 => a(1),
      I3 => a(0),
      I4 => a(5),
      I5 => a(2),
      O => \spo[7]_INST_0_i_2_n_0\
    );
\spo[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAA80AA80AA80"
    )
        port map (
      I0 => \spo[31]_INST_0_i_1_n_0\,
      I1 => \spo[22]_INST_0_i_1_n_0\,
      I2 => \spo[8]_INST_0_i_1_n_0\,
      I3 => \spo[8]_INST_0_i_2_n_0\,
      I4 => \spo[8]_INST_0_i_3_n_0\,
      I5 => \spo[22]_INST_0_i_5_n_0\,
      O => spo(8)
    );
\spo[8]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000050402"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(1),
      I3 => a(0),
      I4 => a(3),
      I5 => a(2),
      O => \spo[8]_INST_0_i_1_n_0\
    );
\spo[8]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => a(7),
      I1 => a(6),
      I2 => a(8),
      I3 => a(4),
      I4 => a(5),
      I5 => \spo[25]_INST_0_i_5_n_0\,
      O => \spo[8]_INST_0_i_2_n_0\
    );
\spo[8]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[8]_INST_0_i_4_n_0\,
      I1 => \spo[8]_INST_0_i_5_n_0\,
      O => \spo[8]_INST_0_i_3_n_0\,
      S => a(4)
    );
\spo[8]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A010009080000008"
    )
        port map (
      I0 => a(2),
      I1 => a(3),
      I2 => a(1),
      I3 => a(0),
      I4 => a(5),
      I5 => a(6),
      O => \spo[8]_INST_0_i_4_n_0\
    );
\spo[8]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020008424900000"
    )
        port map (
      I0 => a(3),
      I1 => a(2),
      I2 => a(0),
      I3 => a(1),
      I4 => a(6),
      I5 => a(5),
      O => \spo[8]_INST_0_i_5_n_0\
    );
\spo[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \spo[9]_INST_0_i_1_n_0\,
      I1 => \spo[29]_INST_0_i_2_n_0\,
      I2 => a(13),
      O => spo(9)
    );
\spo[9]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0C0C0C0FF00AAAA"
    )
        port map (
      I0 => \spo[9]_INST_0_i_2_n_0\,
      I1 => a(0),
      I2 => \spo[9]_INST_0_i_3_n_0\,
      I3 => \spo[9]_INST_0_i_4_n_0\,
      I4 => a(5),
      I5 => a(7),
      O => \spo[9]_INST_0_i_1_n_0\
    );
\spo[9]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800001400008"
    )
        port map (
      I0 => a(2),
      I1 => a(3),
      I2 => a(0),
      I3 => a(1),
      I4 => a(6),
      I5 => a(4),
      O => \spo[9]_INST_0_i_2_n_0\
    );
\spo[9]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000240000000"
    )
        port map (
      I0 => a(5),
      I1 => a(6),
      I2 => a(2),
      I3 => a(1),
      I4 => a(3),
      I5 => a(4),
      O => \spo[9]_INST_0_i_3_n_0\
    );
\spo[9]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000408280008200"
    )
        port map (
      I0 => a(2),
      I1 => a(3),
      I2 => a(0),
      I3 => a(1),
      I4 => a(6),
      I5 => a(4),
      O => \spo[9]_INST_0_i_4_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12_synth is
  port (
    spo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    a : in STD_LOGIC_VECTOR ( 13 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12_synth;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12_synth is
begin
\gen_rom.rom_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rom
     port map (
      a(13 downto 0) => a(13 downto 0),
      spo(31 downto 0) => spo(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12 is
  port (
    a : in STD_LOGIC_VECTOR ( 13 downto 0 );
    d : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dpra : in STD_LOGIC_VECTOR ( 13 downto 0 );
    clk : in STD_LOGIC;
    we : in STD_LOGIC;
    i_ce : in STD_LOGIC;
    qspo_ce : in STD_LOGIC;
    qdpo_ce : in STD_LOGIC;
    qdpo_clk : in STD_LOGIC;
    qspo_rst : in STD_LOGIC;
    qdpo_rst : in STD_LOGIC;
    qspo_srst : in STD_LOGIC;
    qdpo_srst : in STD_LOGIC;
    spo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    dpo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    qspo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    qdpo : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute C_ADDR_WIDTH : integer;
  attribute C_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12 : entity is 14;
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12 : entity is "0";
  attribute C_DEPTH : integer;
  attribute C_DEPTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12 : entity is 16384;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12 : entity is "./";
  attribute C_FAMILY : string;
  attribute C_FAMILY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12 : entity is "zynq";
  attribute C_HAS_CLK : integer;
  attribute C_HAS_CLK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_D : integer;
  attribute C_HAS_D of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_DPO : integer;
  attribute C_HAS_DPO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_DPRA : integer;
  attribute C_HAS_DPRA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_I_CE : integer;
  attribute C_HAS_I_CE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_QDPO : integer;
  attribute C_HAS_QDPO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_QDPO_CE : integer;
  attribute C_HAS_QDPO_CE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_QDPO_CLK : integer;
  attribute C_HAS_QDPO_CLK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_QDPO_RST : integer;
  attribute C_HAS_QDPO_RST of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_QDPO_SRST : integer;
  attribute C_HAS_QDPO_SRST of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_QSPO : integer;
  attribute C_HAS_QSPO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_QSPO_CE : integer;
  attribute C_HAS_QSPO_CE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_QSPO_RST : integer;
  attribute C_HAS_QSPO_RST of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_QSPO_SRST : integer;
  attribute C_HAS_QSPO_SRST of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_SPO : integer;
  attribute C_HAS_SPO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12 : entity is 1;
  attribute C_HAS_WE : integer;
  attribute C_HAS_WE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_MEM_INIT_FILE : string;
  attribute C_MEM_INIT_FILE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12 : entity is "inst_rom.mif";
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_PARSER_TYPE : integer;
  attribute C_PARSER_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12 : entity is 1;
  attribute C_PIPELINE_STAGES : integer;
  attribute C_PIPELINE_STAGES of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_QCE_JOINED : integer;
  attribute C_QCE_JOINED of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_QUALIFY_WE : integer;
  attribute C_QUALIFY_WE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_READ_MIF : integer;
  attribute C_READ_MIF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12 : entity is 1;
  attribute C_REG_A_D_INPUTS : integer;
  attribute C_REG_A_D_INPUTS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_REG_DPRA_INPUT : integer;
  attribute C_REG_DPRA_INPUT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_SYNC_ENABLE : integer;
  attribute C_SYNC_ENABLE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12 : entity is 1;
  attribute C_WIDTH : integer;
  attribute C_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12 : entity is 32;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12 is
  signal \<const0>\ : STD_LOGIC;
begin
  dpo(31) <= \<const0>\;
  dpo(30) <= \<const0>\;
  dpo(29) <= \<const0>\;
  dpo(28) <= \<const0>\;
  dpo(27) <= \<const0>\;
  dpo(26) <= \<const0>\;
  dpo(25) <= \<const0>\;
  dpo(24) <= \<const0>\;
  dpo(23) <= \<const0>\;
  dpo(22) <= \<const0>\;
  dpo(21) <= \<const0>\;
  dpo(20) <= \<const0>\;
  dpo(19) <= \<const0>\;
  dpo(18) <= \<const0>\;
  dpo(17) <= \<const0>\;
  dpo(16) <= \<const0>\;
  dpo(15) <= \<const0>\;
  dpo(14) <= \<const0>\;
  dpo(13) <= \<const0>\;
  dpo(12) <= \<const0>\;
  dpo(11) <= \<const0>\;
  dpo(10) <= \<const0>\;
  dpo(9) <= \<const0>\;
  dpo(8) <= \<const0>\;
  dpo(7) <= \<const0>\;
  dpo(6) <= \<const0>\;
  dpo(5) <= \<const0>\;
  dpo(4) <= \<const0>\;
  dpo(3) <= \<const0>\;
  dpo(2) <= \<const0>\;
  dpo(1) <= \<const0>\;
  dpo(0) <= \<const0>\;
  qdpo(31) <= \<const0>\;
  qdpo(30) <= \<const0>\;
  qdpo(29) <= \<const0>\;
  qdpo(28) <= \<const0>\;
  qdpo(27) <= \<const0>\;
  qdpo(26) <= \<const0>\;
  qdpo(25) <= \<const0>\;
  qdpo(24) <= \<const0>\;
  qdpo(23) <= \<const0>\;
  qdpo(22) <= \<const0>\;
  qdpo(21) <= \<const0>\;
  qdpo(20) <= \<const0>\;
  qdpo(19) <= \<const0>\;
  qdpo(18) <= \<const0>\;
  qdpo(17) <= \<const0>\;
  qdpo(16) <= \<const0>\;
  qdpo(15) <= \<const0>\;
  qdpo(14) <= \<const0>\;
  qdpo(13) <= \<const0>\;
  qdpo(12) <= \<const0>\;
  qdpo(11) <= \<const0>\;
  qdpo(10) <= \<const0>\;
  qdpo(9) <= \<const0>\;
  qdpo(8) <= \<const0>\;
  qdpo(7) <= \<const0>\;
  qdpo(6) <= \<const0>\;
  qdpo(5) <= \<const0>\;
  qdpo(4) <= \<const0>\;
  qdpo(3) <= \<const0>\;
  qdpo(2) <= \<const0>\;
  qdpo(1) <= \<const0>\;
  qdpo(0) <= \<const0>\;
  qspo(31) <= \<const0>\;
  qspo(30) <= \<const0>\;
  qspo(29) <= \<const0>\;
  qspo(28) <= \<const0>\;
  qspo(27) <= \<const0>\;
  qspo(26) <= \<const0>\;
  qspo(25) <= \<const0>\;
  qspo(24) <= \<const0>\;
  qspo(23) <= \<const0>\;
  qspo(22) <= \<const0>\;
  qspo(21) <= \<const0>\;
  qspo(20) <= \<const0>\;
  qspo(19) <= \<const0>\;
  qspo(18) <= \<const0>\;
  qspo(17) <= \<const0>\;
  qspo(16) <= \<const0>\;
  qspo(15) <= \<const0>\;
  qspo(14) <= \<const0>\;
  qspo(13) <= \<const0>\;
  qspo(12) <= \<const0>\;
  qspo(11) <= \<const0>\;
  qspo(10) <= \<const0>\;
  qspo(9) <= \<const0>\;
  qspo(8) <= \<const0>\;
  qspo(7) <= \<const0>\;
  qspo(6) <= \<const0>\;
  qspo(5) <= \<const0>\;
  qspo(4) <= \<const0>\;
  qspo(3) <= \<const0>\;
  qspo(2) <= \<const0>\;
  qspo(1) <= \<const0>\;
  qspo(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\synth_options.dist_mem_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12_synth
     port map (
      a(13 downto 0) => a(13 downto 0),
      spo(31 downto 0) => spo(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    a : in STD_LOGIC_VECTOR ( 13 downto 0 );
    spo : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "inst_rom,dist_mem_gen_v8_0_12,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "dist_mem_gen_v8_0_12,Vivado 2018.3";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal NLW_U0_dpo_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_qdpo_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_qspo_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "zynq";
  attribute C_HAS_D : integer;
  attribute C_HAS_D of U0 : label is 0;
  attribute C_HAS_DPO : integer;
  attribute C_HAS_DPO of U0 : label is 0;
  attribute C_HAS_DPRA : integer;
  attribute C_HAS_DPRA of U0 : label is 0;
  attribute C_HAS_I_CE : integer;
  attribute C_HAS_I_CE of U0 : label is 0;
  attribute C_HAS_QDPO : integer;
  attribute C_HAS_QDPO of U0 : label is 0;
  attribute C_HAS_QDPO_CE : integer;
  attribute C_HAS_QDPO_CE of U0 : label is 0;
  attribute C_HAS_QDPO_CLK : integer;
  attribute C_HAS_QDPO_CLK of U0 : label is 0;
  attribute C_HAS_QDPO_RST : integer;
  attribute C_HAS_QDPO_RST of U0 : label is 0;
  attribute C_HAS_QDPO_SRST : integer;
  attribute C_HAS_QDPO_SRST of U0 : label is 0;
  attribute C_HAS_WE : integer;
  attribute C_HAS_WE of U0 : label is 0;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of U0 : label is 0;
  attribute C_PIPELINE_STAGES : integer;
  attribute C_PIPELINE_STAGES of U0 : label is 0;
  attribute C_QCE_JOINED : integer;
  attribute C_QCE_JOINED of U0 : label is 0;
  attribute C_QUALIFY_WE : integer;
  attribute C_QUALIFY_WE of U0 : label is 0;
  attribute C_REG_DPRA_INPUT : integer;
  attribute C_REG_DPRA_INPUT of U0 : label is 0;
  attribute c_addr_width : integer;
  attribute c_addr_width of U0 : label is 14;
  attribute c_default_data : string;
  attribute c_default_data of U0 : label is "0";
  attribute c_depth : integer;
  attribute c_depth of U0 : label is 16384;
  attribute c_elaboration_dir : string;
  attribute c_elaboration_dir of U0 : label is "./";
  attribute c_has_clk : integer;
  attribute c_has_clk of U0 : label is 0;
  attribute c_has_qspo : integer;
  attribute c_has_qspo of U0 : label is 0;
  attribute c_has_qspo_ce : integer;
  attribute c_has_qspo_ce of U0 : label is 0;
  attribute c_has_qspo_rst : integer;
  attribute c_has_qspo_rst of U0 : label is 0;
  attribute c_has_qspo_srst : integer;
  attribute c_has_qspo_srst of U0 : label is 0;
  attribute c_has_spo : integer;
  attribute c_has_spo of U0 : label is 1;
  attribute c_mem_init_file : string;
  attribute c_mem_init_file of U0 : label is "inst_rom.mif";
  attribute c_parser_type : integer;
  attribute c_parser_type of U0 : label is 1;
  attribute c_read_mif : integer;
  attribute c_read_mif of U0 : label is 1;
  attribute c_reg_a_d_inputs : integer;
  attribute c_reg_a_d_inputs of U0 : label is 0;
  attribute c_sync_enable : integer;
  attribute c_sync_enable of U0 : label is 1;
  attribute c_width : integer;
  attribute c_width of U0 : label is 32;
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12
     port map (
      a(13 downto 0) => a(13 downto 0),
      clk => '0',
      d(31 downto 0) => B"00000000000000000000000000000000",
      dpo(31 downto 0) => NLW_U0_dpo_UNCONNECTED(31 downto 0),
      dpra(13 downto 0) => B"00000000000000",
      i_ce => '1',
      qdpo(31 downto 0) => NLW_U0_qdpo_UNCONNECTED(31 downto 0),
      qdpo_ce => '1',
      qdpo_clk => '0',
      qdpo_rst => '0',
      qdpo_srst => '0',
      qspo(31 downto 0) => NLW_U0_qspo_UNCONNECTED(31 downto 0),
      qspo_ce => '1',
      qspo_rst => '0',
      qspo_srst => '0',
      spo(31 downto 0) => spo(31 downto 0),
      we => '0'
    );
end STRUCTURE;
