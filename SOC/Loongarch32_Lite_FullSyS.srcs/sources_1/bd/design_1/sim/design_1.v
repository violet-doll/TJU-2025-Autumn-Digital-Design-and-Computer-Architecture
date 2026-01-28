//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Wed Jan 28 20:59:06 2026
//Host        : violet running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=1,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (DDR_0_addr,
    DDR_0_ba,
    DDR_0_cas_n,
    DDR_0_ck_n,
    DDR_0_ck_p,
    DDR_0_cke,
    DDR_0_cs_n,
    DDR_0_dm,
    DDR_0_dq,
    DDR_0_dqs_n,
    DDR_0_dqs_p,
    DDR_0_odt,
    DDR_0_ras_n,
    DDR_0_reset_n,
    DDR_0_we_n,
    FIXED_IO_0_ddr_vrn,
    FIXED_IO_0_ddr_vrp,
    FIXED_IO_0_mio,
    FIXED_IO_0_ps_clk,
    FIXED_IO_0_ps_porb,
    FIXED_IO_0_ps_srstb);
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR_0, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250" *) inout [14:0]DDR_0_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 BA" *) inout [2:0]DDR_0_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 CAS_N" *) inout DDR_0_cas_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 CK_N" *) inout DDR_0_ck_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 CK_P" *) inout DDR_0_ck_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 CKE" *) inout DDR_0_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 CS_N" *) inout DDR_0_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 DM" *) inout [3:0]DDR_0_dm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 DQ" *) inout [31:0]DDR_0_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 DQS_N" *) inout [3:0]DDR_0_dqs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 DQS_P" *) inout [3:0]DDR_0_dqs_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 ODT" *) inout DDR_0_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 RAS_N" *) inout DDR_0_ras_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 RESET_N" *) inout DDR_0_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 WE_N" *) inout DDR_0_we_n;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO_0 DDR_VRN" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FIXED_IO_0, CAN_DEBUG false" *) inout FIXED_IO_0_ddr_vrn;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO_0 DDR_VRP" *) inout FIXED_IO_0_ddr_vrp;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO_0 MIO" *) inout [53:0]FIXED_IO_0_mio;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO_0 PS_CLK" *) inout FIXED_IO_0_ps_clk;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO_0 PS_PORB" *) inout FIXED_IO_0_ps_porb;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO_0 PS_SRSTB" *) inout FIXED_IO_0_ps_srstb;

  wire [14:0]cg_fpga_0_DDR_ADDR;
  wire [2:0]cg_fpga_0_DDR_BA;
  wire cg_fpga_0_DDR_CAS_N;
  wire cg_fpga_0_DDR_CKE;
  wire cg_fpga_0_DDR_CK_N;
  wire cg_fpga_0_DDR_CK_P;
  wire cg_fpga_0_DDR_CS_N;
  wire [3:0]cg_fpga_0_DDR_DM;
  wire [31:0]cg_fpga_0_DDR_DQ;
  wire [3:0]cg_fpga_0_DDR_DQS_N;
  wire [3:0]cg_fpga_0_DDR_DQS_P;
  wire cg_fpga_0_DDR_ODT;
  wire cg_fpga_0_DDR_RAS_N;
  wire cg_fpga_0_DDR_RESET_N;
  wire cg_fpga_0_DDR_WE_N;
  wire cg_fpga_0_FIXED_IO_DDR_VRN;
  wire cg_fpga_0_FIXED_IO_DDR_VRP;
  wire [53:0]cg_fpga_0_FIXED_IO_MIO;
  wire cg_fpga_0_FIXED_IO_PS_CLK;
  wire cg_fpga_0_FIXED_IO_PS_PORB;
  wire cg_fpga_0_FIXED_IO_PS_SRSTB;
  wire [7:0]cg_fpga_0_btn;
  wire [0:0]cg_fpga_0_btn_rst;
  wire cg_fpga_0_clk_100M;
  wire [31:0]cg_fpga_0_gpio_sw_1;
  wire [31:0]cg_fpga_0_gpio_sw_2;
  wire cg_fpga_0_tx_0;
  wire clk_wiz_0_clk_out1;
  wire clk_wiz_0_locked;
  wire [31:0]top_0_led;
  wire [3:0]top_0_seg_cs;
  wire [7:0]top_0_seg_data;
  wire top_0_txd;

  design_1_cg_fpga_0_0 cg_fpga_0
       (.DDR_addr(DDR_0_addr[14:0]),
        .DDR_ba(DDR_0_ba[2:0]),
        .DDR_cas_n(DDR_0_cas_n),
        .DDR_ck_n(DDR_0_ck_n),
        .DDR_ck_p(DDR_0_ck_p),
        .DDR_cke(DDR_0_cke),
        .DDR_cs_n(DDR_0_cs_n),
        .DDR_dm(DDR_0_dm[3:0]),
        .DDR_dq(DDR_0_dq[31:0]),
        .DDR_dqs_n(DDR_0_dqs_n[3:0]),
        .DDR_dqs_p(DDR_0_dqs_p[3:0]),
        .DDR_odt(DDR_0_odt),
        .DDR_ras_n(DDR_0_ras_n),
        .DDR_reset_n(DDR_0_reset_n),
        .DDR_we_n(DDR_0_we_n),
        .FIXED_IO_ddr_vrn(FIXED_IO_0_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_0_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_0_mio[53:0]),
        .FIXED_IO_ps_clk(FIXED_IO_0_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_0_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_0_ps_srstb),
        .audio({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .btn(cg_fpga_0_btn),
        .btn_rst(cg_fpga_0_btn_rst),
        .clk_100M(cg_fpga_0_clk_100M),
        .gpio_led(top_0_led),
        .gpio_sw_1(cg_fpga_0_gpio_sw_1),
        .gpio_sw_2(cg_fpga_0_gpio_sw_2),
        .ledm_cs({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ledm_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_0(top_0_txd),
        .seg_cs(top_0_seg_cs),
        .seg_data(top_0_seg_data),
        .tx_0(cg_fpga_0_tx_0),
        .vid_active(1'b0),
        .vid_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .vid_hblank(1'b0),
        .vid_hsync(1'b0),
        .vid_io_in_clk(1'b0),
        .vid_vblank(1'b0),
        .vid_vsync(1'b0));
  design_1_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(cg_fpga_0_clk_100M),
        .clk_out1(clk_wiz_0_clk_out1),
        .locked(clk_wiz_0_locked),
        .resetn(cg_fpga_0_btn_rst));
  design_1_top_0_0 top_0
       (.btn(cg_fpga_0_btn),
        .clk(clk_wiz_0_clk_out1),
        .led(top_0_led),
        .locked(clk_wiz_0_locked),
        .rxd(cg_fpga_0_tx_0),
        .seg_cs(top_0_seg_cs),
        .seg_data(top_0_seg_data),
        .sw_1(cg_fpga_0_gpio_sw_1),
        .sw_2(cg_fpga_0_gpio_sw_2),
        .txd(top_0_txd));
endmodule
