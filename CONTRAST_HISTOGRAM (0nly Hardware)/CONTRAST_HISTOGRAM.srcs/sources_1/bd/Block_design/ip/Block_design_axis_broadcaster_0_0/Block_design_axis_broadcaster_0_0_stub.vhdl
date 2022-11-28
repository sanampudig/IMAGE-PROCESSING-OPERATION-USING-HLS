-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Fri Nov 18 00:23:02 2022
-- Host        : Ravi running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/HLS_PROJECT/CONTRAST_HISTOGRAM/CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ip/Block_design_axis_broadcaster_0_0/Block_design_axis_broadcaster_0_0_stub.vhdl
-- Design      : Block_design_axis_broadcaster_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Block_design_axis_broadcaster_0_0 is
  Port ( 
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tlast : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_tready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_tlast : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );

end Block_design_axis_broadcaster_0_0;

architecture stub of Block_design_axis_broadcaster_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aclk,aresetn,s_axis_tvalid,s_axis_tready,s_axis_tdata[7:0],s_axis_tkeep[0:0],s_axis_tlast,m_axis_tvalid[1:0],m_axis_tready[1:0],m_axis_tdata[15:0],m_axis_tkeep[1:0],m_axis_tlast[1:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "top_Block_design_axis_broadcaster_0_0,Vivado 2018.3";
begin
end;
