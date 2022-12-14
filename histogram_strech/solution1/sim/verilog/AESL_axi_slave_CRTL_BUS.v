// ==============================================================
// File generated on Thu Nov 17 23:33:36 +0530 2022
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps

module AESL_axi_slave_CRTL_BUS (
    clk,
    reset,
    TRAN_s_axi_CRTL_BUS_AWADDR,
    TRAN_s_axi_CRTL_BUS_AWVALID,
    TRAN_s_axi_CRTL_BUS_AWREADY,
    TRAN_s_axi_CRTL_BUS_WVALID,
    TRAN_s_axi_CRTL_BUS_WREADY,
    TRAN_s_axi_CRTL_BUS_WDATA,
    TRAN_s_axi_CRTL_BUS_WSTRB,
    TRAN_s_axi_CRTL_BUS_ARADDR,
    TRAN_s_axi_CRTL_BUS_ARVALID,
    TRAN_s_axi_CRTL_BUS_ARREADY,
    TRAN_s_axi_CRTL_BUS_RVALID,
    TRAN_s_axi_CRTL_BUS_RREADY,
    TRAN_s_axi_CRTL_BUS_RDATA,
    TRAN_s_axi_CRTL_BUS_RRESP,
    TRAN_s_axi_CRTL_BUS_BVALID,
    TRAN_s_axi_CRTL_BUS_BREADY,
    TRAN_s_axi_CRTL_BUS_BRESP,
    TRAN_CRTL_BUS_write_data_finish,
    TRAN_CRTL_BUS_start_in,
    TRAN_CRTL_BUS_idle_out,
    TRAN_CRTL_BUS_ready_out,
    TRAN_CRTL_BUS_ready_in,
    TRAN_CRTL_BUS_done_out,
    TRAN_CRTL_BUS_write_start_in   ,
    TRAN_CRTL_BUS_write_start_finish,
    TRAN_CRTL_BUS_interrupt,
    TRAN_CRTL_BUS_transaction_done_in
    );

//------------------------Parameter----------------------
`define TV_IN_xMin "../tv/cdatafile/c.doHistStrech.autotvin_xMin.dat"
`define TV_IN_xMax "../tv/cdatafile/c.doHistStrech.autotvin_xMax.dat"
parameter ADDR_WIDTH = 5;
parameter DATA_WIDTH = 32;
parameter xMin_DEPTH = 1;
reg [31 : 0] xMin_OPERATE_DEPTH = 0;
parameter xMin_c_bitwidth = 8;
parameter xMax_DEPTH = 1;
reg [31 : 0] xMax_OPERATE_DEPTH = 0;
parameter xMax_c_bitwidth = 8;
parameter START_ADDR = 0;
parameter doHistStrech_continue_addr = 0;
parameter doHistStrech_auto_start_addr = 0;
parameter xMin_data_in_addr = 16;
parameter xMax_data_in_addr = 24;
parameter STATUS_ADDR = 0;

