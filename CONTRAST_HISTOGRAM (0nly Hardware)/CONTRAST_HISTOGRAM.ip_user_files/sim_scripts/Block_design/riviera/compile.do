vlib work
vlib riviera

vlib riviera/xilinx_vip
vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_4
vlib riviera/processing_system7_vip_v1_0_6
vlib riviera/xbip_utils_v3_0_9
vlib riviera/axi_utils_v2_0_5
vlib riviera/xbip_pipe_v3_0_5
vlib riviera/xbip_dsp48_wrapper_v3_0_4
vlib riviera/xbip_dsp48_addsub_v3_0_5
vlib riviera/xbip_dsp48_multadd_v3_0_5
vlib riviera/xbip_bram18k_v3_0_5
vlib riviera/mult_gen_v12_0_14
vlib riviera/floating_point_v7_1_7
vlib riviera/lib_pkg_v1_0_2
vlib riviera/fifo_generator_v13_2_3
vlib riviera/lib_fifo_v1_0_12
vlib riviera/lib_srl_fifo_v1_0_2
vlib riviera/lib_cdc_v1_0_2
vlib riviera/axi_datamover_v5_1_20
vlib riviera/axi_sg_v4_1_11
vlib riviera/axi_dma_v7_1_19
vlib riviera/xlconstant_v1_1_5
vlib riviera/proc_sys_reset_v5_0_13
vlib riviera/smartconnect_v1_0
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/axi_register_slice_v2_1_18
vlib riviera/axi_data_fifo_v2_1_17
vlib riviera/axi_crossbar_v2_1_19
vlib riviera/axi_protocol_converter_v2_1_18
vlib riviera/axis_infrastructure_v1_1_0
vlib riviera/axis_broadcaster_v1_1_17
vlib riviera/blk_mem_gen_v8_4_2
vlib riviera/blk_mem_gen_v8_3_6
vlib riviera/axi_bram_ctrl_v4_1_0
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/axi_timer_v2_0_20

vmap xilinx_vip riviera/xilinx_vip
vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_4 riviera/axi_vip_v1_1_4
vmap processing_system7_vip_v1_0_6 riviera/processing_system7_vip_v1_0_6
vmap xbip_utils_v3_0_9 riviera/xbip_utils_v3_0_9
vmap axi_utils_v2_0_5 riviera/axi_utils_v2_0_5
vmap xbip_pipe_v3_0_5 riviera/xbip_pipe_v3_0_5
vmap xbip_dsp48_wrapper_v3_0_4 riviera/xbip_dsp48_wrapper_v3_0_4
vmap xbip_dsp48_addsub_v3_0_5 riviera/xbip_dsp48_addsub_v3_0_5
vmap xbip_dsp48_multadd_v3_0_5 riviera/xbip_dsp48_multadd_v3_0_5
vmap xbip_bram18k_v3_0_5 riviera/xbip_bram18k_v3_0_5
vmap mult_gen_v12_0_14 riviera/mult_gen_v12_0_14
vmap floating_point_v7_1_7 riviera/floating_point_v7_1_7
vmap lib_pkg_v1_0_2 riviera/lib_pkg_v1_0_2
vmap fifo_generator_v13_2_3 riviera/fifo_generator_v13_2_3
vmap lib_fifo_v1_0_12 riviera/lib_fifo_v1_0_12
vmap lib_srl_fifo_v1_0_2 riviera/lib_srl_fifo_v1_0_2
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap axi_datamover_v5_1_20 riviera/axi_datamover_v5_1_20
vmap axi_sg_v4_1_11 riviera/axi_sg_v4_1_11
vmap axi_dma_v7_1_19 riviera/axi_dma_v7_1_19
vmap xlconstant_v1_1_5 riviera/xlconstant_v1_1_5
vmap proc_sys_reset_v5_0_13 riviera/proc_sys_reset_v5_0_13
vmap smartconnect_v1_0 riviera/smartconnect_v1_0
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_18 riviera/axi_register_slice_v2_1_18
vmap axi_data_fifo_v2_1_17 riviera/axi_data_fifo_v2_1_17
vmap axi_crossbar_v2_1_19 riviera/axi_crossbar_v2_1_19
vmap axi_protocol_converter_v2_1_18 riviera/axi_protocol_converter_v2_1_18
vmap axis_infrastructure_v1_1_0 riviera/axis_infrastructure_v1_1_0
vmap axis_broadcaster_v1_1_17 riviera/axis_broadcaster_v1_1_17
vmap blk_mem_gen_v8_4_2 riviera/blk_mem_gen_v8_4_2
vmap blk_mem_gen_v8_3_6 riviera/blk_mem_gen_v8_3_6
vmap axi_bram_ctrl_v4_1_0 riviera/axi_bram_ctrl_v4_1_0
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap axi_timer_v2_0_20 riviera/axi_timer_v2_0_20

