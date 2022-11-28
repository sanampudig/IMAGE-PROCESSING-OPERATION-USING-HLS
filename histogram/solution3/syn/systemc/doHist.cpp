// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "doHist.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic doHist::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic doHist::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<6> doHist::ap_ST_fsm_state1 = "1";
const sc_lv<6> doHist::ap_ST_fsm_state2 = "10";
const sc_lv<6> doHist::ap_ST_fsm_state3 = "100";
const sc_lv<6> doHist::ap_ST_fsm_state4 = "1000";
const sc_lv<6> doHist::ap_ST_fsm_state5 = "10000";
const sc_lv<6> doHist::ap_ST_fsm_state6 = "100000";
const sc_lv<32> doHist::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<1> doHist::ap_const_lv1_0 = "0";
const sc_lv<1> doHist::ap_const_lv1_1 = "1";
const sc_lv<2> doHist::ap_const_lv2_0 = "00";
const sc_lv<2> doHist::ap_const_lv2_2 = "10";
const sc_lv<2> doHist::ap_const_lv2_3 = "11";
const sc_lv<2> doHist::ap_const_lv2_1 = "1";
const sc_lv<32> doHist::ap_const_lv32_3 = "11";
const int doHist::C_S_AXI_DATA_WIDTH = "100000";
const sc_lv<32> doHist::ap_const_lv32_1 = "1";
const sc_lv<32> doHist::ap_const_lv32_4 = "100";
const sc_lv<9> doHist::ap_const_lv9_0 = "000000000";
const sc_lv<32> doHist::ap_const_lv32_5 = "101";
const sc_lv<17> doHist::ap_const_lv17_0 = "00000000000000000";
const sc_lv<32> doHist::ap_const_lv32_2 = "10";
const sc_lv<4> doHist::ap_const_lv4_0 = "0000";
const sc_lv<4> doHist::ap_const_lv4_F = "1111";
const sc_lv<9> doHist::ap_const_lv9_100 = "100000000";
const sc_lv<9> doHist::ap_const_lv9_1 = "1";
const sc_lv<17> doHist::ap_const_lv17_12C00 = "10010110000000000";
const sc_lv<17> doHist::ap_const_lv17_1 = "1";
const bool doHist::ap_const_boolean_1 = true;

