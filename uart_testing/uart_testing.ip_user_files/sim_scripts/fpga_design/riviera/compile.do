vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vcom -work xil_defaultlib -93 \
"../../../bd/fpga_design/ip/fpga_design_central_interface_0_0/sim/fpga_design_central_interface_0_0.vhd" \
"../../../bd/fpga_design/ip/fpga_design_uart_tx_0_0/sim/fpga_design_uart_tx_0_0.vhd" \
"../../../bd/fpga_design/ip/fpga_design_uart_rx_0_0/sim/fpga_design_uart_rx_0_0.vhd" \
"../../../bd/fpga_design/sim/fpga_design.vhd" \