vlog -work xilinx_vip  -sv2k12 "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/ec67/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/70cf/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/979d/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/b2d0/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/8713/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ip/Block_design_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/ec67/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/70cf/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/979d/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/b2d0/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/8713/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ip/Block_design_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_4  -sv2k12 "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/ec67/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/70cf/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/979d/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/b2d0/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/8713/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ip/Block_design_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/98af/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_6  -sv2k12 "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/ec67/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/70cf/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/979d/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/b2d0/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/8713/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ip/Block_design_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/70cf/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/ec67/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/70cf/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/979d/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/b2d0/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/8713/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ip/Block_design_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/Block_design/ip/Block_design_processing_system7_0_0/sim/Block_design_processing_system7_0_0.v" \
"../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/f077/hdl/verilog/doHist_CTRL_BUS_s_axi.v" \
"../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/f077/hdl/verilog/doHist.v" \
"../../../bd/Block_design/ip/Block_design_doHist_0_0/sim/Block_design_doHist_0_0.v" \

vcom -work xbip_utils_v3_0_9 -93 \
"../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/0da8/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_5 -93 \
"../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/ec8e/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_5 -93 \
"../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/442e/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -93 \
"../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/cdbf/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_5 -93 \
"../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/a04b/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_multadd_v3_0_5 -93 \
"../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/b226/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_5 -93 \
"../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/c08f/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_14 -93 \
"../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/6bb5/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work floating_point_v7_1_7 -93 \
"../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/c63e/hdl/floating_point_v7_1_vh_rfs.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/ec67/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/70cf/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/979d/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/b2d0/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/8713/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ip/Block_design_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/615a/hdl/verilog/doHistStrech_CRTL_BUS_s_axi.v" \
"../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/615a/hdl/verilog/doHistStrech_fdivcud.v" \
"../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/615a/hdl/verilog/doHistStrech_fmulbkb.v" \
"../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/615a/hdl/verilog/doHistStrech_sitodEe.v" \
"../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/615a/hdl/verilog/doHistStrech.v" \

vcom -work xil_defaultlib -93 \
"../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/615a/hdl/ip/doHistStrech_ap_fdiv_14_no_dsp_32.vhd" \
"../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/615a/hdl/ip/doHistStrech_ap_fmul_2_max_dsp_32.vhd" \
"../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/615a/hdl/ip/doHistStrech_ap_sitofp_4_no_dsp_32.vhd" \
"../../../bd/Block_design/ip/Block_design_doHistStrech_0_0/sim/Block_design_doHistStrech_0_0.vhd" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_3  -v2k5 "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/ec67/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/70cf/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/979d/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/b2d0/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/8713/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ip/Block_design_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/64f4/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_3 -93 \
"../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_3  -v2k5 "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/ec67/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/70cf/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/979d/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/b2d0/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/8713/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ip/Block_design_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_12 -93 \
"../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/544a/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93 \
"../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_20 -93 \
"../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/dfb3/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_11 -93 \
"../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/efa7/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_dma_v7_1_19 -93 \
"../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/09b0/hdl/axi_dma_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/Block_design/ip/Block_design_axi_dma_0_0/sim/Block_design_axi_dma_0_0.vhd" \

