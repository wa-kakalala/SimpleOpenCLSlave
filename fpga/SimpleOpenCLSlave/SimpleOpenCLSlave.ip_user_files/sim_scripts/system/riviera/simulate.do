onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+system -L xil_defaultlib -L xpm -L dist_mem_gen_v8_0_12 -L blk_mem_gen_v8_4_2 -L lib_bmg_v1_0_11 -L lib_cdc_v1_0_2 -L axi_traffic_gen_v3_0_4 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.system xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {system.udo}

run -all

endsim

quit -force
