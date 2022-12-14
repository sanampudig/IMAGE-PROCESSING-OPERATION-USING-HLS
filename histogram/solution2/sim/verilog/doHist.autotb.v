// ==============================================================
// File generated on Thu Nov 17 21:57:13 +0530 2022
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
 `timescale 1ns/1ps


`define AUTOTB_DUT      doHist
`define AUTOTB_DUT_INST AESL_inst_doHist
`define AUTOTB_TOP      apatb_doHist_top
`define AUTOTB_LAT_RESULT_FILE "doHist.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "doHist.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_doHist_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 5.00

`define AESL_DEPTH_inStream_V_data_V 1
`define AESL_DEPTH_inStream_V_keep_V 1
`define AESL_DEPTH_inStream_V_strb_V 1
`define AESL_DEPTH_inStream_V_user_V 1
`define AESL_DEPTH_inStream_V_last_V 1
`define AESL_DEPTH_inStream_V_id_V 1
`define AESL_DEPTH_inStream_V_dest_V 1
`define AESL_BRAM_histo AESL_autobram_histo
`define AESL_BRAM_INST_histo bram_inst_histo
`define AUTOTB_TVIN_inStream_V_data_V  "../tv/cdatafile/c.doHist.autotvin_inStream_V_data_V.dat"
`define AUTOTB_TVIN_inStream_V_keep_V  "../tv/cdatafile/c.doHist.autotvin_inStream_V_keep_V.dat"
`define AUTOTB_TVIN_inStream_V_strb_V  "../tv/cdatafile/c.doHist.autotvin_inStream_V_strb_V.dat"
`define AUTOTB_TVIN_inStream_V_user_V  "../tv/cdatafile/c.doHist.autotvin_inStream_V_user_V.dat"
`define AUTOTB_TVIN_inStream_V_last_V  "../tv/cdatafile/c.doHist.autotvin_inStream_V_last_V.dat"
`define AUTOTB_TVIN_inStream_V_id_V  "../tv/cdatafile/c.doHist.autotvin_inStream_V_id_V.dat"
`define AUTOTB_TVIN_inStream_V_dest_V  "../tv/cdatafile/c.doHist.autotvin_inStream_V_dest_V.dat"
`define AUTOTB_TVIN_histo  "../tv/cdatafile/c.doHist.autotvin_histo.dat"
`define AUTOTB_TVIN_inStream_V_data_V_out_wrapc  "../tv/rtldatafile/rtl.doHist.autotvin_inStream_V_data_V.dat"
`define AUTOTB_TVIN_inStream_V_keep_V_out_wrapc  "../tv/rtldatafile/rtl.doHist.autotvin_inStream_V_keep_V.dat"
`define AUTOTB_TVIN_inStream_V_strb_V_out_wrapc  "../tv/rtldatafile/rtl.doHist.autotvin_inStream_V_strb_V.dat"
`define AUTOTB_TVIN_inStream_V_user_V_out_wrapc  "../tv/rtldatafile/rtl.doHist.autotvin_inStream_V_user_V.dat"
`define AUTOTB_TVIN_inStream_V_last_V_out_wrapc  "../tv/rtldatafile/rtl.doHist.autotvin_inStream_V_last_V.dat"
`define AUTOTB_TVIN_inStream_V_id_V_out_wrapc  "../tv/rtldatafile/rtl.doHist.autotvin_inStream_V_id_V.dat"
`define AUTOTB_TVIN_inStream_V_dest_V_out_wrapc  "../tv/rtldatafile/rtl.doHist.autotvin_inStream_V_dest_V.dat"
`define AUTOTB_TVIN_histo_out_wrapc  "../tv/rtldatafile/rtl.doHist.autotvin_histo.dat"
`define AUTOTB_TVOUT_histo  "../tv/cdatafile/c.doHist.autotvout_histo.dat"
`define AUTOTB_TVOUT_histo_out_wrapc  "../tv/rtldatafile/rtl.doHist.autotvout_histo.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 1;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = 230659;
parameter LENGTH_inStream_V_data_V = 76800;
parameter LENGTH_inStream_V_keep_V = 76800;
parameter LENGTH_inStream_V_strb_V = 76800;
parameter LENGTH_inStream_V_user_V = 76800;
parameter LENGTH_inStream_V_last_V = 76800;
parameter LENGTH_inStream_V_id_V = 76800;
parameter LENGTH_inStream_V_dest_V = 76800;
parameter LENGTH_histo = 256;

