create_project prj -part xc7v585t-ffg1761-2 -force
set_property target_language verilog [current_project]
set vivado_ver [version -short]
set COE_DIR "../../syn/verilog"
source "/home/bruno/Desktop/benchmarks/gemm/proj_gemm_no_taffo/solution1/syn/verilog/mm_fmul_32ns_32ns_32_2_max_dsp_1_ip.tcl"
source "/home/bruno/Desktop/benchmarks/gemm/proj_gemm_no_taffo/solution1/syn/verilog/mm_fadd_32ns_32ns_32_2_full_dsp_1_ip.tcl"
source "/home/bruno/Desktop/benchmarks/gemm/proj_gemm_no_taffo/solution1/syn/verilog/mm_sitofp_32ns_32_2_no_dsp_1_ip.tcl"
source "/home/bruno/Desktop/benchmarks/gemm/proj_gemm_no_taffo/solution1/syn/verilog/mm_fadd_32ns_32ns_32_2_no_dsp_1_ip.tcl"
