vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/dist_mem_gen_v8_0_12
vlib modelsim_lib/msim/blk_mem_gen_v8_4_2
vlib modelsim_lib/msim/lib_bmg_v1_0_11
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/axi_traffic_gen_v3_0_4

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xpm modelsim_lib/msim/xpm
vmap dist_mem_gen_v8_0_12 modelsim_lib/msim/dist_mem_gen_v8_0_12
vmap blk_mem_gen_v8_4_2 modelsim_lib/msim/blk_mem_gen_v8_4_2
vmap lib_bmg_v1_0_11 modelsim_lib/msim/lib_bmg_v1_0_11
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap axi_traffic_gen_v3_0_4 modelsim_lib/msim/axi_traffic_gen_v3_0_4

vlog -work xil_defaultlib -64 -incr -sv "+incdir+../../../../SimpleOpenCLSlave.srcs/sources_1/bd/system/ipshared/a0fc/hdl/src/verilog" "+incdir+../../../../SimpleOpenCLSlave.srcs/sources_1/bd/system/ipshared/85a3" \
"E:/software/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"E:/software/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"E:/software/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work dist_mem_gen_v8_0_12 -64 -incr "+incdir+../../../../SimpleOpenCLSlave.srcs/sources_1/bd/system/ipshared/a0fc/hdl/src/verilog" "+incdir+../../../../SimpleOpenCLSlave.srcs/sources_1/bd/system/ipshared/85a3" \
"../../../../SimpleOpenCLSlave.srcs/sources_1/bd/system/ipshared/d46a/simulation/dist_mem_gen_v8_0.v" \

vlog -work blk_mem_gen_v8_4_2 -64 -incr "+incdir+../../../../SimpleOpenCLSlave.srcs/sources_1/bd/system/ipshared/a0fc/hdl/src/verilog" "+incdir+../../../../SimpleOpenCLSlave.srcs/sources_1/bd/system/ipshared/85a3" \
"../../../../SimpleOpenCLSlave.srcs/sources_1/bd/system/ipshared/37c2/simulation/blk_mem_gen_v8_4.v" \

vcom -work lib_bmg_v1_0_11 -64 -93 \
"../../../../SimpleOpenCLSlave.srcs/sources_1/bd/system/ipshared/556c/hdl/lib_bmg_v1_0_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../SimpleOpenCLSlave.srcs/sources_1/bd/system/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work axi_traffic_gen_v3_0_4 -64 -93 \
"../../../../SimpleOpenCLSlave.srcs/sources_1/bd/system/ipshared/a0fc/hdl/axi_traffic_gen_v3_0_rfs.vhd" \

vlog -work axi_traffic_gen_v3_0_4 -64 -incr "+incdir+../../../../SimpleOpenCLSlave.srcs/sources_1/bd/system/ipshared/a0fc/hdl/src/verilog" "+incdir+../../../../SimpleOpenCLSlave.srcs/sources_1/bd/system/ipshared/85a3" \
"../../../../SimpleOpenCLSlave.srcs/sources_1/bd/system/ipshared/a0fc/hdl/axi_traffic_gen_v3_0_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../SimpleOpenCLSlave.srcs/sources_1/bd/system/ipshared/a0fc/hdl/src/verilog" "+incdir+../../../../SimpleOpenCLSlave.srcs/sources_1/bd/system/ipshared/85a3" \
"../../../bd/system/ip/system_axi_traffic_gen_0_0/sim/system_axi_traffic_gen_0_0.v" \
"../../../bd/system/ip/system_axilite_slave_0_0/sim/system_axilite_slave_0_0.v" \
"../../../bd/system/ip/system_clk_wiz_0/system_clk_wiz_0_clk_wiz.v" \
"../../../bd/system/ip/system_clk_wiz_0/system_clk_wiz_0.v" \
"../../../bd/system/ip/system_main_csr_0_0/sim/system_main_csr_0_0.v" \
"../../../bd/system/ip/system_fft128_0_0/sim/system_fft128_0_0.v" \
"../../../bd/system/ip/system_fft_read_ram_0_0/sim/system_fft_read_ram_0_0.v" \
"../../../bd/system/ip/system_ram_128_0_0/sim/system_ram_128_0_0.v" \
"../../../bd/system/ip/system_ram_128_1_0/sim/system_ram_128_1_0.v" \
"../../../bd/system/ip/system_fft_write_ram_0_0/sim/system_fft_write_ram_0_0.v" \
"../../../bd/system/ip/system_transiter_0_0/sim/system_transiter_0_0.v" \
"../../../bd/system/ip/system_recevier_0_0/sim/system_recevier_0_0.v" \
"../../../bd/system/sim/system.v" \

vlog -work xil_defaultlib \
"glbl.v"

