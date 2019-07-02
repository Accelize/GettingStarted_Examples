-- Amazon FPGA Hardware Development Kit
--
-- Copyright 2016 Amazon.com, Inc. or its affiliates. All Rights Reserved.
--
-- Licensed under the Amazon Software License (the "License"). You may not use
-- this file except in compliance with the License. A copy of the License is
-- located at
--
--    http://aws.amazon.com/asl/
--
-- or in the "license" file accompanying this file. This file is distributed on
-- an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, express or
-- implied. See the License for the specific language governing permissions and
-- limitations under the License.

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cl_vhdl_wrapper is
  generic (
    OCL_PRESENT                         : integer range 0 to 1    := 0;
    USR_PRESENT                         : integer range 0 to 1    := 0;
    SDA_PRESENT                         : integer range 0 to 1    := 0;
    PCIS_PRESENT                        : integer range 0 to 1    := 0;
    DDR4_SH_PRESENT                     : integer range 0 to 1    := 0;
    DDR4_CL_PRESENT                     : integer range 0 to 1    := 0;  
    PCIM_PRESENT                        : integer range 0 to 1    := 0;
    DEBUG_PRESENT                       : integer range 0 to 1    := 0
  
  );
  port (
    AXIL_OCL_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AXIL_OCL_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    AXIL_OCL_arready : out STD_LOGIC;
    AXIL_OCL_arvalid : in STD_LOGIC;
    AXIL_OCL_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AXIL_OCL_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    AXIL_OCL_awready : out STD_LOGIC;
    AXIL_OCL_awvalid : in STD_LOGIC;
    AXIL_OCL_bready : in STD_LOGIC;
    AXIL_OCL_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    AXIL_OCL_bvalid : out STD_LOGIC;
    AXIL_OCL_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    AXIL_OCL_rready : in STD_LOGIC;
    AXIL_OCL_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    AXIL_OCL_rvalid : out STD_LOGIC;
    AXIL_OCL_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AXIL_OCL_wready : out STD_LOGIC;
    AXIL_OCL_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AXIL_OCL_wvalid : in STD_LOGIC;
    AXIL_SDA_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AXIL_SDA_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    AXIL_SDA_arready : out STD_LOGIC;
    AXIL_SDA_arvalid : in STD_LOGIC;
    AXIL_SDA_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AXIL_SDA_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    AXIL_SDA_awready : out STD_LOGIC;
    AXIL_SDA_awvalid : in STD_LOGIC;
    AXIL_SDA_bready : in STD_LOGIC;
    AXIL_SDA_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    AXIL_SDA_bvalid : out STD_LOGIC;
    AXIL_SDA_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    AXIL_SDA_rready : in STD_LOGIC;
    AXIL_SDA_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    AXIL_SDA_rvalid : out STD_LOGIC;
    AXIL_SDA_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AXIL_SDA_wready : out STD_LOGIC;
    AXIL_SDA_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AXIL_SDA_wvalid : in STD_LOGIC;
    AXIL_USR_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AXIL_USR_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    AXIL_USR_arready : out STD_LOGIC;
    AXIL_USR_arvalid : in STD_LOGIC;
    AXIL_USR_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AXIL_USR_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    AXIL_USR_awready : out STD_LOGIC;
    AXIL_USR_awvalid : in STD_LOGIC;
    AXIL_USR_bready : in STD_LOGIC;
    AXIL_USR_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    AXIL_USR_bvalid : out STD_LOGIC;
    AXIL_USR_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    AXIL_USR_rready : in STD_LOGIC;
    AXIL_USR_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    AXIL_USR_rvalid : out STD_LOGIC;
    AXIL_USR_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AXIL_USR_wready : out STD_LOGIC;
    AXIL_USR_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AXIL_USR_wvalid : in STD_LOGIC;
    DDR4_A_READY : in STD_LOGIC;
    DDR4_A_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    --DDR4_A_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    --DDR4_A_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR4_A_arid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    DDR4_A_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    --DDR4_A_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    --DDR4_A_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    --DDR4_A_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR4_A_arready : in STD_LOGIC;
    --DDR4_A_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR4_A_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR4_A_arvalid : out STD_LOGIC;
    DDR4_A_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    --DDR4_A_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    --DDR4_A_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR4_A_awid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    DDR4_A_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    --DDR4_A_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    --DDR4_A_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    --DDR4_A_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR4_A_awready : in STD_LOGIC;
    --DDR4_A_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR4_A_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR4_A_awvalid : out STD_LOGIC;
    DDR4_A_bid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DDR4_A_bready : out STD_LOGIC;
    DDR4_A_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DDR4_A_bvalid : in STD_LOGIC;
    DDR4_A_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    DDR4_A_rid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DDR4_A_rlast : in STD_LOGIC;
    DDR4_A_rready : out STD_LOGIC;
    DDR4_A_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DDR4_A_rvalid : in STD_LOGIC;
    DDR4_A_wdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    DDR4_A_wlast : out STD_LOGIC;
    DDR4_A_wready : in STD_LOGIC;
    DDR4_A_wstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    DDR4_A_wvalid : out STD_LOGIC;
    DDR4_B_READY : in STD_LOGIC;
    DDR4_B_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    --DDR4_B_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    --DDR4_B_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR4_B_arid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    DDR4_B_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    --DDR4_B_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    --DDR4_B_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    --DDR4_B_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR4_B_arready : in STD_LOGIC;
    --DDR4_B_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR4_B_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR4_B_arvalid : out STD_LOGIC;
    DDR4_B_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    --DDR4_B_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    --DDR4_B_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR4_B_awid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    DDR4_B_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    --DDR4_B_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    --DDR4_B_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    --DDR4_B_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR4_B_awready : in STD_LOGIC;
    --DDR4_B_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR4_B_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR4_B_awvalid : out STD_LOGIC;
    DDR4_B_bid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DDR4_B_bready : out STD_LOGIC;
    DDR4_B_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DDR4_B_bvalid : in STD_LOGIC;
    DDR4_B_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    DDR4_B_rid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DDR4_B_rlast : in STD_LOGIC;
    DDR4_B_rready : out STD_LOGIC;
    DDR4_B_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DDR4_B_rvalid : in STD_LOGIC;
    DDR4_B_wdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    DDR4_B_wlast : out STD_LOGIC;
    DDR4_B_wready : in STD_LOGIC;
    DDR4_B_wstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    DDR4_B_wvalid : out STD_LOGIC;
    DDR4_D_READY : in STD_LOGIC;
    DDR4_D_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    --DDR4_D_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    --DDR4_D_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR4_D_arid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    DDR4_D_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    --DDR4_D_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    --DDR4_D_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    --DDR4_D_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR4_D_arready : in STD_LOGIC;
    --DDR4_D_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR4_D_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR4_D_arvalid : out STD_LOGIC;
    DDR4_D_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    --DDR4_D_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    --DDR4_D_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR4_D_awid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    DDR4_D_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    --DDR4_D_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    --DDR4_D_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    --DDR4_D_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR4_D_awready : in STD_LOGIC;
    --DDR4_D_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR4_D_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR4_D_awvalid : out STD_LOGIC;
    DDR4_D_bid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DDR4_D_bready : out STD_LOGIC;
    DDR4_D_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DDR4_D_bvalid : in STD_LOGIC;
    DDR4_D_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    DDR4_D_rid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DDR4_D_rlast : in STD_LOGIC;
    DDR4_D_rready : out STD_LOGIC;
    DDR4_D_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DDR4_D_rvalid : in STD_LOGIC;
    DDR4_D_wdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    DDR4_D_wlast : out STD_LOGIC;
    DDR4_D_wready : in STD_LOGIC;
    DDR4_D_wstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    DDR4_D_wvalid : out STD_LOGIC;
    DDR4_SH_READY : in STD_LOGIC;
    DDR4_SH_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    --DDR4_SH_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    --DDR4_SH_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR4_SH_arid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    DDR4_SH_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    --DDR4_SH_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    --DDR4_SH_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    --DDR4_SH_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR4_SH_arready : in STD_LOGIC;
    --DDR4_SH_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR4_SH_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR4_SH_arvalid : out STD_LOGIC;
    DDR4_SH_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    --DDR4_SH_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    --DDR4_SH_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR4_SH_awid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    DDR4_SH_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    --DDR4_SH_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    --DDR4_SH_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    --DDR4_SH_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR4_SH_awready : in STD_LOGIC;
    --DDR4_SH_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR4_SH_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR4_SH_awvalid : out STD_LOGIC;
    DDR4_SH_bid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DDR4_SH_bready : out STD_LOGIC;
    DDR4_SH_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DDR4_SH_bvalid : in STD_LOGIC;
    DDR4_SH_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    DDR4_SH_rid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DDR4_SH_rlast : in STD_LOGIC;
    DDR4_SH_rready : out STD_LOGIC;
    DDR4_SH_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DDR4_SH_rvalid : in STD_LOGIC;
    DDR4_SH_wdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    DDR4_SH_wlast : out STD_LOGIC;
    DDR4_SH_wready : in STD_LOGIC;
    DDR4_SH_wstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    DDR4_SH_wvalid : out STD_LOGIC;
    DMA_PCIS_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    DMA_PCIS_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DMA_PCIS_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DMA_PCIS_arid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    DMA_PCIS_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    DMA_PCIS_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    DMA_PCIS_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    DMA_PCIS_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DMA_PCIS_arready : out STD_LOGIC;
    DMA_PCIS_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DMA_PCIS_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    DMA_PCIS_arvalid : in STD_LOGIC;
    DMA_PCIS_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    DMA_PCIS_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DMA_PCIS_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DMA_PCIS_awid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    DMA_PCIS_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    DMA_PCIS_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    DMA_PCIS_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    DMA_PCIS_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DMA_PCIS_awready : out STD_LOGIC;
    DMA_PCIS_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DMA_PCIS_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    DMA_PCIS_awvalid : in STD_LOGIC;
    DMA_PCIS_bid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    DMA_PCIS_bready : in STD_LOGIC;
    DMA_PCIS_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DMA_PCIS_bvalid : out STD_LOGIC;
    DMA_PCIS_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    DMA_PCIS_rid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    DMA_PCIS_rlast : out STD_LOGIC;
    DMA_PCIS_rready : in STD_LOGIC;
    DMA_PCIS_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DMA_PCIS_rvalid : out STD_LOGIC;
    DMA_PCIS_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    DMA_PCIS_wlast : in STD_LOGIC;
    DMA_PCIS_wready : out STD_LOGIC;
    DMA_PCIS_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    DMA_PCIS_wvalid : in STD_LOGIC;
    PCIM_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    --PCIM_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    --PCIM_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    PCIM_arid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    PCIM_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    --PCIM_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    --PCIM_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    --PCIM_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    PCIM_arready : in STD_LOGIC;
    --PCIM_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    PCIM_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    PCIM_aruser : out STD_LOGIC_VECTOR ( 18 downto 0 );
    PCIM_arvalid : out STD_LOGIC;
    PCIM_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    --PCIM_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    --PCIM_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    PCIM_awid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    PCIM_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    --PCIM_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    --PCIM_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    --PCIM_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    PCIM_awready : in STD_LOGIC;
    --PCIM_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    PCIM_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    PCIM_awuser : out STD_LOGIC_VECTOR ( 18 downto 0 );
    PCIM_awvalid : out STD_LOGIC;
    PCIM_bid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    PCIM_bready : out STD_LOGIC;
    PCIM_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    PCIM_buser : in STD_LOGIC_VECTOR ( 17 downto 0 );
    PCIM_bvalid : in STD_LOGIC;
    PCIM_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    PCIM_rid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    PCIM_rlast : in STD_LOGIC;
    PCIM_rready : out STD_LOGIC;
    PCIM_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    PCIM_ruser : in STD_LOGIC_VECTOR ( 17 downto 0 );
    PCIM_rvalid : in STD_LOGIC;
    PCIM_wdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    PCIM_wlast : out STD_LOGIC;
    PCIM_wready : in STD_LOGIC;
    PCIM_wstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    PCIM_wvalid : out STD_LOGIC;
    vled : out STD_LOGIC_VECTOR ( 15 downto 0 );
    vdip : in STD_LOGIC_VECTOR ( 15 downto 0 );  
    glcount0 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    glcount1 : in STD_LOGIC_VECTOR ( 63 downto 0 );    
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC
  );
