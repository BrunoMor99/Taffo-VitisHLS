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
open_project -reset proj_covariance

# Add kernel and testbench
#add_files hls_example.cpp
#add_files -tb hls_example.cpp

#add_files mm.c
#add_files -tb mm.c

add_files covariance_taffo.c
add_files -tb covariance_taffo.c

# Tell the top
#set_top example
set_top covariance
# Open a solution and remove any existing data
open_solution -reset solution1

# Set the target device
set_part "virtex7"

# Create a virtual clock for the current solution
create_clock -period "50MHz"

### The following variables must be set before csynth_design

set ::LLVM_CUSTOM_OPT /home/bruno/Desktop/benchmarks/covariance/magiclang5.sh

set env(LD_LIBRARY_PATH) "/usr/lib/x86_64-linux-gnu:$env(LD_LIBRARY_PATH)"

set ::LLVM_CUSTOM_CMD {$LLVM_CUSTOM_OPT -Xvra -propagate-all -emit-bc $LLVM_CUSTOM_INPUT}
 
# Synthesize to RTL
csynth_design

cosim_design
