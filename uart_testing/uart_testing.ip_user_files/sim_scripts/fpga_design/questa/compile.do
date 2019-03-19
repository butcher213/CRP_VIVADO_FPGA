vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vcom -work xil_defaultlib -64 -93 \
"../../../bd/fpga_design/ip/fpga_design_central_interface_0_0/sim/fpga_design_central_interface_0_0.vhd" \
"../../../bd/fpga_design/ip/fpga_design_uart_tx_0_0/sim/fpga_design_uart_tx_0_0.vhd" \
"../../../bd/fpga_design/ip/fpga_design_uart_rx_0_0/sim/fpga_design_uart_rx_0_0.vhd" \
"../../../bd/fpga_design/sim/fpga_design.vhd" \