vlog -work xlconstant_v1_1_5  -v2k5 "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/ec67/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/70cf/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/979d/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/b2d0/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/8713/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ip/Block_design_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/4649/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/ec67/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/70cf/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/979d/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/b2d0/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/8713/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ip/Block_design_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/Block_design/ip/Block_design_axi_smc_0/bd_0/ip/ip_0/sim/bd_aa4b_one_0.v" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/Block_design/ip/Block_design_axi_smc_0/bd_0/ip/ip_1/sim/bd_aa4b_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/ec67/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/70cf/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/979d/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/b2d0/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/8713/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ip/Block_design_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/979d/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/c012/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/ec67/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/70cf/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/979d/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/b2d0/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/8713/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ip/Block_design_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/Block_design/ip/Block_design_axi_smc_0/bd_0/ip/ip_2/sim/bd_aa4b_arsw_0.sv" \
"../../../bd/Block_design/ip/Block_design_axi_smc_0/bd_0/ip/ip_3/sim/bd_aa4b_rsw_0.sv" \
"../../../bd/Block_design/ip/Block_design_axi_smc_0/bd_0/ip/ip_4/sim/bd_aa4b_awsw_0.sv" \
"../../../bd/Block_design/ip/Block_design_axi_smc_0/bd_0/ip/ip_5/sim/bd_aa4b_wsw_0.sv" \
"../../../bd/Block_design/ip/Block_design_axi_smc_0/bd_0/ip/ip_6/sim/bd_aa4b_bsw_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/ec67/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/70cf/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/979d/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/b2d0/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/8713/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ip/Block_design_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/f85e/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/ec67/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/70cf/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/979d/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/b2d0/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/8713/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ip/Block_design_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/Block_design/ip/Block_design_axi_smc_0/bd_0/ip/ip_7/sim/bd_aa4b_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/ec67/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/70cf/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/979d/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/b2d0/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/8713/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ip/Block_design_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/ca72/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/ec67/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/70cf/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/979d/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/b2d0/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/8713/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ip/Block_design_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/Block_design/ip/Block_design_axi_smc_0/bd_0/ip/ip_8/sim/bd_aa4b_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/ec67/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/70cf/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/979d/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/b2d0/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/8713/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ip/Block_design_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/9ade/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/ec67/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/70cf/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/979d/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/b2d0/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/8713/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ip/Block_design_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/Block_design/ip/Block_design_axi_smc_0/bd_0/ip/ip_9/sim/bd_aa4b_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/ec67/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/70cf/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/979d/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/b2d0/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/8713/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ip/Block_design_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/b89e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/ec67/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/70cf/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/979d/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/b2d0/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/8713/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ip/Block_design_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/Block_design/ip/Block_design_axi_smc_0/bd_0/ip/ip_10/sim/bd_aa4b_s00a2s_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/ec67/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/70cf/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/979d/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/b2d0/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/8713/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ip/Block_design_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/b2d0/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/ec67/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/70cf/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/979d/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/b2d0/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/8713/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ip/Block_design_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/Block_design/ip/Block_design_axi_smc_0/bd_0/ip/ip_11/sim/bd_aa4b_sarn_0.sv" \
"../../../bd/Block_design/ip/Block_design_axi_smc_0/bd_0/ip/ip_12/sim/bd_aa4b_srn_0.sv" \
"../../../bd/Block_design/ip/Block_design_axi_smc_0/bd_0/ip/ip_13/sim/bd_aa4b_s01mmu_0.sv" \
"../../../bd/Block_design/ip/Block_design_axi_smc_0/bd_0/ip/ip_14/sim/bd_aa4b_s01tr_0.sv" \
"../../../bd/Block_design/ip/Block_design_axi_smc_0/bd_0/ip/ip_15/sim/bd_aa4b_s01sic_0.sv" \
"../../../bd/Block_design/ip/Block_design_axi_smc_0/bd_0/ip/ip_16/sim/bd_aa4b_s01a2s_0.sv" \
"../../../bd/Block_design/ip/Block_design_axi_smc_0/bd_0/ip/ip_17/sim/bd_aa4b_sawn_0.sv" \
"../../../bd/Block_design/ip/Block_design_axi_smc_0/bd_0/ip/ip_18/sim/bd_aa4b_swn_0.sv" \
"../../../bd/Block_design/ip/Block_design_axi_smc_0/bd_0/ip/ip_19/sim/bd_aa4b_sbn_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/ec67/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/70cf/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/979d/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/b2d0/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/8713/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ip/Block_design_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/7005/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/ec67/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/70cf/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/979d/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/b2d0/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/8713/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ip/Block_design_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/Block_design/ip/Block_design_axi_smc_0/bd_0/ip/ip_20/sim/bd_aa4b_m00s2a_0.sv" \
"../../../bd/Block_design/ip/Block_design_axi_smc_0/bd_0/ip/ip_21/sim/bd_aa4b_m00arn_0.sv" \
"../../../bd/Block_design/ip/Block_design_axi_smc_0/bd_0/ip/ip_22/sim/bd_aa4b_m00rn_0.sv" \
"../../../bd/Block_design/ip/Block_design_axi_smc_0/bd_0/ip/ip_23/sim/bd_aa4b_m00awn_0.sv" \
"../../../bd/Block_design/ip/Block_design_axi_smc_0/bd_0/ip/ip_24/sim/bd_aa4b_m00wn_0.sv" \
"../../../bd/Block_design/ip/Block_design_axi_smc_0/bd_0/ip/ip_25/sim/bd_aa4b_m00bn_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/ec67/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/70cf/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/979d/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/b2d0/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/8713/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ip/Block_design_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/b387/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/ec67/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/70cf/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/979d/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/b2d0/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/8713/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ip/Block_design_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/Block_design/ip/Block_design_axi_smc_0/bd_0/ip/ip_26/sim/bd_aa4b_m00e_0.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/ec67/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/70cf/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/979d/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/b2d0/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/8713/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ip/Block_design_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/Block_design/ip/Block_design_axi_smc_0/bd_0/sim/bd_aa4b.v" \
"../../../bd/Block_design/ip/Block_design_axi_smc_0/sim/Block_design_axi_smc_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/Block_design/ip/Block_design_rst_ps7_0_100M_0/sim/Block_design_rst_ps7_0_100M_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/ec67/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/70cf/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/979d/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/b2d0/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/8713/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ip/Block_design_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_18  -v2k5 "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/ec67/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/70cf/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/979d/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/b2d0/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/8713/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ip/Block_design_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/cc23/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_17  -v2k5 "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/ec67/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/70cf/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/979d/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/b2d0/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/8713/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ip/Block_design_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/c4fd/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_19  -v2k5 "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/ec67/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/70cf/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/979d/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/b2d0/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/8713/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ip/Block_design_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/6c9d/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/ec67/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/70cf/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/979d/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/b2d0/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/8713/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ip/Block_design_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/Block_design/ip/Block_design_xbar_0/sim/Block_design_xbar_0.v" \

