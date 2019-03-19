onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+fpga_design -L xil_defaultlib -L secureip -O5 xil_defaultlib.fpga_design

do {wave.do}

view wave
view structure

do {fpga_design.udo}

run -all

endsim

quit -force