output [ADDR_WIDTH - 1 : 0] TRAN_s_axi_CRTL_BUS_AWADDR;
output  TRAN_s_axi_CRTL_BUS_AWVALID;
input  TRAN_s_axi_CRTL_BUS_AWREADY;
output  TRAN_s_axi_CRTL_BUS_WVALID;
input  TRAN_s_axi_CRTL_BUS_WREADY;
output [DATA_WIDTH - 1 : 0] TRAN_s_axi_CRTL_BUS_WDATA;
output [DATA_WIDTH/8 - 1 : 0] TRAN_s_axi_CRTL_BUS_WSTRB;
output [ADDR_WIDTH - 1 : 0] TRAN_s_axi_CRTL_BUS_ARADDR;
output  TRAN_s_axi_CRTL_BUS_ARVALID;
input  TRAN_s_axi_CRTL_BUS_ARREADY;
input  TRAN_s_axi_CRTL_BUS_RVALID;
output  TRAN_s_axi_CRTL_BUS_RREADY;
input [DATA_WIDTH - 1 : 0] TRAN_s_axi_CRTL_BUS_RDATA;
input [2 - 1 : 0] TRAN_s_axi_CRTL_BUS_RRESP;
input  TRAN_s_axi_CRTL_BUS_BVALID;
output  TRAN_s_axi_CRTL_BUS_BREADY;
input [2 - 1 : 0] TRAN_s_axi_CRTL_BUS_BRESP;
output TRAN_CRTL_BUS_write_data_finish;
input     clk;
input     reset;
input     TRAN_CRTL_BUS_start_in;
output    TRAN_CRTL_BUS_done_out;
output    TRAN_CRTL_BUS_ready_out;
input     TRAN_CRTL_BUS_ready_in;
output    TRAN_CRTL_BUS_idle_out;
input  TRAN_CRTL_BUS_write_start_in   ;
output TRAN_CRTL_BUS_write_start_finish;
input     TRAN_CRTL_BUS_interrupt;
input     TRAN_CRTL_BUS_transaction_done_in;

reg [ADDR_WIDTH - 1 : 0] AWADDR_reg = 0;
reg  AWVALID_reg = 0;
reg  WVALID_reg = 0;
reg [DATA_WIDTH - 1 : 0] WDATA_reg = 0;
reg [DATA_WIDTH/8 - 1 : 0] WSTRB_reg = 0;
reg [ADDR_WIDTH - 1 : 0] ARADDR_reg = 0;
reg  ARVALID_reg = 0;
reg  RREADY_reg = 0;
reg [DATA_WIDTH - 1 : 0] RDATA_reg = 0;
reg  BREADY_reg = 0;
reg [DATA_WIDTH - 1 : 0] mem_xMin [xMin_DEPTH - 1 : 0];
reg xMin_write_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_xMax [xMax_DEPTH - 1 : 0];
reg xMax_write_data_finish;
reg AESL_ready_out_index_reg = 0;
reg AESL_write_start_finish = 0;
reg AESL_ready_reg;
reg ready_initial;
reg AESL_done_index_reg = 0;
reg AESL_idle_index_reg = 0;
reg AESL_auto_restart_index_reg;
reg process_0_finish = 0;
reg process_1_finish = 0;
reg process_2_finish = 0;
reg process_3_finish = 0;
//write xMin reg
reg [31 : 0] write_xMin_count = 0;
reg write_xMin_run_flag = 0;
reg write_one_xMin_data_done = 0;
//write xMax reg
reg [31 : 0] write_xMax_count = 0;
reg write_xMax_run_flag = 0;
reg write_one_xMax_data_done = 0;
reg [31 : 0] write_start_count = 0;
reg write_start_run_flag = 0;

//===================process control=================
reg [31 : 0] ongoing_process_number = 0;
//process number depends on how much processes needed.
reg process_busy = 0;

//=================== signal connection ==============
assign TRAN_s_axi_CRTL_BUS_AWADDR = AWADDR_reg;
assign TRAN_s_axi_CRTL_BUS_AWVALID = AWVALID_reg;
assign TRAN_s_axi_CRTL_BUS_WVALID = WVALID_reg;
assign TRAN_s_axi_CRTL_BUS_WDATA = WDATA_reg;
assign TRAN_s_axi_CRTL_BUS_WSTRB = WSTRB_reg;
assign TRAN_s_axi_CRTL_BUS_ARADDR = ARADDR_reg;
assign TRAN_s_axi_CRTL_BUS_ARVALID = ARVALID_reg;
assign TRAN_s_axi_CRTL_BUS_RREADY = RREADY_reg;
assign TRAN_s_axi_CRTL_BUS_BREADY = BREADY_reg;
assign TRAN_CRTL_BUS_write_start_finish = AESL_write_start_finish;
assign TRAN_CRTL_BUS_done_out = AESL_done_index_reg;
assign TRAN_CRTL_BUS_ready_out = AESL_ready_out_index_reg;
assign TRAN_CRTL_BUS_idle_out = AESL_idle_index_reg;
assign TRAN_CRTL_BUS_write_data_finish = 1 & xMin_write_data_finish & xMax_write_data_finish;
always @(TRAN_CRTL_BUS_ready_in or ready_initial) 
begin
    AESL_ready_reg <= TRAN_CRTL_BUS_ready_in | ready_initial;
