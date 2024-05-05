onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib ram128_opt

do {wave.do}

view wave
view structure
view signals

do {ram128.udo}

run -all

quit -force
