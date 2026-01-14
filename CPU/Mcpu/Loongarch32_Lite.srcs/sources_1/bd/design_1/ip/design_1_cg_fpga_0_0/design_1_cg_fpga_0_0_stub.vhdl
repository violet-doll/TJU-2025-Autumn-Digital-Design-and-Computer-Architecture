-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon Jan 12 00:53:36 2026
-- Host        : violet running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/vivado_project/TJU-2025/CPU/Mcpu/Loongarch32_Lite.srcs/sources_1/bd/design_1/ip/design_1_cg_fpga_0_0/design_1_cg_fpga_0_0_stub.vhdl
-- Design      : design_1_cg_fpga_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_cg_fpga_0_0 is
  Port ( 
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    audio : in STD_LOGIC_VECTOR ( 6 downto 0 );
    btn : out STD_LOGIC_VECTOR ( 7 downto 0 );
    btn_clk : out STD_LOGIC_VECTOR ( 0 to 0 );
    btn_rst : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk_100M : out STD_LOGIC;
    gpio_led : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio_sw_1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio_sw_2 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ledm_cs : in STD_LOGIC_VECTOR ( 5 downto 0 );
    ledm_data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rx_0 : in STD_LOGIC;
    seg_cs : in STD_LOGIC_VECTOR ( 3 downto 0 );
    seg_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    tx_0 : out STD_LOGIC;
    vid_active : in STD_LOGIC;
    vid_data : in STD_LOGIC_VECTOR ( 23 downto 0 );
    vid_hblank : in STD_LOGIC;
    vid_hsync : in STD_LOGIC;
    vid_io_in_clk : in STD_LOGIC;
    vid_vblank : in STD_LOGIC;
    vid_vsync : in STD_LOGIC
  );

end design_1_cg_fpga_0_0;

architecture stub of design_1_cg_fpga_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "DDR_addr[14:0],DDR_ba[2:0],DDR_cas_n,DDR_ck_n,DDR_ck_p,DDR_cke,DDR_cs_n,DDR_dm[3:0],DDR_dq[31:0],DDR_dqs_n[3:0],DDR_dqs_p[3:0],DDR_odt,DDR_ras_n,DDR_reset_n,DDR_we_n,FIXED_IO_ddr_vrn,FIXED_IO_ddr_vrp,FIXED_IO_mio[53:0],FIXED_IO_ps_clk,FIXED_IO_ps_porb,FIXED_IO_ps_srstb,audio[6:0],btn[7:0],btn_clk[0:0],btn_rst[0:0],clk_100M,gpio_led[31:0],gpio_sw_1[31:0],gpio_sw_2[31:0],ledm_cs[5:0],ledm_data[15:0],rx_0,seg_cs[3:0],seg_data[7:0],tx_0,vid_active,vid_data[23:0],vid_hblank,vid_hsync,vid_io_in_clk,vid_vblank,vid_vsync";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "cg_fpga_full,Vivado 2018.3";
begin
end;
