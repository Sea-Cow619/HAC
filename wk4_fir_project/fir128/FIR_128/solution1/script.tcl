############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
## Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
############################################################
open_project FIR_128
set_top fir
add_files fir.cpp
add_files fir.h
add_files input.dat
add_files out.gold.dat
add_files -tb fir_test.cpp
open_solution "solution1" -flow_target vivado
set_part {xck24-ubva530-2LV-c}
create_clock -period 10 -name default
#source "./FIR_128/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