doHist::doHist(sc_module_name name) : sc_module(name), mVcdFile(0) {
    doHist_CTRL_BUS_s_axi_U = new doHist_CTRL_BUS_s_axi<C_S_AXI_CTRL_BUS_ADDR_WIDTH,C_S_AXI_CTRL_BUS_DATA_WIDTH>("doHist_CTRL_BUS_s_axi_U");
    doHist_CTRL_BUS_s_axi_U->AWVALID(s_axi_CTRL_BUS_AWVALID);
    doHist_CTRL_BUS_s_axi_U->AWREADY(s_axi_CTRL_BUS_AWREADY);
    doHist_CTRL_BUS_s_axi_U->AWADDR(s_axi_CTRL_BUS_AWADDR);
    doHist_CTRL_BUS_s_axi_U->WVALID(s_axi_CTRL_BUS_WVALID);
    doHist_CTRL_BUS_s_axi_U->WREADY(s_axi_CTRL_BUS_WREADY);
    doHist_CTRL_BUS_s_axi_U->WDATA(s_axi_CTRL_BUS_WDATA);
    doHist_CTRL_BUS_s_axi_U->WSTRB(s_axi_CTRL_BUS_WSTRB);
    doHist_CTRL_BUS_s_axi_U->ARVALID(s_axi_CTRL_BUS_ARVALID);
    doHist_CTRL_BUS_s_axi_U->ARREADY(s_axi_CTRL_BUS_ARREADY);
    doHist_CTRL_BUS_s_axi_U->ARADDR(s_axi_CTRL_BUS_ARADDR);
    doHist_CTRL_BUS_s_axi_U->RVALID(s_axi_CTRL_BUS_RVALID);
    doHist_CTRL_BUS_s_axi_U->RREADY(s_axi_CTRL_BUS_RREADY);
    doHist_CTRL_BUS_s_axi_U->RDATA(s_axi_CTRL_BUS_RDATA);
    doHist_CTRL_BUS_s_axi_U->RRESP(s_axi_CTRL_BUS_RRESP);
    doHist_CTRL_BUS_s_axi_U->BVALID(s_axi_CTRL_BUS_BVALID);
    doHist_CTRL_BUS_s_axi_U->BREADY(s_axi_CTRL_BUS_BREADY);
    doHist_CTRL_BUS_s_axi_U->BRESP(s_axi_CTRL_BUS_BRESP);
    doHist_CTRL_BUS_s_axi_U->ACLK(ap_clk);
    doHist_CTRL_BUS_s_axi_U->ARESET(ap_rst_n_inv);
    doHist_CTRL_BUS_s_axi_U->ACLK_EN(ap_var_for_const0);
    doHist_CTRL_BUS_s_axi_U->ap_start(ap_start);
    doHist_CTRL_BUS_s_axi_U->interrupt(interrupt);
    doHist_CTRL_BUS_s_axi_U->ap_ready(ap_ready);
    doHist_CTRL_BUS_s_axi_U->ap_done(ap_done);
    doHist_CTRL_BUS_s_axi_U->ap_idle(ap_idle);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state3);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state4);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state5);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state6);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_block_state4);
    sensitive << ( inStream_V_data_V_0_vld_out );
    sensitive << ( exitcond_fu_151_p2 );

    SC_METHOD(thread_ap_done);
    sensitive << ( inStream_V_data_V_0_vld_out );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( exitcond_fu_151_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( inStream_V_data_V_0_vld_out );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( exitcond_fu_151_p2 );

    SC_METHOD(thread_ap_rst_n_inv);
    sensitive << ( ap_rst_n );

    SC_METHOD(thread_exitcond2_fu_134_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( idxHist_reg_112 );

    SC_METHOD(thread_exitcond_fu_151_p2);
    sensitive << ( inStream_V_data_V_0_vld_out );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( exitcond_fu_151_p2 );
    sensitive << ( idxPixel_reg_123 );

    SC_METHOD(thread_histo_Addr_A);
    sensitive << ( histo_Addr_A_orig );

    SC_METHOD(thread_histo_Addr_A_orig);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( histo_addr_1_reg_194 );
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( tmp_fu_146_p1 );
    sensitive << ( tmp_3_fu_167_p1 );

    SC_METHOD(thread_histo_Clk_A);
    sensitive << ( ap_clk );

    SC_METHOD(thread_histo_Din_A);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( tmp_4_fu_172_p2 );

    SC_METHOD(thread_histo_EN_A);
    sensitive << ( inStream_V_data_V_0_vld_out );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( exitcond_fu_151_p2 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state6 );

    SC_METHOD(thread_histo_Rst_A);
    sensitive << ( ap_rst_n );

    SC_METHOD(thread_histo_WEN_A);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond2_fu_134_p2 );
    sensitive << ( ap_CS_fsm_state6 );

    SC_METHOD(thread_idxHist_1_fu_140_p2);
    sensitive << ( idxHist_reg_112 );

    SC_METHOD(thread_idxPixel_1_fu_157_p2);
    sensitive << ( idxPixel_reg_123 );

    SC_METHOD(thread_inStream_TDATA_blk_n);
    sensitive << ( inStream_V_data_V_0_state );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( exitcond_fu_151_p2 );

    SC_METHOD(thread_inStream_TREADY);
    sensitive << ( inStream_V_dest_V_0_state );

    SC_METHOD(thread_inStream_V_data_V_0_ack_in);
    sensitive << ( inStream_V_data_V_0_state );

    SC_METHOD(thread_inStream_V_data_V_0_ack_out);
    sensitive << ( inStream_V_data_V_0_vld_out );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( exitcond_fu_151_p2 );

    SC_METHOD(thread_inStream_V_data_V_0_data_out);
    sensitive << ( inStream_V_data_V_0_payload_A );
    sensitive << ( inStream_V_data_V_0_payload_B );
    sensitive << ( inStream_V_data_V_0_sel );

    SC_METHOD(thread_inStream_V_data_V_0_load_A);
    sensitive << ( inStream_V_data_V_0_sel_wr );
    sensitive << ( inStream_V_data_V_0_state_cmp_full );

    SC_METHOD(thread_inStream_V_data_V_0_load_B);
    sensitive << ( inStream_V_data_V_0_sel_wr );
    sensitive << ( inStream_V_data_V_0_state_cmp_full );

    SC_METHOD(thread_inStream_V_data_V_0_sel);
    sensitive << ( inStream_V_data_V_0_sel_rd );

    SC_METHOD(thread_inStream_V_data_V_0_state_cmp_full);
    sensitive << ( inStream_V_data_V_0_state );

    SC_METHOD(thread_inStream_V_data_V_0_vld_in);
    sensitive << ( inStream_TVALID );

    SC_METHOD(thread_inStream_V_data_V_0_vld_out);
    sensitive << ( inStream_V_data_V_0_state );

    SC_METHOD(thread_inStream_V_dest_V_0_ack_out);
    sensitive << ( inStream_V_data_V_0_vld_out );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( exitcond_fu_151_p2 );

    SC_METHOD(thread_inStream_V_dest_V_0_vld_in);
    sensitive << ( inStream_TVALID );

    SC_METHOD(thread_tmp_3_fu_167_p1);
    sensitive << ( inStream_V_data_V_0_data_out );

    SC_METHOD(thread_tmp_4_fu_172_p2);
    sensitive << ( histo_load_reg_199 );

    SC_METHOD(thread_tmp_fu_146_p1);
    sensitive << ( idxHist_reg_112 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( inStream_V_data_V_0_vld_out );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( exitcond_fu_151_p2 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond2_fu_134_p2 );

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_clk.pos() );

    SC_THREAD(thread_ap_var_for_const0);

    ap_CS_fsm = "000001";
    inStream_V_data_V_0_sel_rd = SC_LOGIC_0;
    inStream_V_data_V_0_sel_wr = SC_LOGIC_0;
    inStream_V_data_V_0_state = "00";
    inStream_V_dest_V_0_state = "00";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "doHist_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst_n, "(port)ap_rst_n");
    sc_trace(mVcdFile, inStream_TDATA, "(port)inStream_TDATA");
    sc_trace(mVcdFile, inStream_TVALID, "(port)inStream_TVALID");
    sc_trace(mVcdFile, inStream_TREADY, "(port)inStream_TREADY");
    sc_trace(mVcdFile, inStream_TKEEP, "(port)inStream_TKEEP");
    sc_trace(mVcdFile, inStream_TSTRB, "(port)inStream_TSTRB");
    sc_trace(mVcdFile, inStream_TUSER, "(port)inStream_TUSER");
    sc_trace(mVcdFile, inStream_TLAST, "(port)inStream_TLAST");
    sc_trace(mVcdFile, inStream_TID, "(port)inStream_TID");
    sc_trace(mVcdFile, inStream_TDEST, "(port)inStream_TDEST");
    sc_trace(mVcdFile, histo_Addr_A, "(port)histo_Addr_A");
    sc_trace(mVcdFile, histo_EN_A, "(port)histo_EN_A");
    sc_trace(mVcdFile, histo_WEN_A, "(port)histo_WEN_A");
    sc_trace(mVcdFile, histo_Din_A, "(port)histo_Din_A");
    sc_trace(mVcdFile, histo_Dout_A, "(port)histo_Dout_A");
    sc_trace(mVcdFile, histo_Clk_A, "(port)histo_Clk_A");
    sc_trace(mVcdFile, histo_Rst_A, "(port)histo_Rst_A");
    sc_trace(mVcdFile, s_axi_CTRL_BUS_AWVALID, "(port)s_axi_CTRL_BUS_AWVALID");
    sc_trace(mVcdFile, s_axi_CTRL_BUS_AWREADY, "(port)s_axi_CTRL_BUS_AWREADY");
    sc_trace(mVcdFile, s_axi_CTRL_BUS_AWADDR, "(port)s_axi_CTRL_BUS_AWADDR");
    sc_trace(mVcdFile, s_axi_CTRL_BUS_WVALID, "(port)s_axi_CTRL_BUS_WVALID");
    sc_trace(mVcdFile, s_axi_CTRL_BUS_WREADY, "(port)s_axi_CTRL_BUS_WREADY");
    sc_trace(mVcdFile, s_axi_CTRL_BUS_WDATA, "(port)s_axi_CTRL_BUS_WDATA");
    sc_trace(mVcdFile, s_axi_CTRL_BUS_WSTRB, "(port)s_axi_CTRL_BUS_WSTRB");
    sc_trace(mVcdFile, s_axi_CTRL_BUS_ARVALID, "(port)s_axi_CTRL_BUS_ARVALID");
    sc_trace(mVcdFile, s_axi_CTRL_BUS_ARREADY, "(port)s_axi_CTRL_BUS_ARREADY");
    sc_trace(mVcdFile, s_axi_CTRL_BUS_ARADDR, "(port)s_axi_CTRL_BUS_ARADDR");
    sc_trace(mVcdFile, s_axi_CTRL_BUS_RVALID, "(port)s_axi_CTRL_BUS_RVALID");
    sc_trace(mVcdFile, s_axi_CTRL_BUS_RREADY, "(port)s_axi_CTRL_BUS_RREADY");
    sc_trace(mVcdFile, s_axi_CTRL_BUS_RDATA, "(port)s_axi_CTRL_BUS_RDATA");
    sc_trace(mVcdFile, s_axi_CTRL_BUS_RRESP, "(port)s_axi_CTRL_BUS_RRESP");
    sc_trace(mVcdFile, s_axi_CTRL_BUS_BVALID, "(port)s_axi_CTRL_BUS_BVALID");
    sc_trace(mVcdFile, s_axi_CTRL_BUS_BREADY, "(port)s_axi_CTRL_BUS_BREADY");
    sc_trace(mVcdFile, s_axi_CTRL_BUS_BRESP, "(port)s_axi_CTRL_BUS_BRESP");
    sc_trace(mVcdFile, interrupt, "(port)interrupt");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_rst_n_inv, "ap_rst_n_inv");
    sc_trace(mVcdFile, ap_start, "ap_start");
    sc_trace(mVcdFile, ap_done, "ap_done");
    sc_trace(mVcdFile, ap_idle, "ap_idle");
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, ap_ready, "ap_ready");
    sc_trace(mVcdFile, inStream_V_data_V_0_data_out, "inStream_V_data_V_0_data_out");
    sc_trace(mVcdFile, inStream_V_data_V_0_vld_in, "inStream_V_data_V_0_vld_in");
    sc_trace(mVcdFile, inStream_V_data_V_0_vld_out, "inStream_V_data_V_0_vld_out");
    sc_trace(mVcdFile, inStream_V_data_V_0_ack_in, "inStream_V_data_V_0_ack_in");
    sc_trace(mVcdFile, inStream_V_data_V_0_ack_out, "inStream_V_data_V_0_ack_out");
    sc_trace(mVcdFile, inStream_V_data_V_0_payload_A, "inStream_V_data_V_0_payload_A");
    sc_trace(mVcdFile, inStream_V_data_V_0_payload_B, "inStream_V_data_V_0_payload_B");
    sc_trace(mVcdFile, inStream_V_data_V_0_sel_rd, "inStream_V_data_V_0_sel_rd");
    sc_trace(mVcdFile, inStream_V_data_V_0_sel_wr, "inStream_V_data_V_0_sel_wr");
    sc_trace(mVcdFile, inStream_V_data_V_0_sel, "inStream_V_data_V_0_sel");
    sc_trace(mVcdFile, inStream_V_data_V_0_load_A, "inStream_V_data_V_0_load_A");
    sc_trace(mVcdFile, inStream_V_data_V_0_load_B, "inStream_V_data_V_0_load_B");
    sc_trace(mVcdFile, inStream_V_data_V_0_state, "inStream_V_data_V_0_state");
    sc_trace(mVcdFile, inStream_V_data_V_0_state_cmp_full, "inStream_V_data_V_0_state_cmp_full");
    sc_trace(mVcdFile, inStream_V_dest_V_0_vld_in, "inStream_V_dest_V_0_vld_in");
    sc_trace(mVcdFile, inStream_V_dest_V_0_ack_out, "inStream_V_dest_V_0_ack_out");
    sc_trace(mVcdFile, inStream_V_dest_V_0_state, "inStream_V_dest_V_0_state");
    sc_trace(mVcdFile, inStream_TDATA_blk_n, "inStream_TDATA_blk_n");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, exitcond_fu_151_p2, "exitcond_fu_151_p2");
    sc_trace(mVcdFile, idxHist_1_fu_140_p2, "idxHist_1_fu_140_p2");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, idxPixel_1_fu_157_p2, "idxPixel_1_fu_157_p2");
    sc_trace(mVcdFile, idxPixel_1_reg_189, "idxPixel_1_reg_189");
    sc_trace(mVcdFile, ap_block_state4, "ap_block_state4");
    sc_trace(mVcdFile, histo_addr_1_reg_194, "histo_addr_1_reg_194");
    sc_trace(mVcdFile, histo_load_reg_199, "histo_load_reg_199");
    sc_trace(mVcdFile, ap_CS_fsm_state5, "ap_CS_fsm_state5");
    sc_trace(mVcdFile, idxHist_reg_112, "idxHist_reg_112");
    sc_trace(mVcdFile, exitcond2_fu_134_p2, "exitcond2_fu_134_p2");
    sc_trace(mVcdFile, idxPixel_reg_123, "idxPixel_reg_123");
    sc_trace(mVcdFile, ap_CS_fsm_state6, "ap_CS_fsm_state6");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, tmp_fu_146_p1, "tmp_fu_146_p1");
    sc_trace(mVcdFile, tmp_3_fu_167_p1, "tmp_3_fu_167_p1");
    sc_trace(mVcdFile, histo_Addr_A_orig, "histo_Addr_A_orig");
    sc_trace(mVcdFile, tmp_4_fu_172_p2, "tmp_4_fu_172_p2");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
    mHdltvinHandle.open("doHist.hdltvin.dat");
    mHdltvoutHandle.open("doHist.hdltvout.dat");
}

