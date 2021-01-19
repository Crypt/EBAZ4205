//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
//Date        : Thu Nov 19 01:49:39 2020
//Host        : xcosswbld06 running 64-bit Red Hat Enterprise Linux Workstation release 7.4 (Maipo)
//Command     : generate_target project_1.bd
//Design      : project_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "project_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=project_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_ps7_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "project_1.hwdef" *) 
module project_1
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    leds_4bits_tri_o);
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250" *) inout [14:0]DDR_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR BA" *) inout [2:0]DDR_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CAS_N" *) inout DDR_cas_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_N" *) inout DDR_ck_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_P" *) inout DDR_ck_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CKE" *) inout DDR_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CS_N" *) inout DDR_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DM" *) inout [3:0]DDR_dm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQ" *) inout [31:0]DDR_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_N" *) inout [3:0]DDR_dqs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_P" *) inout [3:0]DDR_dqs_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ODT" *) inout DDR_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RAS_N" *) inout DDR_ras_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RESET_N" *) inout DDR_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR WE_N" *) inout DDR_we_n;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false" *) inout FIXED_IO_ddr_vrn;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP" *) inout FIXED_IO_ddr_vrp;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO" *) inout [53:0]FIXED_IO_mio;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK" *) inout FIXED_IO_ps_clk;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB" *) inout FIXED_IO_ps_porb;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB" *) inout FIXED_IO_ps_srstb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 leds_4bits TRI_O" *) output [3:0]leds_4bits_tri_o;

  wire [3:0]AXI_GPIO_0_GPIO_project_1_INTF_PORT_0_leds_4bits_TRI_O;
  wire [0:0]PROC_SYS_RESET_0_interconnect_aresetn_SMART_CON_0_aresetn;
  wire [0:0]PROC_SYS_RESET_0_peripheral_aresetn_AXI_GPIO_0_s_axi_aresetn;
  wire [8:0]SMART_CON_0_M00_AXI_AXI_GPIO_0_S_AXI_ARADDR;
  wire SMART_CON_0_M00_AXI_AXI_GPIO_0_S_AXI_ARREADY;
  wire SMART_CON_0_M00_AXI_AXI_GPIO_0_S_AXI_ARVALID;
  wire [8:0]SMART_CON_0_M00_AXI_AXI_GPIO_0_S_AXI_AWADDR;
  wire SMART_CON_0_M00_AXI_AXI_GPIO_0_S_AXI_AWREADY;
  wire SMART_CON_0_M00_AXI_AXI_GPIO_0_S_AXI_AWVALID;
  wire SMART_CON_0_M00_AXI_AXI_GPIO_0_S_AXI_BREADY;
  wire [1:0]SMART_CON_0_M00_AXI_AXI_GPIO_0_S_AXI_BRESP;
  wire SMART_CON_0_M00_AXI_AXI_GPIO_0_S_AXI_BVALID;
  wire [31:0]SMART_CON_0_M00_AXI_AXI_GPIO_0_S_AXI_RDATA;
  wire SMART_CON_0_M00_AXI_AXI_GPIO_0_S_AXI_RREADY;
  wire [1:0]SMART_CON_0_M00_AXI_AXI_GPIO_0_S_AXI_RRESP;
  wire SMART_CON_0_M00_AXI_AXI_GPIO_0_S_AXI_RVALID;
  wire [31:0]SMART_CON_0_M00_AXI_AXI_GPIO_0_S_AXI_WDATA;
  wire SMART_CON_0_M00_AXI_AXI_GPIO_0_S_AXI_WREADY;
  wire [3:0]SMART_CON_0_M00_AXI_AXI_GPIO_0_S_AXI_WSTRB;
  wire SMART_CON_0_M00_AXI_AXI_GPIO_0_S_AXI_WVALID;
  wire [14:0]ZYNQPS_0_DDR_ADDR;
  wire [2:0]ZYNQPS_0_DDR_BA;
  wire ZYNQPS_0_DDR_CAS_N;
  wire ZYNQPS_0_DDR_CKE;
  wire ZYNQPS_0_DDR_CK_N;
  wire ZYNQPS_0_DDR_CK_P;
  wire ZYNQPS_0_DDR_CS_N;
  wire [3:0]ZYNQPS_0_DDR_DM;
  wire [31:0]ZYNQPS_0_DDR_DQ;
  wire [3:0]ZYNQPS_0_DDR_DQS_N;
  wire [3:0]ZYNQPS_0_DDR_DQS_P;
  wire ZYNQPS_0_DDR_ODT;
  wire ZYNQPS_0_DDR_RAS_N;
  wire ZYNQPS_0_DDR_RESET_N;
  wire ZYNQPS_0_DDR_WE_N;
  wire ZYNQPS_0_FCLK_CLK0_PROC_SYS_RESET_0_slowest_sync_clk;
  wire ZYNQPS_0_FCLK_RESET0_N_PROC_SYS_RESET_0_ext_reset_in;
  wire ZYNQPS_0_FIXED_IO_DDR_VRN;
  wire ZYNQPS_0_FIXED_IO_DDR_VRP;
  wire [53:0]ZYNQPS_0_FIXED_IO_MIO;
  wire ZYNQPS_0_FIXED_IO_PS_CLK;
  wire ZYNQPS_0_FIXED_IO_PS_PORB;
  wire ZYNQPS_0_FIXED_IO_PS_SRSTB;
  wire [31:0]ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_ARADDR;
  wire [1:0]ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_ARBURST;
  wire [3:0]ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_ARCACHE;
  wire [11:0]ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_ARID;
  wire [3:0]ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_ARLEN;
  wire [1:0]ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_ARLOCK;
  wire [2:0]ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_ARPROT;
  wire [3:0]ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_ARQOS;
  wire ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_ARREADY;
  wire [2:0]ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_ARSIZE;
  wire ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_ARVALID;
  wire [31:0]ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_AWADDR;
  wire [1:0]ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_AWBURST;
  wire [3:0]ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_AWCACHE;
  wire [11:0]ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_AWID;
  wire [3:0]ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_AWLEN;
  wire [1:0]ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_AWLOCK;
  wire [2:0]ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_AWPROT;
  wire [3:0]ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_AWQOS;
  wire ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_AWREADY;
  wire [2:0]ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_AWSIZE;
  wire ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_AWVALID;
  wire [11:0]ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_BID;
  wire ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_BREADY;
  wire [1:0]ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_BRESP;
  wire ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_BVALID;
  wire [31:0]ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_RDATA;
  wire [11:0]ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_RID;
  wire ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_RLAST;
  wire ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_RREADY;
  wire [1:0]ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_RRESP;
  wire ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_RVALID;
  wire [31:0]ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_WDATA;
  wire [11:0]ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_WID;
  wire ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_WLAST;
  wire ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_WREADY;
  wire [3:0]ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_WSTRB;
  wire ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_WVALID;

  assign leds_4bits_tri_o[3:0] = AXI_GPIO_0_GPIO_project_1_INTF_PORT_0_leds_4bits_TRI_O;
  project_1_AXI_GPIO_0_0 AXI_GPIO_0
       (.gpio_io_o(AXI_GPIO_0_GPIO_project_1_INTF_PORT_0_leds_4bits_TRI_O),
        .s_axi_aclk(ZYNQPS_0_FCLK_CLK0_PROC_SYS_RESET_0_slowest_sync_clk),
        .s_axi_araddr(SMART_CON_0_M00_AXI_AXI_GPIO_0_S_AXI_ARADDR),
        .s_axi_aresetn(PROC_SYS_RESET_0_peripheral_aresetn_AXI_GPIO_0_s_axi_aresetn),
        .s_axi_arready(SMART_CON_0_M00_AXI_AXI_GPIO_0_S_AXI_ARREADY),
        .s_axi_arvalid(SMART_CON_0_M00_AXI_AXI_GPIO_0_S_AXI_ARVALID),
        .s_axi_awaddr(SMART_CON_0_M00_AXI_AXI_GPIO_0_S_AXI_AWADDR),
        .s_axi_awready(SMART_CON_0_M00_AXI_AXI_GPIO_0_S_AXI_AWREADY),
        .s_axi_awvalid(SMART_CON_0_M00_AXI_AXI_GPIO_0_S_AXI_AWVALID),
        .s_axi_bready(SMART_CON_0_M00_AXI_AXI_GPIO_0_S_AXI_BREADY),
        .s_axi_bresp(SMART_CON_0_M00_AXI_AXI_GPIO_0_S_AXI_BRESP),
        .s_axi_bvalid(SMART_CON_0_M00_AXI_AXI_GPIO_0_S_AXI_BVALID),
        .s_axi_rdata(SMART_CON_0_M00_AXI_AXI_GPIO_0_S_AXI_RDATA),
        .s_axi_rready(SMART_CON_0_M00_AXI_AXI_GPIO_0_S_AXI_RREADY),
        .s_axi_rresp(SMART_CON_0_M00_AXI_AXI_GPIO_0_S_AXI_RRESP),
        .s_axi_rvalid(SMART_CON_0_M00_AXI_AXI_GPIO_0_S_AXI_RVALID),
        .s_axi_wdata(SMART_CON_0_M00_AXI_AXI_GPIO_0_S_AXI_WDATA),
        .s_axi_wready(SMART_CON_0_M00_AXI_AXI_GPIO_0_S_AXI_WREADY),
        .s_axi_wstrb(SMART_CON_0_M00_AXI_AXI_GPIO_0_S_AXI_WSTRB),
        .s_axi_wvalid(SMART_CON_0_M00_AXI_AXI_GPIO_0_S_AXI_WVALID));
  project_1_PROC_SYS_RESET_0_0 PROC_SYS_RESET_0
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(ZYNQPS_0_FCLK_RESET0_N_PROC_SYS_RESET_0_ext_reset_in),
        .interconnect_aresetn(PROC_SYS_RESET_0_interconnect_aresetn_SMART_CON_0_aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(PROC_SYS_RESET_0_peripheral_aresetn_AXI_GPIO_0_s_axi_aresetn),
        .slowest_sync_clk(ZYNQPS_0_FCLK_CLK0_PROC_SYS_RESET_0_slowest_sync_clk));
  project_1_SMART_CON_0_0 SMART_CON_0
       (.M00_AXI_araddr(SMART_CON_0_M00_AXI_AXI_GPIO_0_S_AXI_ARADDR),
        .M00_AXI_arready(SMART_CON_0_M00_AXI_AXI_GPIO_0_S_AXI_ARREADY),
        .M00_AXI_arvalid(SMART_CON_0_M00_AXI_AXI_GPIO_0_S_AXI_ARVALID),
        .M00_AXI_awaddr(SMART_CON_0_M00_AXI_AXI_GPIO_0_S_AXI_AWADDR),
        .M00_AXI_awready(SMART_CON_0_M00_AXI_AXI_GPIO_0_S_AXI_AWREADY),
        .M00_AXI_awvalid(SMART_CON_0_M00_AXI_AXI_GPIO_0_S_AXI_AWVALID),
        .M00_AXI_bready(SMART_CON_0_M00_AXI_AXI_GPIO_0_S_AXI_BREADY),
        .M00_AXI_bresp(SMART_CON_0_M00_AXI_AXI_GPIO_0_S_AXI_BRESP),
        .M00_AXI_bvalid(SMART_CON_0_M00_AXI_AXI_GPIO_0_S_AXI_BVALID),
        .M00_AXI_rdata(SMART_CON_0_M00_AXI_AXI_GPIO_0_S_AXI_RDATA),
        .M00_AXI_rready(SMART_CON_0_M00_AXI_AXI_GPIO_0_S_AXI_RREADY),
        .M00_AXI_rresp(SMART_CON_0_M00_AXI_AXI_GPIO_0_S_AXI_RRESP),
        .M00_AXI_rvalid(SMART_CON_0_M00_AXI_AXI_GPIO_0_S_AXI_RVALID),
        .M00_AXI_wdata(SMART_CON_0_M00_AXI_AXI_GPIO_0_S_AXI_WDATA),
        .M00_AXI_wready(SMART_CON_0_M00_AXI_AXI_GPIO_0_S_AXI_WREADY),
        .M00_AXI_wstrb(SMART_CON_0_M00_AXI_AXI_GPIO_0_S_AXI_WSTRB),
        .M00_AXI_wvalid(SMART_CON_0_M00_AXI_AXI_GPIO_0_S_AXI_WVALID),
        .S00_AXI_araddr(ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_ARADDR),
        .S00_AXI_arburst(ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_ARBURST),
        .S00_AXI_arcache(ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_ARCACHE),
        .S00_AXI_arid(ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_ARID),
        .S00_AXI_arlen(ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_ARLEN),
        .S00_AXI_arlock(ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_ARLOCK),
        .S00_AXI_arprot(ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_ARPROT),
        .S00_AXI_arqos(ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_ARQOS),
        .S00_AXI_arready(ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_ARREADY),
        .S00_AXI_arsize(ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_ARSIZE),
        .S00_AXI_arvalid(ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_ARVALID),
        .S00_AXI_awaddr(ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_AWADDR),
        .S00_AXI_awburst(ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_AWBURST),
        .S00_AXI_awcache(ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_AWCACHE),
        .S00_AXI_awid(ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_AWID),
        .S00_AXI_awlen(ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_AWLEN),
        .S00_AXI_awlock(ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_AWLOCK),
        .S00_AXI_awprot(ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_AWPROT),
        .S00_AXI_awqos(ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_AWQOS),
        .S00_AXI_awready(ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_AWREADY),
        .S00_AXI_awsize(ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_AWSIZE),
        .S00_AXI_awvalid(ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_AWVALID),
        .S00_AXI_bid(ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_BID),
        .S00_AXI_bready(ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_BREADY),
        .S00_AXI_bresp(ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_BRESP),
        .S00_AXI_bvalid(ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_BVALID),
        .S00_AXI_rdata(ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_RDATA),
        .S00_AXI_rid(ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_RID),
        .S00_AXI_rlast(ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_RLAST),
        .S00_AXI_rready(ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_RREADY),
        .S00_AXI_rresp(ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_RRESP),
        .S00_AXI_rvalid(ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_RVALID),
        .S00_AXI_wdata(ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_WDATA),
        .S00_AXI_wid(ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_WID),
        .S00_AXI_wlast(ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_WLAST),
        .S00_AXI_wready(ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_WREADY),
        .S00_AXI_wstrb(ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_WSTRB),
        .S00_AXI_wvalid(ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_WVALID),
        .aclk(ZYNQPS_0_FCLK_CLK0_PROC_SYS_RESET_0_slowest_sync_clk),
        .aresetn(PROC_SYS_RESET_0_interconnect_aresetn_SMART_CON_0_aresetn));
  project_1_ZYNQPS_0_0 ZYNQPS_0
       (.DDR_Addr(DDR_addr[14:0]),
        .DDR_BankAddr(DDR_ba[2:0]),
        .DDR_CAS_n(DDR_cas_n),
        .DDR_CKE(DDR_cke),
        .DDR_CS_n(DDR_cs_n),
        .DDR_Clk(DDR_ck_p),
        .DDR_Clk_n(DDR_ck_n),
        .DDR_DM(DDR_dm[3:0]),
        .DDR_DQ(DDR_dq[31:0]),
        .DDR_DQS(DDR_dqs_p[3:0]),
        .DDR_DQS_n(DDR_dqs_n[3:0]),
        .DDR_DRSTB(DDR_reset_n),
        .DDR_ODT(DDR_odt),
        .DDR_RAS_n(DDR_ras_n),
        .DDR_VRN(FIXED_IO_ddr_vrn),
        .DDR_VRP(FIXED_IO_ddr_vrp),
        .DDR_WEB(DDR_we_n),
        .FCLK_CLK0(ZYNQPS_0_FCLK_CLK0_PROC_SYS_RESET_0_slowest_sync_clk),
        .FCLK_RESET0_N(ZYNQPS_0_FCLK_RESET0_N_PROC_SYS_RESET_0_ext_reset_in),
        .MIO(FIXED_IO_mio[53:0]),
        .M_AXI_GP0_ACLK(ZYNQPS_0_FCLK_CLK0_PROC_SYS_RESET_0_slowest_sync_clk),
        .M_AXI_GP0_ARADDR(ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_ARADDR),
        .M_AXI_GP0_ARBURST(ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_ARBURST),
        .M_AXI_GP0_ARCACHE(ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_ARCACHE),
        .M_AXI_GP0_ARID(ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_ARID),
        .M_AXI_GP0_ARLEN(ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_ARLEN),
        .M_AXI_GP0_ARLOCK(ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_ARLOCK),
        .M_AXI_GP0_ARPROT(ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_ARPROT),
        .M_AXI_GP0_ARQOS(ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_ARQOS),
        .M_AXI_GP0_ARREADY(ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_ARREADY),
        .M_AXI_GP0_ARSIZE(ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_ARSIZE),
        .M_AXI_GP0_ARVALID(ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_ARVALID),
        .M_AXI_GP0_AWADDR(ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_AWADDR),
        .M_AXI_GP0_AWBURST(ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_AWBURST),
        .M_AXI_GP0_AWCACHE(ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_AWCACHE),
        .M_AXI_GP0_AWID(ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_AWID),
        .M_AXI_GP0_AWLEN(ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_AWLEN),
        .M_AXI_GP0_AWLOCK(ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_AWLOCK),
        .M_AXI_GP0_AWPROT(ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_AWPROT),
        .M_AXI_GP0_AWQOS(ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_AWQOS),
        .M_AXI_GP0_AWREADY(ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_AWREADY),
        .M_AXI_GP0_AWSIZE(ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_AWSIZE),
        .M_AXI_GP0_AWVALID(ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_AWVALID),
        .M_AXI_GP0_BID(ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_BID),
        .M_AXI_GP0_BREADY(ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_BREADY),
        .M_AXI_GP0_BRESP(ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_BRESP),
        .M_AXI_GP0_BVALID(ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_BVALID),
        .M_AXI_GP0_RDATA(ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_RDATA),
        .M_AXI_GP0_RID(ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_RID),
        .M_AXI_GP0_RLAST(ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_RLAST),
        .M_AXI_GP0_RREADY(ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_RREADY),
        .M_AXI_GP0_RRESP(ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_RRESP),
        .M_AXI_GP0_RVALID(ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_RVALID),
        .M_AXI_GP0_WDATA(ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_WDATA),
        .M_AXI_GP0_WID(ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_WID),
        .M_AXI_GP0_WLAST(ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_WLAST),
        .M_AXI_GP0_WREADY(ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_WREADY),
        .M_AXI_GP0_WSTRB(ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_WSTRB),
        .M_AXI_GP0_WVALID(ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI_WVALID),
        .PS_CLK(FIXED_IO_ps_clk),
        .PS_PORB(FIXED_IO_ps_porb),
        .PS_SRSTB(FIXED_IO_ps_srstb),
        .USB0_VBUS_PWRFAULT(1'b0));
endmodule
