
/home/bruno/Documents/Vivado/2022.2/bin/xelab xil_defaultlib.apatb_syr2k_top glbl -Oenable_linking_all_libraries  -prj syr2k.prj -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_12 -L axi_protocol_checker_v1_1_13 -L axis_protocol_checker_v1_1_11 -L axis_protocol_checker_v1_1_12 -L xil_defaultlib -L unisims_ver -L xpm  -L floating_point_v7_0_20 -L floating_point_v7_1_15 --lib "ieee_proposed=./ieee_proposed" -s syr2k 
/home/bruno/Documents/Vivado/2022.2/bin/xsim --noieeewarnings syr2k -tclbatch syr2k.tcl 