doHist::~doHist() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
    delete doHist_CTRL_BUS_s_axi_U;
}

void doHist::thread_ap_var_for_const0() {
    ap_var_for_const0 = ap_const_logic_1;
}

void doHist::thread_ap_clk_no_reset_() {
    if ( ap_rst_n_inv.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_fu_134_p2.read()))) {
        idxHist_reg_112 = idxHist_1_fu_140_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        idxHist_reg_112 = ap_const_lv9_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        idxPixel_reg_123 = ap_const_lv17_0;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        idxPixel_reg_123 = idxPixel_1_reg_189.read();
    }
    if ( ap_rst_n_inv.read() == ap_const_logic_1) {
        inStream_V_data_V_0_sel_rd = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, inStream_V_data_V_0_ack_out.read()) && 
             esl_seteq<1,1,1>(ap_const_logic_1, inStream_V_data_V_0_vld_out.read()))) {
            inStream_V_data_V_0_sel_rd =  (sc_logic) (~inStream_V_data_V_0_sel_rd.read());
        }
    }
    if ( ap_rst_n_inv.read() == ap_const_logic_1) {
        inStream_V_data_V_0_sel_wr = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, inStream_V_data_V_0_vld_in.read()) && 
             esl_seteq<1,1,1>(ap_const_logic_1, inStream_V_data_V_0_ack_in.read()))) {
            inStream_V_data_V_0_sel_wr =  (sc_logic) (~inStream_V_data_V_0_sel_wr.read());
        }
    }
    if ( ap_rst_n_inv.read() == ap_const_logic_1) {
        inStream_V_data_V_0_state = ap_const_lv2_0;
    } else {
        if (((esl_seteq<1,1,1>(ap_const_logic_0, inStream_V_data_V_0_vld_in.read()) && 
              esl_seteq<1,1,1>(ap_const_logic_1, inStream_V_data_V_0_ack_out.read()) && 
              esl_seteq<1,2,2>(inStream_V_data_V_0_state.read(), ap_const_lv2_3)) || 
             (esl_seteq<1,1,1>(ap_const_logic_0, inStream_V_data_V_0_vld_in.read()) && 
              esl_seteq<1,2,2>(inStream_V_data_V_0_state.read(), ap_const_lv2_2)))) {
            inStream_V_data_V_0_state = ap_const_lv2_2;
        } else if (((esl_seteq<1,1,1>(ap_const_logic_1, inStream_V_data_V_0_vld_in.read()) && 
                     esl_seteq<1,1,1>(ap_const_logic_0, inStream_V_data_V_0_ack_out.read()) && 
                     esl_seteq<1,2,2>(inStream_V_data_V_0_state.read(), ap_const_lv2_3)) || 
                    (esl_seteq<1,1,1>(ap_const_logic_0, inStream_V_data_V_0_ack_out.read()) && 
                     esl_seteq<1,2,2>(inStream_V_data_V_0_state.read(), ap_const_lv2_1)))) {
            inStream_V_data_V_0_state = ap_const_lv2_1;
        } else if (((esl_seteq<1,1,1>(ap_const_logic_1, inStream_V_data_V_0_vld_in.read()) && 
                     esl_seteq<1,2,2>(inStream_V_data_V_0_state.read(), ap_const_lv2_2)) || 
                    (esl_seteq<1,1,1>(ap_const_logic_1, inStream_V_data_V_0_ack_out.read()) && 
                     esl_seteq<1,2,2>(inStream_V_data_V_0_state.read(), ap_const_lv2_1)) || 
                    (esl_seteq<1,2,2>(inStream_V_data_V_0_state.read(), ap_const_lv2_3) && 
                     !(esl_seteq<1,1,1>(ap_const_logic_1, inStream_V_data_V_0_vld_in.read()) && esl_seteq<1,1,1>(ap_const_logic_0, inStream_V_data_V_0_ack_out.read())) && 
                     !(esl_seteq<1,1,1>(ap_const_logic_0, inStream_V_data_V_0_vld_in.read()) && esl_seteq<1,1,1>(ap_const_logic_1, inStream_V_data_V_0_ack_out.read()))))) {
            inStream_V_data_V_0_state = ap_const_lv2_3;
        } else {
            inStream_V_data_V_0_state = ap_const_lv2_2;
        }
    }
    if ( ap_rst_n_inv.read() == ap_const_logic_1) {
        inStream_V_dest_V_0_state = ap_const_lv2_0;
    } else {
        if (((esl_seteq<1,1,1>(ap_const_logic_0, inStream_V_dest_V_0_vld_in.read()) && 
              esl_seteq<1,1,1>(ap_const_logic_1, inStream_V_dest_V_0_ack_out.read()) && 
              esl_seteq<1,2,2>(ap_const_lv2_3, inStream_V_dest_V_0_state.read())) || 
             (esl_seteq<1,1,1>(ap_const_logic_0, inStream_V_dest_V_0_vld_in.read()) && 
              esl_seteq<1,2,2>(ap_const_lv2_2, inStream_V_dest_V_0_state.read())))) {
            inStream_V_dest_V_0_state = ap_const_lv2_2;
        } else if (((esl_seteq<1,1,1>(ap_const_logic_1, inStream_V_dest_V_0_vld_in.read()) && 
                     esl_seteq<1,1,1>(ap_const_logic_0, inStream_V_dest_V_0_ack_out.read()) && 
                     esl_seteq<1,2,2>(ap_const_lv2_3, inStream_V_dest_V_0_state.read())) || 
                    (esl_seteq<1,1,1>(ap_const_logic_0, inStream_V_dest_V_0_ack_out.read()) && 
                     esl_seteq<1,2,2>(ap_const_lv2_1, inStream_V_dest_V_0_state.read())))) {
            inStream_V_dest_V_0_state = ap_const_lv2_1;
        } else if (((esl_seteq<1,1,1>(ap_const_logic_1, inStream_V_dest_V_0_vld_in.read()) && 
                     esl_seteq<1,2,2>(ap_const_lv2_2, inStream_V_dest_V_0_state.read())) || 
                    (esl_seteq<1,1,1>(ap_const_logic_1, inStream_V_dest_V_0_ack_out.read()) && 
                     esl_seteq<1,2,2>(ap_const_lv2_1, inStream_V_dest_V_0_state.read())) || 
                    (esl_seteq<1,2,2>(ap_const_lv2_3, inStream_V_dest_V_0_state.read()) && 
                     !(esl_seteq<1,1,1>(ap_const_logic_1, inStream_V_dest_V_0_vld_in.read()) && esl_seteq<1,1,1>(ap_const_logic_0, inStream_V_dest_V_0_ack_out.read())) && 
                     !(esl_seteq<1,1,1>(ap_const_logic_0, inStream_V_dest_V_0_vld_in.read()) && esl_seteq<1,1,1>(ap_const_logic_1, inStream_V_dest_V_0_ack_out.read()))))) {
            inStream_V_dest_V_0_state = ap_const_lv2_3;
        } else {
            inStream_V_dest_V_0_state = ap_const_lv2_2;
        }
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_151_p2.read()) && !(esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_151_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, inStream_V_data_V_0_vld_out.read())))) {
        histo_addr_1_reg_194 =  (sc_lv<8>) (tmp_3_fu_167_p1.read());
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        histo_load_reg_199 = histo_Dout_A.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && !(esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_151_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, inStream_V_data_V_0_vld_out.read())))) {
        idxPixel_1_reg_189 = idxPixel_1_fu_157_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, inStream_V_data_V_0_load_A.read())) {
        inStream_V_data_V_0_payload_A = inStream_TDATA.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, inStream_V_data_V_0_load_B.read())) {
        inStream_V_data_V_0_payload_B = inStream_TDATA.read();
    }
}

