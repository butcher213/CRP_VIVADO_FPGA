onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib fpga_design_opt

do {wave.do}

view wave
view structure
view signals

do {fpga_design.udo}

run -all

quit -force
