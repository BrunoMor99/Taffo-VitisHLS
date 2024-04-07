# (C) Copyright 2016-2022 Xilinx, Inc.
# All Rights Reserved.
#
# Licensed to the Apache Software Foundation (ASF) under one
# or more contributor license agreements.  See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership.  The ASF licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License.  You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing,
# software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
# KIND, either express or implied.  See the License for the
# specific language governing permissions and limitations
# under the License.

# Open a project and remove any existing data
open_project -reset proj_gemm_no_taffo

# Add kernel and testbench
#add_files hls_example.cpp
#add_files -tb hls_example.cpp

#add_files mm.c
#add_files -tb mm.c

add_files gemm_no_taffoin2.c
add_files -tb gemm_no_taffoin2.c

# Tell the top
#set_top example
set_top mm
# Open a solution and remove any existing data
open_solution -reset solution1

# Set the target device
set_part "virtex7"

# Create a virtual clock for the current solution
create_clock -period "50MHz"

### The following variables must be set before csynth_design

# TODO: Change this location to your local opt build
#set ::LLVM_CUSTOM_OPT "/home/bruno/Desktop/TAFFO/build/tool/taffo/taffo"
#set ::LLVM_CUSTOM_OPT /usr/local/bin/taffo

#set ::LLVM_CUSTOM_INPUT /home/bruno/Desktop/hls-llvm-examples/override_opt_flow_demo/hls_example.bc

#set ::LLVM_CUSTOM_INPUT /home/bruno/Desktop/matmult/matmult_no_taffo.bc
#set ::LLVM_CUSTOM_INPUT /home/bruno/Desktop/testFilebc/a.g.ld.4.m2.bc
#set ::LLVM_CUSTOM_INPUT /home/bruno/Desktop/hls-llvm-examples/override_opt_flow_demo/mm.bc
#set ::LLVM_CUSTOM_INPUT /home/bruno/Desktop/hls-llvm-examples/override_opt_flow_demo/proj/solution1/.autopilot/db/a.g.ld.5.gdce.bc

#set ::LLVM_CUSTOM_OPT /home/bruno/Desktop/magiclang2.sh

#set ::LLVM_CUSTOM_OUTPUT /home/bruno/Desktop/hls-llvm-examples/override_opt_flow_demo/proj/solution1/.autopilot/db/output
#set env(LD_LIBRARY_PATH) "/home/bruno/Documents/Vitis_HLS/2022.2/lib/lnx64.o/Ubuntu:$env(LD_LIBRARY_PATH)"
set env(LD_LIBRARY_PATH) "/usr/lib/x86_64-linux-gnu:$env(LD_LIBRARY_PATH)"
#set env(LD_LIBRARY_PATH) "/home/bruno/Desktop/TAFFO/build/lib:$env(LD_LIBRARY_PATH)"
# This example assumes that the local opt binary has some customized behavior (no custom passes called here)
# Do not use global namespace (::) for variables used in LVM_CUSTOM_CMD
#set ::LLVM_CUSTOM_CMD {$LLVM_CUSTOM_OPT -mem2reg -dce $LLVM_CUSTOM_INPUT -o $LLVM_CUSTOM_OUTPUT}
#set ::LLVM_CUSTOM_CMD {$LLVM_CUSTOM_OPT -O3 -emit-llvm -emit-bc $LLVM_CUSTOM_INPUT -o $LLVM_CUSTOM_OUTPUT}

#set ::LLVM_CUSTOM_CMD {$LLVM_CUSTOM_OPT -Xvra -propagate-all -emit-bc $LLVM_CUSTOM_INPUT}

#set ::LLVM_CUSTOM_CMD {$LLVM_CUSTOM_OPT -O3 -emit-llvm -emit-bc $LLVM_CUSTOM_INPUT -o /home/bruno/Desktop/hls-llvm-examples/override_opt_flow_demo/output.bc}
# Compile and runs pre-synthesis C simulation using the provided C test bench
#csim_design

# Synthesize to RTL
csynth_design

# Execute post-synthesis co-simulation of the synthesized RTL with the original C/C++-based test bench
cosim_design
