# file: axi_ethernetlite_0.xdc
# (c) Copyright 2009 - 2011 Xilinx, Inc. All rights reserved.
#
# This file contains confidential and proprietary information
# of Xilinx, Inc. and is protected under U.S. and
# international copyright and other intellectual property
# laws.
#
# DISCLAIMER
# This disclaimer is not a license and does not grant any
# rights to the materials distributed herewith. Except as
# otherwise provided in a valid license issued to you by
# Xilinx, and to the maximum extent permitted by applicable
# law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
# WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
# AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
# BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
# INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
# (2) Xilinx shall not be liable (whether in contract or tort,
# including negligence, or under any other theory of
# liability) for any loss or damage of any kind or nature
# related to, arising under or in connection with these
# materials, including for any direct, or any indirect,
# special, incidental, or consequential loss or damage
# (including loss of data, profits, goodwill, or any type of
# loss or damage suffered as a result of any action brought
# by a third party) even if such damage or loss was
# reasonably foreseeable or Xilinx had been advised of the
# possibility of the same.
#
# CRITICAL APPLICATIONS
# Xilinx products are not designed or intended to be fail-
# safe, or for use in any application requiring fail-safe
# performance, such as life-support or safety devices or
# systems, Class III medical devices, nuclear facilities,
# applications related to the deployment of airbags, or any
# other applications that could lead to death, personal
# injury, or severe property or environmental damage
# (individually and collectively, "Critical
# Applications"). Customer assumes the sole risk and
# liability of any use of Xilinx products in Critical
# Applications, subject only to applicable laws and
# regulations governing limitations on product liability.
#
# THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
# PART OF THIS FILE AT ALL TIMES.

create_clock -period 40 [get_ports phy_tx_clk] 
create_clock -period 40 [get_ports phy_rx_clk]

## INFO: AXI-Lite to&fro MMAP clock domain Register & Misc crossings in axi_ethernetlite
set_false_path -to [get_pins -leaf -of_objects [get_cells -hier *cdc_to* -filter {is_sequential}] -filter {NAME=~*/D}]

##set_false_path -to [get_cells -hierarchical -filter {NAME =~*TX_FF_I}]
##set_false_path -to [get_cells -hierarchical -filter {NAME =~*TEN_FF}]
set_false_path -through [get_cells -hierarchical -filter {NAME =~*loopback_en_reg}]

set_property IOB true [get_cells -hierarchical -filter {NAME =~*RX_FF_I}]
set_property IOB true [get_cells -hierarchical -filter {NAME =~*TX_FF_I}]
set_property IOB true [get_cells -hierarchical -filter {NAME =~*DVD_FF}]
set_property IOB true [get_cells -hierarchical -filter {NAME =~*RER_FF}]
set_property IOB true [get_cells -hierarchical -filter {NAME =~*TEN_FF}]
