// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Apr 22 19:34:27 2025
// Host        : DESKTOP-T6EH2BO running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/ChristopherSam/XilinxProjects/HelloEthernet/HelloEthernet.srcs/sources_1/ip/axi_ethernetlite_0/axi_ethernetlite_0_stub.v
// Design      : axi_ethernetlite_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "axi_ethernetlite,Vivado 2018.3" *)
module axi_ethernetlite_0(s_axi_aclk, s_axi_aresetn, ip2intc_irpt, 
  s_axi_awaddr, s_axi_awvalid, s_axi_awready, s_axi_wdata, s_axi_wstrb, s_axi_wvalid, 
  s_axi_wready, s_axi_bresp, s_axi_bvalid, s_axi_bready, s_axi_araddr, s_axi_arvalid, 
  s_axi_arready, s_axi_rdata, s_axi_rresp, s_axi_rvalid, s_axi_rready, phy_tx_clk, phy_rx_clk, 
  phy_crs, phy_dv, phy_rx_data, phy_col, phy_rx_er, phy_rst_n, phy_tx_en, phy_tx_data, phy_mdio_i, 
  phy_mdio_o, phy_mdio_t, phy_mdc)
/* synthesis syn_black_box black_box_pad_pin="s_axi_aclk,s_axi_aresetn,ip2intc_irpt,s_axi_awaddr[12:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wvalid,s_axi_wready,s_axi_bresp[1:0],s_axi_bvalid,s_axi_bready,s_axi_araddr[12:0],s_axi_arvalid,s_axi_arready,s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rvalid,s_axi_rready,phy_tx_clk,phy_rx_clk,phy_crs,phy_dv,phy_rx_data[3:0],phy_col,phy_rx_er,phy_rst_n,phy_tx_en,phy_tx_data[3:0],phy_mdio_i,phy_mdio_o,phy_mdio_t,phy_mdc" */;
  input s_axi_aclk;
  input s_axi_aresetn;
  output ip2intc_irpt;
  input [12:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [12:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  input phy_tx_clk;
  input phy_rx_clk;
  input phy_crs;
  input phy_dv;
  input [3:0]phy_rx_data;
  input phy_col;
  input phy_rx_er;
  output phy_rst_n;
  output phy_tx_en;
  output [3:0]phy_tx_data;
  input phy_mdio_i;
  output phy_mdio_o;
  output phy_mdio_t;
  output phy_mdc;
endmodule
