// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Nov 18 00:19:15 2022
// Host        : Ravi running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/HLS_PROJECT/CONTRAST_HISTOGRAM/CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ip/Block_design_doHist_0_0/Block_design_doHist_0_0_sim_netlist.v
// Design      : Block_design_doHist_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Block_design_doHist_0_0,doHist,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "doHist,Vivado 2018.3" *) (* hls_module = "yes" *) 
(* NotValidForBitStream *)
module Block_design_doHist_0_0
   (s_axi_CTRL_BUS_AWADDR,
    s_axi_CTRL_BUS_AWVALID,
    s_axi_CTRL_BUS_AWREADY,
    s_axi_CTRL_BUS_WDATA,
    s_axi_CTRL_BUS_WSTRB,
    s_axi_CTRL_BUS_WVALID,
    s_axi_CTRL_BUS_WREADY,
    s_axi_CTRL_BUS_BRESP,
    s_axi_CTRL_BUS_BVALID,
    s_axi_CTRL_BUS_BREADY,
    s_axi_CTRL_BUS_ARADDR,
    s_axi_CTRL_BUS_ARVALID,
    s_axi_CTRL_BUS_ARREADY,
    s_axi_CTRL_BUS_RDATA,
    s_axi_CTRL_BUS_RRESP,
    s_axi_CTRL_BUS_RVALID,
    s_axi_CTRL_BUS_RREADY,
    ap_clk,
    ap_rst_n,
    interrupt,
    inStream_TVALID,
    inStream_TREADY,
    inStream_TDATA,
    inStream_TDEST,
    inStream_TKEEP,
    inStream_TSTRB,
    inStream_TUSER,
    inStream_TLAST,
    inStream_TID,
    histo_Clk_A,
    histo_Rst_A,
    histo_EN_A,
    histo_WEN_A,
    histo_Addr_A,
    histo_Din_A,
    histo_Dout_A);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS AWADDR" *) input [3:0]s_axi_CTRL_BUS_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS AWVALID" *) input s_axi_CTRL_BUS_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS AWREADY" *) output s_axi_CTRL_BUS_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS WDATA" *) input [31:0]s_axi_CTRL_BUS_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS WSTRB" *) input [3:0]s_axi_CTRL_BUS_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS WVALID" *) input s_axi_CTRL_BUS_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS WREADY" *) output s_axi_CTRL_BUS_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS BRESP" *) output [1:0]s_axi_CTRL_BUS_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS BVALID" *) output s_axi_CTRL_BUS_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS BREADY" *) input s_axi_CTRL_BUS_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS ARADDR" *) input [3:0]s_axi_CTRL_BUS_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS ARVALID" *) input s_axi_CTRL_BUS_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS ARREADY" *) output s_axi_CTRL_BUS_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS RDATA" *) output [31:0]s_axi_CTRL_BUS_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS RRESP" *) output [1:0]s_axi_CTRL_BUS_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS RVALID" *) output s_axi_CTRL_BUS_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_CTRL_BUS, ADDR_WIDTH 4, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 100000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN Block_design_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_CTRL_BUS_RREADY;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_CTRL_BUS:inStream, ASSOCIATED_RESET ap_rst_n, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN Block_design_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, INSERT_VIP 0" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {INTERRUPT {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, PortWidth 1" *) output interrupt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inStream TVALID" *) input inStream_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inStream TREADY" *) output inStream_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inStream TDATA" *) input [7:0]inStream_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inStream TDEST" *) input [5:0]inStream_TDEST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inStream TKEEP" *) input [0:0]inStream_TKEEP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inStream TSTRB" *) input [0:0]inStream_TSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inStream TUSER" *) input [1:0]inStream_TUSER;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inStream TLAST" *) input [0:0]inStream_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inStream TID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME inStream, TDATA_NUM_BYTES 1, TDEST_WIDTH 6, TID_WIDTH 5, TUSER_WIDTH 2, LAYERED_METADATA undef, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN Block_design_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input [4:0]inStream_TID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 histo_PORTA CLK" *) output histo_Clk_A;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 histo_PORTA RST" *) output histo_Rst_A;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 histo_PORTA EN" *) output histo_EN_A;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 histo_PORTA WE" *) output [3:0]histo_WEN_A;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 histo_PORTA ADDR" *) output [31:0]histo_Addr_A;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 histo_PORTA DIN" *) output [31:0]histo_Din_A;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 histo_PORTA DOUT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME histo_PORTA, MEM_WIDTH 32, MEM_SIZE 1024, MASTER_TYPE BRAM_CTRL, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {EN {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} ADDR {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} WE {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 4} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DIN {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} DOUT {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}, MEM_ECC NONE, READ_LATENCY 1" *) input [31:0]histo_Dout_A;

  wire ap_clk;
  wire ap_rst_n;
  wire [31:0]histo_Addr_A;
  wire histo_Clk_A;
  wire [31:0]histo_Din_A;
  wire [31:0]histo_Dout_A;
  wire histo_EN_A;
  wire histo_Rst_A;
  wire [3:0]histo_WEN_A;
  wire [7:0]inStream_TDATA;
  wire [5:0]inStream_TDEST;
  wire [4:0]inStream_TID;
  wire [0:0]inStream_TKEEP;
  wire [0:0]inStream_TLAST;
  wire inStream_TREADY;
  wire [0:0]inStream_TSTRB;
  wire [1:0]inStream_TUSER;
  wire inStream_TVALID;
  wire interrupt;
  wire [3:0]s_axi_CTRL_BUS_ARADDR;
  wire s_axi_CTRL_BUS_ARREADY;
  wire s_axi_CTRL_BUS_ARVALID;
  wire [3:0]s_axi_CTRL_BUS_AWADDR;
  wire s_axi_CTRL_BUS_AWREADY;
  wire s_axi_CTRL_BUS_AWVALID;
  wire s_axi_CTRL_BUS_BREADY;
  wire [1:0]s_axi_CTRL_BUS_BRESP;
  wire s_axi_CTRL_BUS_BVALID;
  wire [31:0]s_axi_CTRL_BUS_RDATA;
  wire s_axi_CTRL_BUS_RREADY;
  wire [1:0]s_axi_CTRL_BUS_RRESP;
  wire s_axi_CTRL_BUS_RVALID;
  wire [31:0]s_axi_CTRL_BUS_WDATA;
  wire s_axi_CTRL_BUS_WREADY;
  wire [3:0]s_axi_CTRL_BUS_WSTRB;
  wire s_axi_CTRL_BUS_WVALID;

  (* C_S_AXI_CTRL_BUS_ADDR_WIDTH = "4" *) 
  (* C_S_AXI_CTRL_BUS_DATA_WIDTH = "32" *) 
  (* C_S_AXI_CTRL_BUS_WSTRB_WIDTH = "4" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_S_AXI_WSTRB_WIDTH = "4" *) 
  (* ap_ST_fsm_state1 = "6'b000001" *) 
  (* ap_ST_fsm_state2 = "6'b000010" *) 
  (* ap_ST_fsm_state3 = "6'b000100" *) 
  (* ap_ST_fsm_state4 = "6'b001000" *) 
  (* ap_ST_fsm_state5 = "6'b010000" *) 
  (* ap_ST_fsm_state6 = "6'b100000" *) 
  Block_design_doHist_0_0_doHist inst
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .histo_Addr_A(histo_Addr_A),
        .histo_Clk_A(histo_Clk_A),
        .histo_Din_A(histo_Din_A),
        .histo_Dout_A(histo_Dout_A),
        .histo_EN_A(histo_EN_A),
        .histo_Rst_A(histo_Rst_A),
        .histo_WEN_A(histo_WEN_A),
        .inStream_TDATA(inStream_TDATA),
        .inStream_TDEST(inStream_TDEST),
        .inStream_TID(inStream_TID),
        .inStream_TKEEP(inStream_TKEEP),
        .inStream_TLAST(inStream_TLAST),
        .inStream_TREADY(inStream_TREADY),
        .inStream_TSTRB(inStream_TSTRB),
        .inStream_TUSER(inStream_TUSER),
        .inStream_TVALID(inStream_TVALID),
        .interrupt(interrupt),
        .s_axi_CTRL_BUS_ARADDR(s_axi_CTRL_BUS_ARADDR),
        .s_axi_CTRL_BUS_ARREADY(s_axi_CTRL_BUS_ARREADY),
        .s_axi_CTRL_BUS_ARVALID(s_axi_CTRL_BUS_ARVALID),
        .s_axi_CTRL_BUS_AWADDR(s_axi_CTRL_BUS_AWADDR),
        .s_axi_CTRL_BUS_AWREADY(s_axi_CTRL_BUS_AWREADY),
        .s_axi_CTRL_BUS_AWVALID(s_axi_CTRL_BUS_AWVALID),
        .s_axi_CTRL_BUS_BREADY(s_axi_CTRL_BUS_BREADY),
        .s_axi_CTRL_BUS_BRESP(s_axi_CTRL_BUS_BRESP),
        .s_axi_CTRL_BUS_BVALID(s_axi_CTRL_BUS_BVALID),
        .s_axi_CTRL_BUS_RDATA(s_axi_CTRL_BUS_RDATA),
        .s_axi_CTRL_BUS_RREADY(s_axi_CTRL_BUS_RREADY),
        .s_axi_CTRL_BUS_RRESP(s_axi_CTRL_BUS_RRESP),
        .s_axi_CTRL_BUS_RVALID(s_axi_CTRL_BUS_RVALID),
        .s_axi_CTRL_BUS_WDATA(s_axi_CTRL_BUS_WDATA),
        .s_axi_CTRL_BUS_WREADY(s_axi_CTRL_BUS_WREADY),
        .s_axi_CTRL_BUS_WSTRB(s_axi_CTRL_BUS_WSTRB),
        .s_axi_CTRL_BUS_WVALID(s_axi_CTRL_BUS_WVALID));
endmodule

