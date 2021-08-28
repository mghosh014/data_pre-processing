############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project IS
set_top int_subtraction
add_files IS/core.cpp
add_files -tb IS/solution1/csim/build/Scanaxial_13_04_2021_N_0_Pha.bin -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb IS/solution1/csim/build/Scanaxial_13_04_2021_N_1_io.bin -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb IS/solution1/csim/build/int_output.bin -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb IS/test_core.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xc7z045-ffg900-2}
create_clock -period 10 -name default
config_export -format ip_catalog -rtl verilog
#source "./IS/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level all -tool xsim
export_design -rtl verilog -format ip_catalog
