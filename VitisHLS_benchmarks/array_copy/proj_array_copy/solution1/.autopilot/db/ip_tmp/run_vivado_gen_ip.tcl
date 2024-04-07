create_project prj -part xc7v585t-ffg1761-2 -force
set_property target_language verilog [current_project]
set vivado_ver [version -short]
set COE_DIR "../../syn/verilog"
source "/home/bruno/Desktop/benchmarks/array_copy/proj_array_copy/solution1/syn/verilog/array_copy_sitofp_32ns_32_2_no_dsp_1_ip.tcl"
source "/home/bruno/Desktop/benchmarks/array_copy/proj_array_copy/solution1/syn/verilog/array_copy_fmul_32ns_32ns_32_2_max_dsp_1_ip.tcl"
source "/home/bruno/Desktop/benchmarks/array_copy/proj_array_copy/solution1/syn/verilog/array_copy_fptoui_32ns_32_2_no_dsp_1_ip.tcl"
source "/home/bruno/Desktop/benchmarks/array_copy/proj_array_copy/solution1/syn/verilog/array_copy_uitofp_32ns_32_2_no_dsp_1_ip.tcl"
source "/home/bruno/Desktop/benchmarks/array_copy/proj_array_copy/solution1/syn/verilog/array_copy_fdiv_32ns_32ns_32_6_no_dsp_1_ip.tcl"
