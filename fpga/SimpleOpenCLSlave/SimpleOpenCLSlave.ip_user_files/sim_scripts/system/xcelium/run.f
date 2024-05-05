-makelib xcelium_lib/xil_defaultlib -sv \
  "E:/software/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "E:/software/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "E:/software/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/dist_mem_gen_v8_0_12 \
  "../../../../SimpleOpenCLSlave.srcs/sources_1/bd/system/ipshared/d46a/simulation/dist_mem_gen_v8_0.v" \
-endlib
-makelib xcelium_lib/blk_mem_gen_v8_4_2 \
  "../../../../SimpleOpenCLSlave.srcs/sources_1/bd/system/ipshared/37c2/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib xcelium_lib/lib_bmg_v1_0_11 \
  "../../../../SimpleOpenCLSlave.srcs/sources_1/bd/system/ipshared/556c/hdl/lib_bmg_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../SimpleOpenCLSlave.srcs/sources_1/bd/system/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_traffic_gen_v3_0_4 \
  "../../../../SimpleOpenCLSlave.srcs/sources_1/bd/system/ipshared/a0fc/hdl/axi_traffic_gen_v3_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_traffic_gen_v3_0_4 \
  "../../../../SimpleOpenCLSlave.srcs/sources_1/bd/system/ipshared/a0fc/hdl/axi_traffic_gen_v3_0_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
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
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

