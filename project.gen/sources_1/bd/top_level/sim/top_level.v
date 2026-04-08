//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
//Date        : Wed Apr  8 01:07:44 2026
//Host        : wolf-super-server running 64-bit Ubuntu 20.04.6 LTS
//Command     : generate_target top_level.bd
//Design      : top_level
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module adc_bank_imp_1SLD8RV
   (S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    UCI_ADC_CSN,
    UCI_ADC_MISO,
    UCI_ADC_MOSI,
    UCI_ADC_SCK,
    clk,
    resetn);
  input [0:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [0:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [0:0]S_AXI_wdata;
  output S_AXI_wready;
  input [0:0]S_AXI_wstrb;
  input S_AXI_wvalid;
  output [2:0]UCI_ADC_CSN;
  input UCI_ADC_MISO;
  output UCI_ADC_MOSI;
  output UCI_ADC_SCK;
  input clk;
  input resetn;

  wire [0:0]S_AXI_araddr;
  wire [2:0]S_AXI_arprot;
  wire S_AXI_arready;
  wire S_AXI_arvalid;
  wire [0:0]S_AXI_awaddr;
  wire [2:0]S_AXI_awprot;
  wire S_AXI_awready;
  wire S_AXI_awvalid;
  wire S_AXI_bready;
  wire [1:0]S_AXI_bresp;
  wire S_AXI_bvalid;
  wire [31:0]S_AXI_rdata;
  wire S_AXI_rready;
  wire [1:0]S_AXI_rresp;
  wire S_AXI_rvalid;
  wire [0:0]S_AXI_wdata;
  wire S_AXI_wready;
  wire [0:0]S_AXI_wstrb;
  wire S_AXI_wvalid;
  wire [2:0]UCI_ADC_CSN;
  wire UCI_ADC_MISO;
  wire UCI_ADC_MOSI;
  wire UCI_ADC_SCK;
  wire clk;
  wire [383:0]ltc1867l_adc_values;
  wire resetn;

  top_level_axi_adc_bank_0_0 axi_adc_bank
       (.S_AXI_ARADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,S_AXI_araddr}),
        .S_AXI_ARPROT(S_AXI_arprot),
        .S_AXI_ARREADY(S_AXI_arready),
        .S_AXI_ARVALID(S_AXI_arvalid),
        .S_AXI_AWADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,S_AXI_awaddr}),
        .S_AXI_AWPROT(S_AXI_awprot),
        .S_AXI_AWREADY(S_AXI_awready),
        .S_AXI_AWVALID(S_AXI_awvalid),
        .S_AXI_BREADY(S_AXI_bready),
        .S_AXI_BRESP(S_AXI_bresp),
        .S_AXI_BVALID(S_AXI_bvalid),
        .S_AXI_RDATA(S_AXI_rdata),
        .S_AXI_RREADY(S_AXI_rready),
        .S_AXI_RRESP(S_AXI_rresp),
        .S_AXI_RVALID(S_AXI_rvalid),
        .S_AXI_WDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,S_AXI_wdata}),
        .S_AXI_WREADY(S_AXI_wready),
        .S_AXI_WSTRB({1'b1,1'b1,1'b1,S_AXI_wstrb}),
        .S_AXI_WVALID(S_AXI_wvalid),
        .adc(ltc1867l_adc_values),
        .clk(clk),
        .resetn(resetn));
  top_level_ltc1867l_0_0 ltc1867l
       (.adc_values(ltc1867l_adc_values),
        .clk(clk),
        .resetn(resetn),
        .slave_select(UCI_ADC_CSN),
        .spi_miso(UCI_ADC_MISO),
        .spi_mosi(UCI_ADC_MOSI),
        .spi_sclk(UCI_ADC_SCK));
endmodule

module chip_spi_imp_HJ3TY6
   (CHIP_SPI_CLK,
    CHIP_SPI_CSN,
    CHIP_SPI_MISO,
    CHIP_SPI_MOSI,
    HSI_CLK,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    clk,
    resetn);
  output CHIP_SPI_CLK;
  output CHIP_SPI_CSN;
  input CHIP_SPI_MISO;
  output CHIP_SPI_MOSI;
  output HSI_CLK;
  input [0:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [0:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [0:0]S_AXI_wdata;
  output S_AXI_wready;
  input [0:0]S_AXI_wstrb;
  input S_AXI_wvalid;
  input clk;
  input resetn;

  wire CHIP_SPI_CLK;
  wire CHIP_SPI_CSN;
  wire CHIP_SPI_MISO;
  wire CHIP_SPI_MOSI;
  wire HSI_CLK;
  wire [0:0]S_AXI_araddr;
  wire [2:0]S_AXI_arprot;
  wire S_AXI_arready;
  wire S_AXI_arvalid;
  wire [0:0]S_AXI_awaddr;
  wire [2:0]S_AXI_awprot;
  wire S_AXI_awready;
  wire S_AXI_awvalid;
  wire S_AXI_bready;
  wire [1:0]S_AXI_bresp;
  wire S_AXI_bvalid;
  wire [31:0]S_AXI_rdata;
  wire S_AXI_rready;
  wire [1:0]S_AXI_rresp;
  wire S_AXI_rvalid;
  wire [0:0]S_AXI_wdata;
  wire S_AXI_wready;
  wire [0:0]S_AXI_wstrb;
  wire S_AXI_wvalid;
  wire chip_spi_busy;
  wire [31:0]chip_spi_ctl_spi_addr;
  wire [1:0]chip_spi_ctl_spi_start_stb;
  wire [31:0]chip_spi_ctl_spi_wdata;
  wire [31:0]chip_spi_rdata;
  wire clk;
  wire resetn;

  top_level_chip_spi_0 chip_spi
       (.addr(chip_spi_ctl_spi_addr),
        .busy(chip_spi_busy),
        .clk(clk),
        .rdata(chip_spi_rdata),
        .resetn(resetn),
        .spi_cs_n(CHIP_SPI_CSN),
        .spi_miso(CHIP_SPI_MISO),
        .spi_mosi(CHIP_SPI_MOSI),
        .spi_pclk(CHIP_SPI_CLK),
        .start(chip_spi_ctl_spi_start_stb),
        .wdata(chip_spi_ctl_spi_wdata));
  top_level_chip_spi_ctl_0_0 chip_spi_ctl
       (.S_AXI_ARADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,S_AXI_araddr}),
        .S_AXI_ARPROT(S_AXI_arprot),
        .S_AXI_ARREADY(S_AXI_arready),
        .S_AXI_ARVALID(S_AXI_arvalid),
        .S_AXI_AWADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,S_AXI_awaddr}),
        .S_AXI_AWPROT(S_AXI_awprot),
        .S_AXI_AWREADY(S_AXI_awready),
        .S_AXI_AWVALID(S_AXI_awvalid),
        .S_AXI_BREADY(S_AXI_bready),
        .S_AXI_BRESP(S_AXI_bresp),
        .S_AXI_BVALID(S_AXI_bvalid),
        .S_AXI_RDATA(S_AXI_rdata),
        .S_AXI_RREADY(S_AXI_rready),
        .S_AXI_RRESP(S_AXI_rresp),
        .S_AXI_RVALID(S_AXI_rvalid),
        .S_AXI_WDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,S_AXI_wdata}),
        .S_AXI_WREADY(S_AXI_wready),
        .S_AXI_WSTRB({1'b1,1'b1,1'b1,S_AXI_wstrb}),
        .S_AXI_WVALID(S_AXI_wvalid),
        .clk(clk),
        .resetn(resetn),
        .spi_addr(chip_spi_ctl_spi_addr),
        .spi_busy(chip_spi_busy),
        .spi_rdata(chip_spi_rdata),
        .spi_start_stb(chip_spi_ctl_spi_start_stb),
        .spi_wdata(chip_spi_ctl_spi_wdata));
  top_level_hsi_pclk_0_0 hsi_pclk
       (.clk(clk),
        .hsi_pclk(HSI_CLK));
endmodule

module pcie_bridge_imp_1AINXYK
   (M_AXI_B_araddr,
    M_AXI_B_arburst,
    M_AXI_B_arcache,
    M_AXI_B_arid,
    M_AXI_B_arlen,
    M_AXI_B_arlock,
    M_AXI_B_arprot,
    M_AXI_B_arready,
    M_AXI_B_arsize,
    M_AXI_B_arvalid,
    M_AXI_B_awaddr,
    M_AXI_B_awburst,
    M_AXI_B_awcache,
    M_AXI_B_awid,
    M_AXI_B_awlen,
    M_AXI_B_awlock,
    M_AXI_B_awprot,
    M_AXI_B_awready,
    M_AXI_B_awsize,
    M_AXI_B_awvalid,
    M_AXI_B_bid,
    M_AXI_B_bready,
    M_AXI_B_bresp,
    M_AXI_B_bvalid,
    M_AXI_B_rdata,
    M_AXI_B_rid,
    M_AXI_B_rlast,
    M_AXI_B_rready,
    M_AXI_B_rresp,
    M_AXI_B_rvalid,
    M_AXI_B_wdata,
    M_AXI_B_wlast,
    M_AXI_B_wready,
    M_AXI_B_wstrb,
    M_AXI_B_wvalid,
    PCIE_REFCLK_clk_n,
    PCIE_REFCLK_clk_p,
    axi_aclk,
    axi_aresetn,
    pcie_mgt_rxn,
    pcie_mgt_rxp,
    pcie_mgt_txn,
    pcie_mgt_txp);
  output M_AXI_B_araddr;
  output [1:0]M_AXI_B_arburst;
  output [3:0]M_AXI_B_arcache;
  output M_AXI_B_arid;
  output M_AXI_B_arlen;
  output M_AXI_B_arlock;
  output [2:0]M_AXI_B_arprot;
  input [0:0]M_AXI_B_arready;
  output [2:0]M_AXI_B_arsize;
  output [0:0]M_AXI_B_arvalid;
  output M_AXI_B_awaddr;
  output [1:0]M_AXI_B_awburst;
  output [3:0]M_AXI_B_awcache;
  output M_AXI_B_awid;
  output M_AXI_B_awlen;
  output M_AXI_B_awlock;
  output [2:0]M_AXI_B_awprot;
  input [0:0]M_AXI_B_awready;
  output [2:0]M_AXI_B_awsize;
  output [0:0]M_AXI_B_awvalid;
  input M_AXI_B_bid;
  output [0:0]M_AXI_B_bready;
  input [1:0]M_AXI_B_bresp;
  input [0:0]M_AXI_B_bvalid;
  input M_AXI_B_rdata;
  input M_AXI_B_rid;
  input [0:0]M_AXI_B_rlast;
  output [0:0]M_AXI_B_rready;
  input [1:0]M_AXI_B_rresp;
  input [0:0]M_AXI_B_rvalid;
  output M_AXI_B_wdata;
  output [0:0]M_AXI_B_wlast;
  input [0:0]M_AXI_B_wready;
  output M_AXI_B_wstrb;
  output [0:0]M_AXI_B_wvalid;
  input [0:0]PCIE_REFCLK_clk_n;
  input [0:0]PCIE_REFCLK_clk_p;
  output axi_aclk;
  output axi_aresetn;
  input [15:0]pcie_mgt_rxn;
  input [15:0]pcie_mgt_rxp;
  output [15:0]pcie_mgt_txn;
  output [15:0]pcie_mgt_txp;

  wire [63:0]\^M_AXI_B_araddr ;
  wire [1:0]M_AXI_B_arburst;
  wire [3:0]M_AXI_B_arcache;
  wire [3:0]\^M_AXI_B_arid ;
  wire [7:0]\^M_AXI_B_arlen ;
  wire M_AXI_B_arlock;
  wire [2:0]M_AXI_B_arprot;
  wire [0:0]M_AXI_B_arready;
  wire [2:0]M_AXI_B_arsize;
  wire \^M_AXI_B_arvalid ;
  wire [63:0]\^M_AXI_B_awaddr ;
  wire [1:0]M_AXI_B_awburst;
  wire [3:0]M_AXI_B_awcache;
  wire [3:0]\^M_AXI_B_awid ;
  wire [7:0]\^M_AXI_B_awlen ;
  wire M_AXI_B_awlock;
  wire [2:0]M_AXI_B_awprot;
  wire [0:0]M_AXI_B_awready;
  wire [2:0]M_AXI_B_awsize;
  wire \^M_AXI_B_awvalid ;
  wire M_AXI_B_bid;
  wire \^M_AXI_B_bready ;
  wire [1:0]M_AXI_B_bresp;
  wire [0:0]M_AXI_B_bvalid;
  wire M_AXI_B_rdata;
  wire M_AXI_B_rid;
  wire [0:0]M_AXI_B_rlast;
  wire \^M_AXI_B_rready ;
  wire [1:0]M_AXI_B_rresp;
  wire [0:0]M_AXI_B_rvalid;
  wire [511:0]\^M_AXI_B_wdata ;
  wire \^M_AXI_B_wlast ;
  wire [0:0]M_AXI_B_wready;
  wire [63:0]\^M_AXI_B_wstrb ;
  wire \^M_AXI_B_wvalid ;
  wire [0:0]PCIE_REFCLK_clk_n;
  wire [0:0]PCIE_REFCLK_clk_p;
  wire [31:0]axi4_lite_plug_M_AXI_ARADDR;
  wire axi4_lite_plug_M_AXI_ARREADY;
  wire axi4_lite_plug_M_AXI_ARVALID;
  wire [31:0]axi4_lite_plug_M_AXI_AWADDR;
  wire axi4_lite_plug_M_AXI_AWREADY;
  wire axi4_lite_plug_M_AXI_AWVALID;
  wire axi4_lite_plug_M_AXI_BREADY;
  wire [1:0]axi4_lite_plug_M_AXI_BRESP;
  wire axi4_lite_plug_M_AXI_BVALID;
  wire [31:0]axi4_lite_plug_M_AXI_RDATA;
  wire axi4_lite_plug_M_AXI_RREADY;
  wire [1:0]axi4_lite_plug_M_AXI_RRESP;
  wire axi4_lite_plug_M_AXI_RVALID;
  wire [31:0]axi4_lite_plug_M_AXI_WDATA;
  wire axi4_lite_plug_M_AXI_WREADY;
  wire [3:0]axi4_lite_plug_M_AXI_WSTRB;
  wire axi4_lite_plug_M_AXI_WVALID;
  wire axi_aclk;
  wire axi_aresetn;
  wire [0:0]clock_buffer_IBUF_DS_ODIV2;
  wire [0:0]clock_buffer_IBUF_OUT;
  wire [0:0]one_dout;
  wire [15:0]pcie_mgt_rxn;
  wire [15:0]pcie_mgt_rxp;
  wire [15:0]pcie_mgt_txn;
  wire [15:0]pcie_mgt_txp;

  assign M_AXI_B_araddr = \^M_AXI_B_araddr [0];
  assign M_AXI_B_arid = \^M_AXI_B_arid [0];
  assign M_AXI_B_arlen = \^M_AXI_B_arlen [0];
  assign M_AXI_B_arvalid[0] = \^M_AXI_B_arvalid ;
  assign M_AXI_B_awaddr = \^M_AXI_B_awaddr [0];
  assign M_AXI_B_awid = \^M_AXI_B_awid [0];
  assign M_AXI_B_awlen = \^M_AXI_B_awlen [0];
  assign M_AXI_B_awvalid[0] = \^M_AXI_B_awvalid ;
  assign M_AXI_B_bready[0] = \^M_AXI_B_bready ;
  assign M_AXI_B_rready[0] = \^M_AXI_B_rready ;
  assign M_AXI_B_wdata = \^M_AXI_B_wdata [0];
  assign M_AXI_B_wlast[0] = \^M_AXI_B_wlast ;
  assign M_AXI_B_wstrb = \^M_AXI_B_wstrb [0];
  assign M_AXI_B_wvalid[0] = \^M_AXI_B_wvalid ;
  top_level_axi4_lite_plug_0_0 axi4_lite_plug
       (.M_AXI_ARADDR(axi4_lite_plug_M_AXI_ARADDR),
        .M_AXI_ARREADY(axi4_lite_plug_M_AXI_ARREADY),
        .M_AXI_ARVALID(axi4_lite_plug_M_AXI_ARVALID),
        .M_AXI_AWADDR(axi4_lite_plug_M_AXI_AWADDR),
        .M_AXI_AWREADY(axi4_lite_plug_M_AXI_AWREADY),
        .M_AXI_AWVALID(axi4_lite_plug_M_AXI_AWVALID),
        .M_AXI_BREADY(axi4_lite_plug_M_AXI_BREADY),
        .M_AXI_BRESP(axi4_lite_plug_M_AXI_BRESP),
        .M_AXI_BVALID(axi4_lite_plug_M_AXI_BVALID),
        .M_AXI_RDATA(axi4_lite_plug_M_AXI_RDATA),
        .M_AXI_RREADY(axi4_lite_plug_M_AXI_RREADY),
        .M_AXI_RRESP(axi4_lite_plug_M_AXI_RRESP),
        .M_AXI_RVALID(axi4_lite_plug_M_AXI_RVALID),
        .M_AXI_WDATA(axi4_lite_plug_M_AXI_WDATA),
        .M_AXI_WREADY(axi4_lite_plug_M_AXI_WREADY),
        .M_AXI_WSTRB(axi4_lite_plug_M_AXI_WSTRB),
        .M_AXI_WVALID(axi4_lite_plug_M_AXI_WVALID),
        .clk(axi_aclk));
  top_level_util_ds_buf_0_0 clock_buffer
       (.IBUF_DS_N(PCIE_REFCLK_clk_n),
        .IBUF_DS_ODIV2(clock_buffer_IBUF_DS_ODIV2),
        .IBUF_DS_P(PCIE_REFCLK_clk_p),
        .IBUF_OUT(clock_buffer_IBUF_OUT));
  assign one_dout = 1'h1;
  top_level_xdma_0_0 pcie_bridge_0
       (.axi_aclk(axi_aclk),
        .axi_aresetn(axi_aresetn),
        .m_axib_araddr(\^M_AXI_B_araddr ),
        .m_axib_arburst(M_AXI_B_arburst),
        .m_axib_arcache(M_AXI_B_arcache),
        .m_axib_arid(\^M_AXI_B_arid ),
        .m_axib_arlen(\^M_AXI_B_arlen ),
        .m_axib_arlock(M_AXI_B_arlock),
        .m_axib_arprot(M_AXI_B_arprot),
        .m_axib_arready(M_AXI_B_arready),
        .m_axib_arsize(M_AXI_B_arsize),
        .m_axib_arvalid(\^M_AXI_B_arvalid ),
        .m_axib_awaddr(\^M_AXI_B_awaddr ),
        .m_axib_awburst(M_AXI_B_awburst),
        .m_axib_awcache(M_AXI_B_awcache),
        .m_axib_awid(\^M_AXI_B_awid ),
        .m_axib_awlen(\^M_AXI_B_awlen ),
        .m_axib_awlock(M_AXI_B_awlock),
        .m_axib_awprot(M_AXI_B_awprot),
        .m_axib_awready(M_AXI_B_awready),
        .m_axib_awsize(M_AXI_B_awsize),
        .m_axib_awvalid(\^M_AXI_B_awvalid ),
        .m_axib_bid({M_AXI_B_bid,M_AXI_B_bid,M_AXI_B_bid,M_AXI_B_bid}),
        .m_axib_bready(\^M_AXI_B_bready ),
        .m_axib_bresp(M_AXI_B_bresp),
        .m_axib_bvalid(M_AXI_B_bvalid),
        .m_axib_rdata({M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata}),
        .m_axib_rid({M_AXI_B_rid,M_AXI_B_rid,M_AXI_B_rid,M_AXI_B_rid}),
        .m_axib_rlast(M_AXI_B_rlast),
        .m_axib_rready(\^M_AXI_B_rready ),
        .m_axib_rresp(M_AXI_B_rresp),
        .m_axib_rvalid(M_AXI_B_rvalid),
        .m_axib_wdata(\^M_AXI_B_wdata ),
        .m_axib_wlast(\^M_AXI_B_wlast ),
        .m_axib_wready(M_AXI_B_wready),
        .m_axib_wstrb(\^M_AXI_B_wstrb ),
        .m_axib_wvalid(\^M_AXI_B_wvalid ),
        .pci_exp_rxn(pcie_mgt_rxn),
        .pci_exp_rxp(pcie_mgt_rxp),
        .pci_exp_txn(pcie_mgt_txn),
        .pci_exp_txp(pcie_mgt_txp),
        .s_axil_araddr(axi4_lite_plug_M_AXI_ARADDR),
        .s_axil_arprot({1'b0,1'b0,1'b0}),
        .s_axil_arready(axi4_lite_plug_M_AXI_ARREADY),
        .s_axil_arvalid(axi4_lite_plug_M_AXI_ARVALID),
        .s_axil_awaddr(axi4_lite_plug_M_AXI_AWADDR),
        .s_axil_awprot({1'b0,1'b0,1'b0}),
        .s_axil_awready(axi4_lite_plug_M_AXI_AWREADY),
        .s_axil_awvalid(axi4_lite_plug_M_AXI_AWVALID),
        .s_axil_bready(axi4_lite_plug_M_AXI_BREADY),
        .s_axil_bresp(axi4_lite_plug_M_AXI_BRESP),
        .s_axil_bvalid(axi4_lite_plug_M_AXI_BVALID),
        .s_axil_rdata(axi4_lite_plug_M_AXI_RDATA),
        .s_axil_rready(axi4_lite_plug_M_AXI_RREADY),
        .s_axil_rresp(axi4_lite_plug_M_AXI_RRESP),
        .s_axil_rvalid(axi4_lite_plug_M_AXI_RVALID),
        .s_axil_wdata(axi4_lite_plug_M_AXI_WDATA),
        .s_axil_wready(axi4_lite_plug_M_AXI_WREADY),
        .s_axil_wstrb(axi4_lite_plug_M_AXI_WSTRB),
        .s_axil_wvalid(axi4_lite_plug_M_AXI_WVALID),
        .sys_clk(clock_buffer_IBUF_DS_ODIV2),
        .sys_clk_gt(clock_buffer_IBUF_OUT),
        .sys_rst_n(one_dout),
        .usr_irq_req(1'b0));
endmodule

module source_160mhz_imp_1BFB87J
   (clk_in1,
    clk_out,
    resetn_out,
    src_arst);
  input clk_in1;
  output clk_out;
  output resetn_out;
  input src_arst;

  wire clk_in1;
  wire clk_out;
  wire resetn_out;
  wire src_arst;

  top_level_xpm_cdc_gen_0_1 async_resetn
       (.dest_arst(resetn_out),
        .dest_clk(clk_out),
        .src_arst(src_arst));
  top_level_clk_wiz_0_0 clk_160mhz
       (.clk_in1(clk_in1),
        .clk_out1(clk_out));
endmodule

(* CORE_GENERATION_INFO = "top_level,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=top_level,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=21,numReposBlks=17,numNonXlnxBlks=0,numHierBlks=4,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=7,numPkgbdBlks=0,bdsource=USER,\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"da_axi4_cnt\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"=2,\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"da_bram_cntlr_cnt\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"=2,\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"da_axi4_cnt\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"=1,\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"da_axi4_cnt\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"=1,\"\"\"\"\"\"\"\"\"\"\"\"da_axi4_cnt\"\"\"\"\"\"\"\"\"\"\"\"=1,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "top_level.hwdef" *) 
module top_level
   (CHIP_HSI_CLK,
    CHIP_PA_SYNC,
    CHIP_RESET_N,
    CHIP_SPI_CLK,
    CHIP_SPI_CSN,
    CHIP_SPI_MISO,
    CHIP_SPI_MOSI,
    CHIP_VDD,
    CHIP_VDDA,
    CHIP_VDDIO,
    CHIP_VDDLVDS,
    LVDS_CLK_clk_n,
    LVDS_CLK_clk_p,
    LVL_TRSL_OE_N,
    UCI_ADC_CSN,
    UCI_ADC_MISO,
    UCI_ADC_MOSI,
    UCI_ADC_SCK,
    init_clk_clk_n,
    init_clk_clk_p,
    pcie_mgt_rxn,
    pcie_mgt_rxp,
    pcie_mgt_txn,
    pcie_mgt_txp,
    pcie_refclk_clk_n,
    pcie_refclk_clk_p);
  output CHIP_HSI_CLK;
  input [0:0]CHIP_PA_SYNC;
  output CHIP_RESET_N;
  output CHIP_SPI_CLK;
  output CHIP_SPI_CSN;
  input CHIP_SPI_MISO;
  output CHIP_SPI_MOSI;
  output CHIP_VDD;
  output CHIP_VDDA;
  output CHIP_VDDIO;
  output CHIP_VDDLVDS;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 LVDS_CLK CLK_N" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME LVDS_CLK, CAN_DEBUG false, FREQ_HZ 100000000" *) output [0:0]LVDS_CLK_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 LVDS_CLK CLK_P" *) output [0:0]LVDS_CLK_clk_p;
  output LVL_TRSL_OE_N;
  output [2:0]UCI_ADC_CSN;
  input UCI_ADC_MISO;
  output UCI_ADC_MOSI;
  output UCI_ADC_SCK;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 init_clk CLK_N" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME init_clk, CAN_DEBUG false, FREQ_HZ 200000000" *) input init_clk_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 init_clk CLK_P" *) input init_clk_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt rxn" *) (* X_INTERFACE_MODE = "Master" *) input [15:0]pcie_mgt_rxn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt rxp" *) input [15:0]pcie_mgt_rxp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt txn" *) output [15:0]pcie_mgt_txn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt txp" *) output [15:0]pcie_mgt_txp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 pcie_refclk CLK_N" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pcie_refclk, CAN_DEBUG false, FREQ_HZ 100000000" *) input [0:0]pcie_refclk_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 pcie_refclk CLK_P" *) input [0:0]pcie_refclk_clk_p;

  wire CHIP_HSI_CLK;
  wire [0:0]CHIP_PA_SYNC_1;
  wire CHIP_RESET_N;
  wire CHIP_SPI_CLK;
  wire CHIP_SPI_CSN;
  wire CHIP_SPI_MISO;
  wire CHIP_SPI_MOSI;
  wire CHIP_VDD;
  wire CHIP_VDDA;
  wire CHIP_VDDIO;
  wire CHIP_VDDLVDS;
  wire [0:0]LVDS_CLK_clk_n;
  wire [0:0]LVDS_CLK_clk_p;
  wire LVL_TRSL_OE_N;
  wire S_AXI_1_ARADDR;
  wire [2:0]S_AXI_1_ARPROT;
  wire S_AXI_1_ARREADY;
  wire [0:0]S_AXI_1_ARVALID;
  wire S_AXI_1_AWADDR;
  wire [2:0]S_AXI_1_AWPROT;
  wire S_AXI_1_AWREADY;
  wire [0:0]S_AXI_1_AWVALID;
  wire [0:0]S_AXI_1_BREADY;
  wire [1:0]S_AXI_1_BRESP;
  wire S_AXI_1_BVALID;
  wire [31:0]S_AXI_1_RDATA;
  wire [0:0]S_AXI_1_RREADY;
  wire [1:0]S_AXI_1_RRESP;
  wire S_AXI_1_RVALID;
  wire S_AXI_1_WDATA;
  wire S_AXI_1_WREADY;
  wire S_AXI_1_WSTRB;
  wire [0:0]S_AXI_1_WVALID;
  wire S_AXI_2_ARADDR;
  wire [2:0]S_AXI_2_ARPROT;
  wire S_AXI_2_ARREADY;
  wire [0:0]S_AXI_2_ARVALID;
  wire S_AXI_2_AWADDR;
  wire [2:0]S_AXI_2_AWPROT;
  wire S_AXI_2_AWREADY;
  wire [0:0]S_AXI_2_AWVALID;
  wire [0:0]S_AXI_2_BREADY;
  wire [1:0]S_AXI_2_BRESP;
  wire S_AXI_2_BVALID;
  wire [31:0]S_AXI_2_RDATA;
  wire [0:0]S_AXI_2_RREADY;
  wire [1:0]S_AXI_2_RRESP;
  wire S_AXI_2_RVALID;
  wire S_AXI_2_WDATA;
  wire S_AXI_2_WREADY;
  wire S_AXI_2_WSTRB;
  wire [0:0]S_AXI_2_WVALID;
  wire [2:0]UCI_ADC_CSN;
  wire UCI_ADC_MISO;
  wire UCI_ADC_MOSI;
  wire UCI_ADC_SCK;
  wire async_resetn_dest_arst;
  wire clk_192mhz_clk_192;
  wire clk_768mhz_clk_768;
  wire init_clk_clk_n;
  wire init_clk_clk_p;
  wire pcie_bridge_0_axi_aclk;
  wire pcie_bridge_0_axi_aresetn;
  wire pcie_bridge_M_AXI_B_ARADDR;
  wire [1:0]pcie_bridge_M_AXI_B_ARBURST;
  wire [3:0]pcie_bridge_M_AXI_B_ARCACHE;
  wire pcie_bridge_M_AXI_B_ARID;
  wire pcie_bridge_M_AXI_B_ARLEN;
  wire pcie_bridge_M_AXI_B_ARLOCK;
  wire [2:0]pcie_bridge_M_AXI_B_ARPROT;
  wire [0:0]pcie_bridge_M_AXI_B_ARREADY;
  wire [2:0]pcie_bridge_M_AXI_B_ARSIZE;
  wire [0:0]pcie_bridge_M_AXI_B_ARVALID;
  wire pcie_bridge_M_AXI_B_AWADDR;
  wire [1:0]pcie_bridge_M_AXI_B_AWBURST;
  wire [3:0]pcie_bridge_M_AXI_B_AWCACHE;
  wire pcie_bridge_M_AXI_B_AWID;
  wire pcie_bridge_M_AXI_B_AWLEN;
  wire pcie_bridge_M_AXI_B_AWLOCK;
  wire [2:0]pcie_bridge_M_AXI_B_AWPROT;
  wire [0:0]pcie_bridge_M_AXI_B_AWREADY;
  wire [2:0]pcie_bridge_M_AXI_B_AWSIZE;
  wire [0:0]pcie_bridge_M_AXI_B_AWVALID;
  wire pcie_bridge_M_AXI_B_BID;
  wire [0:0]pcie_bridge_M_AXI_B_BREADY;
  wire [1:0]pcie_bridge_M_AXI_B_BRESP;
  wire [0:0]pcie_bridge_M_AXI_B_BVALID;
  wire pcie_bridge_M_AXI_B_RDATA;
  wire pcie_bridge_M_AXI_B_RID;
  wire [0:0]pcie_bridge_M_AXI_B_RLAST;
  wire [0:0]pcie_bridge_M_AXI_B_RREADY;
  wire [1:0]pcie_bridge_M_AXI_B_RRESP;
  wire [0:0]pcie_bridge_M_AXI_B_RVALID;
  wire pcie_bridge_M_AXI_B_WDATA;
  wire [0:0]pcie_bridge_M_AXI_B_WLAST;
  wire [0:0]pcie_bridge_M_AXI_B_WREADY;
  wire pcie_bridge_M_AXI_B_WSTRB;
  wire [0:0]pcie_bridge_M_AXI_B_WVALID;
  wire [15:0]pcie_mgt_rxn;
  wire [15:0]pcie_mgt_rxp;
  wire [15:0]pcie_mgt_txn;
  wire [15:0]pcie_mgt_txp;
  wire [0:0]pcie_refclk_clk_n;
  wire [0:0]pcie_refclk_clk_p;
  wire smartconnect_M00_AXI_ARADDR;
  wire [2:0]smartconnect_M00_AXI_ARPROT;
  wire smartconnect_M00_AXI_ARREADY;
  wire [0:0]smartconnect_M00_AXI_ARVALID;
  wire smartconnect_M00_AXI_AWADDR;
  wire [2:0]smartconnect_M00_AXI_AWPROT;
  wire smartconnect_M00_AXI_AWREADY;
  wire [0:0]smartconnect_M00_AXI_AWVALID;
  wire [0:0]smartconnect_M00_AXI_BREADY;
  wire [1:0]smartconnect_M00_AXI_BRESP;
  wire smartconnect_M00_AXI_BVALID;
  wire [31:0]smartconnect_M00_AXI_RDATA;
  wire [0:0]smartconnect_M00_AXI_RREADY;
  wire [1:0]smartconnect_M00_AXI_RRESP;
  wire smartconnect_M00_AXI_RVALID;
  wire smartconnect_M00_AXI_WDATA;
  wire smartconnect_M00_AXI_WREADY;
  wire smartconnect_M00_AXI_WSTRB;
  wire [0:0]smartconnect_M00_AXI_WVALID;
  wire source_160mhz_clk_out;

  assign CHIP_PA_SYNC_1 = CHIP_PA_SYNC[0];
  adc_bank_imp_1SLD8RV adc_bank
       (.S_AXI_araddr(S_AXI_2_ARADDR),
        .S_AXI_arprot(S_AXI_2_ARPROT),
        .S_AXI_arready(S_AXI_2_ARREADY),
        .S_AXI_arvalid(S_AXI_2_ARVALID),
        .S_AXI_awaddr(S_AXI_2_AWADDR),
        .S_AXI_awprot(S_AXI_2_AWPROT),
        .S_AXI_awready(S_AXI_2_AWREADY),
        .S_AXI_awvalid(S_AXI_2_AWVALID),
        .S_AXI_bready(S_AXI_2_BREADY),
        .S_AXI_bresp(S_AXI_2_BRESP),
        .S_AXI_bvalid(S_AXI_2_BVALID),
        .S_AXI_rdata(S_AXI_2_RDATA),
        .S_AXI_rready(S_AXI_2_RREADY),
        .S_AXI_rresp(S_AXI_2_RRESP),
        .S_AXI_rvalid(S_AXI_2_RVALID),
        .S_AXI_wdata(S_AXI_2_WDATA),
        .S_AXI_wready(S_AXI_2_WREADY),
        .S_AXI_wstrb(S_AXI_2_WSTRB),
        .S_AXI_wvalid(S_AXI_2_WVALID),
        .UCI_ADC_CSN(UCI_ADC_CSN),
        .UCI_ADC_MISO(UCI_ADC_MISO),
        .UCI_ADC_MOSI(UCI_ADC_MOSI),
        .UCI_ADC_SCK(UCI_ADC_SCK),
        .clk(pcie_bridge_0_axi_aclk),
        .resetn(pcie_bridge_0_axi_aresetn));
  chip_spi_imp_HJ3TY6 chip_spi
       (.CHIP_SPI_CLK(CHIP_SPI_CLK),
        .CHIP_SPI_CSN(CHIP_SPI_CSN),
        .CHIP_SPI_MISO(CHIP_SPI_MISO),
        .CHIP_SPI_MOSI(CHIP_SPI_MOSI),
        .HSI_CLK(CHIP_HSI_CLK),
        .S_AXI_araddr(S_AXI_1_ARADDR),
        .S_AXI_arprot(S_AXI_1_ARPROT),
        .S_AXI_arready(S_AXI_1_ARREADY),
        .S_AXI_arvalid(S_AXI_1_ARVALID),
        .S_AXI_awaddr(S_AXI_1_AWADDR),
        .S_AXI_awprot(S_AXI_1_AWPROT),
        .S_AXI_awready(S_AXI_1_AWREADY),
        .S_AXI_awvalid(S_AXI_1_AWVALID),
        .S_AXI_bready(S_AXI_1_BREADY),
        .S_AXI_bresp(S_AXI_1_BRESP),
        .S_AXI_bvalid(S_AXI_1_BVALID),
        .S_AXI_rdata(S_AXI_1_RDATA),
        .S_AXI_rready(S_AXI_1_RREADY),
        .S_AXI_rresp(S_AXI_1_RRESP),
        .S_AXI_rvalid(S_AXI_1_RVALID),
        .S_AXI_wdata(S_AXI_1_WDATA),
        .S_AXI_wready(S_AXI_1_WREADY),
        .S_AXI_wstrb(S_AXI_1_WSTRB),
        .S_AXI_wvalid(S_AXI_1_WVALID),
        .clk(source_160mhz_clk_out),
        .resetn(async_resetn_dest_arst));
  top_level_clk_wiz_0_1 clk_192mhz
       (.clk_192(clk_192mhz_clk_192),
        .clk_in1_n(init_clk_clk_n),
        .clk_in1_p(init_clk_clk_p));
  top_level_clk_wiz_0_2 clk_768mhz
       (.clk_768(clk_768mhz_clk_768),
        .clk_in1(clk_192mhz_clk_192));
  top_level_indy_power_ctl_0_0 indy_power_ctl
       (.S_AXI_ARADDR({smartconnect_M00_AXI_ARADDR,smartconnect_M00_AXI_ARADDR,smartconnect_M00_AXI_ARADDR,smartconnect_M00_AXI_ARADDR,smartconnect_M00_AXI_ARADDR,smartconnect_M00_AXI_ARADDR,smartconnect_M00_AXI_ARADDR,smartconnect_M00_AXI_ARADDR}),
        .S_AXI_ARPROT(smartconnect_M00_AXI_ARPROT),
        .S_AXI_ARREADY(smartconnect_M00_AXI_ARREADY),
        .S_AXI_ARVALID(smartconnect_M00_AXI_ARVALID),
        .S_AXI_AWADDR({smartconnect_M00_AXI_AWADDR,smartconnect_M00_AXI_AWADDR,smartconnect_M00_AXI_AWADDR,smartconnect_M00_AXI_AWADDR,smartconnect_M00_AXI_AWADDR,smartconnect_M00_AXI_AWADDR,smartconnect_M00_AXI_AWADDR,smartconnect_M00_AXI_AWADDR}),
        .S_AXI_AWPROT(smartconnect_M00_AXI_AWPROT),
        .S_AXI_AWREADY(smartconnect_M00_AXI_AWREADY),
        .S_AXI_AWVALID(smartconnect_M00_AXI_AWVALID),
        .S_AXI_BREADY(smartconnect_M00_AXI_BREADY),
        .S_AXI_BRESP(smartconnect_M00_AXI_BRESP),
        .S_AXI_BVALID(smartconnect_M00_AXI_BVALID),
        .S_AXI_RDATA(smartconnect_M00_AXI_RDATA),
        .S_AXI_RREADY(smartconnect_M00_AXI_RREADY),
        .S_AXI_RRESP(smartconnect_M00_AXI_RRESP),
        .S_AXI_RVALID(smartconnect_M00_AXI_RVALID),
        .S_AXI_WDATA({smartconnect_M00_AXI_WDATA,smartconnect_M00_AXI_WDATA,smartconnect_M00_AXI_WDATA,smartconnect_M00_AXI_WDATA,smartconnect_M00_AXI_WDATA,smartconnect_M00_AXI_WDATA,smartconnect_M00_AXI_WDATA,smartconnect_M00_AXI_WDATA,smartconnect_M00_AXI_WDATA,smartconnect_M00_AXI_WDATA,smartconnect_M00_AXI_WDATA,smartconnect_M00_AXI_WDATA,smartconnect_M00_AXI_WDATA,smartconnect_M00_AXI_WDATA,smartconnect_M00_AXI_WDATA,smartconnect_M00_AXI_WDATA,smartconnect_M00_AXI_WDATA,smartconnect_M00_AXI_WDATA,smartconnect_M00_AXI_WDATA,smartconnect_M00_AXI_WDATA,smartconnect_M00_AXI_WDATA,smartconnect_M00_AXI_WDATA,smartconnect_M00_AXI_WDATA,smartconnect_M00_AXI_WDATA,smartconnect_M00_AXI_WDATA,smartconnect_M00_AXI_WDATA,smartconnect_M00_AXI_WDATA,smartconnect_M00_AXI_WDATA,smartconnect_M00_AXI_WDATA,smartconnect_M00_AXI_WDATA,smartconnect_M00_AXI_WDATA,smartconnect_M00_AXI_WDATA}),
        .S_AXI_WREADY(smartconnect_M00_AXI_WREADY),
        .S_AXI_WSTRB({smartconnect_M00_AXI_WSTRB,smartconnect_M00_AXI_WSTRB,smartconnect_M00_AXI_WSTRB,smartconnect_M00_AXI_WSTRB}),
        .S_AXI_WVALID(smartconnect_M00_AXI_WVALID),
        .chip_reset_n(CHIP_RESET_N),
        .chip_vdd(CHIP_VDD),
        .chip_vdda(CHIP_VDDA),
        .chip_vddio(CHIP_VDDIO),
        .chip_vddlvds(CHIP_VDDLVDS),
        .clk(pcie_bridge_0_axi_aclk),
        .lvl_trsl_oe_n(LVL_TRSL_OE_N),
        .resetn(pcie_bridge_0_axi_aresetn));
  top_level_util_ds_buf_0_1 lvds_clk_buffer
       (.OBUF_DS_N(LVDS_CLK_clk_n),
        .OBUF_DS_P(LVDS_CLK_clk_p),
        .OBUF_IN(clk_768mhz_clk_768));
  pcie_bridge_imp_1AINXYK pcie_bridge
       (.M_AXI_B_araddr(pcie_bridge_M_AXI_B_ARADDR),
        .M_AXI_B_arburst(pcie_bridge_M_AXI_B_ARBURST),
        .M_AXI_B_arcache(pcie_bridge_M_AXI_B_ARCACHE),
        .M_AXI_B_arid(pcie_bridge_M_AXI_B_ARID),
        .M_AXI_B_arlen(pcie_bridge_M_AXI_B_ARLEN),
        .M_AXI_B_arlock(pcie_bridge_M_AXI_B_ARLOCK),
        .M_AXI_B_arprot(pcie_bridge_M_AXI_B_ARPROT),
        .M_AXI_B_arready(pcie_bridge_M_AXI_B_ARREADY),
        .M_AXI_B_arsize(pcie_bridge_M_AXI_B_ARSIZE),
        .M_AXI_B_arvalid(pcie_bridge_M_AXI_B_ARVALID),
        .M_AXI_B_awaddr(pcie_bridge_M_AXI_B_AWADDR),
        .M_AXI_B_awburst(pcie_bridge_M_AXI_B_AWBURST),
        .M_AXI_B_awcache(pcie_bridge_M_AXI_B_AWCACHE),
        .M_AXI_B_awid(pcie_bridge_M_AXI_B_AWID),
        .M_AXI_B_awlen(pcie_bridge_M_AXI_B_AWLEN),
        .M_AXI_B_awlock(pcie_bridge_M_AXI_B_AWLOCK),
        .M_AXI_B_awprot(pcie_bridge_M_AXI_B_AWPROT),
        .M_AXI_B_awready(pcie_bridge_M_AXI_B_AWREADY),
        .M_AXI_B_awsize(pcie_bridge_M_AXI_B_AWSIZE),
        .M_AXI_B_awvalid(pcie_bridge_M_AXI_B_AWVALID),
        .M_AXI_B_bid(pcie_bridge_M_AXI_B_BID),
        .M_AXI_B_bready(pcie_bridge_M_AXI_B_BREADY),
        .M_AXI_B_bresp(pcie_bridge_M_AXI_B_BRESP),
        .M_AXI_B_bvalid(pcie_bridge_M_AXI_B_BVALID),
        .M_AXI_B_rdata(pcie_bridge_M_AXI_B_RDATA),
        .M_AXI_B_rid(pcie_bridge_M_AXI_B_RID),
        .M_AXI_B_rlast(pcie_bridge_M_AXI_B_RLAST),
        .M_AXI_B_rready(pcie_bridge_M_AXI_B_RREADY),
        .M_AXI_B_rresp(pcie_bridge_M_AXI_B_RRESP),
        .M_AXI_B_rvalid(pcie_bridge_M_AXI_B_RVALID),
        .M_AXI_B_wdata(pcie_bridge_M_AXI_B_WDATA),
        .M_AXI_B_wlast(pcie_bridge_M_AXI_B_WLAST),
        .M_AXI_B_wready(pcie_bridge_M_AXI_B_WREADY),
        .M_AXI_B_wstrb(pcie_bridge_M_AXI_B_WSTRB),
        .M_AXI_B_wvalid(pcie_bridge_M_AXI_B_WVALID),
        .PCIE_REFCLK_clk_n(pcie_refclk_clk_n),
        .PCIE_REFCLK_clk_p(pcie_refclk_clk_p),
        .axi_aclk(pcie_bridge_0_axi_aclk),
        .axi_aresetn(pcie_bridge_0_axi_aresetn),
        .pcie_mgt_rxn(pcie_mgt_rxn),
        .pcie_mgt_rxp(pcie_mgt_rxp),
        .pcie_mgt_txn(pcie_mgt_txn),
        .pcie_mgt_txp(pcie_mgt_txp));
  top_level_smartconnect_0_0 smartconnect
       (.M00_AXI_araddr(smartconnect_M00_AXI_ARADDR),
        .M00_AXI_arprot(smartconnect_M00_AXI_ARPROT),
        .M00_AXI_arready(smartconnect_M00_AXI_ARREADY),
        .M00_AXI_arvalid(smartconnect_M00_AXI_ARVALID),
        .M00_AXI_awaddr(smartconnect_M00_AXI_AWADDR),
        .M00_AXI_awprot(smartconnect_M00_AXI_AWPROT),
        .M00_AXI_awready(smartconnect_M00_AXI_AWREADY),
        .M00_AXI_awvalid(smartconnect_M00_AXI_AWVALID),
        .M00_AXI_bid(1'b0),
        .M00_AXI_bready(smartconnect_M00_AXI_BREADY),
        .M00_AXI_bresp(smartconnect_M00_AXI_BRESP),
        .M00_AXI_buser(1'b0),
        .M00_AXI_bvalid(smartconnect_M00_AXI_BVALID),
        .M00_AXI_rdata(smartconnect_M00_AXI_RDATA[0]),
        .M00_AXI_rid(1'b0),
        .M00_AXI_rlast(1'b0),
        .M00_AXI_rready(smartconnect_M00_AXI_RREADY),
        .M00_AXI_rresp(smartconnect_M00_AXI_RRESP),
        .M00_AXI_ruser(1'b0),
        .M00_AXI_rvalid(smartconnect_M00_AXI_RVALID),
        .M00_AXI_wdata(smartconnect_M00_AXI_WDATA),
        .M00_AXI_wready(smartconnect_M00_AXI_WREADY),
        .M00_AXI_wstrb(smartconnect_M00_AXI_WSTRB),
        .M00_AXI_wvalid(smartconnect_M00_AXI_WVALID),
        .M01_AXI_araddr(S_AXI_2_ARADDR),
        .M01_AXI_arprot(S_AXI_2_ARPROT),
        .M01_AXI_arready(S_AXI_2_ARREADY),
        .M01_AXI_arvalid(S_AXI_2_ARVALID),
        .M01_AXI_awaddr(S_AXI_2_AWADDR),
        .M01_AXI_awprot(S_AXI_2_AWPROT),
        .M01_AXI_awready(S_AXI_2_AWREADY),
        .M01_AXI_awvalid(S_AXI_2_AWVALID),
        .M01_AXI_bid(1'b0),
        .M01_AXI_bready(S_AXI_2_BREADY),
        .M01_AXI_bresp(S_AXI_2_BRESP),
        .M01_AXI_buser(1'b0),
        .M01_AXI_bvalid(S_AXI_2_BVALID),
        .M01_AXI_rdata(S_AXI_2_RDATA[0]),
        .M01_AXI_rid(1'b0),
        .M01_AXI_rlast(1'b0),
        .M01_AXI_rready(S_AXI_2_RREADY),
        .M01_AXI_rresp(S_AXI_2_RRESP),
        .M01_AXI_ruser(1'b0),
        .M01_AXI_rvalid(S_AXI_2_RVALID),
        .M01_AXI_wdata(S_AXI_2_WDATA),
        .M01_AXI_wready(S_AXI_2_WREADY),
        .M01_AXI_wstrb(S_AXI_2_WSTRB),
        .M01_AXI_wvalid(S_AXI_2_WVALID),
        .M02_AXI_araddr(S_AXI_1_ARADDR),
        .M02_AXI_arprot(S_AXI_1_ARPROT),
        .M02_AXI_arready(S_AXI_1_ARREADY),
        .M02_AXI_arvalid(S_AXI_1_ARVALID),
        .M02_AXI_awaddr(S_AXI_1_AWADDR),
        .M02_AXI_awprot(S_AXI_1_AWPROT),
        .M02_AXI_awready(S_AXI_1_AWREADY),
        .M02_AXI_awvalid(S_AXI_1_AWVALID),
        .M02_AXI_bid(1'b0),
        .M02_AXI_bready(S_AXI_1_BREADY),
        .M02_AXI_bresp(S_AXI_1_BRESP),
        .M02_AXI_buser(1'b0),
        .M02_AXI_bvalid(S_AXI_1_BVALID),
        .M02_AXI_rdata(S_AXI_1_RDATA[0]),
        .M02_AXI_rid(1'b0),
        .M02_AXI_rlast(1'b0),
        .M02_AXI_rready(S_AXI_1_RREADY),
        .M02_AXI_rresp(S_AXI_1_RRESP),
        .M02_AXI_ruser(1'b0),
        .M02_AXI_rvalid(S_AXI_1_RVALID),
        .M02_AXI_wdata(S_AXI_1_WDATA),
        .M02_AXI_wready(S_AXI_1_WREADY),
        .M02_AXI_wstrb(S_AXI_1_WSTRB),
        .M02_AXI_wvalid(S_AXI_1_WVALID),
        .S00_AXI_araddr(pcie_bridge_M_AXI_B_ARADDR),
        .S00_AXI_arburst(pcie_bridge_M_AXI_B_ARBURST),
        .S00_AXI_arcache(pcie_bridge_M_AXI_B_ARCACHE),
        .S00_AXI_arid(pcie_bridge_M_AXI_B_ARID),
        .S00_AXI_arlen(pcie_bridge_M_AXI_B_ARLEN),
        .S00_AXI_arlock(pcie_bridge_M_AXI_B_ARLOCK),
        .S00_AXI_arprot(pcie_bridge_M_AXI_B_ARPROT),
        .S00_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_arready(pcie_bridge_M_AXI_B_ARREADY),
        .S00_AXI_arregion({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_arsize(pcie_bridge_M_AXI_B_ARSIZE),
        .S00_AXI_aruser(1'b0),
        .S00_AXI_arvalid(pcie_bridge_M_AXI_B_ARVALID),
        .S00_AXI_awaddr(pcie_bridge_M_AXI_B_AWADDR),
        .S00_AXI_awburst(pcie_bridge_M_AXI_B_AWBURST),
        .S00_AXI_awcache(pcie_bridge_M_AXI_B_AWCACHE),
        .S00_AXI_awid(pcie_bridge_M_AXI_B_AWID),
        .S00_AXI_awlen(pcie_bridge_M_AXI_B_AWLEN),
        .S00_AXI_awlock(pcie_bridge_M_AXI_B_AWLOCK),
        .S00_AXI_awprot(pcie_bridge_M_AXI_B_AWPROT),
        .S00_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_awready(pcie_bridge_M_AXI_B_AWREADY),
        .S00_AXI_awregion({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_awsize(pcie_bridge_M_AXI_B_AWSIZE),
        .S00_AXI_awuser(1'b0),
        .S00_AXI_awvalid(pcie_bridge_M_AXI_B_AWVALID),
        .S00_AXI_bid(pcie_bridge_M_AXI_B_BID),
        .S00_AXI_bready(pcie_bridge_M_AXI_B_BREADY),
        .S00_AXI_bresp(pcie_bridge_M_AXI_B_BRESP),
        .S00_AXI_bvalid(pcie_bridge_M_AXI_B_BVALID),
        .S00_AXI_rdata(pcie_bridge_M_AXI_B_RDATA),
        .S00_AXI_rid(pcie_bridge_M_AXI_B_RID),
        .S00_AXI_rlast(pcie_bridge_M_AXI_B_RLAST),
        .S00_AXI_rready(pcie_bridge_M_AXI_B_RREADY),
        .S00_AXI_rresp(pcie_bridge_M_AXI_B_RRESP),
        .S00_AXI_rvalid(pcie_bridge_M_AXI_B_RVALID),
        .S00_AXI_wdata(pcie_bridge_M_AXI_B_WDATA),
        .S00_AXI_wid(1'b0),
        .S00_AXI_wlast(pcie_bridge_M_AXI_B_WLAST),
        .S00_AXI_wready(pcie_bridge_M_AXI_B_WREADY),
        .S00_AXI_wstrb(pcie_bridge_M_AXI_B_WSTRB),
        .S00_AXI_wuser(1'b0),
        .S00_AXI_wvalid(pcie_bridge_M_AXI_B_WVALID),
        .aclk(pcie_bridge_0_axi_aclk),
        .aclk1(source_160mhz_clk_out),
        .aresetn(pcie_bridge_0_axi_aresetn));
  source_160mhz_imp_1BFB87J source_160mhz
       (.clk_in1(pcie_bridge_0_axi_aclk),
        .clk_out(source_160mhz_clk_out),
        .resetn_out(async_resetn_dest_arst),
        .src_arst(pcie_bridge_0_axi_aresetn));
  top_level_system_ila_0_0 system_ila
       (.clk(clk_192mhz_clk_192),
        .probe0(CHIP_PA_SYNC_1));
endmodule