end

always @(reset or process_0_finish or process_1_finish or process_2_finish or process_3_finish ) begin
    if (reset == 0) begin
        ongoing_process_number <= 0;
    end
    else if (ongoing_process_number == 0 && process_0_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 1 && process_1_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 2 && process_2_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 3 && process_3_finish == 1) begin
            ongoing_process_number <= 0;
    end
end

task count_c_data_four_byte_num_by_bitwidth;
input  integer bitwidth;
output integer num;
integer factor;
integer i;
begin
    factor = 32;
    for (i = 1; i <= 32; i = i + 1) begin
        if (bitwidth <= factor && bitwidth > factor - 32) begin
            num = i;
        end
        factor = factor + 32;
    end
end    
endtask

task count_seperate_factor_by_bitwidth;
input  integer bitwidth;
output integer factor;
begin
    if (bitwidth <= 8 ) begin
        factor=4;
    end
    if (bitwidth <= 16 & bitwidth > 8 ) begin
        factor=2;
    end
    if (bitwidth <= 32 & bitwidth > 16 ) begin
        factor=1;
    end
    if (bitwidth <= 1024 & bitwidth > 32 ) begin
        factor=1;
    end
end    
endtask

task count_operate_depth_by_bitwidth_and_depth;
input  integer bitwidth;
input  integer depth;
output integer operate_depth;
integer factor;
integer remain;
begin
    count_seperate_factor_by_bitwidth (bitwidth , factor);
    operate_depth = depth / factor;
    remain = depth % factor;
    if (remain > 0) begin
        operate_depth = operate_depth + 1;
    end
end    
endtask

task write; /*{{{*/
    input  reg [ADDR_WIDTH - 1:0] waddr;   // write address
    input  reg [DATA_WIDTH - 1:0] wdata;   // write data
    output reg wresp;
    reg aw_flag;
    reg w_flag;
    reg [DATA_WIDTH/8 - 1:0] wstrb_reg;
    integer i;
begin 
    wresp = 0;
    aw_flag = 0;
    w_flag = 0;