vlog -work axi_protocol_converter_v2_1_18  -v2k5 "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/ec67/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/70cf/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/979d/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/b2d0/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/8713/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ip/Block_design_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/7a04/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/ec67/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/70cf/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/979d/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/b2d0/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/8713/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ip/Block_design_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/Block_design/ip/Block_design_auto_pc_4/sim/Block_design_auto_pc_4.v" \
"../../../bd/Block_design/ip/Block_design_auto_pc_0/sim/Block_design_auto_pc_0.v" \
"../../../bd/Block_design/ip/Block_design_auto_pc_1/sim/Block_design_auto_pc_1.v" \
"../../../bd/Block_design/ip/Block_design_auto_pc_2/sim/Block_design_auto_pc_2.v" \
"../../../bd/Block_design/ip/Block_design_auto_pc_3/sim/Block_design_auto_pc_3.v" \

vlog -work axis_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/ec67/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/70cf/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/979d/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/b2d0/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/8713/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ip/Block_design_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/8713/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/ec67/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/70cf/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/979d/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/b2d0/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/8713/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ip/Block_design_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/Block_design/ip/Block_design_axis_broadcaster_0_0/hdl/tdata_Block_design_axis_broadcaster_0_0.v" \
"../../../bd/Block_design/ip/Block_design_axis_broadcaster_0_0/hdl/tuser_Block_design_axis_broadcaster_0_0.v" \

vlog -work axis_broadcaster_v1_1_17  -v2k5 "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/ec67/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/70cf/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/979d/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/b2d0/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/8713/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ip/Block_design_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/52f6/hdl/axis_broadcaster_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/ec67/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/70cf/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/979d/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/b2d0/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/8713/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ip/Block_design_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/Block_design/ip/Block_design_axis_broadcaster_0_0/hdl/top_Block_design_axis_broadcaster_0_0.v" \
"../../../bd/Block_design/ip/Block_design_axis_broadcaster_0_0/sim/Block_design_axis_broadcaster_0_0.v" \

vlog -work blk_mem_gen_v8_4_2  -v2k5 "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/ec67/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/70cf/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/979d/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/b2d0/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/8713/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ip/Block_design_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/37c2/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/ec67/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/70cf/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/979d/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/b2d0/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/8713/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ip/Block_design_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/Block_design/ip/Block_design_doHist_0_bram_0/sim/Block_design_doHist_0_bram_0.v" \

vlog -work blk_mem_gen_v8_3_6  -v2k5 "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/ec67/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/70cf/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/979d/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/b2d0/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/8713/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ip/Block_design_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/2751/simulation/blk_mem_gen_v8_3.v" \

vcom -work axi_bram_ctrl_v4_1_0 -93 \
"../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/27fe/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/Block_design/ip/Block_design_axi_bram_ctrl_0_0/sim/Block_design_axi_bram_ctrl_0_0.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work axi_timer_v2_0_20 -93 \
"../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/e9c1/hdl/axi_timer_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/Block_design/ip/Block_design_axi_timer_0_0/sim/Block_design_axi_timer_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/ec67/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/70cf/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/979d/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/b2d0/hdl/verilog" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ipshared/8713/hdl" "+incdir+../../../../CONTRAST_HISTOGRAM.srcs/sources_1/bd/Block_design/ip/Block_design_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/Block_design/sim/Block_design.v" \

vlog -work xil_defaultlib \
"glbl.v"