void doHist::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void doHist::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void doHist::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void doHist::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[3];
}

void doHist::thread_ap_CS_fsm_state5() {
    ap_CS_fsm_state5 = ap_CS_fsm.read()[4];
}

void doHist::thread_ap_CS_fsm_state6() {
    ap_CS_fsm_state6 = ap_CS_fsm.read()[5];
}

void doHist::thread_ap_block_state4() {
    ap_block_state4 = (esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_151_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, inStream_V_data_V_0_vld_out.read()));
}

void doHist::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         !(esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_151_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, inStream_V_data_V_0_vld_out.read())) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, exitcond_fu_151_p2.read()))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void doHist::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void doHist::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         !(esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_151_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, inStream_V_data_V_0_vld_out.read())) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, exitcond_fu_151_p2.read()))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void doHist::thread_ap_rst_n_inv() {
    ap_rst_n_inv =  (sc_logic) (~ap_rst_n.read());
}

void doHist::thread_exitcond2_fu_134_p2() {
    exitcond2_fu_134_p2 = (!idxHist_reg_112.read().is_01() || !ap_const_lv9_100.is_01())? sc_lv<1>(): sc_lv<1>(idxHist_reg_112.read() == ap_const_lv9_100);
}

void doHist::thread_exitcond_fu_151_p2() {
    exitcond_fu_151_p2 = (!idxPixel_reg_123.read().is_01() || !ap_const_lv17_12C00.is_01())? sc_lv<1>(): sc_lv<1>(idxPixel_reg_123.read() == ap_const_lv17_12C00);
}

