set -x
#cp "/home/bruno/Desktop/hls-llvm-examples/override_opt_flow_demo/proj_hls_example_no_custom/solution1/.autopilot/db/top-io-fe.xml" "/home/bruno/Desktop/hls-llvm-examples/override_opt_flow_demo/proj_hls_example_taffo_mod_5/solution1/.autopilot/db/top-io-fe.xml"

clang -emit-llvm -c "/home/bruno/Desktop/benchmarks/gemm/intermediate/output.5.magiclangtmp.ll" -o "/home/bruno/Desktop/benchmarks/gemm/intermediate/a.g.ld.5.gdce.bc"

cp "/home/bruno/Desktop/benchmarks/gemm/intermediate/a.g.ld.5.gdce.bc" "/home/bruno/Desktop/benchmarks/gemm/proj_gemm/solution1/.autopilot/db/a.g.ld.6.user.bc"