(* C_S_AXI_CTRL_BUS_ADDR_WIDTH = "4" *) (* C_S_AXI_CTRL_BUS_DATA_WIDTH = "32" *) (* C_S_AXI_CTRL_BUS_WSTRB_WIDTH = "4" *) 
(* C_S_AXI_DATA_WIDTH = "32" *) (* C_S_AXI_WSTRB_WIDTH = "4" *) (* ORIG_REF_NAME = "doHist" *) 
(* ap_ST_fsm_state1 = "6'b000001" *) (* ap_ST_fsm_state2 = "6'b000010" *) (* ap_ST_fsm_state3 = "6'b000100" *) 
(* ap_ST_fsm_state4 = "6'b001000" *) (* ap_ST_fsm_state5 = "6'b010000" *) (* ap_ST_fsm_state6 = "6'b100000" *) 
(* hls_module = "yes" *) 
module Block_design_doHist_0_0_doHist
   (ap_clk,
    ap_rst_n,
    inStream_TDATA,
    inStream_TVALID,
    inStream_TREADY,
    inStream_TKEEP,
    inStream_TSTRB,
    inStream_TUSER,
    inStream_TLAST,
    inStream_TID,
    inStream_TDEST,
    histo_Addr_A,
    histo_EN_A,
    histo_WEN_A,
    histo_Din_A,
    histo_Dout_A,
    histo_Clk_A,
    histo_Rst_A,
    s_axi_CTRL_BUS_AWVALID,
    s_axi_CTRL_BUS_AWREADY,
    s_axi_CTRL_BUS_AWADDR,
    s_axi_CTRL_BUS_WVALID,
    s_axi_CTRL_BUS_WREADY,
    s_axi_CTRL_BUS_WDATA,
    s_axi_CTRL_BUS_WSTRB,
    s_axi_CTRL_BUS_ARVALID,
    s_axi_CTRL_BUS_ARREADY,
    s_axi_CTRL_BUS_ARADDR,
    s_axi_CTRL_BUS_RVALID,
    s_axi_CTRL_BUS_RREADY,
    s_axi_CTRL_BUS_RDATA,
    s_axi_CTRL_BUS_RRESP,
    s_axi_CTRL_BUS_BVALID,
    s_axi_CTRL_BUS_BREADY,
    s_axi_CTRL_BUS_BRESP,
    interrupt);
  input ap_clk;
  input ap_rst_n;
  input [7:0]inStream_TDATA;
  input inStream_TVALID;
  output inStream_TREADY;
  input [0:0]inStream_TKEEP;
  input [0:0]inStream_TSTRB;
  input [1:0]inStream_TUSER;
  input [0:0]inStream_TLAST;
  input [4:0]inStream_TID;
  input [5:0]inStream_TDEST;
  output [31:0]histo_Addr_A;
  output histo_EN_A;
  output [3:0]histo_WEN_A;
  output [31:0]histo_Din_A;
  input [31:0]histo_Dout_A;
  output histo_Clk_A;
  output histo_Rst_A;
  input s_axi_CTRL_BUS_AWVALID;
  output s_axi_CTRL_BUS_AWREADY;
  input [3:0]s_axi_CTRL_BUS_AWADDR;
  input s_axi_CTRL_BUS_WVALID;
  output s_axi_CTRL_BUS_WREADY;
  input [31:0]s_axi_CTRL_BUS_WDATA;
  input [3:0]s_axi_CTRL_BUS_WSTRB;
  input s_axi_CTRL_BUS_ARVALID;
  output s_axi_CTRL_BUS_ARREADY;
  input [3:0]s_axi_CTRL_BUS_ARADDR;
  output s_axi_CTRL_BUS_RVALID;
  input s_axi_CTRL_BUS_RREADY;
  output [31:0]s_axi_CTRL_BUS_RDATA;
  output [1:0]s_axi_CTRL_BUS_RRESP;
  output s_axi_CTRL_BUS_BVALID;
  input s_axi_CTRL_BUS_BREADY;
  output [1:0]s_axi_CTRL_BUS_BRESP;
  output interrupt;

  wire \<const0> ;
  wire \ap_CS_fsm_reg_n_0_[0] ;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state3;
  wire ap_CS_fsm_state4;
  wire ap_CS_fsm_state5;
  wire ap_CS_fsm_state6;
  wire [4:0]ap_NS_fsm;
  wire ap_NS_fsm113_out;
  wire ap_clk;
  wire ap_done;
  wire ap_rst_n;
  wire doHist_CTRL_BUS_s_axi_U_n_6;
  wire doHist_CTRL_BUS_s_axi_U_n_7;
  wire doHist_CTRL_BUS_s_axi_U_n_8;
  wire doHist_CTRL_BUS_s_axi_U_n_9;
  wire [10:2]\^histo_Addr_A ;
  wire [31:0]histo_Din_A;
  wire \histo_Din_A[12]_INST_0_i_1_n_0 ;
  wire \histo_Din_A[12]_INST_0_i_1_n_1 ;
  wire \histo_Din_A[12]_INST_0_i_1_n_2 ;
  wire \histo_Din_A[12]_INST_0_i_1_n_3 ;
  wire \histo_Din_A[16]_INST_0_i_1_n_0 ;
  wire \histo_Din_A[16]_INST_0_i_1_n_1 ;
  wire \histo_Din_A[16]_INST_0_i_1_n_2 ;
  wire \histo_Din_A[16]_INST_0_i_1_n_3 ;
  wire \histo_Din_A[20]_INST_0_i_1_n_0 ;
  wire \histo_Din_A[20]_INST_0_i_1_n_1 ;
  wire \histo_Din_A[20]_INST_0_i_1_n_2 ;
  wire \histo_Din_A[20]_INST_0_i_1_n_3 ;
  wire \histo_Din_A[24]_INST_0_i_1_n_0 ;
  wire \histo_Din_A[24]_INST_0_i_1_n_1 ;
  wire \histo_Din_A[24]_INST_0_i_1_n_2 ;
  wire \histo_Din_A[24]_INST_0_i_1_n_3 ;
  wire \histo_Din_A[28]_INST_0_i_1_n_0 ;
  wire \histo_Din_A[28]_INST_0_i_1_n_1 ;
  wire \histo_Din_A[28]_INST_0_i_1_n_2 ;
  wire \histo_Din_A[28]_INST_0_i_1_n_3 ;
  wire \histo_Din_A[31]_INST_0_i_1_n_2 ;
  wire \histo_Din_A[31]_INST_0_i_1_n_3 ;
  wire \histo_Din_A[4]_INST_0_i_1_n_0 ;
  wire \histo_Din_A[4]_INST_0_i_1_n_1 ;
  wire \histo_Din_A[4]_INST_0_i_1_n_2 ;
  wire \histo_Din_A[4]_INST_0_i_1_n_3 ;
  wire \histo_Din_A[8]_INST_0_i_1_n_0 ;
  wire \histo_Din_A[8]_INST_0_i_1_n_1 ;
  wire \histo_Din_A[8]_INST_0_i_1_n_2 ;
  wire \histo_Din_A[8]_INST_0_i_1_n_3 ;
  wire [31:0]histo_Dout_A;
  wire histo_EN_A;
  wire histo_Rst_A;
  wire [0:0]\^histo_WEN_A ;
  wire \histo_WEN_A[0]_INST_0_i_2_n_0 ;
  wire [7:0]histo_addr_1_reg_194;
  wire [31:0]histo_load_reg_199;
  wire [8:0]idxHist_1_fu_140_p2;
  wire idxHist_reg_112;
  wire \idxHist_reg_112[8]_i_3_n_0 ;
  wire [8:0]idxHist_reg_112_reg__0;
  wire [16:0]idxPixel_1_fu_157_p2;
  wire [16:0]idxPixel_1_reg_189;
  wire idxPixel_1_reg_1890;
  wire \idxPixel_1_reg_189_reg[12]_i_1_n_0 ;
  wire \idxPixel_1_reg_189_reg[12]_i_1_n_1 ;
  wire \idxPixel_1_reg_189_reg[12]_i_1_n_2 ;
  wire \idxPixel_1_reg_189_reg[12]_i_1_n_3 ;
  wire \idxPixel_1_reg_189_reg[16]_i_1_n_1 ;
  wire \idxPixel_1_reg_189_reg[16]_i_1_n_2 ;
  wire \idxPixel_1_reg_189_reg[16]_i_1_n_3 ;
  wire \idxPixel_1_reg_189_reg[4]_i_1_n_0 ;
  wire \idxPixel_1_reg_189_reg[4]_i_1_n_1 ;
  wire \idxPixel_1_reg_189_reg[4]_i_1_n_2 ;
  wire \idxPixel_1_reg_189_reg[4]_i_1_n_3 ;
  wire \idxPixel_1_reg_189_reg[8]_i_1_n_0 ;
  wire \idxPixel_1_reg_189_reg[8]_i_1_n_1 ;
  wire \idxPixel_1_reg_189_reg[8]_i_1_n_2 ;
  wire \idxPixel_1_reg_189_reg[8]_i_1_n_3 ;
  wire [16:0]idxPixel_reg_123;
  wire [7:0]inStream_TDATA;
  wire inStream_TREADY;
  wire inStream_TVALID;
  wire inStream_V_data_V_0_ack_in;
  wire inStream_V_data_V_0_load_A;
  wire inStream_V_data_V_0_load_B;
  wire [7:0]inStream_V_data_V_0_payload_A;
  wire [7:0]inStream_V_data_V_0_payload_B;
  wire inStream_V_data_V_0_sel;
  wire inStream_V_data_V_0_sel_rd_i_1_n_0;
  wire inStream_V_data_V_0_sel_wr;
  wire inStream_V_data_V_0_sel_wr_i_1_n_0;
  wire [1:1]inStream_V_data_V_0_state;
  wire \inStream_V_data_V_0_state[0]_i_1_n_0 ;
  wire [1:1]inStream_V_dest_V_0_state;
  wire \inStream_V_dest_V_0_state[0]_i_1_n_0 ;
  wire \inStream_V_dest_V_0_state_reg_n_0_[0] ;
  wire interrupt;
  wire [0:0]p_0_in;
  wire p_25_in;
  wire [3:0]s_axi_CTRL_BUS_ARADDR;
  wire s_axi_CTRL_BUS_ARREADY;
  wire s_axi_CTRL_BUS_ARVALID;
  wire [3:0]s_axi_CTRL_BUS_AWADDR;
  wire s_axi_CTRL_BUS_AWREADY;
  wire s_axi_CTRL_BUS_AWVALID;
  wire s_axi_CTRL_BUS_BREADY;
  wire s_axi_CTRL_BUS_BVALID;
  wire [7:0]\^s_axi_CTRL_BUS_RDATA ;
  wire s_axi_CTRL_BUS_RREADY;
  wire s_axi_CTRL_BUS_RVALID;
  wire [31:0]s_axi_CTRL_BUS_WDATA;
  wire s_axi_CTRL_BUS_WREADY;
  wire [3:0]s_axi_CTRL_BUS_WSTRB;
  wire s_axi_CTRL_BUS_WVALID;
  wire [7:0]tmp_3_fu_167_p1;
  wire [31:1]tmp_4_fu_172_p2;
  wire [3:2]\NLW_histo_Din_A[31]_INST_0_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_histo_Din_A[31]_INST_0_i_1_O_UNCONNECTED ;
  wire [3:3]\NLW_idxPixel_1_reg_189_reg[16]_i_1_CO_UNCONNECTED ;

  assign histo_Addr_A[31] = \<const0> ;
  assign histo_Addr_A[30] = \<const0> ;
  assign histo_Addr_A[29] = \<const0> ;
  assign histo_Addr_A[28] = \<const0> ;
  assign histo_Addr_A[27] = \<const0> ;
  assign histo_Addr_A[26] = \<const0> ;
  assign histo_Addr_A[25] = \<const0> ;
  assign histo_Addr_A[24] = \<const0> ;
  assign histo_Addr_A[23] = \<const0> ;
  assign histo_Addr_A[22] = \<const0> ;
  assign histo_Addr_A[21] = \<const0> ;
  assign histo_Addr_A[20] = \<const0> ;
  assign histo_Addr_A[19] = \<const0> ;
  assign histo_Addr_A[18] = \<const0> ;
  assign histo_Addr_A[17] = \<const0> ;
  assign histo_Addr_A[16] = \<const0> ;
  assign histo_Addr_A[15] = \<const0> ;
  assign histo_Addr_A[14] = \<const0> ;
  assign histo_Addr_A[13] = \<const0> ;
  assign histo_Addr_A[12] = \<const0> ;
  assign histo_Addr_A[11] = \<const0> ;
  assign histo_Addr_A[10:2] = \^histo_Addr_A [10:2];
  assign histo_Addr_A[1] = \<const0> ;
  assign histo_Addr_A[0] = \<const0> ;
  assign histo_Clk_A = ap_clk;
  assign histo_WEN_A[3] = \^histo_WEN_A [0];
  assign histo_WEN_A[2] = \^histo_WEN_A [0];
  assign histo_WEN_A[1] = \^histo_WEN_A [0];
  assign histo_WEN_A[0] = \^histo_WEN_A [0];
  assign s_axi_CTRL_BUS_BRESP[1] = \<const0> ;
  assign s_axi_CTRL_BUS_BRESP[0] = \<const0> ;
  assign s_axi_CTRL_BUS_RDATA[31] = \<const0> ;
  assign s_axi_CTRL_BUS_RDATA[30] = \<const0> ;
  assign s_axi_CTRL_BUS_RDATA[29] = \<const0> ;
  assign s_axi_CTRL_BUS_RDATA[28] = \<const0> ;
  assign s_axi_CTRL_BUS_RDATA[27] = \<const0> ;
  assign s_axi_CTRL_BUS_RDATA[26] = \<const0> ;
  assign s_axi_CTRL_BUS_RDATA[25] = \<const0> ;
  assign s_axi_CTRL_BUS_RDATA[24] = \<const0> ;
  assign s_axi_CTRL_BUS_RDATA[23] = \<const0> ;
  assign s_axi_CTRL_BUS_RDATA[22] = \<const0> ;
  assign s_axi_CTRL_BUS_RDATA[21] = \<const0> ;
  assign s_axi_CTRL_BUS_RDATA[20] = \<const0> ;
  assign s_axi_CTRL_BUS_RDATA[19] = \<const0> ;
  assign s_axi_CTRL_BUS_RDATA[18] = \<const0> ;
  assign s_axi_CTRL_BUS_RDATA[17] = \<const0> ;
  assign s_axi_CTRL_BUS_RDATA[16] = \<const0> ;
  assign s_axi_CTRL_BUS_RDATA[15] = \<const0> ;
  assign s_axi_CTRL_BUS_RDATA[14] = \<const0> ;
  assign s_axi_CTRL_BUS_RDATA[13] = \<const0> ;
  assign s_axi_CTRL_BUS_RDATA[12] = \<const0> ;
  assign s_axi_CTRL_BUS_RDATA[11] = \<const0> ;
  assign s_axi_CTRL_BUS_RDATA[10] = \<const0> ;
  assign s_axi_CTRL_BUS_RDATA[9] = \<const0> ;
  assign s_axi_CTRL_BUS_RDATA[8] = \<const0> ;
  assign s_axi_CTRL_BUS_RDATA[7] = \^s_axi_CTRL_BUS_RDATA [7];
  assign s_axi_CTRL_BUS_RDATA[6] = \<const0> ;
  assign s_axi_CTRL_BUS_RDATA[5] = \<const0> ;
  assign s_axi_CTRL_BUS_RDATA[4] = \<const0> ;
  assign s_axi_CTRL_BUS_RDATA[3:0] = \^s_axi_CTRL_BUS_RDATA [3:0];
  assign s_axi_CTRL_BUS_RRESP[1] = \<const0> ;
  assign s_axi_CTRL_BUS_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(ap_CS_fsm_state2),
        .I1(ap_NS_fsm113_out),
        .O(ap_NS_fsm[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hEEEEEFEE)) 
    \ap_CS_fsm[3]_i_1 
       (.I0(ap_CS_fsm_state6),
        .I1(ap_CS_fsm_state3),
        .I2(p_25_in),
        .I3(ap_CS_fsm_state4),
        .I4(ap_done),
        .O(ap_NS_fsm[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \ap_CS_fsm[4]_i_1 
       (.I0(ap_done),
        .I1(ap_CS_fsm_state4),
        .I2(p_25_in),
        .O(ap_NS_fsm[4]));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(\ap_CS_fsm_reg_n_0_[0] ),
        .S(histo_Rst_A));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_state2),
        .R(histo_Rst_A));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(ap_CS_fsm_state3),
        .R(histo_Rst_A));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[3]),
        .Q(ap_CS_fsm_state4),
        .R(histo_Rst_A));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[4]),
        .Q(ap_CS_fsm_state5),
        .R(histo_Rst_A));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_CS_fsm_state5),
        .Q(ap_CS_fsm_state6),
        .R(histo_Rst_A));
  Block_design_doHist_0_0_doHist_CTRL_BUS_s_axi doHist_CTRL_BUS_s_axi_U
       (.D(ap_NS_fsm[1:0]),
        .\FSM_onehot_rstate_reg[1]_0 (s_axi_CTRL_BUS_ARREADY),
        .\FSM_onehot_wstate_reg[1]_0 (s_axi_CTRL_BUS_AWREADY),
        .\FSM_onehot_wstate_reg[2]_0 (s_axi_CTRL_BUS_WREADY),
        .Q({ap_CS_fsm_state4,ap_CS_fsm_state2,\ap_CS_fsm_reg_n_0_[0] }),
        .SR(histo_Rst_A),
        .\ap_CS_fsm_reg[0] (idxHist_reg_112),
        .ap_NS_fsm113_out(ap_NS_fsm113_out),
        .ap_clk(ap_clk),
        .ap_done(ap_done),
        .ap_rst_n(ap_rst_n),
        .\idxPixel_reg_123_reg[11] (doHist_CTRL_BUS_s_axi_U_n_6),
        .\idxPixel_reg_123_reg[2] (doHist_CTRL_BUS_s_axi_U_n_7),
        .\idxPixel_reg_123_reg[6] (doHist_CTRL_BUS_s_axi_U_n_9),
        .\idxPixel_reg_123_reg[9] (doHist_CTRL_BUS_s_axi_U_n_8),
        .int_ap_ready_reg_0(idxPixel_reg_123),
        .interrupt(interrupt),
        .s_axi_CTRL_BUS_ARADDR(s_axi_CTRL_BUS_ARADDR),
        .s_axi_CTRL_BUS_ARVALID(s_axi_CTRL_BUS_ARVALID),
        .s_axi_CTRL_BUS_AWADDR(s_axi_CTRL_BUS_AWADDR),
        .s_axi_CTRL_BUS_AWVALID(s_axi_CTRL_BUS_AWVALID),
        .s_axi_CTRL_BUS_BREADY(s_axi_CTRL_BUS_BREADY),
        .s_axi_CTRL_BUS_BVALID(s_axi_CTRL_BUS_BVALID),
        .s_axi_CTRL_BUS_RDATA({\^s_axi_CTRL_BUS_RDATA [7],\^s_axi_CTRL_BUS_RDATA [3:0]}),
        .s_axi_CTRL_BUS_RREADY(s_axi_CTRL_BUS_RREADY),
        .s_axi_CTRL_BUS_RVALID(s_axi_CTRL_BUS_RVALID),
        .s_axi_CTRL_BUS_WDATA({s_axi_CTRL_BUS_WDATA[7],s_axi_CTRL_BUS_WDATA[1:0]}),
        .s_axi_CTRL_BUS_WSTRB(s_axi_CTRL_BUS_WSTRB[0]),
        .s_axi_CTRL_BUS_WVALID(s_axi_CTRL_BUS_WVALID));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \histo_Addr_A[10]_INST_0 
       (.I0(ap_CS_fsm_state4),
        .I1(ap_CS_fsm_state6),
        .I2(idxHist_reg_112_reg__0[8]),
        .O(\^histo_Addr_A [10]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \histo_Addr_A[2]_INST_0 
       (.I0(ap_CS_fsm_state4),
        .I1(idxHist_reg_112_reg__0[0]),
        .I2(tmp_3_fu_167_p1[0]),
        .I3(ap_CS_fsm_state6),
        .I4(histo_addr_1_reg_194[0]),
        .O(\^histo_Addr_A [2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \histo_Addr_A[2]_INST_0_i_1 
       (.I0(inStream_V_data_V_0_payload_B[0]),
        .I1(inStream_V_data_V_0_sel),
        .I2(inStream_V_data_V_0_payload_A[0]),
        .O(tmp_3_fu_167_p1[0]));
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \histo_Addr_A[3]_INST_0 
       (.I0(ap_CS_fsm_state4),
        .I1(idxHist_reg_112_reg__0[1]),
        .I2(tmp_3_fu_167_p1[1]),
        .I3(ap_CS_fsm_state6),
        .I4(histo_addr_1_reg_194[1]),
        .O(\^histo_Addr_A [3]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \histo_Addr_A[3]_INST_0_i_1 
       (.I0(inStream_V_data_V_0_payload_B[1]),
        .I1(inStream_V_data_V_0_sel),
        .I2(inStream_V_data_V_0_payload_A[1]),
        .O(tmp_3_fu_167_p1[1]));
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \histo_Addr_A[4]_INST_0 
       (.I0(ap_CS_fsm_state4),
        .I1(idxHist_reg_112_reg__0[2]),
        .I2(tmp_3_fu_167_p1[2]),
        .I3(ap_CS_fsm_state6),
        .I4(histo_addr_1_reg_194[2]),
        .O(\^histo_Addr_A [4]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \histo_Addr_A[4]_INST_0_i_1 
       (.I0(inStream_V_data_V_0_payload_B[2]),
        .I1(inStream_V_data_V_0_sel),
        .I2(inStream_V_data_V_0_payload_A[2]),
        .O(tmp_3_fu_167_p1[2]));
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \histo_Addr_A[5]_INST_0 
       (.I0(ap_CS_fsm_state4),
        .I1(idxHist_reg_112_reg__0[3]),
        .I2(tmp_3_fu_167_p1[3]),
        .I3(ap_CS_fsm_state6),
        .I4(histo_addr_1_reg_194[3]),
        .O(\^histo_Addr_A [5]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \histo_Addr_A[5]_INST_0_i_1 
       (.I0(inStream_V_data_V_0_payload_B[3]),
        .I1(inStream_V_data_V_0_sel),
        .I2(inStream_V_data_V_0_payload_A[3]),
        .O(tmp_3_fu_167_p1[3]));
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \histo_Addr_A[6]_INST_0 
       (.I0(ap_CS_fsm_state4),
        .I1(idxHist_reg_112_reg__0[4]),
        .I2(tmp_3_fu_167_p1[4]),
        .I3(ap_CS_fsm_state6),
        .I4(histo_addr_1_reg_194[4]),
        .O(\^histo_Addr_A [6]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \histo_Addr_A[6]_INST_0_i_1 
       (.I0(inStream_V_data_V_0_payload_B[4]),
        .I1(inStream_V_data_V_0_sel),
        .I2(inStream_V_data_V_0_payload_A[4]),
        .O(tmp_3_fu_167_p1[4]));
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \histo_Addr_A[7]_INST_0 
       (.I0(ap_CS_fsm_state4),
        .I1(idxHist_reg_112_reg__0[5]),
        .I2(tmp_3_fu_167_p1[5]),
        .I3(ap_CS_fsm_state6),
        .I4(histo_addr_1_reg_194[5]),
        .O(\^histo_Addr_A [7]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \histo_Addr_A[7]_INST_0_i_1 
       (.I0(inStream_V_data_V_0_payload_B[5]),
        .I1(inStream_V_data_V_0_sel),
        .I2(inStream_V_data_V_0_payload_A[5]),
        .O(tmp_3_fu_167_p1[5]));
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \histo_Addr_A[8]_INST_0 
       (.I0(ap_CS_fsm_state4),
        .I1(idxHist_reg_112_reg__0[6]),
        .I2(tmp_3_fu_167_p1[6]),
        .I3(ap_CS_fsm_state6),
        .I4(histo_addr_1_reg_194[6]),
        .O(\^histo_Addr_A [8]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \histo_Addr_A[8]_INST_0_i_1 
       (.I0(inStream_V_data_V_0_payload_B[6]),
        .I1(inStream_V_data_V_0_sel),
        .I2(inStream_V_data_V_0_payload_A[6]),
        .O(tmp_3_fu_167_p1[6]));
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \histo_Addr_A[9]_INST_0 
       (.I0(ap_CS_fsm_state4),
        .I1(idxHist_reg_112_reg__0[7]),
        .I2(tmp_3_fu_167_p1[7]),
        .I3(ap_CS_fsm_state6),
        .I4(histo_addr_1_reg_194[7]),
        .O(\^histo_Addr_A [9]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \histo_Addr_A[9]_INST_0_i_1 
       (.I0(inStream_V_data_V_0_payload_B[7]),
        .I1(inStream_V_data_V_0_sel),
        .I2(inStream_V_data_V_0_payload_A[7]),
        .O(tmp_3_fu_167_p1[7]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \histo_Din_A[0]_INST_0 
       (.I0(ap_CS_fsm_state6),
        .I1(histo_load_reg_199[0]),
        .O(histo_Din_A[0]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \histo_Din_A[10]_INST_0 
       (.I0(ap_CS_fsm_state6),
        .I1(tmp_4_fu_172_p2[10]),
        .O(histo_Din_A[10]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \histo_Din_A[11]_INST_0 
       (.I0(ap_CS_fsm_state6),
        .I1(tmp_4_fu_172_p2[11]),
        .O(histo_Din_A[11]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \histo_Din_A[12]_INST_0 
       (.I0(ap_CS_fsm_state6),
        .I1(tmp_4_fu_172_p2[12]),
        .O(histo_Din_A[12]));
  CARRY4 \histo_Din_A[12]_INST_0_i_1 
       (.CI(\histo_Din_A[8]_INST_0_i_1_n_0 ),
        .CO({\histo_Din_A[12]_INST_0_i_1_n_0 ,\histo_Din_A[12]_INST_0_i_1_n_1 ,\histo_Din_A[12]_INST_0_i_1_n_2 ,\histo_Din_A[12]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tmp_4_fu_172_p2[12:9]),
        .S(histo_load_reg_199[12:9]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \histo_Din_A[13]_INST_0 
       (.I0(ap_CS_fsm_state6),
        .I1(tmp_4_fu_172_p2[13]),
        .O(histo_Din_A[13]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \histo_Din_A[14]_INST_0 
       (.I0(ap_CS_fsm_state6),
        .I1(tmp_4_fu_172_p2[14]),
        .O(histo_Din_A[14]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \histo_Din_A[15]_INST_0 
       (.I0(ap_CS_fsm_state6),
        .I1(tmp_4_fu_172_p2[15]),
        .O(histo_Din_A[15]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \histo_Din_A[16]_INST_0 
       (.I0(ap_CS_fsm_state6),
        .I1(tmp_4_fu_172_p2[16]),
        .O(histo_Din_A[16]));
  CARRY4 \histo_Din_A[16]_INST_0_i_1 
       (.CI(\histo_Din_A[12]_INST_0_i_1_n_0 ),
        .CO({\histo_Din_A[16]_INST_0_i_1_n_0 ,\histo_Din_A[16]_INST_0_i_1_n_1 ,\histo_Din_A[16]_INST_0_i_1_n_2 ,\histo_Din_A[16]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tmp_4_fu_172_p2[16:13]),
        .S(histo_load_reg_199[16:13]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \histo_Din_A[17]_INST_0 
       (.I0(ap_CS_fsm_state6),
        .I1(tmp_4_fu_172_p2[17]),
        .O(histo_Din_A[17]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \histo_Din_A[18]_INST_0 
       (.I0(ap_CS_fsm_state6),
        .I1(tmp_4_fu_172_p2[18]),
        .O(histo_Din_A[18]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \histo_Din_A[19]_INST_0 
       (.I0(ap_CS_fsm_state6),
        .I1(tmp_4_fu_172_p2[19]),
        .O(histo_Din_A[19]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \histo_Din_A[1]_INST_0 
       (.I0(ap_CS_fsm_state6),
        .I1(tmp_4_fu_172_p2[1]),
        .O(histo_Din_A[1]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \histo_Din_A[20]_INST_0 
       (.I0(ap_CS_fsm_state6),
        .I1(tmp_4_fu_172_p2[20]),
        .O(histo_Din_A[20]));
  CARRY4 \histo_Din_A[20]_INST_0_i_1 
       (.CI(\histo_Din_A[16]_INST_0_i_1_n_0 ),
        .CO({\histo_Din_A[20]_INST_0_i_1_n_0 ,\histo_Din_A[20]_INST_0_i_1_n_1 ,\histo_Din_A[20]_INST_0_i_1_n_2 ,\histo_Din_A[20]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tmp_4_fu_172_p2[20:17]),
        .S(histo_load_reg_199[20:17]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \histo_Din_A[21]_INST_0 
       (.I0(ap_CS_fsm_state6),
        .I1(tmp_4_fu_172_p2[21]),
        .O(histo_Din_A[21]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \histo_Din_A[22]_INST_0 
       (.I0(ap_CS_fsm_state6),
        .I1(tmp_4_fu_172_p2[22]),
        .O(histo_Din_A[22]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \histo_Din_A[23]_INST_0 
       (.I0(ap_CS_fsm_state6),
        .I1(tmp_4_fu_172_p2[23]),
        .O(histo_Din_A[23]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \histo_Din_A[24]_INST_0 
       (.I0(ap_CS_fsm_state6),
        .I1(tmp_4_fu_172_p2[24]),
        .O(histo_Din_A[24]));
  CARRY4 \histo_Din_A[24]_INST_0_i_1 
       (.CI(\histo_Din_A[20]_INST_0_i_1_n_0 ),
        .CO({\histo_Din_A[24]_INST_0_i_1_n_0 ,\histo_Din_A[24]_INST_0_i_1_n_1 ,\histo_Din_A[24]_INST_0_i_1_n_2 ,\histo_Din_A[24]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tmp_4_fu_172_p2[24:21]),
        .S(histo_load_reg_199[24:21]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \histo_Din_A[25]_INST_0 
       (.I0(ap_CS_fsm_state6),
        .I1(tmp_4_fu_172_p2[25]),
        .O(histo_Din_A[25]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \histo_Din_A[26]_INST_0 
       (.I0(ap_CS_fsm_state6),
        .I1(tmp_4_fu_172_p2[26]),
        .O(histo_Din_A[26]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \histo_Din_A[27]_INST_0 
       (.I0(ap_CS_fsm_state6),
        .I1(tmp_4_fu_172_p2[27]),
        .O(histo_Din_A[27]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \histo_Din_A[28]_INST_0 
       (.I0(ap_CS_fsm_state6),
        .I1(tmp_4_fu_172_p2[28]),
        .O(histo_Din_A[28]));
  CARRY4 \histo_Din_A[28]_INST_0_i_1 
       (.CI(\histo_Din_A[24]_INST_0_i_1_n_0 ),
        .CO({\histo_Din_A[28]_INST_0_i_1_n_0 ,\histo_Din_A[28]_INST_0_i_1_n_1 ,\histo_Din_A[28]_INST_0_i_1_n_2 ,\histo_Din_A[28]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tmp_4_fu_172_p2[28:25]),
        .S(histo_load_reg_199[28:25]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \histo_Din_A[29]_INST_0 
       (.I0(ap_CS_fsm_state6),
        .I1(tmp_4_fu_172_p2[29]),
        .O(histo_Din_A[29]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \histo_Din_A[2]_INST_0 
       (.I0(ap_CS_fsm_state6),
        .I1(tmp_4_fu_172_p2[2]),
        .O(histo_Din_A[2]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \histo_Din_A[30]_INST_0 
       (.I0(ap_CS_fsm_state6),
        .I1(tmp_4_fu_172_p2[30]),
        .O(histo_Din_A[30]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \histo_Din_A[31]_INST_0 
       (.I0(ap_CS_fsm_state6),
        .I1(tmp_4_fu_172_p2[31]),
        .O(histo_Din_A[31]));
  CARRY4 \histo_Din_A[31]_INST_0_i_1 
       (.CI(\histo_Din_A[28]_INST_0_i_1_n_0 ),
        .CO({\NLW_histo_Din_A[31]_INST_0_i_1_CO_UNCONNECTED [3:2],\histo_Din_A[31]_INST_0_i_1_n_2 ,\histo_Din_A[31]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_histo_Din_A[31]_INST_0_i_1_O_UNCONNECTED [3],tmp_4_fu_172_p2[31:29]}),
        .S({1'b0,histo_load_reg_199[31:29]}));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \histo_Din_A[3]_INST_0 
       (.I0(ap_CS_fsm_state6),
        .I1(tmp_4_fu_172_p2[3]),
        .O(histo_Din_A[3]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \histo_Din_A[4]_INST_0 
       (.I0(ap_CS_fsm_state6),
        .I1(tmp_4_fu_172_p2[4]),
        .O(histo_Din_A[4]));
  CARRY4 \histo_Din_A[4]_INST_0_i_1 
       (.CI(1'b0),
        .CO({\histo_Din_A[4]_INST_0_i_1_n_0 ,\histo_Din_A[4]_INST_0_i_1_n_1 ,\histo_Din_A[4]_INST_0_i_1_n_2 ,\histo_Din_A[4]_INST_0_i_1_n_3 }),
        .CYINIT(histo_load_reg_199[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tmp_4_fu_172_p2[4:1]),
        .S(histo_load_reg_199[4:1]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \histo_Din_A[5]_INST_0 
       (.I0(ap_CS_fsm_state6),
        .I1(tmp_4_fu_172_p2[5]),
        .O(histo_Din_A[5]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \histo_Din_A[6]_INST_0 
       (.I0(ap_CS_fsm_state6),
        .I1(tmp_4_fu_172_p2[6]),
        .O(histo_Din_A[6]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \histo_Din_A[7]_INST_0 
       (.I0(ap_CS_fsm_state6),
        .I1(tmp_4_fu_172_p2[7]),
        .O(histo_Din_A[7]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \histo_Din_A[8]_INST_0 
       (.I0(ap_CS_fsm_state6),
        .I1(tmp_4_fu_172_p2[8]),
        .O(histo_Din_A[8]));
  CARRY4 \histo_Din_A[8]_INST_0_i_1 
       (.CI(\histo_Din_A[4]_INST_0_i_1_n_0 ),
        .CO({\histo_Din_A[8]_INST_0_i_1_n_0 ,\histo_Din_A[8]_INST_0_i_1_n_1 ,\histo_Din_A[8]_INST_0_i_1_n_2 ,\histo_Din_A[8]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tmp_4_fu_172_p2[8:5]),
        .S(histo_load_reg_199[8:5]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \histo_Din_A[9]_INST_0 
       (.I0(ap_CS_fsm_state6),
        .I1(tmp_4_fu_172_p2[9]),
        .O(histo_Din_A[9]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    histo_EN_A_INST_0
       (.I0(ap_CS_fsm_state2),
        .I1(ap_CS_fsm_state6),
        .I2(idxPixel_1_reg_1890),
        .O(histo_EN_A));
  LUT6 #(
    .INIT(64'hFFFF800000000000)) 
    histo_EN_A_INST_0_i_1
       (.I0(doHist_CTRL_BUS_s_axi_U_n_7),
        .I1(doHist_CTRL_BUS_s_axi_U_n_9),
        .I2(doHist_CTRL_BUS_s_axi_U_n_8),
        .I3(doHist_CTRL_BUS_s_axi_U_n_6),
        .I4(p_0_in),
        .I5(ap_CS_fsm_state4),
        .O(idxPixel_1_reg_1890));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \histo_WEN_A[0]_INST_0 
       (.I0(ap_CS_fsm_state6),
        .I1(ap_NS_fsm113_out),
        .O(\^histo_WEN_A ));
  LUT5 #(
    .INIT(32'hAAA8AAAA)) 
    \histo_WEN_A[0]_INST_0_i_1 
       (.I0(ap_CS_fsm_state2),
        .I1(idxHist_reg_112_reg__0[2]),
        .I2(idxHist_reg_112_reg__0[1]),
        .I3(idxHist_reg_112_reg__0[0]),
        .I4(\histo_WEN_A[0]_INST_0_i_2_n_0 ),
        .O(ap_NS_fsm113_out));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \histo_WEN_A[0]_INST_0_i_2 
       (.I0(idxHist_reg_112_reg__0[3]),
        .I1(idxHist_reg_112_reg__0[4]),
        .I2(idxHist_reg_112_reg__0[5]),
        .I3(idxHist_reg_112_reg__0[6]),
        .I4(idxHist_reg_112_reg__0[7]),
        .I5(idxHist_reg_112_reg__0[8]),
        .O(\histo_WEN_A[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0888888888888888)) 
    \histo_addr_1_reg_194[7]_i_1 
       (.I0(ap_CS_fsm_state4),
        .I1(p_0_in),
        .I2(doHist_CTRL_BUS_s_axi_U_n_6),
        .I3(doHist_CTRL_BUS_s_axi_U_n_8),
        .I4(doHist_CTRL_BUS_s_axi_U_n_9),
        .I5(doHist_CTRL_BUS_s_axi_U_n_7),
        .O(p_25_in));
  FDRE \histo_addr_1_reg_194_reg[0] 
       (.C(ap_clk),
        .CE(p_25_in),
        .D(tmp_3_fu_167_p1[0]),
        .Q(histo_addr_1_reg_194[0]),
        .R(1'b0));
  FDRE \histo_addr_1_reg_194_reg[1] 
       (.C(ap_clk),
        .CE(p_25_in),
        .D(tmp_3_fu_167_p1[1]),
        .Q(histo_addr_1_reg_194[1]),
        .R(1'b0));
  FDRE \histo_addr_1_reg_194_reg[2] 
       (.C(ap_clk),
        .CE(p_25_in),
        .D(tmp_3_fu_167_p1[2]),
        .Q(histo_addr_1_reg_194[2]),
        .R(1'b0));
  FDRE \histo_addr_1_reg_194_reg[3] 
       (.C(ap_clk),
        .CE(p_25_in),
        .D(tmp_3_fu_167_p1[3]),
        .Q(histo_addr_1_reg_194[3]),
        .R(1'b0));
  FDRE \histo_addr_1_reg_194_reg[4] 
       (.C(ap_clk),
        .CE(p_25_in),
        .D(tmp_3_fu_167_p1[4]),
        .Q(histo_addr_1_reg_194[4]),
        .R(1'b0));
  FDRE \histo_addr_1_reg_194_reg[5] 
       (.C(ap_clk),
        .CE(p_25_in),
        .D(tmp_3_fu_167_p1[5]),
        .Q(histo_addr_1_reg_194[5]),
        .R(1'b0));
  FDRE \histo_addr_1_reg_194_reg[6] 
       (.C(ap_clk),
        .CE(p_25_in),
        .D(tmp_3_fu_167_p1[6]),
        .Q(histo_addr_1_reg_194[6]),
        .R(1'b0));
  FDRE \histo_addr_1_reg_194_reg[7] 
       (.C(ap_clk),
        .CE(p_25_in),
        .D(tmp_3_fu_167_p1[7]),
        .Q(histo_addr_1_reg_194[7]),
        .R(1'b0));
  FDRE \histo_load_reg_199_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(histo_Dout_A[0]),
        .Q(histo_load_reg_199[0]),
        .R(1'b0));
  FDRE \histo_load_reg_199_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(histo_Dout_A[10]),
        .Q(histo_load_reg_199[10]),
        .R(1'b0));
  FDRE \histo_load_reg_199_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(histo_Dout_A[11]),
        .Q(histo_load_reg_199[11]),
        .R(1'b0));
  FDRE \histo_load_reg_199_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(histo_Dout_A[12]),
        .Q(histo_load_reg_199[12]),
        .R(1'b0));
  FDRE \histo_load_reg_199_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(histo_Dout_A[13]),
        .Q(histo_load_reg_199[13]),
        .R(1'b0));
  FDRE \histo_load_reg_199_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(histo_Dout_A[14]),
        .Q(histo_load_reg_199[14]),
        .R(1'b0));
  FDRE \histo_load_reg_199_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(histo_Dout_A[15]),
        .Q(histo_load_reg_199[15]),
        .R(1'b0));
  FDRE \histo_load_reg_199_reg[16] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(histo_Dout_A[16]),
        .Q(histo_load_reg_199[16]),
        .R(1'b0));
  FDRE \histo_load_reg_199_reg[17] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(histo_Dout_A[17]),
        .Q(histo_load_reg_199[17]),
        .R(1'b0));
  FDRE \histo_load_reg_199_reg[18] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(histo_Dout_A[18]),
        .Q(histo_load_reg_199[18]),
        .R(1'b0));
  FDRE \histo_load_reg_199_reg[19] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(histo_Dout_A[19]),
        .Q(histo_load_reg_199[19]),
        .R(1'b0));
  FDRE \histo_load_reg_199_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(histo_Dout_A[1]),
        .Q(histo_load_reg_199[1]),
        .R(1'b0));
  FDRE \histo_load_reg_199_reg[20] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(histo_Dout_A[20]),
        .Q(histo_load_reg_199[20]),
        .R(1'b0));
  FDRE \histo_load_reg_199_reg[21] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(histo_Dout_A[21]),
        .Q(histo_load_reg_199[21]),
        .R(1'b0));
  FDRE \histo_load_reg_199_reg[22] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(histo_Dout_A[22]),
        .Q(histo_load_reg_199[22]),
        .R(1'b0));
  FDRE \histo_load_reg_199_reg[23] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(histo_Dout_A[23]),
        .Q(histo_load_reg_199[23]),
        .R(1'b0));
  FDRE \histo_load_reg_199_reg[24] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(histo_Dout_A[24]),
        .Q(histo_load_reg_199[24]),
        .R(1'b0));
  FDRE \histo_load_reg_199_reg[25] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(histo_Dout_A[25]),
        .Q(histo_load_reg_199[25]),
        .R(1'b0));
  FDRE \histo_load_reg_199_reg[26] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(histo_Dout_A[26]),
        .Q(histo_load_reg_199[26]),
        .R(1'b0));
  FDRE \histo_load_reg_199_reg[27] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(histo_Dout_A[27]),
        .Q(histo_load_reg_199[27]),
        .R(1'b0));
  FDRE \histo_load_reg_199_reg[28] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(histo_Dout_A[28]),
        .Q(histo_load_reg_199[28]),
        .R(1'b0));
  FDRE \histo_load_reg_199_reg[29] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(histo_Dout_A[29]),
        .Q(histo_load_reg_199[29]),
        .R(1'b0));
  FDRE \histo_load_reg_199_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(histo_Dout_A[2]),
        .Q(histo_load_reg_199[2]),
        .R(1'b0));
  FDRE \histo_load_reg_199_reg[30] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(histo_Dout_A[30]),
        .Q(histo_load_reg_199[30]),
        .R(1'b0));
  FDRE \histo_load_reg_199_reg[31] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(histo_Dout_A[31]),
        .Q(histo_load_reg_199[31]),
        .R(1'b0));
  FDRE \histo_load_reg_199_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(histo_Dout_A[3]),
        .Q(histo_load_reg_199[3]),
        .R(1'b0));
  FDRE \histo_load_reg_199_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(histo_Dout_A[4]),
        .Q(histo_load_reg_199[4]),
        .R(1'b0));
  FDRE \histo_load_reg_199_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(histo_Dout_A[5]),
        .Q(histo_load_reg_199[5]),
        .R(1'b0));
  FDRE \histo_load_reg_199_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(histo_Dout_A[6]),
        .Q(histo_load_reg_199[6]),
        .R(1'b0));
  FDRE \histo_load_reg_199_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(histo_Dout_A[7]),
        .Q(histo_load_reg_199[7]),
        .R(1'b0));
  FDRE \histo_load_reg_199_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(histo_Dout_A[8]),
        .Q(histo_load_reg_199[8]),
        .R(1'b0));
  FDRE \histo_load_reg_199_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(histo_Dout_A[9]),
        .Q(histo_load_reg_199[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \idxHist_reg_112[0]_i_1 
       (.I0(idxHist_reg_112_reg__0[0]),
        .O(idxHist_1_fu_140_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \idxHist_reg_112[1]_i_1 
       (.I0(idxHist_reg_112_reg__0[0]),
        .I1(idxHist_reg_112_reg__0[1]),
        .O(idxHist_1_fu_140_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \idxHist_reg_112[2]_i_1 
       (.I0(idxHist_reg_112_reg__0[0]),
        .I1(idxHist_reg_112_reg__0[1]),
        .I2(idxHist_reg_112_reg__0[2]),
        .O(idxHist_1_fu_140_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \idxHist_reg_112[3]_i_1 
       (.I0(idxHist_reg_112_reg__0[1]),
        .I1(idxHist_reg_112_reg__0[0]),
        .I2(idxHist_reg_112_reg__0[2]),
        .I3(idxHist_reg_112_reg__0[3]),
        .O(idxHist_1_fu_140_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \idxHist_reg_112[4]_i_1 
       (.I0(idxHist_reg_112_reg__0[2]),
        .I1(idxHist_reg_112_reg__0[0]),
        .I2(idxHist_reg_112_reg__0[1]),
        .I3(idxHist_reg_112_reg__0[3]),
        .I4(idxHist_reg_112_reg__0[4]),
        .O(idxHist_1_fu_140_p2[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \idxHist_reg_112[5]_i_1 
       (.I0(idxHist_reg_112_reg__0[3]),
        .I1(idxHist_reg_112_reg__0[1]),
        .I2(idxHist_reg_112_reg__0[0]),
        .I3(idxHist_reg_112_reg__0[2]),
        .I4(idxHist_reg_112_reg__0[4]),
        .I5(idxHist_reg_112_reg__0[5]),
        .O(idxHist_1_fu_140_p2[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \idxHist_reg_112[6]_i_1 
       (.I0(\idxHist_reg_112[8]_i_3_n_0 ),
        .I1(idxHist_reg_112_reg__0[6]),
        .O(idxHist_1_fu_140_p2[6]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \idxHist_reg_112[7]_i_1 
       (.I0(\idxHist_reg_112[8]_i_3_n_0 ),
        .I1(idxHist_reg_112_reg__0[6]),
        .I2(idxHist_reg_112_reg__0[7]),
        .O(idxHist_1_fu_140_p2[7]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \idxHist_reg_112[8]_i_2 
       (.I0(idxHist_reg_112_reg__0[6]),
        .I1(\idxHist_reg_112[8]_i_3_n_0 ),
        .I2(idxHist_reg_112_reg__0[7]),
        .I3(idxHist_reg_112_reg__0[8]),
        .O(idxHist_1_fu_140_p2[8]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \idxHist_reg_112[8]_i_3 
       (.I0(idxHist_reg_112_reg__0[5]),
        .I1(idxHist_reg_112_reg__0[3]),
        .I2(idxHist_reg_112_reg__0[1]),
        .I3(idxHist_reg_112_reg__0[0]),
        .I4(idxHist_reg_112_reg__0[2]),
        .I5(idxHist_reg_112_reg__0[4]),
        .O(\idxHist_reg_112[8]_i_3_n_0 ));
  FDRE \idxHist_reg_112_reg[0] 
       (.C(ap_clk),
        .CE(ap_NS_fsm113_out),
        .D(idxHist_1_fu_140_p2[0]),
        .Q(idxHist_reg_112_reg__0[0]),
        .R(idxHist_reg_112));
  FDRE \idxHist_reg_112_reg[1] 
       (.C(ap_clk),
        .CE(ap_NS_fsm113_out),
        .D(idxHist_1_fu_140_p2[1]),
        .Q(idxHist_reg_112_reg__0[1]),
        .R(idxHist_reg_112));
  FDRE \idxHist_reg_112_reg[2] 
       (.C(ap_clk),
        .CE(ap_NS_fsm113_out),
        .D(idxHist_1_fu_140_p2[2]),
        .Q(idxHist_reg_112_reg__0[2]),
        .R(idxHist_reg_112));
  FDRE \idxHist_reg_112_reg[3] 
       (.C(ap_clk),
        .CE(ap_NS_fsm113_out),
        .D(idxHist_1_fu_140_p2[3]),
        .Q(idxHist_reg_112_reg__0[3]),
        .R(idxHist_reg_112));
  FDRE \idxHist_reg_112_reg[4] 
       (.C(ap_clk),
        .CE(ap_NS_fsm113_out),
        .D(idxHist_1_fu_140_p2[4]),
        .Q(idxHist_reg_112_reg__0[4]),
        .R(idxHist_reg_112));
  FDRE \idxHist_reg_112_reg[5] 
       (.C(ap_clk),
        .CE(ap_NS_fsm113_out),
        .D(idxHist_1_fu_140_p2[5]),
        .Q(idxHist_reg_112_reg__0[5]),
        .R(idxHist_reg_112));
  FDRE \idxHist_reg_112_reg[6] 
       (.C(ap_clk),
        .CE(ap_NS_fsm113_out),
        .D(idxHist_1_fu_140_p2[6]),
        .Q(idxHist_reg_112_reg__0[6]),
        .R(idxHist_reg_112));
  FDRE \idxHist_reg_112_reg[7] 
       (.C(ap_clk),
        .CE(ap_NS_fsm113_out),
        .D(idxHist_1_fu_140_p2[7]),
        .Q(idxHist_reg_112_reg__0[7]),
        .R(idxHist_reg_112));
  FDRE \idxHist_reg_112_reg[8] 
       (.C(ap_clk),
        .CE(ap_NS_fsm113_out),
        .D(idxHist_1_fu_140_p2[8]),
        .Q(idxHist_reg_112_reg__0[8]),
        .R(idxHist_reg_112));
  LUT1 #(
    .INIT(2'h1)) 
    \idxPixel_1_reg_189[0]_i_1 
       (.I0(idxPixel_reg_123[0]),
        .O(idxPixel_1_fu_157_p2[0]));
  FDRE \idxPixel_1_reg_189_reg[0] 
       (.C(ap_clk),
        .CE(idxPixel_1_reg_1890),
        .D(idxPixel_1_fu_157_p2[0]),
        .Q(idxPixel_1_reg_189[0]),
        .R(1'b0));
  FDRE \idxPixel_1_reg_189_reg[10] 
       (.C(ap_clk),
        .CE(idxPixel_1_reg_1890),
        .D(idxPixel_1_fu_157_p2[10]),
        .Q(idxPixel_1_reg_189[10]),
        .R(1'b0));
  FDRE \idxPixel_1_reg_189_reg[11] 
       (.C(ap_clk),
        .CE(idxPixel_1_reg_1890),
        .D(idxPixel_1_fu_157_p2[11]),
        .Q(idxPixel_1_reg_189[11]),
        .R(1'b0));
  FDRE \idxPixel_1_reg_189_reg[12] 
       (.C(ap_clk),
        .CE(idxPixel_1_reg_1890),
        .D(idxPixel_1_fu_157_p2[12]),
        .Q(idxPixel_1_reg_189[12]),
        .R(1'b0));
  CARRY4 \idxPixel_1_reg_189_reg[12]_i_1 
       (.CI(\idxPixel_1_reg_189_reg[8]_i_1_n_0 ),
        .CO({\idxPixel_1_reg_189_reg[12]_i_1_n_0 ,\idxPixel_1_reg_189_reg[12]_i_1_n_1 ,\idxPixel_1_reg_189_reg[12]_i_1_n_2 ,\idxPixel_1_reg_189_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(idxPixel_1_fu_157_p2[12:9]),
        .S(idxPixel_reg_123[12:9]));
  FDRE \idxPixel_1_reg_189_reg[13] 
       (.C(ap_clk),
        .CE(idxPixel_1_reg_1890),
        .D(idxPixel_1_fu_157_p2[13]),
        .Q(idxPixel_1_reg_189[13]),
        .R(1'b0));
  FDRE \idxPixel_1_reg_189_reg[14] 
       (.C(ap_clk),
        .CE(idxPixel_1_reg_1890),
        .D(idxPixel_1_fu_157_p2[14]),
        .Q(idxPixel_1_reg_189[14]),
        .R(1'b0));
  FDRE \idxPixel_1_reg_189_reg[15] 
       (.C(ap_clk),
        .CE(idxPixel_1_reg_1890),
        .D(idxPixel_1_fu_157_p2[15]),
        .Q(idxPixel_1_reg_189[15]),
        .R(1'b0));
  FDRE \idxPixel_1_reg_189_reg[16] 
       (.C(ap_clk),
        .CE(idxPixel_1_reg_1890),
        .D(idxPixel_1_fu_157_p2[16]),
        .Q(idxPixel_1_reg_189[16]),
        .R(1'b0));
  CARRY4 \idxPixel_1_reg_189_reg[16]_i_1 
       (.CI(\idxPixel_1_reg_189_reg[12]_i_1_n_0 ),
        .CO({\NLW_idxPixel_1_reg_189_reg[16]_i_1_CO_UNCONNECTED [3],\idxPixel_1_reg_189_reg[16]_i_1_n_1 ,\idxPixel_1_reg_189_reg[16]_i_1_n_2 ,\idxPixel_1_reg_189_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(idxPixel_1_fu_157_p2[16:13]),
        .S(idxPixel_reg_123[16:13]));
  FDRE \idxPixel_1_reg_189_reg[1] 
       (.C(ap_clk),
        .CE(idxPixel_1_reg_1890),
        .D(idxPixel_1_fu_157_p2[1]),
        .Q(idxPixel_1_reg_189[1]),
        .R(1'b0));
  FDRE \idxPixel_1_reg_189_reg[2] 
       (.C(ap_clk),
        .CE(idxPixel_1_reg_1890),
        .D(idxPixel_1_fu_157_p2[2]),
        .Q(idxPixel_1_reg_189[2]),
        .R(1'b0));
  FDRE \idxPixel_1_reg_189_reg[3] 
       (.C(ap_clk),
        .CE(idxPixel_1_reg_1890),
        .D(idxPixel_1_fu_157_p2[3]),
        .Q(idxPixel_1_reg_189[3]),
        .R(1'b0));
  FDRE \idxPixel_1_reg_189_reg[4] 
       (.C(ap_clk),
        .CE(idxPixel_1_reg_1890),
        .D(idxPixel_1_fu_157_p2[4]),
        .Q(idxPixel_1_reg_189[4]),
        .R(1'b0));
  CARRY4 \idxPixel_1_reg_189_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\idxPixel_1_reg_189_reg[4]_i_1_n_0 ,\idxPixel_1_reg_189_reg[4]_i_1_n_1 ,\idxPixel_1_reg_189_reg[4]_i_1_n_2 ,\idxPixel_1_reg_189_reg[4]_i_1_n_3 }),
        .CYINIT(idxPixel_reg_123[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(idxPixel_1_fu_157_p2[4:1]),
        .S(idxPixel_reg_123[4:1]));
  FDRE \idxPixel_1_reg_189_reg[5] 
       (.C(ap_clk),
        .CE(idxPixel_1_reg_1890),
        .D(idxPixel_1_fu_157_p2[5]),
        .Q(idxPixel_1_reg_189[5]),
        .R(1'b0));
  FDRE \idxPixel_1_reg_189_reg[6] 
       (.C(ap_clk),
        .CE(idxPixel_1_reg_1890),
        .D(idxPixel_1_fu_157_p2[6]),
        .Q(idxPixel_1_reg_189[6]),
        .R(1'b0));
  FDRE \idxPixel_1_reg_189_reg[7] 
       (.C(ap_clk),
        .CE(idxPixel_1_reg_1890),
        .D(idxPixel_1_fu_157_p2[7]),
        .Q(idxPixel_1_reg_189[7]),
        .R(1'b0));
  FDRE \idxPixel_1_reg_189_reg[8] 
       (.C(ap_clk),
        .CE(idxPixel_1_reg_1890),
        .D(idxPixel_1_fu_157_p2[8]),
        .Q(idxPixel_1_reg_189[8]),
        .R(1'b0));
  CARRY4 \idxPixel_1_reg_189_reg[8]_i_1 
       (.CI(\idxPixel_1_reg_189_reg[4]_i_1_n_0 ),
        .CO({\idxPixel_1_reg_189_reg[8]_i_1_n_0 ,\idxPixel_1_reg_189_reg[8]_i_1_n_1 ,\idxPixel_1_reg_189_reg[8]_i_1_n_2 ,\idxPixel_1_reg_189_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(idxPixel_1_fu_157_p2[8:5]),
        .S(idxPixel_reg_123[8:5]));
  FDRE \idxPixel_1_reg_189_reg[9] 
       (.C(ap_clk),
        .CE(idxPixel_1_reg_1890),
        .D(idxPixel_1_fu_157_p2[9]),
        .Q(idxPixel_1_reg_189[9]),
        .R(1'b0));
  FDRE \idxPixel_reg_123_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(idxPixel_1_reg_189[0]),
        .Q(idxPixel_reg_123[0]),
        .R(ap_CS_fsm_state3));
  FDRE \idxPixel_reg_123_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(idxPixel_1_reg_189[10]),
        .Q(idxPixel_reg_123[10]),
        .R(ap_CS_fsm_state3));
  FDRE \idxPixel_reg_123_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(idxPixel_1_reg_189[11]),
        .Q(idxPixel_reg_123[11]),
        .R(ap_CS_fsm_state3));
  FDRE \idxPixel_reg_123_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(idxPixel_1_reg_189[12]),
        .Q(idxPixel_reg_123[12]),
        .R(ap_CS_fsm_state3));
  FDRE \idxPixel_reg_123_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(idxPixel_1_reg_189[13]),
        .Q(idxPixel_reg_123[13]),
        .R(ap_CS_fsm_state3));
  FDRE \idxPixel_reg_123_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(idxPixel_1_reg_189[14]),
        .Q(idxPixel_reg_123[14]),
        .R(ap_CS_fsm_state3));
  FDRE \idxPixel_reg_123_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(idxPixel_1_reg_189[15]),
        .Q(idxPixel_reg_123[15]),
        .R(ap_CS_fsm_state3));
  FDRE \idxPixel_reg_123_reg[16] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(idxPixel_1_reg_189[16]),
        .Q(idxPixel_reg_123[16]),
        .R(ap_CS_fsm_state3));
  FDRE \idxPixel_reg_123_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(idxPixel_1_reg_189[1]),
        .Q(idxPixel_reg_123[1]),
        .R(ap_CS_fsm_state3));
  FDRE \idxPixel_reg_123_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(idxPixel_1_reg_189[2]),
        .Q(idxPixel_reg_123[2]),
        .R(ap_CS_fsm_state3));
  FDRE \idxPixel_reg_123_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(idxPixel_1_reg_189[3]),
        .Q(idxPixel_reg_123[3]),
        .R(ap_CS_fsm_state3));
  FDRE \idxPixel_reg_123_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(idxPixel_1_reg_189[4]),
        .Q(idxPixel_reg_123[4]),
        .R(ap_CS_fsm_state3));
  FDRE \idxPixel_reg_123_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(idxPixel_1_reg_189[5]),
        .Q(idxPixel_reg_123[5]),
        .R(ap_CS_fsm_state3));
  FDRE \idxPixel_reg_123_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(idxPixel_1_reg_189[6]),
        .Q(idxPixel_reg_123[6]),
        .R(ap_CS_fsm_state3));
  FDRE \idxPixel_reg_123_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(idxPixel_1_reg_189[7]),
        .Q(idxPixel_reg_123[7]),
        .R(ap_CS_fsm_state3));
  FDRE \idxPixel_reg_123_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(idxPixel_1_reg_189[8]),
        .Q(idxPixel_reg_123[8]),
        .R(ap_CS_fsm_state3));
  FDRE \idxPixel_reg_123_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(idxPixel_1_reg_189[9]),
        .Q(idxPixel_reg_123[9]),
        .R(ap_CS_fsm_state3));
  LUT3 #(
    .INIT(8'h0D)) 
    \inStream_V_data_V_0_payload_A[7]_i_1 
       (.I0(p_0_in),
        .I1(inStream_V_data_V_0_ack_in),
        .I2(inStream_V_data_V_0_sel_wr),
        .O(inStream_V_data_V_0_load_A));
  FDRE \inStream_V_data_V_0_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_load_A),
        .D(inStream_TDATA[0]),
        .Q(inStream_V_data_V_0_payload_A[0]),
        .R(1'b0));
  FDRE \inStream_V_data_V_0_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_load_A),
        .D(inStream_TDATA[1]),
        .Q(inStream_V_data_V_0_payload_A[1]),
        .R(1'b0));
  FDRE \inStream_V_data_V_0_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_load_A),
        .D(inStream_TDATA[2]),
        .Q(inStream_V_data_V_0_payload_A[2]),
        .R(1'b0));
  FDRE \inStream_V_data_V_0_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_load_A),
        .D(inStream_TDATA[3]),
        .Q(inStream_V_data_V_0_payload_A[3]),
        .R(1'b0));
  FDRE \inStream_V_data_V_0_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_load_A),
        .D(inStream_TDATA[4]),
        .Q(inStream_V_data_V_0_payload_A[4]),
        .R(1'b0));
  FDRE \inStream_V_data_V_0_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_load_A),
        .D(inStream_TDATA[5]),
        .Q(inStream_V_data_V_0_payload_A[5]),
        .R(1'b0));
  FDRE \inStream_V_data_V_0_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_load_A),
        .D(inStream_TDATA[6]),
        .Q(inStream_V_data_V_0_payload_A[6]),
        .R(1'b0));
  FDRE \inStream_V_data_V_0_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_load_A),
        .D(inStream_TDATA[7]),
        .Q(inStream_V_data_V_0_payload_A[7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hA2)) 
    \inStream_V_data_V_0_payload_B[7]_i_1 
       (.I0(inStream_V_data_V_0_sel_wr),
        .I1(p_0_in),
        .I2(inStream_V_data_V_0_ack_in),
        .O(inStream_V_data_V_0_load_B));
  FDRE \inStream_V_data_V_0_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_load_B),
        .D(inStream_TDATA[0]),
        .Q(inStream_V_data_V_0_payload_B[0]),
        .R(1'b0));
  FDRE \inStream_V_data_V_0_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_load_B),
        .D(inStream_TDATA[1]),
        .Q(inStream_V_data_V_0_payload_B[1]),
        .R(1'b0));
  FDRE \inStream_V_data_V_0_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_load_B),
        .D(inStream_TDATA[2]),
        .Q(inStream_V_data_V_0_payload_B[2]),
        .R(1'b0));
  FDRE \inStream_V_data_V_0_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_load_B),
        .D(inStream_TDATA[3]),
        .Q(inStream_V_data_V_0_payload_B[3]),
        .R(1'b0));
  FDRE \inStream_V_data_V_0_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_load_B),
        .D(inStream_TDATA[4]),
        .Q(inStream_V_data_V_0_payload_B[4]),
        .R(1'b0));
  FDRE \inStream_V_data_V_0_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_load_B),
        .D(inStream_TDATA[5]),
        .Q(inStream_V_data_V_0_payload_B[5]),
        .R(1'b0));
  FDRE \inStream_V_data_V_0_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_load_B),
        .D(inStream_TDATA[6]),
        .Q(inStream_V_data_V_0_payload_B[6]),
        .R(1'b0));
  FDRE \inStream_V_data_V_0_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(inStream_V_data_V_0_load_B),
        .D(inStream_TDATA[7]),
        .Q(inStream_V_data_V_0_payload_B[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h78)) 
    inStream_V_data_V_0_sel_rd_i_1
       (.I0(p_25_in),
        .I1(p_0_in),
        .I2(inStream_V_data_V_0_sel),
        .O(inStream_V_data_V_0_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    inStream_V_data_V_0_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(inStream_V_data_V_0_sel_rd_i_1_n_0),
        .Q(inStream_V_data_V_0_sel),
        .R(histo_Rst_A));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h78)) 
    inStream_V_data_V_0_sel_wr_i_1
       (.I0(inStream_V_data_V_0_ack_in),
        .I1(inStream_TVALID),
        .I2(inStream_V_data_V_0_sel_wr),
        .O(inStream_V_data_V_0_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    inStream_V_data_V_0_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(inStream_V_data_V_0_sel_wr_i_1_n_0),
        .Q(inStream_V_data_V_0_sel_wr),
        .R(histo_Rst_A));
  LUT5 #(
    .INIT(32'hA2AAA000)) 
    \inStream_V_data_V_0_state[0]_i_1 
       (.I0(ap_rst_n),
        .I1(p_25_in),
        .I2(inStream_TVALID),
        .I3(inStream_V_data_V_0_ack_in),
        .I4(p_0_in),
        .O(\inStream_V_data_V_0_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hBAFF)) 
    \inStream_V_data_V_0_state[1]_i_1 
       (.I0(p_25_in),
        .I1(inStream_TVALID),
        .I2(inStream_V_data_V_0_ack_in),
        .I3(p_0_in),
        .O(inStream_V_data_V_0_state));
  FDRE #(
    .INIT(1'b0)) 
    \inStream_V_data_V_0_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\inStream_V_data_V_0_state[0]_i_1_n_0 ),
        .Q(p_0_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inStream_V_data_V_0_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(inStream_V_data_V_0_state),
        .Q(inStream_V_data_V_0_ack_in),
        .R(histo_Rst_A));
  LUT5 #(
    .INIT(32'hA2AAA000)) 
    \inStream_V_dest_V_0_state[0]_i_1 
       (.I0(ap_rst_n),
        .I1(p_25_in),
        .I2(inStream_TVALID),
        .I3(inStream_TREADY),
        .I4(\inStream_V_dest_V_0_state_reg_n_0_[0] ),
        .O(\inStream_V_dest_V_0_state[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBAFF)) 
    \inStream_V_dest_V_0_state[1]_i_1 
       (.I0(p_25_in),
        .I1(inStream_TVALID),
        .I2(inStream_TREADY),
        .I3(\inStream_V_dest_V_0_state_reg_n_0_[0] ),
        .O(inStream_V_dest_V_0_state));
  FDRE #(
    .INIT(1'b0)) 
    \inStream_V_dest_V_0_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\inStream_V_dest_V_0_state[0]_i_1_n_0 ),
        .Q(\inStream_V_dest_V_0_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inStream_V_dest_V_0_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(inStream_V_dest_V_0_state),
        .Q(inStream_TREADY),
        .R(histo_Rst_A));
endmodule

(* ORIG_REF_NAME = "doHist_CTRL_BUS_s_axi" *) 
module Block_design_doHist_0_0_doHist_CTRL_BUS_s_axi
   (SR,
    ap_done,
    \FSM_onehot_wstate_reg[1]_0 ,
    \FSM_onehot_wstate_reg[2]_0 ,
    D,
    \idxPixel_reg_123_reg[11] ,
    \idxPixel_reg_123_reg[2] ,
    \idxPixel_reg_123_reg[9] ,
    \idxPixel_reg_123_reg[6] ,
    s_axi_CTRL_BUS_RVALID,
    \FSM_onehot_rstate_reg[1]_0 ,
    interrupt,
    \ap_CS_fsm_reg[0] ,
    s_axi_CTRL_BUS_BVALID,
    s_axi_CTRL_BUS_RDATA,
    ap_clk,
    s_axi_CTRL_BUS_AWVALID,
    s_axi_CTRL_BUS_WDATA,
    s_axi_CTRL_BUS_WSTRB,
    s_axi_CTRL_BUS_WVALID,
    Q,
    int_ap_ready_reg_0,
    s_axi_CTRL_BUS_ARADDR,
    s_axi_CTRL_BUS_RREADY,
    s_axi_CTRL_BUS_ARVALID,
    ap_NS_fsm113_out,
    ap_rst_n,
    s_axi_CTRL_BUS_BREADY,
    s_axi_CTRL_BUS_AWADDR);
  output [0:0]SR;
  output ap_done;
  output \FSM_onehot_wstate_reg[1]_0 ;
  output \FSM_onehot_wstate_reg[2]_0 ;
  output [1:0]D;
  output \idxPixel_reg_123_reg[11] ;
  output \idxPixel_reg_123_reg[2] ;
  output \idxPixel_reg_123_reg[9] ;
  output \idxPixel_reg_123_reg[6] ;
  output s_axi_CTRL_BUS_RVALID;
  output \FSM_onehot_rstate_reg[1]_0 ;
  output interrupt;
  output [0:0]\ap_CS_fsm_reg[0] ;
  output s_axi_CTRL_BUS_BVALID;
  output [4:0]s_axi_CTRL_BUS_RDATA;
  input ap_clk;
  input s_axi_CTRL_BUS_AWVALID;
  input [2:0]s_axi_CTRL_BUS_WDATA;
  input [0:0]s_axi_CTRL_BUS_WSTRB;
  input s_axi_CTRL_BUS_WVALID;
  input [2:0]Q;
  input [16:0]int_ap_ready_reg_0;
  input [3:0]s_axi_CTRL_BUS_ARADDR;
  input s_axi_CTRL_BUS_RREADY;
  input s_axi_CTRL_BUS_ARVALID;
  input ap_NS_fsm113_out;
  input ap_rst_n;
  input s_axi_CTRL_BUS_BREADY;
  input [3:0]s_axi_CTRL_BUS_AWADDR;

  wire [1:0]D;
  wire \FSM_onehot_rstate[1]_i_1_n_0 ;
  wire \FSM_onehot_rstate[2]_i_1_n_0 ;
  wire \FSM_onehot_rstate_reg[1]_0 ;
  wire \FSM_onehot_wstate[1]_i_1_n_0 ;
  wire \FSM_onehot_wstate[2]_i_1_n_0 ;
  wire \FSM_onehot_wstate[3]_i_1_n_0 ;
  wire \FSM_onehot_wstate_reg[1]_0 ;
  wire \FSM_onehot_wstate_reg[2]_0 ;
  wire [2:0]Q;
  wire [0:0]SR;
  wire [0:0]\ap_CS_fsm_reg[0] ;
  wire ap_NS_fsm113_out;
  wire ap_clk;
  wire ap_done;
  wire ap_idle;
  wire ap_rst_n;
  wire ap_start;
  wire ar_hs;
  wire \idxPixel_reg_123_reg[11] ;
  wire \idxPixel_reg_123_reg[2] ;
  wire \idxPixel_reg_123_reg[6] ;
  wire \idxPixel_reg_123_reg[9] ;
  wire int_ap_done;
  wire int_ap_done_i_1_n_0;
  wire int_ap_done_i_2_n_0;
  wire int_ap_idle;
  wire int_ap_ready;
  wire [16:0]int_ap_ready_reg_0;
  wire int_ap_start3_out;
  wire int_ap_start_i_1_n_0;
  wire int_auto_restart;
  wire int_auto_restart_i_1_n_0;
  wire int_gie_i_1_n_0;
  wire int_gie_reg_n_0;
  wire \int_ier[0]_i_1_n_0 ;
  wire \int_ier[1]_i_1_n_0 ;
  wire \int_ier[1]_i_2_n_0 ;
  wire \int_ier_reg_n_0_[0] ;
  wire int_isr6_out;
  wire \int_isr[0]_i_1_n_0 ;
  wire \int_isr[1]_i_1_n_0 ;
  wire \int_isr_reg_n_0_[0] ;
  wire interrupt;
  wire p_0_in__0;
  wire p_1_in;
  wire [7:0]rdata;
  wire \rdata[0]_i_2_n_0 ;
  wire \rdata[1]_i_2_n_0 ;
  wire [3:0]s_axi_CTRL_BUS_ARADDR;
  wire s_axi_CTRL_BUS_ARVALID;
  wire [3:0]s_axi_CTRL_BUS_AWADDR;
  wire s_axi_CTRL_BUS_AWVALID;
  wire s_axi_CTRL_BUS_BREADY;
  wire s_axi_CTRL_BUS_BVALID;
  wire [4:0]s_axi_CTRL_BUS_RDATA;
  wire s_axi_CTRL_BUS_RREADY;
  wire s_axi_CTRL_BUS_RVALID;
  wire [2:0]s_axi_CTRL_BUS_WDATA;
  wire [0:0]s_axi_CTRL_BUS_WSTRB;
  wire s_axi_CTRL_BUS_WVALID;
  wire waddr;
  wire \waddr_reg_n_0_[0] ;
  wire \waddr_reg_n_0_[1] ;
  wire \waddr_reg_n_0_[2] ;
  wire \waddr_reg_n_0_[3] ;

  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hF727)) 
    \FSM_onehot_rstate[1]_i_1 
       (.I0(\FSM_onehot_rstate_reg[1]_0 ),
        .I1(s_axi_CTRL_BUS_ARVALID),
        .I2(s_axi_CTRL_BUS_RVALID),
        .I3(s_axi_CTRL_BUS_RREADY),
        .O(\FSM_onehot_rstate[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hF222)) 
    \FSM_onehot_rstate[2]_i_1 
       (.I0(s_axi_CTRL_BUS_RVALID),
        .I1(s_axi_CTRL_BUS_RREADY),
        .I2(s_axi_CTRL_BUS_ARVALID),
        .I3(\FSM_onehot_rstate_reg[1]_0 ),
        .O(\FSM_onehot_rstate[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "RDIDLE:010,RDDATA:100,iSTATE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_rstate[1]_i_1_n_0 ),
        .Q(\FSM_onehot_rstate_reg[1]_0 ),
        .R(SR));
  (* FSM_ENCODED_STATES = "RDIDLE:010,RDDATA:100,iSTATE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rstate_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_rstate[2]_i_1_n_0 ),
        .Q(s_axi_CTRL_BUS_RVALID),
        .R(SR));
  LUT5 #(
    .INIT(32'hFF0C1D1D)) 
    \FSM_onehot_wstate[1]_i_1 
       (.I0(\FSM_onehot_wstate_reg[2]_0 ),
        .I1(\FSM_onehot_wstate_reg[1]_0 ),
        .I2(s_axi_CTRL_BUS_AWVALID),
        .I3(s_axi_CTRL_BUS_BREADY),
        .I4(s_axi_CTRL_BUS_BVALID),
        .O(\FSM_onehot_wstate[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF444)) 
    \FSM_onehot_wstate[2]_i_1 
       (.I0(s_axi_CTRL_BUS_WVALID),
        .I1(\FSM_onehot_wstate_reg[2]_0 ),
        .I2(s_axi_CTRL_BUS_AWVALID),
        .I3(\FSM_onehot_wstate_reg[1]_0 ),
        .O(\FSM_onehot_wstate[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_wstate[3]_i_1 
       (.I0(s_axi_CTRL_BUS_WVALID),
        .I1(\FSM_onehot_wstate_reg[2]_0 ),
        .I2(s_axi_CTRL_BUS_BREADY),
        .I3(s_axi_CTRL_BUS_BVALID),
        .O(\FSM_onehot_wstate[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[1]_i_1_n_0 ),
        .Q(\FSM_onehot_wstate_reg[1]_0 ),
        .R(SR));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[2]_i_1_n_0 ),
        .Q(\FSM_onehot_wstate_reg[2]_0 ),
        .R(SR));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[3]_i_1_n_0 ),
        .Q(s_axi_CTRL_BUS_BVALID),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(ap_done),
        .I1(Q[2]),
        .I2(ap_start),
        .I3(Q[0]),
        .O(D[0]));
  LUT4 #(
    .INIT(16'hF888)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(ap_NS_fsm113_out),
        .I1(Q[1]),
        .I2(ap_start),
        .I3(Q[0]),
        .O(D[1]));
  LUT3 #(
    .INIT(8'h01)) 
    histo_EN_A_INST_0_i_2
       (.I0(int_ap_ready_reg_0[2]),
        .I1(int_ap_ready_reg_0[1]),
        .I2(int_ap_ready_reg_0[0]),
        .O(\idxPixel_reg_123_reg[2] ));
  LUT4 #(
    .INIT(16'h0001)) 
    histo_EN_A_INST_0_i_3
       (.I0(int_ap_ready_reg_0[6]),
        .I1(int_ap_ready_reg_0[5]),
        .I2(int_ap_ready_reg_0[4]),
        .I3(int_ap_ready_reg_0[3]),
        .O(\idxPixel_reg_123_reg[6] ));
  LUT4 #(
    .INIT(16'h0004)) 
    histo_EN_A_INST_0_i_4
       (.I0(int_ap_ready_reg_0[9]),
        .I1(int_ap_ready_reg_0[10]),
        .I2(int_ap_ready_reg_0[8]),
        .I3(int_ap_ready_reg_0[7]),
        .O(\idxPixel_reg_123_reg[9] ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    histo_EN_A_INST_0_i_5
       (.I0(int_ap_ready_reg_0[11]),
        .I1(int_ap_ready_reg_0[12]),
        .I2(int_ap_ready_reg_0[13]),
        .I3(int_ap_ready_reg_0[14]),
        .I4(int_ap_ready_reg_0[15]),
        .I5(int_ap_ready_reg_0[16]),
        .O(\idxPixel_reg_123_reg[11] ));
  LUT1 #(
    .INIT(2'h1)) 
    histo_Rst_A_INST_0
       (.I0(ap_rst_n),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \idxHist_reg_112[8]_i_1 
       (.I0(Q[0]),
        .I1(ap_start),
        .I2(ap_NS_fsm113_out),
        .O(\ap_CS_fsm_reg[0] ));
  LUT6 #(
    .INIT(64'hFFFFFFF7FFFF0000)) 
    int_ap_done_i_1
       (.I0(int_ap_done_i_2_n_0),
        .I1(ar_hs),
        .I2(s_axi_CTRL_BUS_ARADDR[0]),
        .I3(s_axi_CTRL_BUS_ARADDR[1]),
        .I4(ap_done),
        .I5(int_ap_done),
        .O(int_ap_done_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h1)) 
    int_ap_done_i_2
       (.I0(s_axi_CTRL_BUS_ARADDR[2]),
        .I1(s_axi_CTRL_BUS_ARADDR[3]),
        .O(int_ap_done_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_done_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_done_i_1_n_0),
        .Q(int_ap_done),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    int_ap_idle_i_1
       (.I0(Q[0]),
        .I1(ap_start),
        .O(ap_idle));
  FDRE int_ap_idle_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_idle),
        .Q(int_ap_idle),
        .R(SR));
  LUT5 #(
    .INIT(32'h80000000)) 
    int_ap_ready_i_1
       (.I0(Q[2]),
        .I1(\idxPixel_reg_123_reg[11] ),
        .I2(\idxPixel_reg_123_reg[9] ),
        .I3(\idxPixel_reg_123_reg[6] ),
        .I4(\idxPixel_reg_123_reg[2] ),
        .O(ap_done));
  FDRE int_ap_ready_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_done),
        .Q(int_ap_ready),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFBF8)) 
    int_ap_start_i_1
       (.I0(int_auto_restart),
        .I1(ap_done),
        .I2(int_ap_start3_out),
        .I3(ap_start),
        .O(int_ap_start_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    int_ap_start_i_2
       (.I0(s_axi_CTRL_BUS_WDATA[0]),
        .I1(\int_ier[1]_i_2_n_0 ),
        .I2(\waddr_reg_n_0_[2] ),
        .I3(\waddr_reg_n_0_[3] ),
        .O(int_ap_start3_out));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_start_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_start_i_1_n_0),
        .Q(ap_start),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    int_auto_restart_i_1
       (.I0(s_axi_CTRL_BUS_WDATA[2]),
        .I1(\waddr_reg_n_0_[3] ),
        .I2(\waddr_reg_n_0_[2] ),
        .I3(\int_ier[1]_i_2_n_0 ),
        .I4(int_auto_restart),
        .O(int_auto_restart_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_auto_restart_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_auto_restart_i_1_n_0),
        .Q(int_auto_restart),
        .R(SR));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    int_gie_i_1
       (.I0(s_axi_CTRL_BUS_WDATA[0]),
        .I1(\waddr_reg_n_0_[3] ),
        .I2(\waddr_reg_n_0_[2] ),
        .I3(\int_ier[1]_i_2_n_0 ),
        .I4(int_gie_reg_n_0),
        .O(int_gie_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_gie_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_gie_i_1_n_0),
        .Q(int_gie_reg_n_0),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \int_ier[0]_i_1 
       (.I0(s_axi_CTRL_BUS_WDATA[0]),
        .I1(\waddr_reg_n_0_[2] ),
        .I2(\waddr_reg_n_0_[3] ),
        .I3(\int_ier[1]_i_2_n_0 ),
        .I4(\int_ier_reg_n_0_[0] ),
        .O(\int_ier[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \int_ier[1]_i_1 
       (.I0(s_axi_CTRL_BUS_WDATA[1]),
        .I1(\waddr_reg_n_0_[2] ),
        .I2(\waddr_reg_n_0_[3] ),
        .I3(\int_ier[1]_i_2_n_0 ),
        .I4(p_0_in__0),
        .O(\int_ier[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \int_ier[1]_i_2 
       (.I0(s_axi_CTRL_BUS_WSTRB),
        .I1(s_axi_CTRL_BUS_WVALID),
        .I2(\FSM_onehot_wstate_reg[2]_0 ),
        .I3(\waddr_reg_n_0_[0] ),
        .I4(\waddr_reg_n_0_[1] ),
        .O(\int_ier[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_ier[0]_i_1_n_0 ),
        .Q(\int_ier_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_ier[1]_i_1_n_0 ),
        .Q(p_0_in__0),
        .R(SR));
  LUT5 #(
    .INIT(32'hF777F888)) 
    \int_isr[0]_i_1 
       (.I0(s_axi_CTRL_BUS_WDATA[0]),
        .I1(int_isr6_out),
        .I2(\int_ier_reg_n_0_[0] ),
        .I3(ap_done),
        .I4(\int_isr_reg_n_0_[0] ),
        .O(\int_isr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \int_isr[0]_i_2 
       (.I0(\waddr_reg_n_0_[3] ),
        .I1(\waddr_reg_n_0_[2] ),
        .I2(\int_ier[1]_i_2_n_0 ),
        .O(int_isr6_out));
  LUT5 #(
    .INIT(32'hF777F888)) 
    \int_isr[1]_i_1 
       (.I0(s_axi_CTRL_BUS_WDATA[1]),
        .I1(int_isr6_out),
        .I2(p_0_in__0),
        .I3(ap_done),
        .I4(p_1_in),
        .O(\int_isr[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_isr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_isr[0]_i_1_n_0 ),
        .Q(\int_isr_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_isr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_isr[1]_i_1_n_0 ),
        .Q(p_1_in),
        .R(SR));
  LUT3 #(
    .INIT(8'hE0)) 
    interrupt_INST_0
       (.I0(\int_isr_reg_n_0_[0] ),
        .I1(p_1_in),
        .I2(int_gie_reg_n_0),
        .O(interrupt));
  LUT3 #(
    .INIT(8'h10)) 
    \rdata[0]_i_1 
       (.I0(s_axi_CTRL_BUS_ARADDR[0]),
        .I1(s_axi_CTRL_BUS_ARADDR[1]),
        .I2(\rdata[0]_i_2_n_0 ),
        .O(rdata[0]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \rdata[0]_i_2 
       (.I0(\int_ier_reg_n_0_[0] ),
        .I1(\int_isr_reg_n_0_[0] ),
        .I2(s_axi_CTRL_BUS_ARADDR[3]),
        .I3(s_axi_CTRL_BUS_ARADDR[2]),
        .I4(ap_start),
        .I5(int_gie_reg_n_0),
        .O(\rdata[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h80AA800A80A08000)) 
    \rdata[1]_i_1 
       (.I0(\rdata[1]_i_2_n_0 ),
        .I1(p_1_in),
        .I2(s_axi_CTRL_BUS_ARADDR[3]),
        .I3(s_axi_CTRL_BUS_ARADDR[2]),
        .I4(p_0_in__0),
        .I5(int_ap_done),
        .O(rdata[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \rdata[1]_i_2 
       (.I0(s_axi_CTRL_BUS_ARADDR[1]),
        .I1(s_axi_CTRL_BUS_ARADDR[0]),
        .O(\rdata[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \rdata[2]_i_1 
       (.I0(int_ap_idle),
        .I1(s_axi_CTRL_BUS_ARADDR[2]),
        .I2(s_axi_CTRL_BUS_ARADDR[3]),
        .I3(s_axi_CTRL_BUS_ARADDR[0]),
        .I4(s_axi_CTRL_BUS_ARADDR[1]),
        .O(rdata[2]));
  LUT5 #(
    .INIT(32'h00000002)) 
    \rdata[3]_i_1 
       (.I0(int_ap_ready),
        .I1(s_axi_CTRL_BUS_ARADDR[2]),
        .I2(s_axi_CTRL_BUS_ARADDR[3]),
        .I3(s_axi_CTRL_BUS_ARADDR[0]),
        .I4(s_axi_CTRL_BUS_ARADDR[1]),
        .O(rdata[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \rdata[7]_i_1 
       (.I0(\FSM_onehot_rstate_reg[1]_0 ),
        .I1(s_axi_CTRL_BUS_ARVALID),
        .O(ar_hs));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \rdata[7]_i_2 
       (.I0(int_auto_restart),
        .I1(s_axi_CTRL_BUS_ARADDR[2]),
        .I2(s_axi_CTRL_BUS_ARADDR[3]),
        .I3(s_axi_CTRL_BUS_ARADDR[0]),
        .I4(s_axi_CTRL_BUS_ARADDR[1]),
        .O(rdata[7]));
  FDRE \rdata_reg[0] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[0]),
        .Q(s_axi_CTRL_BUS_RDATA[0]),
        .R(1'b0));
  FDRE \rdata_reg[1] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[1]),
        .Q(s_axi_CTRL_BUS_RDATA[1]),
        .R(1'b0));
  FDRE \rdata_reg[2] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[2]),
        .Q(s_axi_CTRL_BUS_RDATA[2]),
        .R(1'b0));
  FDRE \rdata_reg[3] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[3]),
        .Q(s_axi_CTRL_BUS_RDATA[3]),
        .R(1'b0));
  FDRE \rdata_reg[7] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[7]),
        .Q(s_axi_CTRL_BUS_RDATA[4]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \waddr[3]_i_1 
       (.I0(s_axi_CTRL_BUS_AWVALID),
        .I1(\FSM_onehot_wstate_reg[1]_0 ),
        .O(waddr));
  FDRE \waddr_reg[0] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_CTRL_BUS_AWADDR[0]),
        .Q(\waddr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \waddr_reg[1] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_CTRL_BUS_AWADDR[1]),
        .Q(\waddr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \waddr_reg[2] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_CTRL_BUS_AWADDR[2]),
        .Q(\waddr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \waddr_reg[3] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_CTRL_BUS_AWADDR[3]),
        .Q(\waddr_reg_n_0_[3] ),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