void doHist::thread_histo_Addr_A() {
    histo_Addr_A = (!ap_const_lv32_2.is_01())? sc_lv<32>(): histo_Addr_A_orig.read() << (unsigned short)ap_const_lv32_2.to_uint();
}

void doHist::thread_histo_Addr_A_orig() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        histo_Addr_A_orig =  (sc_lv<32>) (histo_addr_1_reg_194.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        histo_Addr_A_orig =  (sc_lv<32>) (tmp_3_fu_167_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        histo_Addr_A_orig =  (sc_lv<32>) (tmp_fu_146_p1.read());
    } else {
        histo_Addr_A_orig = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void doHist::thread_histo_Clk_A() {
    histo_Clk_A = ap_clk.read()? SC_LOGIC_1 : SC_LOGIC_0;
}

void doHist::thread_histo_Din_A() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        histo_Din_A = tmp_4_fu_172_p2.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        histo_Din_A = ap_const_lv32_0;
    } else {
        histo_Din_A = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void doHist::thread_histo_EN_A() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          !(esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_151_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, inStream_V_data_V_0_vld_out.read()))) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()))) {
        histo_EN_A = ap_const_logic_1;
    } else {
        histo_EN_A = ap_const_logic_0;
    }
}

void doHist::thread_histo_Rst_A() {
    histo_Rst_A =  (sc_logic) (~ap_rst_n.read());
}