//=======================one single write operate======================
    AWADDR_reg <= waddr;
    AWVALID_reg <= 1;
    WDATA_reg <= wdata;
    WVALID_reg <= 1;
    for (i = 0; i < DATA_WIDTH/8; i = i + 1) begin
        wstrb_reg [i] = 1;
    end    
    WSTRB_reg <= wstrb_reg;
    while (!(aw_flag && w_flag)) begin
        @(posedge clk);
        if (aw_flag != 1)
            aw_flag = TRAN_s_axi_CRTL_BUS_AWREADY & AWVALID_reg;
        if (w_flag != 1)
            w_flag = TRAN_s_axi_CRTL_BUS_WREADY & WVALID_reg;
        AWVALID_reg <= !aw_flag;
        WVALID_reg <= !w_flag;
    end

    BREADY_reg <= 1;
    while (TRAN_s_axi_CRTL_BUS_BVALID != 1) begin
        //wait for response 
        @(posedge clk);
    end
    @(posedge clk);
    BREADY_reg <= 0;
    if (TRAN_s_axi_CRTL_BUS_BRESP === 2'b00) begin
        wresp = 1;
        //input success. in fact BRESP is always 2'b00
    end   
//=======================one single write operate======================

end
endtask/*}}}*/

task read (/*{{{*/
    input  [ADDR_WIDTH - 1:0] raddr ,   // write address
    output [DATA_WIDTH - 1:0] RDATA_result ,
    output rresp
);
begin 
    rresp = 0;
//=======================one single read operate======================
    ARADDR_reg <= raddr;
    ARVALID_reg <= 1;
    while (TRAN_s_axi_CRTL_BUS_ARREADY !== 1) begin
        @(posedge clk);
    end
    @(posedge clk);
    ARVALID_reg <= 0;
    RREADY_reg <= 1;
    while (TRAN_s_axi_CRTL_BUS_RVALID !== 1) begin
        //wait for response 
        @(posedge clk);
    end
    @(posedge clk);
    RDATA_result  <= TRAN_s_axi_CRTL_BUS_RDATA;
    RREADY_reg <= 0;
    if (TRAN_s_axi_CRTL_BUS_RRESP === 2'b00 ) begin
        rresp <= 1;
        //output success. in fact RRESP is always 2'b00
    end  
    @(posedge clk);

//=======================one single read operate end======================

end
endtask/*}}}*/

initial begin : ready_initial_process
    ready_initial = 0;
    wait(reset === 1);
    @(posedge clk);
    ready_initial = 1;
    @(posedge clk);
    ready_initial = 0;
end

initial begin : update_status
    integer process_num ;
    integer read_status_resp;
    wait(reset === 1);
    @(posedge clk);
    process_num = 0;
    while (1) begin
        process_0_finish = 0;
        AESL_done_index_reg         <= 0;
        AESL_ready_out_index_reg        <= 0;
        if (ongoing_process_number === process_num && process_busy === 0) begin
            process_busy = 1;
            read (STATUS_ADDR, RDATA_reg, read_status_resp);
                AESL_done_index_reg         <= RDATA_reg[1 : 1];
                AESL_ready_out_index_reg    <= RDATA_reg[1 : 1];
                AESL_idle_index_reg         <= RDATA_reg[2 : 2];
            process_0_finish = 1;
            process_busy = 0;
        end 
        @(posedge clk);
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        xMin_write_data_finish <= 0;
        write_xMin_run_flag <= 0; 
        write_xMin_count = 0;
        count_operate_depth_by_bitwidth_and_depth (xMin_c_bitwidth, xMin_DEPTH, xMin_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_CRTL_BUS_start_in === 1) begin
            xMin_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_xMin_run_flag <= 1; 
            write_xMin_count = 0;
        end
        if (write_one_xMin_data_done === 1) begin
            write_xMin_count = write_xMin_count + 1;
            if (write_xMin_count == xMin_OPERATE_DEPTH) begin
                write_xMin_run_flag <= 0; 
                xMin_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_xMin
    integer write_xMin_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] xMin_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = xMin_c_bitwidth;
    process_num = 1;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_1_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_xMin_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write xMin data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (xMin_c_bitwidth < 32) begin
                        xMin_data_tmp_reg = mem_xMin[write_xMin_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < xMin_c_bitwidth) begin
                                xMin_data_tmp_reg[j] = mem_xMin[write_xMin_count][i*32 + j];
                            end
                            else begin
                                xMin_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (xMin_data_in_addr + write_xMin_count * four_byte_num * 4 + i * 4, xMin_data_tmp_reg, write_xMin_resp);
                end
                process_busy = 0;
                write_one_xMin_data_done <= 1;
                @(posedge clk);
                write_one_xMin_data_done <= 0;
            end   
            process_1_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        xMax_write_data_finish <= 0;
        write_xMax_run_flag <= 0; 
        write_xMax_count = 0;
        count_operate_depth_by_bitwidth_and_depth (xMax_c_bitwidth, xMax_DEPTH, xMax_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_CRTL_BUS_start_in === 1) begin
            xMax_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_xMax_run_flag <= 1; 
            write_xMax_count = 0;
        end
        if (write_one_xMax_data_done === 1) begin
            write_xMax_count = write_xMax_count + 1;
            if (write_xMax_count == xMax_OPERATE_DEPTH) begin
                write_xMax_run_flag <= 0; 
                xMax_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_xMax
    integer write_xMax_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] xMax_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = xMax_c_bitwidth;
    process_num = 2;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_2_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_xMax_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write xMax data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (xMax_c_bitwidth < 32) begin
                        xMax_data_tmp_reg = mem_xMax[write_xMax_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < xMax_c_bitwidth) begin
                                xMax_data_tmp_reg[j] = mem_xMax[write_xMax_count][i*32 + j];
                            end
                            else begin
                                xMax_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (xMax_data_in_addr + write_xMax_count * four_byte_num * 4 + i * 4, xMax_data_tmp_reg, write_xMax_resp);
                end
                process_busy = 0;
                write_one_xMax_data_done <= 1;
                @(posedge clk);
                write_one_xMax_data_done <= 0;
            end   
            process_2_finish <= 1;
        end
        @(posedge clk);
    end    
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        write_start_run_flag <= 0; 
        write_start_count <= 0;
    end
    else begin
        if (write_start_count >= 1) begin
            write_start_run_flag <= 0; 
        end
        else if (TRAN_CRTL_BUS_write_start_in === 1) begin
            write_start_run_flag <= 1; 
        end
        if (AESL_write_start_finish === 1) begin
            write_start_count <= write_start_count + 1;
            write_start_run_flag <= 0; 
        end
    end
