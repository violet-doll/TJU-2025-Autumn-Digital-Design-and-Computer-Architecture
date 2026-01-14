-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon Jan 12 01:00:38 2026
-- Host        : violet running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/vivado_project/TJU-2025/CPU/Mcpu/Loongarch32_Lite.srcs/sources_1/bd/design_1/ip/design_1_top_0_1/design_1_top_0_1_stub.vhdl
-- Design      : design_1_top_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_top_0_1 is
  Port ( 
    clk : in STD_LOGIC;
    locked : in STD_LOGIC;
    rxd : in STD_LOGIC;
    txd : out STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 31 downto 0 );
    seg_cs : out STD_LOGIC_VECTOR ( 7 downto 0 );
    seg_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sw_1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    sw_2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    btn : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );

end design_1_top_0_1;

architecture stub of design_1_top_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,locked,rxd,txd,led[31:0],seg_cs[7:0],seg_data[7:0],sw_1[31:0],sw_2[31:0],btn[4:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "top,Vivado 2018.3";
begin
end;