void doHist::thread_histo_WEN_A() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_fu_134_p2.read())) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()))) {
        histo_WEN_A = ap_const_lv4_F;
    } else {
        histo_WEN_A = ap_const_lv4_0;
    }
}

void doHist::thread_idxHist_1_fu_140_p2() {
    idxHist_1_fu_140_p2 = (!idxHist_reg_112.read().is_01() || !ap_const_lv9_1.is_01())? sc_lv<9>(): (sc_biguint<9>(idxHist_reg_112.read()) + sc_biguint<9>(ap_const_lv9_1));
}

void doHist::thread_idxPixel_1_fu_157_p2() {
    idxPixel_1_fu_157_p2 = (!idxPixel_reg_123.read().is_01() || !ap_const_lv17_1.is_01())? sc_lv<17>(): (sc_biguint<17>(idxPixel_reg_123.read()) + sc_biguint<17>(ap_const_lv17_1));
}

void doHist::thread_inStream_TDATA_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_151_p2.read()))) {
        inStream_TDATA_blk_n = inStream_V_data_V_0_state.read()[0];
    } else {
        inStream_TDATA_blk_n = ap_const_logic_1;
    }
}

void doHist::thread_inStream_TREADY() {
    inStream_TREADY = inStream_V_dest_V_0_state.read()[1];
}