task read_token;
    input integer fp;
    output reg [199 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end
endtask

reg AESL_clock;
reg rst;
reg start;
reg ce;
reg tb_continue;
wire AESL_start;
wire AESL_reset;
wire AESL_ce;
wire AESL_ready;
wire AESL_idle;
wire AESL_continue;
wire AESL_done;
reg AESL_done_delay = 0;
reg AESL_done_delay2 = 0;
reg AESL_ready_delay = 0;
wire ready;
wire ready_wire;
wire [3 : 0] CTRL_BUS_AWADDR;
wire  CTRL_BUS_AWVALID;
wire  CTRL_BUS_AWREADY;
wire  CTRL_BUS_WVALID;
wire  CTRL_BUS_WREADY;
wire [31 : 0] CTRL_BUS_WDATA;
wire [3 : 0] CTRL_BUS_WSTRB;
wire [3 : 0] CTRL_BUS_ARADDR;
wire  CTRL_BUS_ARVALID;
wire  CTRL_BUS_ARREADY;
wire  CTRL_BUS_RVALID;
wire  CTRL_BUS_RREADY;
wire [31 : 0] CTRL_BUS_RDATA;
wire [1 : 0] CTRL_BUS_RRESP;
wire  CTRL_BUS_BVALID;
wire  CTRL_BUS_BREADY;
wire [1 : 0] CTRL_BUS_BRESP;
wire  CTRL_BUS_INTERRUPT;
wire [7 : 0] inStream_TDATA;
wire  inStream_TVALID;
wire  inStream_TREADY;
wire [0 : 0] inStream_TKEEP;
wire [0 : 0] inStream_TSTRB;
wire [1 : 0] inStream_TUSER;
wire [0 : 0] inStream_TLAST;
wire [4 : 0] inStream_TID;
wire [5 : 0] inStream_TDEST;
wire [31 : 0] histo_ADDR_A;
wire  histo_EN_A;
wire [3 : 0] histo_WEN_A;
wire [31 : 0] histo_DIN_A;
wire [31 : 0] histo_DOUT_A;
wire  histo_CLK_A;
wire  histo_RST_A;
integer done_cnt = 0;
integer AESL_ready_cnt = 0;
integer ready_cnt = 0;
reg ready_initial;
reg ready_initial_n;
reg ready_last_n;
reg ready_delay_last_n;
reg done_delay_last_n;
reg interface_done = 0;
wire AESL_slave_start;
reg AESL_slave_start_lock = 0;
wire AESL_slave_write_start_in;
wire AESL_slave_write_start_finish;
reg AESL_slave_ready;
wire AESL_slave_output_done;
wire AESL_slave_done;
reg ready_rise = 0;
reg start_rise = 0;
reg slave_start_status = 0;
reg slave_done_status = 0;
reg ap_done_lock = 0;

wire ap_clk;
wire ap_rst_n;
wire ap_rst_n_n;

`AUTOTB_DUT `AUTOTB_DUT_INST(
    .s_axi_CTRL_BUS_AWADDR(CTRL_BUS_AWADDR),
    .s_axi_CTRL_BUS_AWVALID(CTRL_BUS_AWVALID),
    .s_axi_CTRL_BUS_AWREADY(CTRL_BUS_AWREADY),
    .s_axi_CTRL_BUS_WVALID(CTRL_BUS_WVALID),
    .s_axi_CTRL_BUS_WREADY(CTRL_BUS_WREADY),
    .s_axi_CTRL_BUS_WDATA(CTRL_BUS_WDATA),
    .s_axi_CTRL_BUS_WSTRB(CTRL_BUS_WSTRB),
    .s_axi_CTRL_BUS_ARADDR(CTRL_BUS_ARADDR),
    .s_axi_CTRL_BUS_ARVALID(CTRL_BUS_ARVALID),
    .s_axi_CTRL_BUS_ARREADY(CTRL_BUS_ARREADY),
    .s_axi_CTRL_BUS_RVALID(CTRL_BUS_RVALID),
    .s_axi_CTRL_BUS_RREADY(CTRL_BUS_RREADY),
    .s_axi_CTRL_BUS_RDATA(CTRL_BUS_RDATA),
    .s_axi_CTRL_BUS_RRESP(CTRL_BUS_RRESP),
    .s_axi_CTRL_BUS_BVALID(CTRL_BUS_BVALID),
    .s_axi_CTRL_BUS_BREADY(CTRL_BUS_BREADY),
    .s_axi_CTRL_BUS_BRESP(CTRL_BUS_BRESP),
    .interrupt(CTRL_BUS_INTERRUPT),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .inStream_TDATA(inStream_TDATA),
    .inStream_TVALID(inStream_TVALID),
    .inStream_TREADY(inStream_TREADY),
    .inStream_TKEEP(inStream_TKEEP),
    .inStream_TSTRB(inStream_TSTRB),
    .inStream_TUSER(inStream_TUSER),
    .inStream_TLAST(inStream_TLAST),
    .inStream_TID(inStream_TID),
    .inStream_TDEST(inStream_TDEST),
    .histo_Addr_A(histo_ADDR_A),
    .histo_EN_A(histo_EN_A),
    .histo_WEN_A(histo_WEN_A),
    .histo_Din_A(histo_DIN_A),
    .histo_Dout_A(histo_DOUT_A),
    .histo_Clk_A(histo_CLK_A),
    .histo_Rst_A(histo_RST_A));

// Assignment for control signal
assign ap_clk = AESL_clock;
assign ap_rst_n = AESL_reset;
assign ap_rst_n_n = ~AESL_reset;
assign AESL_reset = rst;
assign AESL_start = start;
assign AESL_ce = ce;
assign AESL_continue = tb_continue;
  assign AESL_slave_write_start_in = slave_start_status ;
  assign AESL_slave_start = AESL_slave_write_start_finish;
  assign AESL_done = slave_done_status ;

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
    begin
        slave_start_status <= 1;
    end
    else begin
        if (AESL_start == 1 ) begin
            start_rise = 1;
        end
        if (start_rise == 1 && AESL_done == 1 ) begin
            slave_start_status <= 1;
        end
        if (AESL_slave_write_start_in == 1 && AESL_done == 0) begin 
            slave_start_status <= 0;
            start_rise = 0;
        end
    end
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
    begin
        AESL_slave_ready <= 0;
        ready_rise = 0;
    end
    else begin
        if (AESL_ready == 1 ) begin
            ready_rise = 1;
        end
        if (ready_rise == 1 && AESL_done_delay == 1 ) begin
            AESL_slave_ready <= 1;
        end
        if (AESL_slave_ready == 1) begin 
            AESL_slave_ready <= 0;
            ready_rise = 0;
        end
    end
end

always @ (posedge AESL_clock)
begin
    if (AESL_done == 1) begin
        slave_done_status <= 0;
    end
    else if (AESL_slave_output_done == 1 ) begin
        slave_done_status <= 1;
    end
end







//------------------------bramhisto Instantiation--------------

// The input and output of bramhisto
wire  bramhisto_Clk_A, bramhisto_Clk_B;
wire  bramhisto_EN_A, bramhisto_EN_B;
wire  [4 - 1 : 0] bramhisto_WEN_A, bramhisto_WEN_B;
wire    [31 : 0]    bramhisto_Addr_A, bramhisto_Addr_B;
wire    [31 : 0]    bramhisto_Din_A, bramhisto_Din_B;
wire    [31 : 0]    bramhisto_Dout_A, bramhisto_Dout_B;
wire    bramhisto_ready;
wire    bramhisto_done;

`AESL_BRAM_histo `AESL_BRAM_INST_histo(
    .Clk_A    (bramhisto_Clk_A),
    .Rst_A    (bramhisto_Rst_A),
    .EN_A     (bramhisto_EN_A),
    .WEN_A    (bramhisto_WEN_A),
    .Addr_A   (bramhisto_Addr_A),
    .Din_A    (bramhisto_Din_A),
    .Dout_A   (bramhisto_Dout_A),
    .Clk_B    (bramhisto_Clk_B),
    .Rst_B    (bramhisto_Rst_B),
    .EN_B     (bramhisto_EN_B),
    .WEN_B    (bramhisto_WEN_B),
    .Addr_B   (bramhisto_Addr_B),
    .Din_B    (bramhisto_Din_B),
    .Dout_B   (bramhisto_Dout_B),
    .ready    (bramhisto_ready),
    .done        (bramhisto_done)
);

// Assignment between dut and bramhisto
assign bramhisto_Clk_A = histo_CLK_A;
assign bramhisto_Rst_A = histo_RST_A;
assign bramhisto_Addr_A = histo_ADDR_A;
assign bramhisto_EN_A = histo_EN_A;
assign histo_DOUT_A = bramhisto_Dout_A;
assign bramhisto_WEN_A = histo_WEN_A;
assign bramhisto_Din_A = histo_DIN_A;
assign bramhisto_WEN_B = 0;
assign bramhisto_Din_B = 0;
assign bramhisto_ready= ready;
assign bramhisto_done = interface_done;


reg [31:0] ap_c_n_tvin_trans_num_inStream_V_data_V;

reg inStream_ready_reg; // for self-sync

wire inStream_ready;
wire inStream_done;
wire [31:0] inStream_transaction;
wire axi_s_inStream_TVALID;
wire axi_s_inStream_TREADY;

AESL_axi_s_inStream AESL_AXI_S_inStream(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_inStream_TDATA(inStream_TDATA),
    .TRAN_inStream_TKEEP(inStream_TKEEP),
    .TRAN_inStream_TSTRB(inStream_TSTRB),
    .TRAN_inStream_TUSER(inStream_TUSER),
    .TRAN_inStream_TLAST(inStream_TLAST),
    .TRAN_inStream_TID(inStream_TID),
    .TRAN_inStream_TDEST(inStream_TDEST),
    .TRAN_inStream_TVALID(axi_s_inStream_TVALID),
    .TRAN_inStream_TREADY(axi_s_inStream_TREADY),
    .ready(inStream_ready),
    .done(inStream_done),
    .transaction(inStream_transaction));

assign inStream_ready = inStream_ready_reg | ready_initial;
assign inStream_done = 0;

assign inStream_TVALID = axi_s_inStream_TVALID;

assign axi_s_inStream_TREADY = inStream_TREADY;

AESL_axi_slave_CTRL_BUS AESL_AXI_SLAVE_CTRL_BUS(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_s_axi_CTRL_BUS_AWADDR (CTRL_BUS_AWADDR),
    .TRAN_s_axi_CTRL_BUS_AWVALID (CTRL_BUS_AWVALID),
    .TRAN_s_axi_CTRL_BUS_AWREADY (CTRL_BUS_AWREADY),
    .TRAN_s_axi_CTRL_BUS_WVALID (CTRL_BUS_WVALID),
    .TRAN_s_axi_CTRL_BUS_WREADY (CTRL_BUS_WREADY),
    .TRAN_s_axi_CTRL_BUS_WDATA (CTRL_BUS_WDATA),
    .TRAN_s_axi_CTRL_BUS_WSTRB (CTRL_BUS_WSTRB),
    .TRAN_s_axi_CTRL_BUS_ARADDR (CTRL_BUS_ARADDR),
    .TRAN_s_axi_CTRL_BUS_ARVALID (CTRL_BUS_ARVALID),
    .TRAN_s_axi_CTRL_BUS_ARREADY (CTRL_BUS_ARREADY),
    .TRAN_s_axi_CTRL_BUS_RVALID (CTRL_BUS_RVALID),
    .TRAN_s_axi_CTRL_BUS_RREADY (CTRL_BUS_RREADY),
    .TRAN_s_axi_CTRL_BUS_RDATA (CTRL_BUS_RDATA),
    .TRAN_s_axi_CTRL_BUS_RRESP (CTRL_BUS_RRESP),
    .TRAN_s_axi_CTRL_BUS_BVALID (CTRL_BUS_BVALID),
    .TRAN_s_axi_CTRL_BUS_BREADY (CTRL_BUS_BREADY),
    .TRAN_s_axi_CTRL_BUS_BRESP (CTRL_BUS_BRESP),
    .TRAN_CTRL_BUS_interrupt (CTRL_BUS_INTERRUPT),
    .TRAN_CTRL_BUS_ready_out (AESL_ready),
    .TRAN_CTRL_BUS_ready_in (AESL_slave_ready),
    .TRAN_CTRL_BUS_done_out (AESL_slave_output_done),
    .TRAN_CTRL_BUS_idle_out (AESL_idle),
    .TRAN_CTRL_BUS_write_start_in     (AESL_slave_write_start_in),
    .TRAN_CTRL_BUS_write_start_finish (AESL_slave_write_start_finish),
    .TRAN_CTRL_BUS_transaction_done_in (AESL_done_delay),
    .TRAN_CTRL_BUS_start_in  (AESL_slave_start)
);

initial begin : generate_AESL_ready_cnt_proc
    AESL_ready_cnt = 0;
    wait(AESL_reset === 1);
    while(AESL_ready_cnt != AUTOTB_TRANSACTION_NUM) begin
        while(AESL_ready !== 1) begin
            @(posedge AESL_clock);
            # 0.4;
        end
        @(negedge AESL_clock);
        AESL_ready_cnt = AESL_ready_cnt + 1;
        @(posedge AESL_clock);
        # 0.4;
    end
end

    event next_trigger_ready_cnt;
    
    initial begin : gen_ready_cnt
        ready_cnt = 0;
        wait (AESL_reset === 1);
        forever begin
            @ (posedge AESL_clock);
            if (ready == 1) begin
                if (ready_cnt < AUTOTB_TRANSACTION_NUM) begin
                    ready_cnt = ready_cnt + 1;
                end
            end
            -> next_trigger_ready_cnt;
        end
    end
    
    wire all_finish = (done_cnt == AUTOTB_TRANSACTION_NUM);
    
    // done_cnt
    always @ (posedge AESL_clock) begin
        if (~AESL_reset) begin
            done_cnt <= 0;
        end else begin
            if (AESL_done == 1) begin
                if (done_cnt < AUTOTB_TRANSACTION_NUM) begin
                    done_cnt <= done_cnt + 1;
                end
            end
        end
    end
    
    initial begin : finish_simulation
        wait (all_finish == 1);
        // last transaction is saved at negedge right after last done
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        $finish;
    end
    
initial begin
    AESL_clock = 0;
    forever #`AUTOTB_CLOCK_PERIOD_DIV2 AESL_clock = ~AESL_clock;
end


reg end_inStream_V_data_V;
reg [31:0] size_inStream_V_data_V;
reg [31:0] size_inStream_V_data_V_backup;
reg end_inStream_V_keep_V;
reg [31:0] size_inStream_V_keep_V;
reg [31:0] size_inStream_V_keep_V_backup;
reg end_inStream_V_strb_V;
reg [31:0] size_inStream_V_strb_V;
reg [31:0] size_inStream_V_strb_V_backup;
reg end_inStream_V_user_V;
reg [31:0] size_inStream_V_user_V;
reg [31:0] size_inStream_V_user_V_backup;
reg end_inStream_V_last_V;
reg [31:0] size_inStream_V_last_V;
reg [31:0] size_inStream_V_last_V_backup;
reg end_inStream_V_id_V;
reg [31:0] size_inStream_V_id_V;
reg [31:0] size_inStream_V_id_V_backup;
reg end_inStream_V_dest_V;
reg [31:0] size_inStream_V_dest_V;
reg [31:0] size_inStream_V_dest_V_backup;
reg end_histo;
reg [31:0] size_histo;
reg [31:0] size_histo_backup;

initial begin : initial_process
    integer proc_rand;
    rst = 0;
    # 100;
    repeat(3) @ (posedge AESL_clock);
    rst = 1;
end
initial begin : start_process
    integer proc_rand;
    reg [31:0] start_cnt;
    ce = 1;
    start = 0;
    start_cnt = 0;
    wait (AESL_reset === 1);
    @ (posedge AESL_clock);
    #0 start = 1;
    start_cnt = start_cnt + 1;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt >= AUTOTB_TRANSACTION_NUM) begin
            // keep pushing garbage in
            #0 start = 1;
        end
        if (AESL_ready) begin
            start_cnt = start_cnt + 1;
        end
    end
