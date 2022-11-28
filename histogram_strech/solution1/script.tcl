############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project histogram_strech
set_top doHistStrech
add_files C:/Users/Ravi Kiran/OneDrive/Desktop/LennaStr.bmp
add_files Lennawithoutstr.bmp
add_files histogram_strech/core.cpp
add_files histogram_strech/core.h
add_files -tb histogram_strech/test_core.cpp -cflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xc7z020clg484-1} -tool vivado
create_clock -period 10 -name default
config_export -format ip_catalog -rtl verilog -version 1.0.0
#source "./histogram_strech/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog -version "1.0.0"