void doHist::thread_inStream_V_data_V_0_ack_in() {
    inStream_V_data_V_0_ack_in = inStream_V_data_V_0_state.read()[1];
}

void doHist::thread_inStream_V_data_V_0_ack_out() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_151_p2.read()) && 
         !(esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_151_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, inStream_V_data_V_0_vld_out.read())))) {
        inStream_V_data_V_0_ack_out = ap_const_logic_1;
    } else {
        inStream_V_data_V_0_ack_out = ap_const_logic_0;
    }
}

void doHist::thread_inStream_V_data_V_0_data_out() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, inStream_V_data_V_0_sel.read())) {
        inStream_V_data_V_0_data_out = inStream_V_data_V_0_payload_B.read();
    } else {
        inStream_V_data_V_0_data_out = inStream_V_data_V_0_payload_A.read();
    }
}

void doHist::thread_inStream_V_data_V_0_load_A() {
    inStream_V_data_V_0_load_A = (inStream_V_data_V_0_state_cmp_full.read() & ~inStream_V_data_V_0_sel_wr.read());
}

void doHist::thread_inStream_V_data_V_0_load_B() {
    inStream_V_data_V_0_load_B = (inStream_V_data_V_0_sel_wr.read() & inStream_V_data_V_0_state_cmp_full.read());
}

void doHist::thread_inStream_V_data_V_0_sel() {
    inStream_V_data_V_0_sel = inStream_V_data_V_0_sel_rd.read();
}

void doHist::thread_inStream_V_data_V_0_state_cmp_full() {
    inStream_V_data_V_0_state_cmp_full =  (sc_logic) ((!inStream_V_data_V_0_state.read().is_01() || !ap_const_lv2_1.is_01())? sc_lv<1>(): sc_lv<1>(inStream_V_data_V_0_state.read() != ap_const_lv2_1))[0];
}

void doHist::thread_inStream_V_data_V_0_vld_in() {
    inStream_V_data_V_0_vld_in = inStream_TVALID.read();
}

void doHist::thread_inStream_V_data_V_0_vld_out() {
    inStream_V_data_V_0_vld_out = inStream_V_data_V_0_state.read()[0];
}

void doHist::thread_inStream_V_dest_V_0_ack_out() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_151_p2.read()) && 
         !(esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_151_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, inStream_V_data_V_0_vld_out.read())))) {
        inStream_V_dest_V_0_ack_out = ap_const_logic_1;
    } else {
        inStream_V_dest_V_0_ack_out = ap_const_logic_0;
    }
}

