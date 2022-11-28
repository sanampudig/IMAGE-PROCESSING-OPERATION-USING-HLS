// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Nov 18 00:19:14 2022
// Host        : Ravi running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/HLS_PROJECT/CONTRAST_HISTOGRAM/CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ip/Block_design_doHist_0_0/Block_design_doHist_0_0_stub.v
// Design      : Block_design_doHist_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "doHist,Vivado 2018.3" *)
module Block_design_doHist_0_0(s_axi_CTRL_BUS_AWADDR, 
  s_axi_CTRL_BUS_AWVALID, s_axi_CTRL_BUS_AWREADY, s_axi_CTRL_BUS_WDATA, 
  s_axi_CTRL_BUS_WSTRB, s_axi_CTRL_BUS_WVALID, s_axi_CTRL_BUS_WREADY, 
  s_axi_CTRL_BUS_BRESP, s_axi_CTRL_BUS_BVALID, s_axi_CTRL_BUS_BREADY, 
  s_axi_CTRL_BUS_ARADDR, s_axi_CTRL_BUS_ARVALID, s_axi_CTRL_BUS_ARREADY, 
  s_axi_CTRL_BUS_RDATA, s_axi_CTRL_BUS_RRESP, s_axi_CTRL_BUS_RVALID, 
  s_axi_CTRL_BUS_RREADY, ap_clk, ap_rst_n, interrupt, inStream_TVALID, inStream_TREADY, 
  inStream_TDATA, inStream_TDEST, inStream_TKEEP, inStream_TSTRB, inStream_TUSER, 
  inStream_TLAST, inStream_TID, histo_Clk_A, histo_Rst_A, histo_EN_A, histo_WEN_A, 
  histo_Addr_A, histo_Din_A, histo_Dout_A)
/* synthesis syn_black_box black_box_pad_pin="s_axi_CTRL_BUS_AWADDR[3:0],s_axi_CTRL_BUS_AWVALID,s_axi_CTRL_BUS_AWREADY,s_axi_CTRL_BUS_WDATA[31:0],s_axi_CTRL_BUS_WSTRB[3:0],s_axi_CTRL_BUS_WVALID,s_axi_CTRL_BUS_WREADY,s_axi_CTRL_BUS_BRESP[1:0],s_axi_CTRL_BUS_BVALID,s_axi_CTRL_BUS_BREADY,s_axi_CTRL_BUS_ARADDR[3:0],s_axi_CTRL_BUS_ARVALID,s_axi_CTRL_BUS_ARREADY,s_axi_CTRL_BUS_RDATA[31:0],s_axi_CTRL_BUS_RRESP[1:0],s_axi_CTRL_BUS_RVALID,s_axi_CTRL_BUS_RREADY,ap_clk,ap_rst_n,interrupt,inStream_TVALID,inStream_TREADY,inStream_TDATA[7:0],inStream_TDEST[5:0],inStream_TKEEP[0:0],inStream_TSTRB[0:0],inStream_TUSER[1:0],inStream_TLAST[0:0],inStream_TID[4:0],histo_Clk_A,histo_Rst_A,histo_EN_A,histo_WEN_A[3:0],histo_Addr_A[31:0],histo_Din_A[31:0],histo_Dout_A[31:0]" */;
  input [3:0]s_axi_CTRL_BUS_AWADDR;
  input s_axi_CTRL_BUS_AWVALID;
  output s_axi_CTRL_BUS_AWREADY;
  input [31:0]s_axi_CTRL_BUS_WDATA;
  input [3:0]s_axi_CTRL_BUS_WSTRB;
  input s_axi_CTRL_BUS_WVALID;
  output s_axi_CTRL_BUS_WREADY;
  output [1:0]s_axi_CTRL_BUS_BRESP;
  output s_axi_CTRL_BUS_BVALID;
  input s_axi_CTRL_BUS_BREADY;
  input [3:0]s_axi_CTRL_BUS_ARADDR;
  input s_axi_CTRL_BUS_ARVALID;
  output s_axi_CTRL_BUS_ARREADY;
  output [31:0]s_axi_CTRL_BUS_RDATA;
  output [1:0]s_axi_CTRL_BUS_RRESP;
  output s_axi_CTRL_BUS_RVALID;
  input s_axi_CTRL_BUS_RREADY;
  input ap_clk;
  input ap_rst_n;
  output interrupt;
  input inStream_TVALID;
  output inStream_TREADY;
  input [7:0]inStream_TDATA;
  input [5:0]inStream_TDEST;
  input [0:0]inStream_TKEEP;
  input [0:0]inStream_TSTRB;
  input [1:0]inStream_TUSER;
  input [0:0]inStream_TLAST;
  input [4:0]inStream_TID;
  output histo_Clk_A;
  output histo_Rst_A;
  output histo_EN_A;
  output [3:0]histo_WEN_A;
  output [31:0]histo_Addr_A;
  output [31:0]histo_Din_A;
  input [31:0]histo_Dout_A;
endmodule
