create_project prj -part xc7v585t-ffg1761-2 -force
set_property target_language verilog [current_project]
set vivado_ver [version -short]
set COE_DIR "../../syn/verilog"
source "/home/bruno/Desktop/benchmarks/covariance/proj_covariance_no_taffo/solution1/syn/verilog/covariance_fdiv_32ns_32ns_32_6_no_dsp_1_ip.tcl"
source "/home/bruno/Desktop/benchmarks/covariance/proj_covariance_no_taffo/solution1/syn/verilog/covariance_faddfsub_32ns_32ns_32_2_full_dsp_1_ip.tcl"
source "/home/bruno/Desktop/benchmarks/covariance/proj_covariance_no_taffo/solution1/syn/verilog/covariance_fmul_32ns_32ns_32_2_max_dsp_1_ip.tcl"
