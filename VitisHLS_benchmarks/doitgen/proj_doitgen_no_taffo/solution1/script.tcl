############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project proj_doitgen_no_taffo
set_top doitgen
add_files doitgen_no_taffo.c
add_files -tb doitgen_no_taffo.c -cflags "-Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xc7v585t-ffg1761-2}
create_clock -period 50MHz -name default
config_interface -m_axi_latency 0
source "./proj_doitgen_no_taffo/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog