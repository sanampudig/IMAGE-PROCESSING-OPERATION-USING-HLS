// ==============================================================
// File generated on Mon Nov 28 21:56:06 +0530 2022
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================

#define AP_INT_MAX_W 32678

#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;


// [dump_struct_tree [build_nameSpaceTree] dumpedStructList] ---------->
    template< int D ,int U ,int TI ,int TD > struct ap_axiu;
    template<> struct ap_axiu<8, 2, 5, 6> {
        ap_uint<8> data;
        ap_uint<1> keep;
        ap_uint<1> strb;
        ap_uint<2> user;
        ap_uint<1> last;
        ap_uint<5> id;
        ap_uint<6> dest;
       } __attribute__((packed));



// [dump_enumeration [get_enumeration_list]] ---------->


// wrapc file define: "inStream_V_data_V"
#define AUTOTB_TVIN_inStream_V_data_V  "../tv/cdatafile/c.doHistStrech.autotvin_inStream_V_data_V.dat"
#define WRAPC_STREAM_SIZE_IN_inStream_V_data_V  "../tv/stream_size/stream_size_in_inStream_V_data_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_inStream_V_data_V  "../tv/stream_size/stream_ingress_status_inStream_V_data_V.dat"
// wrapc file define: "inStream_V_keep_V"
#define AUTOTB_TVIN_inStream_V_keep_V  "../tv/cdatafile/c.doHistStrech.autotvin_inStream_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_IN_inStream_V_keep_V  "../tv/stream_size/stream_size_in_inStream_V_keep_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_inStream_V_keep_V  "../tv/stream_size/stream_ingress_status_inStream_V_keep_V.dat"
// wrapc file define: "inStream_V_strb_V"
#define AUTOTB_TVIN_inStream_V_strb_V  "../tv/cdatafile/c.doHistStrech.autotvin_inStream_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_IN_inStream_V_strb_V  "../tv/stream_size/stream_size_in_inStream_V_strb_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_inStream_V_strb_V  "../tv/stream_size/stream_ingress_status_inStream_V_strb_V.dat"
// wrapc file define: "inStream_V_user_V"
#define AUTOTB_TVIN_inStream_V_user_V  "../tv/cdatafile/c.doHistStrech.autotvin_inStream_V_user_V.dat"
#define WRAPC_STREAM_SIZE_IN_inStream_V_user_V  "../tv/stream_size/stream_size_in_inStream_V_user_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_inStream_V_user_V  "../tv/stream_size/stream_ingress_status_inStream_V_user_V.dat"
// wrapc file define: "inStream_V_last_V"
#define AUTOTB_TVIN_inStream_V_last_V  "../tv/cdatafile/c.doHistStrech.autotvin_inStream_V_last_V.dat"
#define WRAPC_STREAM_SIZE_IN_inStream_V_last_V  "../tv/stream_size/stream_size_in_inStream_V_last_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_inStream_V_last_V  "../tv/stream_size/stream_ingress_status_inStream_V_last_V.dat"
// wrapc file define: "inStream_V_id_V"
#define AUTOTB_TVIN_inStream_V_id_V  "../tv/cdatafile/c.doHistStrech.autotvin_inStream_V_id_V.dat"
#define WRAPC_STREAM_SIZE_IN_inStream_V_id_V  "../tv/stream_size/stream_size_in_inStream_V_id_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_inStream_V_id_V  "../tv/stream_size/stream_ingress_status_inStream_V_id_V.dat"
// wrapc file define: "inStream_V_dest_V"
#define AUTOTB_TVIN_inStream_V_dest_V  "../tv/cdatafile/c.doHistStrech.autotvin_inStream_V_dest_V.dat"
#define WRAPC_STREAM_SIZE_IN_inStream_V_dest_V  "../tv/stream_size/stream_size_in_inStream_V_dest_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_inStream_V_dest_V  "../tv/stream_size/stream_ingress_status_inStream_V_dest_V.dat"
// wrapc file define: "outStream_V_data_V"
#define AUTOTB_TVOUT_outStream_V_data_V  "../tv/cdatafile/c.doHistStrech.autotvout_outStream_V_data_V.dat"
#define AUTOTB_TVIN_outStream_V_data_V  "../tv/cdatafile/c.doHistStrech.autotvin_outStream_V_data_V.dat"
#define WRAPC_STREAM_SIZE_OUT_outStream_V_data_V  "../tv/stream_size/stream_size_out_outStream_V_data_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_outStream_V_data_V  "../tv/stream_size/stream_egress_status_outStream_V_data_V.dat"
// wrapc file define: "outStream_V_keep_V"
#define AUTOTB_TVOUT_outStream_V_keep_V  "../tv/cdatafile/c.doHistStrech.autotvout_outStream_V_keep_V.dat"
#define AUTOTB_TVIN_outStream_V_keep_V  "../tv/cdatafile/c.doHistStrech.autotvin_outStream_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_OUT_outStream_V_keep_V  "../tv/stream_size/stream_size_out_outStream_V_keep_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_outStream_V_keep_V  "../tv/stream_size/stream_egress_status_outStream_V_keep_V.dat"
// wrapc file define: "outStream_V_strb_V"
#define AUTOTB_TVOUT_outStream_V_strb_V  "../tv/cdatafile/c.doHistStrech.autotvout_outStream_V_strb_V.dat"
#define AUTOTB_TVIN_outStream_V_strb_V  "../tv/cdatafile/c.doHistStrech.autotvin_outStream_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_OUT_outStream_V_strb_V  "../tv/stream_size/stream_size_out_outStream_V_strb_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_outStream_V_strb_V  "../tv/stream_size/stream_egress_status_outStream_V_strb_V.dat"
// wrapc file define: "outStream_V_user_V"
#define AUTOTB_TVOUT_outStream_V_user_V  "../tv/cdatafile/c.doHistStrech.autotvout_outStream_V_user_V.dat"
#define AUTOTB_TVIN_outStream_V_user_V  "../tv/cdatafile/c.doHistStrech.autotvin_outStream_V_user_V.dat"
#define WRAPC_STREAM_SIZE_OUT_outStream_V_user_V  "../tv/stream_size/stream_size_out_outStream_V_user_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_outStream_V_user_V  "../tv/stream_size/stream_egress_status_outStream_V_user_V.dat"
// wrapc file define: "outStream_V_last_V"
#define AUTOTB_TVOUT_outStream_V_last_V  "../tv/cdatafile/c.doHistStrech.autotvout_outStream_V_last_V.dat"
#define AUTOTB_TVIN_outStream_V_last_V  "../tv/cdatafile/c.doHistStrech.autotvin_outStream_V_last_V.dat"
#define WRAPC_STREAM_SIZE_OUT_outStream_V_last_V  "../tv/stream_size/stream_size_out_outStream_V_last_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_outStream_V_last_V  "../tv/stream_size/stream_egress_status_outStream_V_last_V.dat"
// wrapc file define: "outStream_V_id_V"
#define AUTOTB_TVOUT_outStream_V_id_V  "../tv/cdatafile/c.doHistStrech.autotvout_outStream_V_id_V.dat"
#define AUTOTB_TVIN_outStream_V_id_V  "../tv/cdatafile/c.doHistStrech.autotvin_outStream_V_id_V.dat"
#define WRAPC_STREAM_SIZE_OUT_outStream_V_id_V  "../tv/stream_size/stream_size_out_outStream_V_id_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_outStream_V_id_V  "../tv/stream_size/stream_egress_status_outStream_V_id_V.dat"
// wrapc file define: "outStream_V_dest_V"
#define AUTOTB_TVOUT_outStream_V_dest_V  "../tv/cdatafile/c.doHistStrech.autotvout_outStream_V_dest_V.dat"
#define AUTOTB_TVIN_outStream_V_dest_V  "../tv/cdatafile/c.doHistStrech.autotvin_outStream_V_dest_V.dat"
#define WRAPC_STREAM_SIZE_OUT_outStream_V_dest_V  "../tv/stream_size/stream_size_out_outStream_V_dest_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_outStream_V_dest_V  "../tv/stream_size/stream_egress_status_outStream_V_dest_V.dat"
// wrapc file define: "xMin"
#define AUTOTB_TVIN_xMin  "../tv/cdatafile/c.doHistStrech.autotvin_xMin.dat"
// wrapc file define: "xMax"
#define AUTOTB_TVIN_xMax  "../tv/cdatafile/c.doHistStrech.autotvin_xMax.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "outStream_V_data_V"
#define AUTOTB_TVOUT_PC_outStream_V_data_V  "../tv/rtldatafile/rtl.doHistStrech.autotvout_outStream_V_data_V.dat"
// tvout file define: "outStream_V_keep_V"
#define AUTOTB_TVOUT_PC_outStream_V_keep_V  "../tv/rtldatafile/rtl.doHistStrech.autotvout_outStream_V_keep_V.dat"
// tvout file define: "outStream_V_strb_V"
#define AUTOTB_TVOUT_PC_outStream_V_strb_V  "../tv/rtldatafile/rtl.doHistStrech.autotvout_outStream_V_strb_V.dat"
// tvout file define: "outStream_V_user_V"
#define AUTOTB_TVOUT_PC_outStream_V_user_V  "../tv/rtldatafile/rtl.doHistStrech.autotvout_outStream_V_user_V.dat"
// tvout file define: "outStream_V_last_V"
#define AUTOTB_TVOUT_PC_outStream_V_last_V  "../tv/rtldatafile/rtl.doHistStrech.autotvout_outStream_V_last_V.dat"
// tvout file define: "outStream_V_id_V"
#define AUTOTB_TVOUT_PC_outStream_V_id_V  "../tv/rtldatafile/rtl.doHistStrech.autotvout_outStream_V_id_V.dat"
// tvout file define: "outStream_V_dest_V"
#define AUTOTB_TVOUT_PC_outStream_V_dest_V  "../tv/rtldatafile/rtl.doHistStrech.autotvout_outStream_V_dest_V.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			inStream_V_data_V_depth = 0;
			inStream_V_keep_V_depth = 0;
			inStream_V_strb_V_depth = 0;
			inStream_V_user_V_depth = 0;
			inStream_V_last_V_depth = 0;
			inStream_V_id_V_depth = 0;
			inStream_V_dest_V_depth = 0;
			outStream_V_data_V_depth = 0;
			outStream_V_keep_V_depth = 0;
			outStream_V_strb_V_depth = 0;
			outStream_V_user_V_depth = 0;
			outStream_V_last_V_depth = 0;
			outStream_V_id_V_depth = 0;
			outStream_V_dest_V_depth = 0;
			xMin_depth = 0;
			xMax_depth = 0;
			trans_num =0;
		}

		~INTER_TCL_FILE() {
			mFile.open(mName);
			if (!mFile.good()) {
				cout << "Failed to open file ref.tcl" << endl;
				exit (1);
			}
			string total_list = get_depth_list();
			mFile << "set depth_list {\n";
			mFile << total_list;
			mFile << "}\n";
			mFile << "set trans_num "<<trans_num<<endl;
			mFile.close();
		}

		string get_depth_list () {
			stringstream total_list;
			total_list << "{inStream_V_data_V " << inStream_V_data_V_depth << "}\n";
			total_list << "{inStream_V_keep_V " << inStream_V_keep_V_depth << "}\n";
			total_list << "{inStream_V_strb_V " << inStream_V_strb_V_depth << "}\n";
			total_list << "{inStream_V_user_V " << inStream_V_user_V_depth << "}\n";
			total_list << "{inStream_V_last_V " << inStream_V_last_V_depth << "}\n";
			total_list << "{inStream_V_id_V " << inStream_V_id_V_depth << "}\n";
			total_list << "{inStream_V_dest_V " << inStream_V_dest_V_depth << "}\n";
			total_list << "{outStream_V_data_V " << outStream_V_data_V_depth << "}\n";
			total_list << "{outStream_V_keep_V " << outStream_V_keep_V_depth << "}\n";
			total_list << "{outStream_V_strb_V " << outStream_V_strb_V_depth << "}\n";
			total_list << "{outStream_V_user_V " << outStream_V_user_V_depth << "}\n";
			total_list << "{outStream_V_last_V " << outStream_V_last_V_depth << "}\n";
			total_list << "{outStream_V_id_V " << outStream_V_id_V_depth << "}\n";
			total_list << "{outStream_V_dest_V " << outStream_V_dest_V_depth << "}\n";
			total_list << "{xMin " << xMin_depth << "}\n";
			total_list << "{xMax " << xMax_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int inStream_V_data_V_depth;
		int inStream_V_keep_V_depth;
		int inStream_V_strb_V_depth;
		int inStream_V_user_V_depth;
		int inStream_V_last_V_depth;
		int inStream_V_id_V_depth;
		int inStream_V_dest_V_depth;
		int outStream_V_data_V_depth;
		int outStream_V_keep_V_depth;
		int outStream_V_strb_V_depth;
		int outStream_V_user_V_depth;
		int outStream_V_last_V_depth;
		int outStream_V_id_V_depth;
		int outStream_V_dest_V_depth;
		int xMin_depth;
		int xMax_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern void doHistStrech (
hls::stream<ap_axiu<8, 2, 5, 6 > > (&inStream),
hls::stream<ap_axiu<8, 2, 5, 6 > > (&outStream),
unsigned char xMin,
unsigned char xMax);

void AESL_WRAP_doHistStrech (
hls::stream<ap_axiu<8, 2, 5, 6 > > (&inStream),
hls::stream<ap_axiu<8, 2, 5, 6 > > (&outStream),
unsigned char xMin,
unsigned char xMax)
{
	refine_signal_handler();
	fstream wrapc_switch_file_token;
	wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
	int AESL_i;
	if (wrapc_switch_file_token.good())
	{
		CodeState = ENTER_WRAPC_PC;
		static unsigned AESL_transaction_pc = 0;
		string AESL_token;
		string AESL_num;
		static AESL_FILE_HANDLER aesl_fh;

		// pop stream input: "inStream"
		aesl_fh.read(WRAPC_STREAM_SIZE_IN_inStream_V_data_V, AESL_token); // [[transaction]]
		aesl_fh.read(WRAPC_STREAM_SIZE_IN_inStream_V_data_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(WRAPC_STREAM_SIZE_IN_inStream_V_data_V, AESL_token); // pop_size
			int aesl_tmp_1 = atoi(AESL_token.c_str());
			for (int i = 0; i < aesl_tmp_1; i++)
			{
				inStream.read();
			}
			aesl_fh.read(WRAPC_STREAM_SIZE_IN_inStream_V_data_V, AESL_token); // [[/transaction]]
		}

		// define output stream variables: "outStream"
		std::vector<ap_axiu<8, 2, 5, 6 > > aesl_tmp_3;
		int aesl_tmp_4;
		int aesl_tmp_5 = 0;

		// read output stream size: "outStream"
		aesl_fh.read(WRAPC_STREAM_SIZE_OUT_outStream_V_data_V, AESL_token); // [[transaction]]
		aesl_fh.read(WRAPC_STREAM_SIZE_OUT_outStream_V_data_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(WRAPC_STREAM_SIZE_OUT_outStream_V_data_V, AESL_token); // pop_size
			aesl_tmp_4 = atoi(AESL_token.c_str());
			aesl_fh.read(WRAPC_STREAM_SIZE_OUT_outStream_V_data_V, AESL_token); // [[/transaction]]
		}

		// output port post check: "outStream_V_data_V"
		aesl_fh.read(AUTOTB_TVOUT_PC_outStream_V_data_V, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_outStream_V_data_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_outStream_V_data_V, AESL_token); // data

			std::vector<sc_bv<8> > outStream_V_data_V_pc_buffer;
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'outStream_V_data_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'outStream_V_data_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					outStream_V_data_V_pc_buffer.push_back(AESL_token.c_str());
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_outStream_V_data_V, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_outStream_V_data_V))
				{
					exit(1);
				}
			}

			// correct the buffer size the current transaction
			if (i != aesl_tmp_4)
			{
				aesl_tmp_4 = i;
			}

			if (aesl_tmp_4 > 0 && aesl_tmp_3.size() < aesl_tmp_4)
			{
				int aesl_tmp_3_size = aesl_tmp_3.size();

				for (int tmp_aesl_tmp_3 = 0; tmp_aesl_tmp_3 < aesl_tmp_4 - aesl_tmp_3_size; tmp_aesl_tmp_3++)
				{
					ap_axiu<8, 2, 5, 6 > tmp;
					aesl_tmp_3.push_back(tmp);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: outStream_V_data_V
				{
					// bitslice(7, 0)
					// {
						// celement: outStream.V.data.V(7, 0)
						// {
							sc_lv<8>* outStream_V_data_V_lv0_0_0_1_lv1_0_0_1 = new sc_lv<8>[aesl_tmp_4 - aesl_tmp_5];
						// }
					// }

					// bitslice(7, 0)
					{
						int hls_map_index = 0;
						// celement: outStream.V.data.V(7, 0)
						{
							// carray: (aesl_tmp_5) => (aesl_tmp_4 - 1) @ (1)
							for (int i_0 = aesl_tmp_5; i_0 <= aesl_tmp_4 - 1; i_0 += 1)
							{
								// carray: (0) => (0) @ (1)
								for (int i_1 = 0; i_1 <= 0; i_1 += 1)
								{
									if (&(aesl_tmp_3[0].data) != NULL) // check the null address if the c port is array or others
									{
										outStream_V_data_V_lv0_0_0_1_lv1_0_0_1[hls_map_index].range(7, 0) = sc_bv<8>(outStream_V_data_V_pc_buffer[hls_map_index].range(7, 0));
										hls_map_index++;
									}
								}
							}
						}
					}

					// bitslice(7, 0)
					{
						int hls_map_index = 0;
						// celement: outStream.V.data.V(7, 0)
						{
							// carray: (aesl_tmp_5) => (aesl_tmp_4 - 1) @ (1)
							for (int i_0 = aesl_tmp_5; i_0 <= aesl_tmp_4 - 1; i_0 += 1)
							{
								// carray: (0) => (0) @ (1)
								for (int i_1 = 0; i_1 <= 0; i_1 += 1)
								{
									// sub                    : i_0 i_1
									// ori_name               : aesl_tmp_3[i_0].data
									// sub_1st_elem           : 0 0
									// ori_name_1st_elem      : aesl_tmp_3[0].data
									// output_left_conversion : aesl_tmp_3[i_0].data
									// output_type_conversion : (outStream_V_data_V_lv0_0_0_1_lv1_0_0_1[hls_map_index]).to_string(SC_BIN).c_str()
									if (&(aesl_tmp_3[0].data) != NULL) // check the null address if the c port is array or others
									{
										aesl_tmp_3[i_0].data = (outStream_V_data_V_lv0_0_0_1_lv1_0_0_1[hls_map_index]).to_string(SC_BIN).c_str();
										hls_map_index++;
									}
								}
							}
						}
					}
				}
			}
		}

		// output port post check: "outStream_V_keep_V"
		aesl_fh.read(AUTOTB_TVOUT_PC_outStream_V_keep_V, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_outStream_V_keep_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_outStream_V_keep_V, AESL_token); // data

			std::vector<sc_bv<1> > outStream_V_keep_V_pc_buffer;
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'outStream_V_keep_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'outStream_V_keep_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					outStream_V_keep_V_pc_buffer.push_back(AESL_token.c_str());
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_outStream_V_keep_V, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_outStream_V_keep_V))
				{
					exit(1);
				}
			}

			// correct the buffer size the current transaction
			if (i != aesl_tmp_4)
			{
				aesl_tmp_4 = i;
			}

			if (aesl_tmp_4 > 0 && aesl_tmp_3.size() < aesl_tmp_4)
			{
				int aesl_tmp_3_size = aesl_tmp_3.size();

				for (int tmp_aesl_tmp_3 = 0; tmp_aesl_tmp_3 < aesl_tmp_4 - aesl_tmp_3_size; tmp_aesl_tmp_3++)
				{
					ap_axiu<8, 2, 5, 6 > tmp;
					aesl_tmp_3.push_back(tmp);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: outStream_V_keep_V
				{
					// bitslice(0, 0)
					// {
						// celement: outStream.V.keep.V(0, 0)
						// {
							sc_lv<1>* outStream_V_keep_V_lv0_0_0_1_lv1_0_0_1 = new sc_lv<1>[aesl_tmp_4 - aesl_tmp_5];
						// }
					// }

					// bitslice(0, 0)
					{
						int hls_map_index = 0;
						// celement: outStream.V.keep.V(0, 0)
						{
							// carray: (aesl_tmp_5) => (aesl_tmp_4 - 1) @ (1)
							for (int i_0 = aesl_tmp_5; i_0 <= aesl_tmp_4 - 1; i_0 += 1)
							{
								// carray: (0) => (0) @ (1)
								for (int i_1 = 0; i_1 <= 0; i_1 += 1)
								{
									if (&(aesl_tmp_3[0].keep) != NULL) // check the null address if the c port is array or others
									{
										outStream_V_keep_V_lv0_0_0_1_lv1_0_0_1[hls_map_index].range(0, 0) = sc_bv<1>(outStream_V_keep_V_pc_buffer[hls_map_index].range(0, 0));
										hls_map_index++;
									}
								}
							}
						}
					}

					// bitslice(0, 0)
					{
						int hls_map_index = 0;
						// celement: outStream.V.keep.V(0, 0)
						{
							// carray: (aesl_tmp_5) => (aesl_tmp_4 - 1) @ (1)
							for (int i_0 = aesl_tmp_5; i_0 <= aesl_tmp_4 - 1; i_0 += 1)
							{
								// carray: (0) => (0) @ (1)
								for (int i_1 = 0; i_1 <= 0; i_1 += 1)
								{
									// sub                    : i_0 i_1
									// ori_name               : aesl_tmp_3[i_0].keep
									// sub_1st_elem           : 0 0
									// ori_name_1st_elem      : aesl_tmp_3[0].keep
									// output_left_conversion : aesl_tmp_3[i_0].keep
									// output_type_conversion : (outStream_V_keep_V_lv0_0_0_1_lv1_0_0_1[hls_map_index]).to_string(SC_BIN).c_str()
									if (&(aesl_tmp_3[0].keep) != NULL) // check the null address if the c port is array or others
									{
										aesl_tmp_3[i_0].keep = (outStream_V_keep_V_lv0_0_0_1_lv1_0_0_1[hls_map_index]).to_string(SC_BIN).c_str();
										hls_map_index++;
									}
								}
							}
						}
					}
				}
			}
		}

		// output port post check: "outStream_V_strb_V"
		aesl_fh.read(AUTOTB_TVOUT_PC_outStream_V_strb_V, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_outStream_V_strb_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_outStream_V_strb_V, AESL_token); // data

			std::vector<sc_bv<1> > outStream_V_strb_V_pc_buffer;
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'outStream_V_strb_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'outStream_V_strb_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					outStream_V_strb_V_pc_buffer.push_back(AESL_token.c_str());
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_outStream_V_strb_V, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_outStream_V_strb_V))
				{
					exit(1);
				}
			}

			// correct the buffer size the current transaction
			if (i != aesl_tmp_4)
			{
				aesl_tmp_4 = i;
			}

			if (aesl_tmp_4 > 0 && aesl_tmp_3.size() < aesl_tmp_4)
			{
				int aesl_tmp_3_size = aesl_tmp_3.size();

				for (int tmp_aesl_tmp_3 = 0; tmp_aesl_tmp_3 < aesl_tmp_4 - aesl_tmp_3_size; tmp_aesl_tmp_3++)
				{
					ap_axiu<8, 2, 5, 6 > tmp;
					aesl_tmp_3.push_back(tmp);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: outStream_V_strb_V
				{
					// bitslice(0, 0)
					// {
						// celement: outStream.V.strb.V(0, 0)
						// {
							sc_lv<1>* outStream_V_strb_V_lv0_0_0_1_lv1_0_0_1 = new sc_lv<1>[aesl_tmp_4 - aesl_tmp_5];
						// }
					// }

					// bitslice(0, 0)
					{
						int hls_map_index = 0;
						// celement: outStream.V.strb.V(0, 0)
						{
							// carray: (aesl_tmp_5) => (aesl_tmp_4 - 1) @ (1)
							for (int i_0 = aesl_tmp_5; i_0 <= aesl_tmp_4 - 1; i_0 += 1)
							{
								// carray: (0) => (0) @ (1)
								for (int i_1 = 0; i_1 <= 0; i_1 += 1)
								{
									if (&(aesl_tmp_3[0].strb) != NULL) // check the null address if the c port is array or others
									{
										outStream_V_strb_V_lv0_0_0_1_lv1_0_0_1[hls_map_index].range(0, 0) = sc_bv<1>(outStream_V_strb_V_pc_buffer[hls_map_index].range(0, 0));
										hls_map_index++;
									}
								}
							}
						}
					}

					// bitslice(0, 0)
					{
						int hls_map_index = 0;
						// celement: outStream.V.strb.V(0, 0)
						{
							// carray: (aesl_tmp_5) => (aesl_tmp_4 - 1) @ (1)
							for (int i_0 = aesl_tmp_5; i_0 <= aesl_tmp_4 - 1; i_0 += 1)
							{
								// carray: (0) => (0) @ (1)
								for (int i_1 = 0; i_1 <= 0; i_1 += 1)
								{
									// sub                    : i_0 i_1
									// ori_name               : aesl_tmp_3[i_0].strb
									// sub_1st_elem           : 0 0
									// ori_name_1st_elem      : aesl_tmp_3[0].strb
									// output_left_conversion : aesl_tmp_3[i_0].strb
									// output_type_conversion : (outStream_V_strb_V_lv0_0_0_1_lv1_0_0_1[hls_map_index]).to_string(SC_BIN).c_str()
									if (&(aesl_tmp_3[0].strb) != NULL) // check the null address if the c port is array or others
									{
										aesl_tmp_3[i_0].strb = (outStream_V_strb_V_lv0_0_0_1_lv1_0_0_1[hls_map_index]).to_string(SC_BIN).c_str();
										hls_map_index++;
									}
								}
							}
						}
					}
				}
			}
		}

		// output port post check: "outStream_V_user_V"
		aesl_fh.read(AUTOTB_TVOUT_PC_outStream_V_user_V, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_outStream_V_user_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_outStream_V_user_V, AESL_token); // data

			std::vector<sc_bv<2> > outStream_V_user_V_pc_buffer;
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'outStream_V_user_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'outStream_V_user_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					outStream_V_user_V_pc_buffer.push_back(AESL_token.c_str());
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_outStream_V_user_V, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_outStream_V_user_V))
				{
					exit(1);
				}
			}

			// correct the buffer size the current transaction
			if (i != aesl_tmp_4)
			{
				aesl_tmp_4 = i;
			}

			if (aesl_tmp_4 > 0 && aesl_tmp_3.size() < aesl_tmp_4)
			{
				int aesl_tmp_3_size = aesl_tmp_3.size();

				for (int tmp_aesl_tmp_3 = 0; tmp_aesl_tmp_3 < aesl_tmp_4 - aesl_tmp_3_size; tmp_aesl_tmp_3++)
				{
					ap_axiu<8, 2, 5, 6 > tmp;
					aesl_tmp_3.push_back(tmp);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: outStream_V_user_V
				{
					// bitslice(1, 0)
					// {
						// celement: outStream.V.user.V(1, 0)
						// {
							sc_lv<2>* outStream_V_user_V_lv0_0_0_1_lv1_0_0_1 = new sc_lv<2>[aesl_tmp_4 - aesl_tmp_5];
						// }
					// }

					// bitslice(1, 0)
					{
						int hls_map_index = 0;
						// celement: outStream.V.user.V(1, 0)
						{
							// carray: (aesl_tmp_5) => (aesl_tmp_4 - 1) @ (1)
							for (int i_0 = aesl_tmp_5; i_0 <= aesl_tmp_4 - 1; i_0 += 1)
							{
								// carray: (0) => (0) @ (1)
								for (int i_1 = 0; i_1 <= 0; i_1 += 1)
								{
									if (&(aesl_tmp_3[0].user) != NULL) // check the null address if the c port is array or others
									{
										outStream_V_user_V_lv0_0_0_1_lv1_0_0_1[hls_map_index].range(1, 0) = sc_bv<2>(outStream_V_user_V_pc_buffer[hls_map_index].range(1, 0));
										hls_map_index++;
									}
								}
							}
						}
					}

					// bitslice(1, 0)
					{
						int hls_map_index = 0;
						// celement: outStream.V.user.V(1, 0)
						{
							// carray: (aesl_tmp_5) => (aesl_tmp_4 - 1) @ (1)
							for (int i_0 = aesl_tmp_5; i_0 <= aesl_tmp_4 - 1; i_0 += 1)
							{
								// carray: (0) => (0) @ (1)
								for (int i_1 = 0; i_1 <= 0; i_1 += 1)
								{
									// sub                    : i_0 i_1
									// ori_name               : aesl_tmp_3[i_0].user
									// sub_1st_elem           : 0 0
									// ori_name_1st_elem      : aesl_tmp_3[0].user
									// output_left_conversion : aesl_tmp_3[i_0].user
									// output_type_conversion : (outStream_V_user_V_lv0_0_0_1_lv1_0_0_1[hls_map_index]).to_string(SC_BIN).c_str()
									if (&(aesl_tmp_3[0].user) != NULL) // check the null address if the c port is array or others
									{
										aesl_tmp_3[i_0].user = (outStream_V_user_V_lv0_0_0_1_lv1_0_0_1[hls_map_index]).to_string(SC_BIN).c_str();
										hls_map_index++;
									}
								}
							}
						}
					}
				}
			}
		}

		// output port post check: "outStream_V_last_V"
		aesl_fh.read(AUTOTB_TVOUT_PC_outStream_V_last_V, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_outStream_V_last_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_outStream_V_last_V, AESL_token); // data

			std::vector<sc_bv<1> > outStream_V_last_V_pc_buffer;
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'outStream_V_last_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'outStream_V_last_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					outStream_V_last_V_pc_buffer.push_back(AESL_token.c_str());
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_outStream_V_last_V, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_outStream_V_last_V))
				{
					exit(1);
				}
			}

			// correct the buffer size the current transaction
			if (i != aesl_tmp_4)
			{
				aesl_tmp_4 = i;
			}

			if (aesl_tmp_4 > 0 && aesl_tmp_3.size() < aesl_tmp_4)
			{
				int aesl_tmp_3_size = aesl_tmp_3.size();

				for (int tmp_aesl_tmp_3 = 0; tmp_aesl_tmp_3 < aesl_tmp_4 - aesl_tmp_3_size; tmp_aesl_tmp_3++)
				{
					ap_axiu<8, 2, 5, 6 > tmp;
					aesl_tmp_3.push_back(tmp);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: outStream_V_last_V
				{
					// bitslice(0, 0)
					// {
						// celement: outStream.V.last.V(0, 0)
						// {
							sc_lv<1>* outStream_V_last_V_lv0_0_0_1_lv1_0_0_1 = new sc_lv<1>[aesl_tmp_4 - aesl_tmp_5];
						// }
					// }

					// bitslice(0, 0)
					{
						int hls_map_index = 0;
						// celement: outStream.V.last.V(0, 0)
						{
							// carray: (aesl_tmp_5) => (aesl_tmp_4 - 1) @ (1)
							for (int i_0 = aesl_tmp_5; i_0 <= aesl_tmp_4 - 1; i_0 += 1)
							{
								// carray: (0) => (0) @ (1)
								for (int i_1 = 0; i_1 <= 0; i_1 += 1)
								{
									if (&(aesl_tmp_3[0].last) != NULL) // check the null address if the c port is array or others
									{
										outStream_V_last_V_lv0_0_0_1_lv1_0_0_1[hls_map_index].range(0, 0) = sc_bv<1>(outStream_V_last_V_pc_buffer[hls_map_index].range(0, 0));
										hls_map_index++;
									}
								}
							}
						}
					}

					// bitslice(0, 0)
					{
						int hls_map_index = 0;
						// celement: outStream.V.last.V(0, 0)
						{
							// carray: (aesl_tmp_5) => (aesl_tmp_4 - 1) @ (1)
							for (int i_0 = aesl_tmp_5; i_0 <= aesl_tmp_4 - 1; i_0 += 1)
							{
								// carray: (0) => (0) @ (1)
								for (int i_1 = 0; i_1 <= 0; i_1 += 1)
								{
									// sub                    : i_0 i_1
									// ori_name               : aesl_tmp_3[i_0].last
									// sub_1st_elem           : 0 0
									// ori_name_1st_elem      : aesl_tmp_3[0].last
									// output_left_conversion : aesl_tmp_3[i_0].last
									// output_type_conversion : (outStream_V_last_V_lv0_0_0_1_lv1_0_0_1[hls_map_index]).to_string(SC_BIN).c_str()
									if (&(aesl_tmp_3[0].last) != NULL) // check the null address if the c port is array or others
									{
										aesl_tmp_3[i_0].last = (outStream_V_last_V_lv0_0_0_1_lv1_0_0_1[hls_map_index]).to_string(SC_BIN).c_str();
										hls_map_index++;
									}
								}
							}
						}
					}
				}
			}
		}

		// output port post check: "outStream_V_id_V"
		aesl_fh.read(AUTOTB_TVOUT_PC_outStream_V_id_V, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_outStream_V_id_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_outStream_V_id_V, AESL_token); // data

			std::vector<sc_bv<5> > outStream_V_id_V_pc_buffer;
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'outStream_V_id_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'outStream_V_id_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					outStream_V_id_V_pc_buffer.push_back(AESL_token.c_str());
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_outStream_V_id_V, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_outStream_V_id_V))
				{
					exit(1);
				}
			}

			// correct the buffer size the current transaction
			if (i != aesl_tmp_4)
			{
				aesl_tmp_4 = i;
			}

			if (aesl_tmp_4 > 0 && aesl_tmp_3.size() < aesl_tmp_4)
			{
				int aesl_tmp_3_size = aesl_tmp_3.size();

				for (int tmp_aesl_tmp_3 = 0; tmp_aesl_tmp_3 < aesl_tmp_4 - aesl_tmp_3_size; tmp_aesl_tmp_3++)
				{
					ap_axiu<8, 2, 5, 6 > tmp;
					aesl_tmp_3.push_back(tmp);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: outStream_V_id_V
				{
					// bitslice(4, 0)
					// {
						// celement: outStream.V.id.V(4, 0)
						// {
							sc_lv<5>* outStream_V_id_V_lv0_0_0_1_lv1_0_0_1 = new sc_lv<5>[aesl_tmp_4 - aesl_tmp_5];
						// }
					// }

					// bitslice(4, 0)
					{
						int hls_map_index = 0;
						// celement: outStream.V.id.V(4, 0)
						{
							// carray: (aesl_tmp_5) => (aesl_tmp_4 - 1) @ (1)
							for (int i_0 = aesl_tmp_5; i_0 <= aesl_tmp_4 - 1; i_0 += 1)
							{
								// carray: (0) => (0) @ (1)
								for (int i_1 = 0; i_1 <= 0; i_1 += 1)
								{
									if (&(aesl_tmp_3[0].id) != NULL) // check the null address if the c port is array or others
									{
										outStream_V_id_V_lv0_0_0_1_lv1_0_0_1[hls_map_index].range(4, 0) = sc_bv<5>(outStream_V_id_V_pc_buffer[hls_map_index].range(4, 0));
										hls_map_index++;
									}
								}
							}
						}
					}

					// bitslice(4, 0)
					{
						int hls_map_index = 0;
						// celement: outStream.V.id.V(4, 0)
						{
							// carray: (aesl_tmp_5) => (aesl_tmp_4 - 1) @ (1)
							for (int i_0 = aesl_tmp_5; i_0 <= aesl_tmp_4 - 1; i_0 += 1)
							{
								// carray: (0) => (0) @ (1)
								for (int i_1 = 0; i_1 <= 0; i_1 += 1)
								{
									// sub                    : i_0 i_1
									// ori_name               : aesl_tmp_3[i_0].id
									// sub_1st_elem           : 0 0
									// ori_name_1st_elem      : aesl_tmp_3[0].id
									// output_left_conversion : aesl_tmp_3[i_0].id
									// output_type_conversion : (outStream_V_id_V_lv0_0_0_1_lv1_0_0_1[hls_map_index]).to_string(SC_BIN).c_str()
									if (&(aesl_tmp_3[0].id) != NULL) // check the null address if the c port is array or others
									{
										aesl_tmp_3[i_0].id = (outStream_V_id_V_lv0_0_0_1_lv1_0_0_1[hls_map_index]).to_string(SC_BIN).c_str();
										hls_map_index++;
									}
								}
							}
						}
					}
				}
			}
		}

		// output port post check: "outStream_V_dest_V"
		aesl_fh.read(AUTOTB_TVOUT_PC_outStream_V_dest_V, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_outStream_V_dest_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_outStream_V_dest_V, AESL_token); // data

			std::vector<sc_bv<6> > outStream_V_dest_V_pc_buffer;
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'outStream_V_dest_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'outStream_V_dest_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					outStream_V_dest_V_pc_buffer.push_back(AESL_token.c_str());
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_outStream_V_dest_V, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_outStream_V_dest_V))
				{
					exit(1);
				}
			}

			// correct the buffer size the current transaction
			if (i != aesl_tmp_4)
			{
				aesl_tmp_4 = i;
			}

			if (aesl_tmp_4 > 0 && aesl_tmp_3.size() < aesl_tmp_4)
			{
				int aesl_tmp_3_size = aesl_tmp_3.size();

				for (int tmp_aesl_tmp_3 = 0; tmp_aesl_tmp_3 < aesl_tmp_4 - aesl_tmp_3_size; tmp_aesl_tmp_3++)
				{
					ap_axiu<8, 2, 5, 6 > tmp;
					aesl_tmp_3.push_back(tmp);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: outStream_V_dest_V
				{
					// bitslice(5, 0)
					// {
						// celement: outStream.V.dest.V(5, 0)
						// {
							sc_lv<6>* outStream_V_dest_V_lv0_0_0_1_lv1_0_0_1 = new sc_lv<6>[aesl_tmp_4 - aesl_tmp_5];
						// }
					// }

					// bitslice(5, 0)
					{
						int hls_map_index = 0;
						// celement: outStream.V.dest.V(5, 0)
						{
							// carray: (aesl_tmp_5) => (aesl_tmp_4 - 1) @ (1)
							for (int i_0 = aesl_tmp_5; i_0 <= aesl_tmp_4 - 1; i_0 += 1)
							{
								// carray: (0) => (0) @ (1)
								for (int i_1 = 0; i_1 <= 0; i_1 += 1)
								{
									if (&(aesl_tmp_3[0].dest) != NULL) // check the null address if the c port is array or others
									{
										outStream_V_dest_V_lv0_0_0_1_lv1_0_0_1[hls_map_index].range(5, 0) = sc_bv<6>(outStream_V_dest_V_pc_buffer[hls_map_index].range(5, 0));
										hls_map_index++;
									}
								}
							}
						}
					}

					// bitslice(5, 0)
					{
						int hls_map_index = 0;
						// celement: outStream.V.dest.V(5, 0)
						{
							// carray: (aesl_tmp_5) => (aesl_tmp_4 - 1) @ (1)
							for (int i_0 = aesl_tmp_5; i_0 <= aesl_tmp_4 - 1; i_0 += 1)
							{
								// carray: (0) => (0) @ (1)
								for (int i_1 = 0; i_1 <= 0; i_1 += 1)
								{
									// sub                    : i_0 i_1
									// ori_name               : aesl_tmp_3[i_0].dest
									// sub_1st_elem           : 0 0
									// ori_name_1st_elem      : aesl_tmp_3[0].dest
									// output_left_conversion : aesl_tmp_3[i_0].dest
									// output_type_conversion : (outStream_V_dest_V_lv0_0_0_1_lv1_0_0_1[hls_map_index]).to_string(SC_BIN).c_str()
									if (&(aesl_tmp_3[0].dest) != NULL) // check the null address if the c port is array or others
									{
										aesl_tmp_3[i_0].dest = (outStream_V_dest_V_lv0_0_0_1_lv1_0_0_1[hls_map_index]).to_string(SC_BIN).c_str();
										hls_map_index++;
									}
								}
							}
						}
					}
				}
			}
		}

		// push back output stream: "outStream"
		for (int i = 0; i < aesl_tmp_4; i++)
		{
			outStream.write(aesl_tmp_3[i]);
		}

		AESL_transaction_pc++;
	}
	else
	{
		CodeState = ENTER_WRAPC;
		static unsigned AESL_transaction;

		static AESL_FILE_HANDLER aesl_fh;

		// "inStream_V_data_V"
		char* tvin_inStream_V_data_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_inStream_V_data_V);
		char* wrapc_stream_size_in_inStream_V_data_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_IN_inStream_V_data_V);
		char* wrapc_stream_ingress_status_inStream_V_data_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_inStream_V_data_V);

		// "inStream_V_keep_V"
		char* tvin_inStream_V_keep_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_inStream_V_keep_V);
		char* wrapc_stream_size_in_inStream_V_keep_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_IN_inStream_V_keep_V);
		char* wrapc_stream_ingress_status_inStream_V_keep_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_inStream_V_keep_V);

		// "inStream_V_strb_V"
		char* tvin_inStream_V_strb_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_inStream_V_strb_V);
		char* wrapc_stream_size_in_inStream_V_strb_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_IN_inStream_V_strb_V);
		char* wrapc_stream_ingress_status_inStream_V_strb_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_inStream_V_strb_V);

		// "inStream_V_user_V"
		char* tvin_inStream_V_user_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_inStream_V_user_V);
		char* wrapc_stream_size_in_inStream_V_user_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_IN_inStream_V_user_V);
		char* wrapc_stream_ingress_status_inStream_V_user_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_inStream_V_user_V);

		// "inStream_V_last_V"
		char* tvin_inStream_V_last_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_inStream_V_last_V);
		char* wrapc_stream_size_in_inStream_V_last_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_IN_inStream_V_last_V);
		char* wrapc_stream_ingress_status_inStream_V_last_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_inStream_V_last_V);

		// "inStream_V_id_V"
		char* tvin_inStream_V_id_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_inStream_V_id_V);
		char* wrapc_stream_size_in_inStream_V_id_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_IN_inStream_V_id_V);
		char* wrapc_stream_ingress_status_inStream_V_id_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_inStream_V_id_V);

		// "inStream_V_dest_V"
		char* tvin_inStream_V_dest_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_inStream_V_dest_V);
		char* wrapc_stream_size_in_inStream_V_dest_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_IN_inStream_V_dest_V);
		char* wrapc_stream_ingress_status_inStream_V_dest_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_inStream_V_dest_V);

		// "outStream_V_data_V"
		char* tvin_outStream_V_data_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_outStream_V_data_V);
		char* tvout_outStream_V_data_V = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_outStream_V_data_V);
		char* wrapc_stream_size_out_outStream_V_data_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_outStream_V_data_V);
		char* wrapc_stream_egress_status_outStream_V_data_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_outStream_V_data_V);

		// "outStream_V_keep_V"
		char* tvin_outStream_V_keep_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_outStream_V_keep_V);
		char* tvout_outStream_V_keep_V = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_outStream_V_keep_V);
		char* wrapc_stream_size_out_outStream_V_keep_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_outStream_V_keep_V);
		char* wrapc_stream_egress_status_outStream_V_keep_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_outStream_V_keep_V);

		// "outStream_V_strb_V"
		char* tvin_outStream_V_strb_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_outStream_V_strb_V);
		char* tvout_outStream_V_strb_V = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_outStream_V_strb_V);
		char* wrapc_stream_size_out_outStream_V_strb_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_outStream_V_strb_V);
		char* wrapc_stream_egress_status_outStream_V_strb_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_outStream_V_strb_V);

		// "outStream_V_user_V"
		char* tvin_outStream_V_user_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_outStream_V_user_V);
		char* tvout_outStream_V_user_V = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_outStream_V_user_V);
		char* wrapc_stream_size_out_outStream_V_user_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_outStream_V_user_V);
		char* wrapc_stream_egress_status_outStream_V_user_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_outStream_V_user_V);

		// "outStream_V_last_V"
		char* tvin_outStream_V_last_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_outStream_V_last_V);
		char* tvout_outStream_V_last_V = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_outStream_V_last_V);
		char* wrapc_stream_size_out_outStream_V_last_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_outStream_V_last_V);
		char* wrapc_stream_egress_status_outStream_V_last_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_outStream_V_last_V);

		// "outStream_V_id_V"
		char* tvin_outStream_V_id_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_outStream_V_id_V);
		char* tvout_outStream_V_id_V = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_outStream_V_id_V);
		char* wrapc_stream_size_out_outStream_V_id_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_outStream_V_id_V);
		char* wrapc_stream_egress_status_outStream_V_id_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_outStream_V_id_V);

		// "outStream_V_dest_V"
		char* tvin_outStream_V_dest_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_outStream_V_dest_V);
		char* tvout_outStream_V_dest_V = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_outStream_V_dest_V);
		char* wrapc_stream_size_out_outStream_V_dest_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_outStream_V_dest_V);
		char* wrapc_stream_egress_status_outStream_V_dest_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_outStream_V_dest_V);

		// "xMin"
		char* tvin_xMin = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_xMin);

		// "xMax"
		char* tvin_xMax = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_xMax);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// dump stream tvin: "inStream"
		std::vector<ap_axiu<8, 2, 5, 6 > > aesl_tmp_0;
		int aesl_tmp_1 = 0;
		while (!inStream.empty())
		{
			aesl_tmp_0.push_back(inStream.read());
			aesl_tmp_1++;
		}

		// dump stream tvin: "outStream"
		std::vector<ap_axiu<8, 2, 5, 6 > > aesl_tmp_3;
		int aesl_tmp_4 = 0;
		while (!outStream.empty())
		{
			aesl_tmp_3.push_back(outStream.read());
			aesl_tmp_4++;
		}

		// [[transaction]]
		sprintf(tvin_xMin, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_xMin, tvin_xMin);

		sc_bv<8> xMin_tvin_wrapc_buffer;

		// RTL Name: xMin
		{
			// bitslice(7, 0)
			{
				// celement: xMin(7, 0)
				{
					// carray: (0) => (0) @ (0)
					{
						// sub                   : 
						// ori_name              : xMin
						// sub_1st_elem          : 
						// ori_name_1st_elem     : xMin
						// regulate_c_name       : xMin
						// input_type_conversion : xMin
						if (&(xMin) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<8> xMin_tmp_mem;
							xMin_tmp_mem = xMin;
							xMin_tvin_wrapc_buffer.range(7, 0) = xMin_tmp_mem.range(7, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_xMin, "%s\n", (xMin_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_xMin, tvin_xMin);
		}

		tcl_file.set_num(1, &tcl_file.xMin_depth);
		sprintf(tvin_xMin, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_xMin, tvin_xMin);

		// [[transaction]]
		sprintf(tvin_xMax, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_xMax, tvin_xMax);

		sc_bv<8> xMax_tvin_wrapc_buffer;

		// RTL Name: xMax
		{
			// bitslice(7, 0)
			{
				// celement: xMax(7, 0)
				{
					// carray: (0) => (0) @ (0)
					{
						// sub                   : 
						// ori_name              : xMax
						// sub_1st_elem          : 
						// ori_name_1st_elem     : xMax
						// regulate_c_name       : xMax
						// input_type_conversion : xMax
						if (&(xMax) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<8> xMax_tmp_mem;
							xMax_tmp_mem = xMax;
							xMax_tvin_wrapc_buffer.range(7, 0) = xMax_tmp_mem.range(7, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_xMax, "%s\n", (xMax_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_xMax, tvin_xMax);
		}

		tcl_file.set_num(1, &tcl_file.xMax_depth);
		sprintf(tvin_xMax, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_xMax, tvin_xMax);

		// push back input stream: "inStream"
		for (int i = 0; i < aesl_tmp_1; i++)
		{
			inStream.write(aesl_tmp_0[i]);
		}

		// push back input stream: "outStream"
		for (int i = 0; i < aesl_tmp_4; i++)
		{
			outStream.write(aesl_tmp_3[i]);
		}

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		doHistStrech(inStream, outStream, xMin, xMax);

		CodeState = DUMP_OUTPUTS;
		// record input size to tv3: "inStream"
		int aesl_tmp_2 = inStream.size();

		// pop output stream: "outStream"
		int aesl_tmp_5 = aesl_tmp_4;
		aesl_tmp_4 = 0;
     aesl_tmp_3.clear();
		while (!outStream.empty())
		{
			aesl_tmp_3.push_back(outStream.read());
			aesl_tmp_4++;
		}

		// [[transaction]]
		sprintf(tvin_inStream_V_data_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_inStream_V_data_V, tvin_inStream_V_data_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_data_V, tvin_inStream_V_data_V);

		sc_bv<8>* inStream_V_data_V_tvin_wrapc_buffer = new sc_bv<8>[aesl_tmp_1 - aesl_tmp_2];

		// RTL Name: inStream_V_data_V
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: inStream.V.data.V(7, 0)
				{
					// carray: (0) => (aesl_tmp_1 - aesl_tmp_2 - 1) @ (1)
					for (int i_0 = 0; i_0 <= aesl_tmp_1 - aesl_tmp_2 - 1; i_0 += 1)
					{
						// carray: (0) => (0) @ (1)
						for (int i_1 = 0; i_1 <= 0; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : aesl_tmp_0[i_0].data
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : aesl_tmp_0[0].data
							// regulate_c_name       : inStream_V_data_V
							// input_type_conversion : (aesl_tmp_0[i_0].data).to_string(2).c_str()
							if (&(aesl_tmp_0[0].data) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<8> inStream_V_data_V_tmp_mem;
								inStream_V_data_V_tmp_mem = (aesl_tmp_0[i_0].data).to_string(2).c_str();
								inStream_V_data_V_tvin_wrapc_buffer[hls_map_index].range(7, 0) = inStream_V_data_V_tmp_mem.range(7, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < aesl_tmp_1 - aesl_tmp_2; i++)
		{
			sprintf(tvin_inStream_V_data_V, "%s\n", (inStream_V_data_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_inStream_V_data_V, tvin_inStream_V_data_V);
		}

		// dump stream ingress status to file
     if (aesl_tmp_1 > aesl_tmp_2)
     {
		sc_int<32> stream_ingress_size_inStream_V_data_V = aesl_tmp_1;
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_data_V, stream_ingress_size_inStream_V_data_V.to_string().c_str());
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_data_V, "\n");

		for (int i = 0; i < aesl_tmp_1 - aesl_tmp_2; i++)
		{
			stream_ingress_size_inStream_V_data_V--;
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_data_V, stream_ingress_size_inStream_V_data_V.to_string().c_str());
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_data_V, "\n");
		}
     }
     else {
		    sc_int<32> stream_ingress_size_inStream_V_data_V = 0;
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_data_V, stream_ingress_size_inStream_V_data_V.to_string().c_str());
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_data_V, "\n");
     }

		tcl_file.set_num(aesl_tmp_1 - aesl_tmp_2, &tcl_file.inStream_V_data_V_depth);
		sprintf(tvin_inStream_V_data_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_inStream_V_data_V, tvin_inStream_V_data_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_data_V, tvin_inStream_V_data_V);

		// release memory allocation
		delete [] inStream_V_data_V_tvin_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_in_inStream_V_data_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_inStream_V_data_V, wrapc_stream_size_in_inStream_V_data_V);
		sprintf(wrapc_stream_size_in_inStream_V_data_V, "%d\n", aesl_tmp_1 - aesl_tmp_2);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_inStream_V_data_V, wrapc_stream_size_in_inStream_V_data_V);
		sprintf(wrapc_stream_size_in_inStream_V_data_V, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_inStream_V_data_V, wrapc_stream_size_in_inStream_V_data_V);

		// [[transaction]]
		sprintf(tvin_inStream_V_keep_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_inStream_V_keep_V, tvin_inStream_V_keep_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_keep_V, tvin_inStream_V_keep_V);

		sc_bv<1>* inStream_V_keep_V_tvin_wrapc_buffer = new sc_bv<1>[aesl_tmp_1 - aesl_tmp_2];

		// RTL Name: inStream_V_keep_V
		{
			// bitslice(0, 0)
			{
				int hls_map_index = 0;
				// celement: inStream.V.keep.V(0, 0)
				{
					// carray: (0) => (aesl_tmp_1 - aesl_tmp_2 - 1) @ (1)
					for (int i_0 = 0; i_0 <= aesl_tmp_1 - aesl_tmp_2 - 1; i_0 += 1)
					{
						// carray: (0) => (0) @ (1)
						for (int i_1 = 0; i_1 <= 0; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : aesl_tmp_0[i_0].keep
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : aesl_tmp_0[0].keep
							// regulate_c_name       : inStream_V_keep_V
							// input_type_conversion : (aesl_tmp_0[i_0].keep).to_string(2).c_str()
							if (&(aesl_tmp_0[0].keep) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<1> inStream_V_keep_V_tmp_mem;
								inStream_V_keep_V_tmp_mem = (aesl_tmp_0[i_0].keep).to_string(2).c_str();
								inStream_V_keep_V_tvin_wrapc_buffer[hls_map_index].range(0, 0) = inStream_V_keep_V_tmp_mem.range(0, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < aesl_tmp_1 - aesl_tmp_2; i++)
		{
			sprintf(tvin_inStream_V_keep_V, "%s\n", (inStream_V_keep_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_inStream_V_keep_V, tvin_inStream_V_keep_V);
		}

		// dump stream ingress status to file
     if (aesl_tmp_1 > aesl_tmp_2)
     {
		sc_int<32> stream_ingress_size_inStream_V_keep_V = aesl_tmp_1;
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_keep_V, stream_ingress_size_inStream_V_keep_V.to_string().c_str());
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_keep_V, "\n");

		for (int i = 0; i < aesl_tmp_1 - aesl_tmp_2; i++)
		{
			stream_ingress_size_inStream_V_keep_V--;
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_keep_V, stream_ingress_size_inStream_V_keep_V.to_string().c_str());
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_keep_V, "\n");
		}
     }
     else {
		    sc_int<32> stream_ingress_size_inStream_V_keep_V = 0;
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_keep_V, stream_ingress_size_inStream_V_keep_V.to_string().c_str());
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_keep_V, "\n");
     }

		tcl_file.set_num(aesl_tmp_1 - aesl_tmp_2, &tcl_file.inStream_V_keep_V_depth);
		sprintf(tvin_inStream_V_keep_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_inStream_V_keep_V, tvin_inStream_V_keep_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_keep_V, tvin_inStream_V_keep_V);

		// release memory allocation
		delete [] inStream_V_keep_V_tvin_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_in_inStream_V_keep_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_inStream_V_keep_V, wrapc_stream_size_in_inStream_V_keep_V);
		sprintf(wrapc_stream_size_in_inStream_V_keep_V, "%d\n", aesl_tmp_1 - aesl_tmp_2);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_inStream_V_keep_V, wrapc_stream_size_in_inStream_V_keep_V);
		sprintf(wrapc_stream_size_in_inStream_V_keep_V, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_inStream_V_keep_V, wrapc_stream_size_in_inStream_V_keep_V);

		// [[transaction]]
		sprintf(tvin_inStream_V_strb_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_inStream_V_strb_V, tvin_inStream_V_strb_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_strb_V, tvin_inStream_V_strb_V);

		sc_bv<1>* inStream_V_strb_V_tvin_wrapc_buffer = new sc_bv<1>[aesl_tmp_1 - aesl_tmp_2];

		// RTL Name: inStream_V_strb_V
		{
			// bitslice(0, 0)
			{
				int hls_map_index = 0;
				// celement: inStream.V.strb.V(0, 0)
				{
					// carray: (0) => (aesl_tmp_1 - aesl_tmp_2 - 1) @ (1)
					for (int i_0 = 0; i_0 <= aesl_tmp_1 - aesl_tmp_2 - 1; i_0 += 1)
					{
						// carray: (0) => (0) @ (1)
						for (int i_1 = 0; i_1 <= 0; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : aesl_tmp_0[i_0].strb
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : aesl_tmp_0[0].strb
							// regulate_c_name       : inStream_V_strb_V
							// input_type_conversion : (aesl_tmp_0[i_0].strb).to_string(2).c_str()
							if (&(aesl_tmp_0[0].strb) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<1> inStream_V_strb_V_tmp_mem;
								inStream_V_strb_V_tmp_mem = (aesl_tmp_0[i_0].strb).to_string(2).c_str();
								inStream_V_strb_V_tvin_wrapc_buffer[hls_map_index].range(0, 0) = inStream_V_strb_V_tmp_mem.range(0, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < aesl_tmp_1 - aesl_tmp_2; i++)
		{
			sprintf(tvin_inStream_V_strb_V, "%s\n", (inStream_V_strb_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_inStream_V_strb_V, tvin_inStream_V_strb_V);
		}

		// dump stream ingress status to file
     if (aesl_tmp_1 > aesl_tmp_2)
     {
		sc_int<32> stream_ingress_size_inStream_V_strb_V = aesl_tmp_1;
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_strb_V, stream_ingress_size_inStream_V_strb_V.to_string().c_str());
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_strb_V, "\n");

		for (int i = 0; i < aesl_tmp_1 - aesl_tmp_2; i++)
		{
			stream_ingress_size_inStream_V_strb_V--;
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_strb_V, stream_ingress_size_inStream_V_strb_V.to_string().c_str());
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_strb_V, "\n");
		}
     }
     else {
		    sc_int<32> stream_ingress_size_inStream_V_strb_V = 0;
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_strb_V, stream_ingress_size_inStream_V_strb_V.to_string().c_str());
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_strb_V, "\n");
     }

		tcl_file.set_num(aesl_tmp_1 - aesl_tmp_2, &tcl_file.inStream_V_strb_V_depth);
		sprintf(tvin_inStream_V_strb_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_inStream_V_strb_V, tvin_inStream_V_strb_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_strb_V, tvin_inStream_V_strb_V);

		// release memory allocation
		delete [] inStream_V_strb_V_tvin_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_in_inStream_V_strb_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_inStream_V_strb_V, wrapc_stream_size_in_inStream_V_strb_V);
		sprintf(wrapc_stream_size_in_inStream_V_strb_V, "%d\n", aesl_tmp_1 - aesl_tmp_2);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_inStream_V_strb_V, wrapc_stream_size_in_inStream_V_strb_V);
		sprintf(wrapc_stream_size_in_inStream_V_strb_V, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_inStream_V_strb_V, wrapc_stream_size_in_inStream_V_strb_V);

		// [[transaction]]
		sprintf(tvin_inStream_V_user_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_inStream_V_user_V, tvin_inStream_V_user_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_user_V, tvin_inStream_V_user_V);

		sc_bv<2>* inStream_V_user_V_tvin_wrapc_buffer = new sc_bv<2>[aesl_tmp_1 - aesl_tmp_2];

		// RTL Name: inStream_V_user_V
		{
			// bitslice(1, 0)
			{
				int hls_map_index = 0;
				// celement: inStream.V.user.V(1, 0)
				{
					// carray: (0) => (aesl_tmp_1 - aesl_tmp_2 - 1) @ (1)
					for (int i_0 = 0; i_0 <= aesl_tmp_1 - aesl_tmp_2 - 1; i_0 += 1)
					{
						// carray: (0) => (0) @ (1)
						for (int i_1 = 0; i_1 <= 0; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : aesl_tmp_0[i_0].user
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : aesl_tmp_0[0].user
							// regulate_c_name       : inStream_V_user_V
							// input_type_conversion : (aesl_tmp_0[i_0].user).to_string(2).c_str()
							if (&(aesl_tmp_0[0].user) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<2> inStream_V_user_V_tmp_mem;
								inStream_V_user_V_tmp_mem = (aesl_tmp_0[i_0].user).to_string(2).c_str();
								inStream_V_user_V_tvin_wrapc_buffer[hls_map_index].range(1, 0) = inStream_V_user_V_tmp_mem.range(1, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < aesl_tmp_1 - aesl_tmp_2; i++)
		{
			sprintf(tvin_inStream_V_user_V, "%s\n", (inStream_V_user_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_inStream_V_user_V, tvin_inStream_V_user_V);
		}

		// dump stream ingress status to file
     if (aesl_tmp_1 > aesl_tmp_2)
     {
		sc_int<32> stream_ingress_size_inStream_V_user_V = aesl_tmp_1;
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_user_V, stream_ingress_size_inStream_V_user_V.to_string().c_str());
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_user_V, "\n");

		for (int i = 0; i < aesl_tmp_1 - aesl_tmp_2; i++)
		{
			stream_ingress_size_inStream_V_user_V--;
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_user_V, stream_ingress_size_inStream_V_user_V.to_string().c_str());
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_user_V, "\n");
		}
     }
     else {
		    sc_int<32> stream_ingress_size_inStream_V_user_V = 0;
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_user_V, stream_ingress_size_inStream_V_user_V.to_string().c_str());
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_user_V, "\n");
     }

		tcl_file.set_num(aesl_tmp_1 - aesl_tmp_2, &tcl_file.inStream_V_user_V_depth);
		sprintf(tvin_inStream_V_user_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_inStream_V_user_V, tvin_inStream_V_user_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_user_V, tvin_inStream_V_user_V);

		// release memory allocation
		delete [] inStream_V_user_V_tvin_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_in_inStream_V_user_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_inStream_V_user_V, wrapc_stream_size_in_inStream_V_user_V);
		sprintf(wrapc_stream_size_in_inStream_V_user_V, "%d\n", aesl_tmp_1 - aesl_tmp_2);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_inStream_V_user_V, wrapc_stream_size_in_inStream_V_user_V);
		sprintf(wrapc_stream_size_in_inStream_V_user_V, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_inStream_V_user_V, wrapc_stream_size_in_inStream_V_user_V);

		// [[transaction]]
		sprintf(tvin_inStream_V_last_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_inStream_V_last_V, tvin_inStream_V_last_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_last_V, tvin_inStream_V_last_V);

		sc_bv<1>* inStream_V_last_V_tvin_wrapc_buffer = new sc_bv<1>[aesl_tmp_1 - aesl_tmp_2];

		// RTL Name: inStream_V_last_V
		{
			// bitslice(0, 0)
			{
				int hls_map_index = 0;
				// celement: inStream.V.last.V(0, 0)
				{
					// carray: (0) => (aesl_tmp_1 - aesl_tmp_2 - 1) @ (1)
					for (int i_0 = 0; i_0 <= aesl_tmp_1 - aesl_tmp_2 - 1; i_0 += 1)
					{
						// carray: (0) => (0) @ (1)
						for (int i_1 = 0; i_1 <= 0; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : aesl_tmp_0[i_0].last
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : aesl_tmp_0[0].last
							// regulate_c_name       : inStream_V_last_V
							// input_type_conversion : (aesl_tmp_0[i_0].last).to_string(2).c_str()
							if (&(aesl_tmp_0[0].last) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<1> inStream_V_last_V_tmp_mem;
								inStream_V_last_V_tmp_mem = (aesl_tmp_0[i_0].last).to_string(2).c_str();
								inStream_V_last_V_tvin_wrapc_buffer[hls_map_index].range(0, 0) = inStream_V_last_V_tmp_mem.range(0, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < aesl_tmp_1 - aesl_tmp_2; i++)
		{
			sprintf(tvin_inStream_V_last_V, "%s\n", (inStream_V_last_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_inStream_V_last_V, tvin_inStream_V_last_V);
		}

		// dump stream ingress status to file
     if (aesl_tmp_1 > aesl_tmp_2)
     {
		sc_int<32> stream_ingress_size_inStream_V_last_V = aesl_tmp_1;
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_last_V, stream_ingress_size_inStream_V_last_V.to_string().c_str());
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_last_V, "\n");

		for (int i = 0; i < aesl_tmp_1 - aesl_tmp_2; i++)
		{
			stream_ingress_size_inStream_V_last_V--;
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_last_V, stream_ingress_size_inStream_V_last_V.to_string().c_str());
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_last_V, "\n");
		}
     }
     else {
		    sc_int<32> stream_ingress_size_inStream_V_last_V = 0;
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_last_V, stream_ingress_size_inStream_V_last_V.to_string().c_str());
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_last_V, "\n");
     }

		tcl_file.set_num(aesl_tmp_1 - aesl_tmp_2, &tcl_file.inStream_V_last_V_depth);
		sprintf(tvin_inStream_V_last_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_inStream_V_last_V, tvin_inStream_V_last_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_last_V, tvin_inStream_V_last_V);

		// release memory allocation
		delete [] inStream_V_last_V_tvin_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_in_inStream_V_last_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_inStream_V_last_V, wrapc_stream_size_in_inStream_V_last_V);
		sprintf(wrapc_stream_size_in_inStream_V_last_V, "%d\n", aesl_tmp_1 - aesl_tmp_2);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_inStream_V_last_V, wrapc_stream_size_in_inStream_V_last_V);
		sprintf(wrapc_stream_size_in_inStream_V_last_V, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_inStream_V_last_V, wrapc_stream_size_in_inStream_V_last_V);

		// [[transaction]]
		sprintf(tvin_inStream_V_id_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_inStream_V_id_V, tvin_inStream_V_id_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_id_V, tvin_inStream_V_id_V);

		sc_bv<5>* inStream_V_id_V_tvin_wrapc_buffer = new sc_bv<5>[aesl_tmp_1 - aesl_tmp_2];

		// RTL Name: inStream_V_id_V
		{
			// bitslice(4, 0)
			{
				int hls_map_index = 0;
				// celement: inStream.V.id.V(4, 0)
				{
					// carray: (0) => (aesl_tmp_1 - aesl_tmp_2 - 1) @ (1)
					for (int i_0 = 0; i_0 <= aesl_tmp_1 - aesl_tmp_2 - 1; i_0 += 1)
					{
						// carray: (0) => (0) @ (1)
						for (int i_1 = 0; i_1 <= 0; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : aesl_tmp_0[i_0].id
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : aesl_tmp_0[0].id
							// regulate_c_name       : inStream_V_id_V
							// input_type_conversion : (aesl_tmp_0[i_0].id).to_string(2).c_str()
							if (&(aesl_tmp_0[0].id) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<5> inStream_V_id_V_tmp_mem;
								inStream_V_id_V_tmp_mem = (aesl_tmp_0[i_0].id).to_string(2).c_str();
								inStream_V_id_V_tvin_wrapc_buffer[hls_map_index].range(4, 0) = inStream_V_id_V_tmp_mem.range(4, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < aesl_tmp_1 - aesl_tmp_2; i++)
		{
			sprintf(tvin_inStream_V_id_V, "%s\n", (inStream_V_id_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_inStream_V_id_V, tvin_inStream_V_id_V);
		}

		// dump stream ingress status to file
     if (aesl_tmp_1 > aesl_tmp_2)
     {
		sc_int<32> stream_ingress_size_inStream_V_id_V = aesl_tmp_1;
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_id_V, stream_ingress_size_inStream_V_id_V.to_string().c_str());
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_id_V, "\n");

		for (int i = 0; i < aesl_tmp_1 - aesl_tmp_2; i++)
		{
			stream_ingress_size_inStream_V_id_V--;
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_id_V, stream_ingress_size_inStream_V_id_V.to_string().c_str());
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_id_V, "\n");
		}
     }
     else {
		    sc_int<32> stream_ingress_size_inStream_V_id_V = 0;
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_id_V, stream_ingress_size_inStream_V_id_V.to_string().c_str());
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_id_V, "\n");
     }

		tcl_file.set_num(aesl_tmp_1 - aesl_tmp_2, &tcl_file.inStream_V_id_V_depth);
		sprintf(tvin_inStream_V_id_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_inStream_V_id_V, tvin_inStream_V_id_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_id_V, tvin_inStream_V_id_V);

		// release memory allocation
		delete [] inStream_V_id_V_tvin_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_in_inStream_V_id_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_inStream_V_id_V, wrapc_stream_size_in_inStream_V_id_V);
		sprintf(wrapc_stream_size_in_inStream_V_id_V, "%d\n", aesl_tmp_1 - aesl_tmp_2);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_inStream_V_id_V, wrapc_stream_size_in_inStream_V_id_V);
		sprintf(wrapc_stream_size_in_inStream_V_id_V, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_inStream_V_id_V, wrapc_stream_size_in_inStream_V_id_V);

		// [[transaction]]
		sprintf(tvin_inStream_V_dest_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_inStream_V_dest_V, tvin_inStream_V_dest_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_dest_V, tvin_inStream_V_dest_V);

		sc_bv<6>* inStream_V_dest_V_tvin_wrapc_buffer = new sc_bv<6>[aesl_tmp_1 - aesl_tmp_2];

		// RTL Name: inStream_V_dest_V
		{
			// bitslice(5, 0)
			{
				int hls_map_index = 0;
				// celement: inStream.V.dest.V(5, 0)
				{
					// carray: (0) => (aesl_tmp_1 - aesl_tmp_2 - 1) @ (1)
					for (int i_0 = 0; i_0 <= aesl_tmp_1 - aesl_tmp_2 - 1; i_0 += 1)
					{
						// carray: (0) => (0) @ (1)
						for (int i_1 = 0; i_1 <= 0; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : aesl_tmp_0[i_0].dest
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : aesl_tmp_0[0].dest
							// regulate_c_name       : inStream_V_dest_V
							// input_type_conversion : (aesl_tmp_0[i_0].dest).to_string(2).c_str()
							if (&(aesl_tmp_0[0].dest) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<6> inStream_V_dest_V_tmp_mem;
								inStream_V_dest_V_tmp_mem = (aesl_tmp_0[i_0].dest).to_string(2).c_str();
								inStream_V_dest_V_tvin_wrapc_buffer[hls_map_index].range(5, 0) = inStream_V_dest_V_tmp_mem.range(5, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < aesl_tmp_1 - aesl_tmp_2; i++)
		{
			sprintf(tvin_inStream_V_dest_V, "%s\n", (inStream_V_dest_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_inStream_V_dest_V, tvin_inStream_V_dest_V);
		}

		// dump stream ingress status to file
     if (aesl_tmp_1 > aesl_tmp_2)
     {
		sc_int<32> stream_ingress_size_inStream_V_dest_V = aesl_tmp_1;
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_dest_V, stream_ingress_size_inStream_V_dest_V.to_string().c_str());
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_dest_V, "\n");

		for (int i = 0; i < aesl_tmp_1 - aesl_tmp_2; i++)
		{
			stream_ingress_size_inStream_V_dest_V--;
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_dest_V, stream_ingress_size_inStream_V_dest_V.to_string().c_str());
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_dest_V, "\n");
		}
     }
     else {
		    sc_int<32> stream_ingress_size_inStream_V_dest_V = 0;
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_dest_V, stream_ingress_size_inStream_V_dest_V.to_string().c_str());
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_dest_V, "\n");
     }

		tcl_file.set_num(aesl_tmp_1 - aesl_tmp_2, &tcl_file.inStream_V_dest_V_depth);
		sprintf(tvin_inStream_V_dest_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_inStream_V_dest_V, tvin_inStream_V_dest_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_dest_V, tvin_inStream_V_dest_V);

		// release memory allocation
		delete [] inStream_V_dest_V_tvin_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_in_inStream_V_dest_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_inStream_V_dest_V, wrapc_stream_size_in_inStream_V_dest_V);
		sprintf(wrapc_stream_size_in_inStream_V_dest_V, "%d\n", aesl_tmp_1 - aesl_tmp_2);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_inStream_V_dest_V, wrapc_stream_size_in_inStream_V_dest_V);
		sprintf(wrapc_stream_size_in_inStream_V_dest_V, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_inStream_V_dest_V, wrapc_stream_size_in_inStream_V_dest_V);

		// [[transaction]]
		sprintf(tvout_outStream_V_data_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_outStream_V_data_V, tvout_outStream_V_data_V);

		sc_bv<8>* outStream_V_data_V_tvout_wrapc_buffer = new sc_bv<8>[aesl_tmp_4 - aesl_tmp_5];

		// RTL Name: outStream_V_data_V
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: outStream.V.data.V(7, 0)
				{
					// carray: (aesl_tmp_5) => (aesl_tmp_4 - 1) @ (1)
					for (int i_0 = aesl_tmp_5; i_0 <= aesl_tmp_4 - 1; i_0 += 1)
					{
						// carray: (0) => (0) @ (1)
						for (int i_1 = 0; i_1 <= 0; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : aesl_tmp_3[i_0].data
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : aesl_tmp_3[0].data
							// regulate_c_name       : outStream_V_data_V
							// input_type_conversion : (aesl_tmp_3[i_0].data).to_string(2).c_str()
							if (&(aesl_tmp_3[0].data) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<8> outStream_V_data_V_tmp_mem;
								outStream_V_data_V_tmp_mem = (aesl_tmp_3[i_0].data).to_string(2).c_str();
								outStream_V_data_V_tvout_wrapc_buffer[hls_map_index].range(7, 0) = outStream_V_data_V_tmp_mem.range(7, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < aesl_tmp_4 - aesl_tmp_5; i++)
		{
			sprintf(tvout_outStream_V_data_V, "%s\n", (outStream_V_data_V_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_outStream_V_data_V, tvout_outStream_V_data_V);
		}

		tcl_file.set_num(aesl_tmp_4 - aesl_tmp_5, &tcl_file.outStream_V_data_V_depth);
		sprintf(tvout_outStream_V_data_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_outStream_V_data_V, tvout_outStream_V_data_V);

		// release memory allocation
		delete [] outStream_V_data_V_tvout_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_out_outStream_V_data_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_outStream_V_data_V, wrapc_stream_size_out_outStream_V_data_V);
		sprintf(wrapc_stream_size_out_outStream_V_data_V, "%d\n", aesl_tmp_4 - aesl_tmp_5);
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_outStream_V_data_V, wrapc_stream_size_out_outStream_V_data_V);
		sprintf(wrapc_stream_size_out_outStream_V_data_V, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_outStream_V_data_V, wrapc_stream_size_out_outStream_V_data_V);

		// [[transaction]]
		sprintf(tvout_outStream_V_keep_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_outStream_V_keep_V, tvout_outStream_V_keep_V);

		sc_bv<1>* outStream_V_keep_V_tvout_wrapc_buffer = new sc_bv<1>[aesl_tmp_4 - aesl_tmp_5];

		// RTL Name: outStream_V_keep_V
		{
			// bitslice(0, 0)
			{
				int hls_map_index = 0;
				// celement: outStream.V.keep.V(0, 0)
				{
					// carray: (aesl_tmp_5) => (aesl_tmp_4 - 1) @ (1)
					for (int i_0 = aesl_tmp_5; i_0 <= aesl_tmp_4 - 1; i_0 += 1)
					{
						// carray: (0) => (0) @ (1)
						for (int i_1 = 0; i_1 <= 0; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : aesl_tmp_3[i_0].keep
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : aesl_tmp_3[0].keep
							// regulate_c_name       : outStream_V_keep_V
							// input_type_conversion : (aesl_tmp_3[i_0].keep).to_string(2).c_str()
							if (&(aesl_tmp_3[0].keep) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<1> outStream_V_keep_V_tmp_mem;
								outStream_V_keep_V_tmp_mem = (aesl_tmp_3[i_0].keep).to_string(2).c_str();
								outStream_V_keep_V_tvout_wrapc_buffer[hls_map_index].range(0, 0) = outStream_V_keep_V_tmp_mem.range(0, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < aesl_tmp_4 - aesl_tmp_5; i++)
		{
			sprintf(tvout_outStream_V_keep_V, "%s\n", (outStream_V_keep_V_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_outStream_V_keep_V, tvout_outStream_V_keep_V);
		}

		tcl_file.set_num(aesl_tmp_4 - aesl_tmp_5, &tcl_file.outStream_V_keep_V_depth);
		sprintf(tvout_outStream_V_keep_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_outStream_V_keep_V, tvout_outStream_V_keep_V);

		// release memory allocation
		delete [] outStream_V_keep_V_tvout_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_out_outStream_V_keep_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_outStream_V_keep_V, wrapc_stream_size_out_outStream_V_keep_V);
		sprintf(wrapc_stream_size_out_outStream_V_keep_V, "%d\n", aesl_tmp_4 - aesl_tmp_5);
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_outStream_V_keep_V, wrapc_stream_size_out_outStream_V_keep_V);
		sprintf(wrapc_stream_size_out_outStream_V_keep_V, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_outStream_V_keep_V, wrapc_stream_size_out_outStream_V_keep_V);

		// [[transaction]]
		sprintf(tvout_outStream_V_strb_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_outStream_V_strb_V, tvout_outStream_V_strb_V);

		sc_bv<1>* outStream_V_strb_V_tvout_wrapc_buffer = new sc_bv<1>[aesl_tmp_4 - aesl_tmp_5];

		// RTL Name: outStream_V_strb_V
		{
			// bitslice(0, 0)
			{
				int hls_map_index = 0;
				// celement: outStream.V.strb.V(0, 0)
				{
					// carray: (aesl_tmp_5) => (aesl_tmp_4 - 1) @ (1)
					for (int i_0 = aesl_tmp_5; i_0 <= aesl_tmp_4 - 1; i_0 += 1)
					{
						// carray: (0) => (0) @ (1)
						for (int i_1 = 0; i_1 <= 0; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : aesl_tmp_3[i_0].strb
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : aesl_tmp_3[0].strb
							// regulate_c_name       : outStream_V_strb_V
							// input_type_conversion : (aesl_tmp_3[i_0].strb).to_string(2).c_str()
							if (&(aesl_tmp_3[0].strb) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<1> outStream_V_strb_V_tmp_mem;
								outStream_V_strb_V_tmp_mem = (aesl_tmp_3[i_0].strb).to_string(2).c_str();
								outStream_V_strb_V_tvout_wrapc_buffer[hls_map_index].range(0, 0) = outStream_V_strb_V_tmp_mem.range(0, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < aesl_tmp_4 - aesl_tmp_5; i++)
		{
			sprintf(tvout_outStream_V_strb_V, "%s\n", (outStream_V_strb_V_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_outStream_V_strb_V, tvout_outStream_V_strb_V);
		}

		tcl_file.set_num(aesl_tmp_4 - aesl_tmp_5, &tcl_file.outStream_V_strb_V_depth);
		sprintf(tvout_outStream_V_strb_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_outStream_V_strb_V, tvout_outStream_V_strb_V);

		// release memory allocation
		delete [] outStream_V_strb_V_tvout_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_out_outStream_V_strb_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_outStream_V_strb_V, wrapc_stream_size_out_outStream_V_strb_V);
		sprintf(wrapc_stream_size_out_outStream_V_strb_V, "%d\n", aesl_tmp_4 - aesl_tmp_5);
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_outStream_V_strb_V, wrapc_stream_size_out_outStream_V_strb_V);
		sprintf(wrapc_stream_size_out_outStream_V_strb_V, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_outStream_V_strb_V, wrapc_stream_size_out_outStream_V_strb_V);

		// [[transaction]]
		sprintf(tvout_outStream_V_user_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_outStream_V_user_V, tvout_outStream_V_user_V);

		sc_bv<2>* outStream_V_user_V_tvout_wrapc_buffer = new sc_bv<2>[aesl_tmp_4 - aesl_tmp_5];

		// RTL Name: outStream_V_user_V
		{
			// bitslice(1, 0)
			{
				int hls_map_index = 0;
				// celement: outStream.V.user.V(1, 0)
				{
					// carray: (aesl_tmp_5) => (aesl_tmp_4 - 1) @ (1)
					for (int i_0 = aesl_tmp_5; i_0 <= aesl_tmp_4 - 1; i_0 += 1)
					{
						// carray: (0) => (0) @ (1)
						for (int i_1 = 0; i_1 <= 0; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : aesl_tmp_3[i_0].user
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : aesl_tmp_3[0].user
							// regulate_c_name       : outStream_V_user_V
							// input_type_conversion : (aesl_tmp_3[i_0].user).to_string(2).c_str()
							if (&(aesl_tmp_3[0].user) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<2> outStream_V_user_V_tmp_mem;
								outStream_V_user_V_tmp_mem = (aesl_tmp_3[i_0].user).to_string(2).c_str();
								outStream_V_user_V_tvout_wrapc_buffer[hls_map_index].range(1, 0) = outStream_V_user_V_tmp_mem.range(1, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < aesl_tmp_4 - aesl_tmp_5; i++)
		{
			sprintf(tvout_outStream_V_user_V, "%s\n", (outStream_V_user_V_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_outStream_V_user_V, tvout_outStream_V_user_V);
		}

		tcl_file.set_num(aesl_tmp_4 - aesl_tmp_5, &tcl_file.outStream_V_user_V_depth);
		sprintf(tvout_outStream_V_user_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_outStream_V_user_V, tvout_outStream_V_user_V);

		// release memory allocation
		delete [] outStream_V_user_V_tvout_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_out_outStream_V_user_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_outStream_V_user_V, wrapc_stream_size_out_outStream_V_user_V);
		sprintf(wrapc_stream_size_out_outStream_V_user_V, "%d\n", aesl_tmp_4 - aesl_tmp_5);
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_outStream_V_user_V, wrapc_stream_size_out_outStream_V_user_V);
		sprintf(wrapc_stream_size_out_outStream_V_user_V, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_outStream_V_user_V, wrapc_stream_size_out_outStream_V_user_V);

		// [[transaction]]
		sprintf(tvout_outStream_V_last_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_outStream_V_last_V, tvout_outStream_V_last_V);

		sc_bv<1>* outStream_V_last_V_tvout_wrapc_buffer = new sc_bv<1>[aesl_tmp_4 - aesl_tmp_5];

		// RTL Name: outStream_V_last_V
		{
			// bitslice(0, 0)
			{
				int hls_map_index = 0;
				// celement: outStream.V.last.V(0, 0)
				{
					// carray: (aesl_tmp_5) => (aesl_tmp_4 - 1) @ (1)
					for (int i_0 = aesl_tmp_5; i_0 <= aesl_tmp_4 - 1; i_0 += 1)
					{
						// carray: (0) => (0) @ (1)
						for (int i_1 = 0; i_1 <= 0; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : aesl_tmp_3[i_0].last
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : aesl_tmp_3[0].last
							// regulate_c_name       : outStream_V_last_V
							// input_type_conversion : (aesl_tmp_3[i_0].last).to_string(2).c_str()
							if (&(aesl_tmp_3[0].last) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<1> outStream_V_last_V_tmp_mem;
								outStream_V_last_V_tmp_mem = (aesl_tmp_3[i_0].last).to_string(2).c_str();
								outStream_V_last_V_tvout_wrapc_buffer[hls_map_index].range(0, 0) = outStream_V_last_V_tmp_mem.range(0, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < aesl_tmp_4 - aesl_tmp_5; i++)
		{
			sprintf(tvout_outStream_V_last_V, "%s\n", (outStream_V_last_V_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_outStream_V_last_V, tvout_outStream_V_last_V);
		}

		tcl_file.set_num(aesl_tmp_4 - aesl_tmp_5, &tcl_file.outStream_V_last_V_depth);
		sprintf(tvout_outStream_V_last_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_outStream_V_last_V, tvout_outStream_V_last_V);

		// release memory allocation
		delete [] outStream_V_last_V_tvout_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_out_outStream_V_last_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_outStream_V_last_V, wrapc_stream_size_out_outStream_V_last_V);
		sprintf(wrapc_stream_size_out_outStream_V_last_V, "%d\n", aesl_tmp_4 - aesl_tmp_5);
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_outStream_V_last_V, wrapc_stream_size_out_outStream_V_last_V);
		sprintf(wrapc_stream_size_out_outStream_V_last_V, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_outStream_V_last_V, wrapc_stream_size_out_outStream_V_last_V);

		// [[transaction]]
		sprintf(tvout_outStream_V_id_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_outStream_V_id_V, tvout_outStream_V_id_V);

		sc_bv<5>* outStream_V_id_V_tvout_wrapc_buffer = new sc_bv<5>[aesl_tmp_4 - aesl_tmp_5];

		// RTL Name: outStream_V_id_V
		{
			// bitslice(4, 0)
			{
				int hls_map_index = 0;
				// celement: outStream.V.id.V(4, 0)
				{
					// carray: (aesl_tmp_5) => (aesl_tmp_4 - 1) @ (1)
					for (int i_0 = aesl_tmp_5; i_0 <= aesl_tmp_4 - 1; i_0 += 1)
					{
						// carray: (0) => (0) @ (1)
						for (int i_1 = 0; i_1 <= 0; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : aesl_tmp_3[i_0].id
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : aesl_tmp_3[0].id
							// regulate_c_name       : outStream_V_id_V
							// input_type_conversion : (aesl_tmp_3[i_0].id).to_string(2).c_str()
							if (&(aesl_tmp_3[0].id) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<5> outStream_V_id_V_tmp_mem;
								outStream_V_id_V_tmp_mem = (aesl_tmp_3[i_0].id).to_string(2).c_str();
								outStream_V_id_V_tvout_wrapc_buffer[hls_map_index].range(4, 0) = outStream_V_id_V_tmp_mem.range(4, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < aesl_tmp_4 - aesl_tmp_5; i++)
		{
			sprintf(tvout_outStream_V_id_V, "%s\n", (outStream_V_id_V_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_outStream_V_id_V, tvout_outStream_V_id_V);
		}

		tcl_file.set_num(aesl_tmp_4 - aesl_tmp_5, &tcl_file.outStream_V_id_V_depth);
		sprintf(tvout_outStream_V_id_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_outStream_V_id_V, tvout_outStream_V_id_V);

		// release memory allocation
		delete [] outStream_V_id_V_tvout_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_out_outStream_V_id_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_outStream_V_id_V, wrapc_stream_size_out_outStream_V_id_V);
		sprintf(wrapc_stream_size_out_outStream_V_id_V, "%d\n", aesl_tmp_4 - aesl_tmp_5);
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_outStream_V_id_V, wrapc_stream_size_out_outStream_V_id_V);
		sprintf(wrapc_stream_size_out_outStream_V_id_V, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_outStream_V_id_V, wrapc_stream_size_out_outStream_V_id_V);

		// [[transaction]]
		sprintf(tvout_outStream_V_dest_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_outStream_V_dest_V, tvout_outStream_V_dest_V);

		sc_bv<6>* outStream_V_dest_V_tvout_wrapc_buffer = new sc_bv<6>[aesl_tmp_4 - aesl_tmp_5];

		// RTL Name: outStream_V_dest_V
		{
			// bitslice(5, 0)
			{
				int hls_map_index = 0;
				// celement: outStream.V.dest.V(5, 0)
				{
					// carray: (aesl_tmp_5) => (aesl_tmp_4 - 1) @ (1)
					for (int i_0 = aesl_tmp_5; i_0 <= aesl_tmp_4 - 1; i_0 += 1)
					{
						// carray: (0) => (0) @ (1)
						for (int i_1 = 0; i_1 <= 0; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : aesl_tmp_3[i_0].dest
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : aesl_tmp_3[0].dest
							// regulate_c_name       : outStream_V_dest_V
							// input_type_conversion : (aesl_tmp_3[i_0].dest).to_string(2).c_str()
							if (&(aesl_tmp_3[0].dest) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<6> outStream_V_dest_V_tmp_mem;
								outStream_V_dest_V_tmp_mem = (aesl_tmp_3[i_0].dest).to_string(2).c_str();
								outStream_V_dest_V_tvout_wrapc_buffer[hls_map_index].range(5, 0) = outStream_V_dest_V_tmp_mem.range(5, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < aesl_tmp_4 - aesl_tmp_5; i++)
		{
			sprintf(tvout_outStream_V_dest_V, "%s\n", (outStream_V_dest_V_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_outStream_V_dest_V, tvout_outStream_V_dest_V);
		}

		tcl_file.set_num(aesl_tmp_4 - aesl_tmp_5, &tcl_file.outStream_V_dest_V_depth);
		sprintf(tvout_outStream_V_dest_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_outStream_V_dest_V, tvout_outStream_V_dest_V);

		// release memory allocation
		delete [] outStream_V_dest_V_tvout_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_out_outStream_V_dest_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_outStream_V_dest_V, wrapc_stream_size_out_outStream_V_dest_V);
		sprintf(wrapc_stream_size_out_outStream_V_dest_V, "%d\n", aesl_tmp_4 - aesl_tmp_5);
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_outStream_V_dest_V, wrapc_stream_size_out_outStream_V_dest_V);
		sprintf(wrapc_stream_size_out_outStream_V_dest_V, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_outStream_V_dest_V, wrapc_stream_size_out_outStream_V_dest_V);

		// push back output stream: "outStream"
		for (int i = 0; i < aesl_tmp_4; i++)
		{
			outStream.write(aesl_tmp_3[i]);
		}

		CodeState = DELETE_CHAR_BUFFERS;
		// release memory allocation: "inStream_V_data_V"
		delete [] tvin_inStream_V_data_V;
		delete [] wrapc_stream_size_in_inStream_V_data_V;
		// release memory allocation: "inStream_V_keep_V"
		delete [] tvin_inStream_V_keep_V;
		delete [] wrapc_stream_size_in_inStream_V_keep_V;
		// release memory allocation: "inStream_V_strb_V"
		delete [] tvin_inStream_V_strb_V;
		delete [] wrapc_stream_size_in_inStream_V_strb_V;
		// release memory allocation: "inStream_V_user_V"
		delete [] tvin_inStream_V_user_V;
		delete [] wrapc_stream_size_in_inStream_V_user_V;
		// release memory allocation: "inStream_V_last_V"
		delete [] tvin_inStream_V_last_V;
		delete [] wrapc_stream_size_in_inStream_V_last_V;
		// release memory allocation: "inStream_V_id_V"
		delete [] tvin_inStream_V_id_V;
		delete [] wrapc_stream_size_in_inStream_V_id_V;
		// release memory allocation: "inStream_V_dest_V"
		delete [] tvin_inStream_V_dest_V;
		delete [] wrapc_stream_size_in_inStream_V_dest_V;
		// release memory allocation: "outStream_V_data_V"
		delete [] tvout_outStream_V_data_V;
		delete [] tvin_outStream_V_data_V;
		delete [] wrapc_stream_size_out_outStream_V_data_V;
		// release memory allocation: "outStream_V_keep_V"
		delete [] tvout_outStream_V_keep_V;
		delete [] tvin_outStream_V_keep_V;
		delete [] wrapc_stream_size_out_outStream_V_keep_V;
		// release memory allocation: "outStream_V_strb_V"
		delete [] tvout_outStream_V_strb_V;
		delete [] tvin_outStream_V_strb_V;
		delete [] wrapc_stream_size_out_outStream_V_strb_V;
		// release memory allocation: "outStream_V_user_V"
		delete [] tvout_outStream_V_user_V;
		delete [] tvin_outStream_V_user_V;
		delete [] wrapc_stream_size_out_outStream_V_user_V;
		// release memory allocation: "outStream_V_last_V"
		delete [] tvout_outStream_V_last_V;
		delete [] tvin_outStream_V_last_V;
		delete [] wrapc_stream_size_out_outStream_V_last_V;
		// release memory allocation: "outStream_V_id_V"
		delete [] tvout_outStream_V_id_V;
		delete [] tvin_outStream_V_id_V;
		delete [] wrapc_stream_size_out_outStream_V_id_V;
		// release memory allocation: "outStream_V_dest_V"
		delete [] tvout_outStream_V_dest_V;
		delete [] tvin_outStream_V_dest_V;
		delete [] wrapc_stream_size_out_outStream_V_dest_V;
		// release memory allocation: "xMin"
		delete [] tvin_xMin;
		// release memory allocation: "xMax"
		delete [] tvin_xMax;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
	}
}

