#!/bin/bash

# Set LLVM_DIR if needed
export LLVM_DIR=/usr/lib/llvm-14

# Create build directory
mkdir build
cd build

# Configure the project with CMake
cmake .. -DTAFFO_BUILD_ORTOOLS=ON

# Build the project
cmake --build .

# Install the project
sudo cmake --build . --target install