end cl_vhdl_wrapper;

architecture STRUCTURE of cl_vhdl_wrapper is

component cl_toplevel is
  port (
    -- System Signals
    clk                  : in  std_logic;
    rst_n                : in  std_logic;
    -- AXI4 master interface m00_axi
    m00_axi_awvalid      : in std_logic;
    m00_axi_awready      : out  std_logic;
    m00_axi_awaddr       : in std_logic_vector(31 downto 0);
    m00_axi_wvalid       : in std_logic;
    m00_axi_wready       : out  std_logic;
    m00_axi_wdata        : in std_logic_vector(31 downto 0);
    m00_axi_wstrb        : in std_logic_vector(3 downto 0);
    m00_axi_bvalid       : out std_logic;
    m00_axi_bready       : in std_logic;
    m00_axi_bresp 		 : out std_logic_vector(1 downto 0);
    m00_axi_arvalid      : in std_logic;
    m00_axi_arready      : out  std_logic;
    m00_axi_araddr       : in std_logic_vector(31 downto 0);
    m00_axi_rvalid       : out  std_logic;
    m00_axi_rready       : in std_logic;
    m00_axi_rdata        : out std_logic_vector(31 downto 0);
    m00_axi_rresp 		 : out std_logic_vector(1 downto 0)
  );