end

always @(AESL_done)
begin
    tb_continue = AESL_done;
end

initial begin : ready_initial_process
    ready_initial = 0;
    wait (AESL_start === 1);
    ready_initial = 1;
    @(posedge AESL_clock);
    ready_initial = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      AESL_ready_delay = 0;
  else
      AESL_ready_delay = AESL_ready;
end
initial begin : ready_last_n_process
  ready_last_n = 1;
  wait(ready_cnt == AUTOTB_TRANSACTION_NUM)
  @(posedge AESL_clock);
  ready_last_n <= 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      ready_delay_last_n = 0;
  else
      ready_delay_last_n <= ready_last_n;
end
assign ready = (ready_initial | AESL_ready_delay);
assign ready_wire = ready_initial | AESL_ready_delay;
initial begin : done_delay_last_n_process
  done_delay_last_n = 1;
  while(done_cnt < AUTOTB_TRANSACTION_NUM)
      @(posedge AESL_clock);
  # 0.1;
  done_delay_last_n = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
  begin
      AESL_done_delay <= 0;
      AESL_done_delay2 <= 0;
  end
  else begin
      AESL_done_delay <= AESL_done & done_delay_last_n;
      AESL_done_delay2 <= AESL_done_delay;
  end
end
always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      interface_done = 0;
  else begin
      # 0.01;
      if(ready === 1 && ready_cnt > 0 && ready_cnt < AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else if(AESL_done_delay === 1 && done_cnt == AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else
          interface_done = 0;
  end
end
    
    initial begin : proc_gen_axis_internal_ready_inStream
        inStream_ready_reg = 0;
        @ (posedge ready_initial);
        forever begin
            @ (ap_c_n_tvin_trans_num_inStream_V_data_V or inStream_transaction);
            if (ap_c_n_tvin_trans_num_inStream_V_data_V > inStream_transaction) begin
                inStream_ready_reg = 1;
            end else begin
                inStream_ready_reg = 0;
            end
        end
    end
    
    `define STREAM_SIZE_IN_inStream_V_data_V "../tv/stream_size/stream_size_in_inStream_V_data_V.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_inStream_V_data_V
        integer fp_inStream_V_data_V;
        reg [127:0] token_inStream_V_data_V;
        integer ret;
        
        ap_c_n_tvin_trans_num_inStream_V_data_V = 0;
        end_inStream_V_data_V = 0;
        wait (AESL_reset === 1);
        
        fp_inStream_V_data_V = $fopen(`STREAM_SIZE_IN_inStream_V_data_V, "r");
        if(fp_inStream_V_data_V == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_inStream_V_data_V);
            $finish;
        end
        read_token(fp_inStream_V_data_V, token_inStream_V_data_V); // should be [[[runtime]]]
        if (token_inStream_V_data_V != "[[[runtime]]]") begin
            $display("ERROR: token_inStream_V_data_V != \"[[[runtime]]]\"");
            $finish;
        end
        size_inStream_V_data_V = 0;
        size_inStream_V_data_V_backup = 0;
        while (size_inStream_V_data_V == 0 && end_inStream_V_data_V == 0) begin
            ap_c_n_tvin_trans_num_inStream_V_data_V = ap_c_n_tvin_trans_num_inStream_V_data_V + 1;
            read_token(fp_inStream_V_data_V, token_inStream_V_data_V); // should be [[transaction]] or [[[/runtime]]]
            if (token_inStream_V_data_V == "[[transaction]]") begin
                read_token(fp_inStream_V_data_V, token_inStream_V_data_V); // should be transaction number
                read_token(fp_inStream_V_data_V, token_inStream_V_data_V); // should be size for hls::stream
                ret = $sscanf(token_inStream_V_data_V, "%d", size_inStream_V_data_V);
                if (size_inStream_V_data_V > 0) begin
                    size_inStream_V_data_V_backup = size_inStream_V_data_V;
                end
                read_token(fp_inStream_V_data_V, token_inStream_V_data_V); // should be [[/transaction]]
            end else if (token_inStream_V_data_V == "[[[/runtime]]]") begin
                $fclose(fp_inStream_V_data_V);
                end_inStream_V_data_V = 1;
            end else begin
                $display("ERROR: unknown token_inStream_V_data_V");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_inStream_V_data_V == 0) begin
                if ((inStream_TREADY & inStream_TVALID) == 1) begin
                    if (size_inStream_V_data_V > 0) begin
                        size_inStream_V_data_V = size_inStream_V_data_V - 1;
                        while (size_inStream_V_data_V == 0 && end_inStream_V_data_V == 0) begin
                            ap_c_n_tvin_trans_num_inStream_V_data_V = ap_c_n_tvin_trans_num_inStream_V_data_V + 1;
                            read_token(fp_inStream_V_data_V, token_inStream_V_data_V); // should be [[transaction]] or [[[/runtime]]]
                            if (token_inStream_V_data_V == "[[transaction]]") begin
                                read_token(fp_inStream_V_data_V, token_inStream_V_data_V); // should be transaction number
                                read_token(fp_inStream_V_data_V, token_inStream_V_data_V); // should be size for hls::stream
                                ret = $sscanf(token_inStream_V_data_V, "%d", size_inStream_V_data_V);
                                if (size_inStream_V_data_V > 0) begin
                                    size_inStream_V_data_V_backup = size_inStream_V_data_V;
                                end
                                read_token(fp_inStream_V_data_V, token_inStream_V_data_V); // should be [[/transaction]]
                            end else if (token_inStream_V_data_V == "[[[/runtime]]]") begin
                                size_inStream_V_data_V = size_inStream_V_data_V_backup;
                                $fclose(fp_inStream_V_data_V);
                                end_inStream_V_data_V = 1;
                            end else begin
                                $display("ERROR: unknown token_inStream_V_data_V");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if ((inStream_TREADY & inStream_TVALID) == 1) begin
                    if (size_inStream_V_data_V > 0) begin
                        size_inStream_V_data_V = size_inStream_V_data_V - 1;
                        if (size_inStream_V_data_V == 0) begin
                            ap_c_n_tvin_trans_num_inStream_V_data_V = ap_c_n_tvin_trans_num_inStream_V_data_V + 1;
                            size_inStream_V_data_V = size_inStream_V_data_V_backup;
                        end
                    end
                end
            end
        end
    end
    