void doHist::thread_inStream_V_dest_V_0_vld_in() {
    inStream_V_dest_V_0_vld_in = inStream_TVALID.read();
}

void doHist::thread_tmp_3_fu_167_p1() {
    tmp_3_fu_167_p1 = esl_zext<64,8>(inStream_V_data_V_0_data_out.read());
}

void doHist::thread_tmp_4_fu_172_p2() {
    tmp_4_fu_172_p2 = (!histo_load_reg_199.read().is_01() || !ap_const_lv32_1.is_01())? sc_lv<32>(): (sc_biguint<32>(histo_load_reg_199.read()) + sc_biguint<32>(ap_const_lv32_1));
}

void doHist::thread_tmp_fu_146_p1() {
    tmp_fu_146_p1 = esl_zext<64,9>(idxHist_reg_112.read());
}

void doHist::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_fu_134_p2.read()))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_fsm_state4;
            break;
        case 8 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && !(esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_151_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, inStream_V_data_V_0_vld_out.read())) && esl_seteq<1,1,1>(ap_const_lv1_1, exitcond_fu_151_p2.read()))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_151_p2.read()) && !(esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_151_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, inStream_V_data_V_0_vld_out.read())))) {
                ap_NS_fsm = ap_ST_fsm_state5;
            } else {
                ap_NS_fsm = ap_ST_fsm_state4;
            }
            break;
        case 16 : 
            ap_NS_fsm = ap_ST_fsm_state6;
            break;
        case 32 : 
            ap_NS_fsm = ap_ST_fsm_state4;
            break;
        default : 
            ap_NS_fsm =  (sc_lv<6>) ("XXXXXX");
            break;
    }
}

void doHist::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"ap_rst_n\" :  \"" << ap_rst_n.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"inStream_TDATA\" :  \"" << inStream_TDATA.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"inStream_TVALID\" :  \"" << inStream_TVALID.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"inStream_TREADY\" :  \"" << inStream_TREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"inStream_TKEEP\" :  \"" << inStream_TKEEP.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"inStream_TSTRB\" :  \"" << inStream_TSTRB.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"inStream_TUSER\" :  \"" << inStream_TUSER.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"inStream_TLAST\" :  \"" << inStream_TLAST.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"inStream_TID\" :  \"" << inStream_TID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"inStream_TDEST\" :  \"" << inStream_TDEST.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"histo_Addr_A\" :  \"" << histo_Addr_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"histo_EN_A\" :  \"" << histo_EN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"histo_WEN_A\" :  \"" << histo_WEN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"histo_Din_A\" :  \"" << histo_Din_A.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"histo_Dout_A\" :  \"" << histo_Dout_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"histo_Clk_A\" :  \"" << histo_Clk_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"histo_Rst_A\" :  \"" << histo_Rst_A.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_CTRL_BUS_AWVALID\" :  \"" << s_axi_CTRL_BUS_AWVALID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_CTRL_BUS_AWREADY\" :  \"" << s_axi_CTRL_BUS_AWREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_CTRL_BUS_AWADDR\" :  \"" << s_axi_CTRL_BUS_AWADDR.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_CTRL_BUS_WVALID\" :  \"" << s_axi_CTRL_BUS_WVALID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_CTRL_BUS_WREADY\" :  \"" << s_axi_CTRL_BUS_WREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_CTRL_BUS_WDATA\" :  \"" << s_axi_CTRL_BUS_WDATA.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_CTRL_BUS_WSTRB\" :  \"" << s_axi_CTRL_BUS_WSTRB.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_CTRL_BUS_ARVALID\" :  \"" << s_axi_CTRL_BUS_ARVALID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_CTRL_BUS_ARREADY\" :  \"" << s_axi_CTRL_BUS_ARREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_CTRL_BUS_ARADDR\" :  \"" << s_axi_CTRL_BUS_ARADDR.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_CTRL_BUS_RVALID\" :  \"" << s_axi_CTRL_BUS_RVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_CTRL_BUS_RREADY\" :  \"" << s_axi_CTRL_BUS_RREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_CTRL_BUS_RDATA\" :  \"" << s_axi_CTRL_BUS_RDATA.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_CTRL_BUS_RRESP\" :  \"" << s_axi_CTRL_BUS_RRESP.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_CTRL_BUS_BVALID\" :  \"" << s_axi_CTRL_BUS_BVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_CTRL_BUS_BREADY\" :  \"" << s_axi_CTRL_BUS_BREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_CTRL_BUS_BRESP\" :  \"" << s_axi_CTRL_BUS_BRESP.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"interrupt\" :  \"" << interrupt.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

