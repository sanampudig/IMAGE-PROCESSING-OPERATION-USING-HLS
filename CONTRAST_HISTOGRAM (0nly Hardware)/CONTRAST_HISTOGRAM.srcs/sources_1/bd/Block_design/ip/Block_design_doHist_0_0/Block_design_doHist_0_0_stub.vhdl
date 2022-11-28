-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Fri Nov 18 00:19:14 2022
-- Host        : Ravi running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/HLS_PROJECT/CONTRAST_HISTOGRAM/CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ip/Block_design_doHist_0_0/Block_design_doHist_0_0_stub.vhdl
-- Design      : Block_design_doHist_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Block_design_doHist_0_0 is
  Port ( 
    s_axi_CTRL_BUS_AWADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_CTRL_BUS_AWVALID : in STD_LOGIC;
    s_axi_CTRL_BUS_AWREADY : out STD_LOGIC;
    s_axi_CTRL_BUS_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_BUS_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_CTRL_BUS_WVALID : in STD_LOGIC;
    s_axi_CTRL_BUS_WREADY : out STD_LOGIC;
    s_axi_CTRL_BUS_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_BUS_BVALID : out STD_LOGIC;
    s_axi_CTRL_BUS_BREADY : in STD_LOGIC;
    s_axi_CTRL_BUS_ARADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_CTRL_BUS_ARVALID : in STD_LOGIC;
    s_axi_CTRL_BUS_ARREADY : out STD_LOGIC;
    s_axi_CTRL_BUS_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_BUS_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_BUS_RVALID : out STD_LOGIC;
    s_axi_CTRL_BUS_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    inStream_TVALID : in STD_LOGIC;
    inStream_TREADY : out STD_LOGIC;
    inStream_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    inStream_TDEST : in STD_LOGIC_VECTOR ( 5 downto 0 );
    inStream_TKEEP : in STD_LOGIC_VECTOR ( 0 to 0 );
    inStream_TSTRB : in STD_LOGIC_VECTOR ( 0 to 0 );
    inStream_TUSER : in STD_LOGIC_VECTOR ( 1 downto 0 );
    inStream_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    inStream_TID : in STD_LOGIC_VECTOR ( 4 downto 0 );
    histo_Clk_A : out STD_LOGIC;
    histo_Rst_A : out STD_LOGIC;
    histo_EN_A : out STD_LOGIC;
    histo_WEN_A : out STD_LOGIC_VECTOR ( 3 downto 0 );
    histo_Addr_A : out STD_LOGIC_VECTOR ( 31 downto 0 );
    histo_Din_A : out STD_LOGIC_VECTOR ( 31 downto 0 );
    histo_Dout_A : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end Block_design_doHist_0_0;

architecture stub of Block_design_doHist_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axi_CTRL_BUS_AWADDR[3:0],s_axi_CTRL_BUS_AWVALID,s_axi_CTRL_BUS_AWREADY,s_axi_CTRL_BUS_WDATA[31:0],s_axi_CTRL_BUS_WSTRB[3:0],s_axi_CTRL_BUS_WVALID,s_axi_CTRL_BUS_WREADY,s_axi_CTRL_BUS_BRESP[1:0],s_axi_CTRL_BUS_BVALID,s_axi_CTRL_BUS_BREADY,s_axi_CTRL_BUS_ARADDR[3:0],s_axi_CTRL_BUS_ARVALID,s_axi_CTRL_BUS_ARREADY,s_axi_CTRL_BUS_RDATA[31:0],s_axi_CTRL_BUS_RRESP[1:0],s_axi_CTRL_BUS_RVALID,s_axi_CTRL_BUS_RREADY,ap_clk,ap_rst_n,interrupt,inStream_TVALID,inStream_TREADY,inStream_TDATA[7:0],inStream_TDEST[5:0],inStream_TKEEP[0:0],inStream_TSTRB[0:0],inStream_TUSER[1:0],inStream_TLAST[0:0],inStream_TID[4:0],histo_Clk_A,histo_Rst_A,histo_EN_A,histo_WEN_A[3:0],histo_Addr_A[31:0],histo_Din_A[31:0],histo_Dout_A[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "doHist,Vivado 2018.3";
begin
end;
