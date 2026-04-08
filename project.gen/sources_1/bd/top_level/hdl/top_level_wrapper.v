//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
//Date        : Wed Apr  8 01:07:44 2026
//Host        : wolf-super-server running 64-bit Ubuntu 20.04.6 LTS
//Command     : generate_target top_level_wrapper.bd
//Design      : top_level_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module top_level_wrapper
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
  output [0:0]LVDS_CLK_clk_n;
  output [0:0]LVDS_CLK_clk_p;
  output LVL_TRSL_OE_N;
  output [2:0]UCI_ADC_CSN;
  input UCI_ADC_MISO;
  output UCI_ADC_MOSI;
  output UCI_ADC_SCK;
  input init_clk_clk_n;
  input init_clk_clk_p;
  input [15:0]pcie_mgt_rxn;
  input [15:0]pcie_mgt_rxp;
  output [15:0]pcie_mgt_txn;
  output [15:0]pcie_mgt_txp;
  input [0:0]pcie_refclk_clk_n;
  input [0:0]pcie_refclk_clk_p;

  wire CHIP_HSI_CLK;
  wire [0:0]CHIP_PA_SYNC;
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
  wire [2:0]UCI_ADC_CSN;
  wire UCI_ADC_MISO;
  wire UCI_ADC_MOSI;
  wire UCI_ADC_SCK;
  wire init_clk_clk_n;
  wire init_clk_clk_p;
  wire [15:0]pcie_mgt_rxn;
  wire [15:0]pcie_mgt_rxp;
  wire [15:0]pcie_mgt_txn;
  wire [15:0]pcie_mgt_txp;
  wire [0:0]pcie_refclk_clk_n;
  wire [0:0]pcie_refclk_clk_p;

  top_level top_level_i
       (.CHIP_HSI_CLK(CHIP_HSI_CLK),
        .CHIP_PA_SYNC(CHIP_PA_SYNC),
        .CHIP_RESET_N(CHIP_RESET_N),
        .CHIP_SPI_CLK(CHIP_SPI_CLK),
        .CHIP_SPI_CSN(CHIP_SPI_CSN),
        .CHIP_SPI_MISO(CHIP_SPI_MISO),
        .CHIP_SPI_MOSI(CHIP_SPI_MOSI),
        .CHIP_VDD(CHIP_VDD),
        .CHIP_VDDA(CHIP_VDDA),
        .CHIP_VDDIO(CHIP_VDDIO),
        .CHIP_VDDLVDS(CHIP_VDDLVDS),
        .LVDS_CLK_clk_n(LVDS_CLK_clk_n),
        .LVDS_CLK_clk_p(LVDS_CLK_clk_p),
        .LVL_TRSL_OE_N(LVL_TRSL_OE_N),
        .UCI_ADC_CSN(UCI_ADC_CSN),
        .UCI_ADC_MISO(UCI_ADC_MISO),
        .UCI_ADC_MOSI(UCI_ADC_MOSI),
        .UCI_ADC_SCK(UCI_ADC_SCK),
        .init_clk_clk_n(init_clk_clk_n),
        .init_clk_clk_p(init_clk_clk_p),
        .pcie_mgt_rxn(pcie_mgt_rxn),
        .pcie_mgt_rxp(pcie_mgt_rxp),
        .pcie_mgt_txn(pcie_mgt_txn),
        .pcie_mgt_txp(pcie_mgt_txp),
        .pcie_refclk_clk_n(pcie_refclk_clk_n),
        .pcie_refclk_clk_p(pcie_refclk_clk_p));
endmodule