reg dump_tvout_finish_histo;

initial begin : dump_tvout_runtime_sign_histo
    integer fp;
    dump_tvout_finish_histo = 0;
    fp = $fopen(`AUTOTB_TVOUT_histo_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_histo_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_histo_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_histo_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_histo = 1;
end


////////////////////////////////////////////
// progress and performance
////////////////////////////////////////////

task wait_start();
    while (~AESL_start) begin
        @ (posedge AESL_clock);
    end
endtask

reg [31:0] clk_cnt = 0;
reg AESL_ready_p1;
reg AESL_start_p1;

always @ (posedge AESL_clock) begin
    clk_cnt <= clk_cnt + 1;
    AESL_ready_p1 <= AESL_ready;
    AESL_start_p1 <= AESL_start;
end

reg [31:0] start_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] start_cnt;
reg [31:0] ready_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] ap_ready_cnt;
reg [31:0] finish_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] finish_cnt;
event report_progress;

initial begin
    start_cnt = 0;
    finish_cnt = 0;
    ap_ready_cnt = 0;
    wait (AESL_reset == 1);
    wait_start();
    start_timestamp[start_cnt] = clk_cnt;
    start_cnt = start_cnt + 1;
    if (AESL_done) begin
        finish_timestamp[finish_cnt] = clk_cnt;
        finish_cnt = finish_cnt + 1;
    end
    -> report_progress;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt < AUTOTB_TRANSACTION_NUM) begin
            if ((AESL_start && AESL_ready_p1)||(AESL_start && ~AESL_start_p1)) begin
                start_timestamp[start_cnt] = clk_cnt;
                start_cnt = start_cnt + 1;
            end
        end
        if (ap_ready_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_start_p1 && AESL_ready_p1) begin
                ready_timestamp[ap_ready_cnt] = clk_cnt;
                ap_ready_cnt = ap_ready_cnt + 1;
            end
        end
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                finish_timestamp[finish_cnt] = clk_cnt;
                finish_cnt = finish_cnt + 1;
            end
        end
        -> report_progress;
    end
end

reg [31:0] progress_timeout;

initial begin : simulation_progress
    real intra_progress;
    wait (AESL_reset == 1);
    progress_timeout = PROGRESS_TIMEOUT;
    $display("////////////////////////////////////////////////////////////////////////////////////");
    $display("// Inter-Transaction Progress: Completed Transaction / Total Transaction");
    $display("// Intra-Transaction Progress: Measured Latency / Latency Estimation * 100%%");
    $display("//");
    $display("// RTL Simulation : \"Inter-Transaction Progress\" [\"Intra-Transaction Progress\"] @ \"Simulation Time\"");
    $display("////////////////////////////////////////////////////////////////////////////////////");
    print_progress();
    while (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
        @ (report_progress);
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                print_progress();
                progress_timeout = PROGRESS_TIMEOUT;
            end else begin
                if (progress_timeout == 0) begin
                    print_progress();
                    progress_timeout = PROGRESS_TIMEOUT;
                end else begin
                    progress_timeout = progress_timeout - 1;
                end
            end
        end
    end
    print_progress();
    $display("////////////////////////////////////////////////////////////////////////////////////");
    calculate_performance();
end

task get_intra_progress(output real intra_progress);
    begin
        if (start_cnt > finish_cnt) begin
            intra_progress = clk_cnt - start_timestamp[finish_cnt];
        end else if(finish_cnt > 0) begin
            intra_progress = LATENCY_ESTIMATION;
        end else begin
            intra_progress = 0;
        end
        intra_progress = intra_progress / LATENCY_ESTIMATION;
    end
endtask

task print_progress();
    real intra_progress;
    begin
        if (LATENCY_ESTIMATION > 0) begin
            get_intra_progress(intra_progress);
            $display("// RTL Simulation : %0d / %0d [%2.2f%%] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, intra_progress * 100, $time);
        end else begin
            $display("// RTL Simulation : %0d / %0d [n/a] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, $time);
        end
    end
endtask

task calculate_performance();
    integer i;
    integer fp;
    reg [31:0] latency [0:AUTOTB_TRANSACTION_NUM - 1];
    reg [31:0] latency_min;
    reg [31:0] latency_max;
    reg [31:0] latency_total;
    reg [31:0] latency_average;
    reg [31:0] interval [0:AUTOTB_TRANSACTION_NUM - 2];
    reg [31:0] interval_min;
    reg [31:0] interval_max;
    reg [31:0] interval_total;
    reg [31:0] interval_average;
    begin
        latency_min = -1;
        latency_max = 0;
        latency_total = 0;
        interval_min = -1;
        interval_max = 0;
        interval_total = 0;

        for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
            // calculate latency
            latency[i] = finish_timestamp[i] - start_timestamp[i];
            if (latency[i] > latency_max) latency_max = latency[i];
            if (latency[i] < latency_min) latency_min = latency[i];
            latency_total = latency_total + latency[i];
            // calculate interval
            if (AUTOTB_TRANSACTION_NUM == 1) begin
                interval[i] = 0;
                interval_max = 0;
                interval_min = 0;
                interval_total = 0;
            end else if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                interval[i] = finish_timestamp[i] - start_timestamp[i]+1;
                if (interval[i] > interval_max) interval_max = interval[i];
                if (interval[i] < interval_min) interval_min = interval[i];
                interval_total = interval_total + interval[i];
            end
        end

        latency_average = latency_total / AUTOTB_TRANSACTION_NUM;
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            interval_average = 0;
        end else begin
            interval_average = interval_total / (AUTOTB_TRANSACTION_NUM - 1);
        end

        fp = $fopen(`AUTOTB_LAT_RESULT_FILE, "w");

        $fdisplay(fp, "$MAX_LATENCY = \"%0d\"", latency_max);
        $fdisplay(fp, "$MIN_LATENCY = \"%0d\"", latency_min);
        $fdisplay(fp, "$AVER_LATENCY = \"%0d\"", latency_average);
        $fdisplay(fp, "$MAX_THROUGHPUT = \"%0d\"", interval_max);
        $fdisplay(fp, "$MIN_THROUGHPUT = \"%0d\"", interval_min);
        $fdisplay(fp, "$AVER_THROUGHPUT = \"%0d\"", interval_average);

        $fclose(fp);

        fp = $fopen(`AUTOTB_PER_RESULT_TRANS_FILE, "w");

        $fdisplay(fp, "%20s%16s%16s", "", "latency", "interval");
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            i = 0;
            $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
        end else begin
            for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
                if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                    $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
                end else begin
                    $fdisplay(fp, "transaction%8d:%16d               x", i, latency[i]);
                end
            end
        end

        $fclose(fp);
    end
endtask


////////////////////////////////////////////
// Dependence Check
////////////////////////////////////////////

`ifndef POST_SYN

`endif

endmodule