end

initial begin : write_start
    reg [DATA_WIDTH - 1 : 0] write_start_tmp;
    integer process_num;
    integer write_start_resp;
    wait(reset === 1);
    @(posedge clk);
    process_num = 3;
    while (1) begin
        process_3_finish = 0;
        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            if (write_start_run_flag === 1) begin
                process_busy = 1;
                write_start_tmp=0;
                write_start_tmp[0 : 0] = 1;
                write (START_ADDR, write_start_tmp, write_start_resp);
                process_busy = 0;
                AESL_write_start_finish <= 1;
                @(posedge clk);
                AESL_write_start_finish <= 0;
            end
            process_3_finish <= 1;
        end 
        @(posedge clk);
    end
end

//------------------------Task and function-------------- 
task read_token; 
    input integer fp; 
    output reg [127 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end 
endtask 
 
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_xMin_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [127 : 0] token_tmp; 
  //reg [xMin_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] mem_tmp; 
  reg [ 8*5 : 1] str;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  mem_tmp [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (xMin_c_bitwidth , factor);
  fp = $fopen(`TV_IN_xMin ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_xMin); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < xMin_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  mem_tmp [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  mem_tmp [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  mem_tmp [31 : 24] = token_tmp;
                  mem_xMin [i/factor] = mem_tmp;
                  mem_tmp [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  mem_tmp [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [31 : 16] = token_tmp;
                  mem_xMin [i/factor] = mem_tmp;
                  mem_tmp [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_xMin [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_xMin [i/factor] = mem_tmp;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_xMin [i/factor] = mem_tmp;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_xMax_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [127 : 0] token_tmp; 
  //reg [xMax_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] mem_tmp; 
  reg [ 8*5 : 1] str;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  mem_tmp [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (xMax_c_bitwidth , factor);
  fp = $fopen(`TV_IN_xMax ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_xMax); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < xMax_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  mem_tmp [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  mem_tmp [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  mem_tmp [31 : 24] = token_tmp;
                  mem_xMax [i/factor] = mem_tmp;
                  mem_tmp [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  mem_tmp [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [31 : 16] = token_tmp;
                  mem_xMax [i/factor] = mem_tmp;
                  mem_tmp [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_xMax [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_xMax [i/factor] = mem_tmp;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_xMax [i/factor] = mem_tmp;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
endmodule