end component;


--Debug logic
-- Flop for timing global clock counter
signal sh_cl_glcount0_q                     : std_logic_vector(63 downto 0);
signal logic0                               : std_logic := '0';
  
signal vo_cnt_enable                     : std_logic_vector(0 downto 0);
signal vo_cnt_load                       : std_logic_vector(0 downto 0);
signal vo_cnt_clear                      : std_logic_vector(0 downto 0);
signal vo_cnt_oneshot                    : std_logic_vector(0 downto 0);
signal vo_tick_value                     : std_logic_vector(7 downto 0);
signal vo_cnt_load_value                 : std_logic_vector(15 downto 0);
signal vo_cnt_watermark                  : std_logic_vector(15 downto 0);
signal vo_cnt_enable_q                   : std_logic_vector(0 downto 0) := "0";
signal vo_cnt_load_q                     : std_logic_vector(0 downto 0) := "0";
signal vo_cnt_clear_q                    : std_logic_vector(0 downto 0) := "0";
signal vo_cnt_oneshot_q                  : std_logic_vector(0 downto 0) := "0";
signal vo_tick_value_q                   : std_logic_vector(7 downto 0) := x"00";
signal vo_cnt_load_value_q               : std_logic_vector(15 downto 0) := x"0000";
signal vo_cnt_watermark_q                : std_logic_vector(15 downto 0) := x"0000";

