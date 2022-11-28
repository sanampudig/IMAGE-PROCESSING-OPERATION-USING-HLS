############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project histogram
set_top doHist
add_files histogram/leenawithoutcontrast.bmp
add_files histogram/core.h
add_files histogram/core.cpp
add_files histogram/LennaColour320240.bmp
add_files -tb histogram/test_core.cpp -cflags "-Wno-unknown-pragmas"
add_files -tb ../imgpr/cvt_colour.cpp -cflags "-Wno-unknown-pragmas"
open_solution "solution2"
set_part {xc7z020clg484-1} -tool vivado
create_clock -period 10 -name default
#source "./histogram/solution2/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog -version "1.0.0"