signal vi_tick                           : std_logic_vector(0 downto 0);
signal vi_cnt_ge_watermark               : std_logic_vector(0 downto 0);
signal vi_tick_cnt                       : std_logic_vector(7 downto 0) := x"00";
signal vi_cnt                            : std_logic_vector(15 downto 0) := x"0000";

signal m_axi_rdata_ext                : std_logic_vector(63 downto 0);
signal m_axi_araddr_ext                : std_logic_vector(63 downto 0);
signal m_axi_awaddr_ext                : std_logic_vector(63 downto 0);

--Signals for hello_world example

  signal m_axi_awaddr :  STD_LOGIC_VECTOR(31 DOWNTO 0);
  signal m_axi_awvalid :  STD_LOGIC_VECTOR(0 DOWNTO 0);
  signal m_axi_awready :  STD_LOGIC_VECTOR(0 DOWNTO 0);
  signal m_axi_wdata :  STD_LOGIC_VECTOR(31 DOWNTO 0);
  signal m_axi_wstrb :  STD_LOGIC_VECTOR(3 DOWNTO 0);
  signal m_axi_wvalid :  STD_LOGIC_VECTOR(0 DOWNTO 0);
  signal m_axi_wready :  STD_LOGIC_VECTOR(0 DOWNTO 0);
  signal m_axi_bresp :  STD_LOGIC_VECTOR(1 DOWNTO 0);
  signal m_axi_bvalid :  STD_LOGIC_VECTOR(0 DOWNTO 0);
  signal m_axi_bready :  STD_LOGIC_VECTOR(0 DOWNTO 0);
  signal m_axi_araddr :  STD_LOGIC_VECTOR(31 DOWNTO 0);
  signal m_axi_arvalid :  STD_LOGIC_VECTOR(0 DOWNTO 0);
  signal m_axi_arready :  STD_LOGIC_VECTOR(0 DOWNTO 0);
  signal m_axi_rdata :  STD_LOGIC_VECTOR(31 DOWNTO 0);
  signal m_axi_rresp :  STD_LOGIC_VECTOR(1 DOWNTO 0);
  signal m_axi_rvalid :  STD_LOGIC_VECTOR(0 DOWNTO 0);
  signal m_axi_rready :  STD_LOGIC_VECTOR(0 DOWNTO 0);
  signal m_axi_awprot :  STD_LOGIC_VECTOR(2 DOWNTO 0);
  signal m_axi_arprot :  STD_LOGIC_VECTOR(2 DOWNTO 0);
  
begin

GEN_PCIS_PRESENT : if PCIS_PRESENT = 1 generate
begin

end generate GEN_PCIS_PRESENT;

GEN_PCIM_PRESENT : if PCIM_PRESENT = 1 generate
begin


end generate GEN_PCIM_PRESENT;

GEN_DDR4_SH_PRESENT : if DDR4_SH_PRESENT = 1 generate
begin


end generate GEN_DDR4_SH_PRESENT;

GEN_DDR4_CL_PRESENT : if DDR4_CL_PRESENT = 1 generate
begin

end generate GEN_DDR4_CL_PRESENT;

GEN_USR_PRESENT : if USR_PRESENT = 1 generate
begin


end generate GEN_USR_PRESENT;

GEN_OCL_PRESENT : if OCL_PRESENT = 1 generate
begin

AXIL_OCL_REG_SLC : axi_register_slice_light
  PORT MAP (
    aclk => clk,
    aresetn => rst_n,
    s_axi_awaddr => AXIL_OCL_awaddr,
    s_axi_awprot => AXIL_OCL_awprot,
    s_axi_awvalid => AXIL_OCL_awvalid,
    s_axi_awready => AXIL_OCL_awready,
    s_axi_wdata => AXIL_OCL_wdata,
    s_axi_wstrb => AXIL_OCL_wstrb,
    s_axi_wvalid => AXIL_OCL_wvalid,
    s_axi_wready => AXIL_OCL_wready,
    s_axi_bresp => AXIL_OCL_bresp,
    s_axi_bvalid => AXIL_OCL_bvalid,
    s_axi_bready => AXIL_OCL_bready,
    s_axi_araddr => AXIL_OCL_araddr,
    s_axi_arprot => AXIL_OCL_arprot,
    s_axi_arvalid => AXIL_OCL_arvalid,
    s_axi_arready => AXIL_OCL_arready,
    s_axi_rdata => AXIL_OCL_rdata,
    s_axi_rresp => AXIL_OCL_rresp,
    s_axi_rvalid => AXIL_OCL_rvalid,
    s_axi_rready => AXIL_OCL_rready,
    m_axi_awaddr => m_axi_awaddr,
    m_axi_awprot => m_axi_awprot,
    m_axi_awvalid => m_axi_awvalid(0),
    m_axi_awready => m_axi_awready(0),
    m_axi_wdata => m_axi_wdata,
    m_axi_wstrb => m_axi_wstrb,
    m_axi_wvalid => m_axi_wvalid(0),
    m_axi_wready => m_axi_wready(0),
    m_axi_bresp => m_axi_bresp,
    m_axi_bvalid => m_axi_bvalid(0),
    m_axi_bready => m_axi_bready(0),
    m_axi_araddr => m_axi_araddr,
    m_axi_arprot => m_axi_arprot,
    m_axi_arvalid => m_axi_arvalid(0),
    m_axi_arready => m_axi_arready(0),
    m_axi_rdata => m_axi_rdata,
    m_axi_rresp => m_axi_rresp,
    m_axi_rvalid => m_axi_rvalid(0),
    m_axi_rready => m_axi_rready(0)
  );

cl_toplevel_inst : cl_toplevel
port map (
  clk                  => clk             ,
  rst_n                => rst_n           ,
  m00_axi_awvalid      => m_axi_awvalid(0),
  m00_axi_awready      => m_axi_awready(0),
  m00_axi_awaddr       => m_axi_awaddr    ,
  m00_axi_wvalid       => m_axi_wvalid(0) ,
  m00_axi_wready       => m_axi_wready(0) ,
  m00_axi_wdata        => m_axi_wdata     ,
  m00_axi_wstrb        => m_axi_wstrb     ,
  m00_axi_bvalid       => m_axi_bvalid(0) ,
  m00_axi_bready       => m_axi_bready(0) ,
  m00_axi_bresp		   => m_axi_bresp     ,
  m00_axi_arvalid      => m_axi_arvalid(0),
  m00_axi_arready      => m_axi_arready(0),
  m00_axi_araddr       => m_axi_araddr    ,
  m00_axi_rvalid       => m_axi_rvalid(0) ,
  m00_axi_rready       => m_axi_rready(0) ,
  m00_axi_rdata        => m_axi_rdata     ,
  m00_axi_rresp        => m_axi_rresp     
); 
end generate GEN_OCL_PRESENT;

GEN_SDA_PRESENT : if SDA_PRESENT = 1 generate
begin
  
end generate GEN_SDA_PRESENT;

    
end STRUCTURE;
