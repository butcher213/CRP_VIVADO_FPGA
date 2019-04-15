
################################################################
# This is a generated script based on design: fpga_design
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2018.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source fpga_design_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# UART_clk_gen, camera_simulator, central_interface, fifo_protector, image_thresholding, threshold_memory, uart_rx, uart_tx

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a35tcpg236-1
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name fpga_design

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set Rx [ create_bd_port -dir I Rx ]
  set Tx [ create_bd_port -dir O Tx ]
  set cameraid [ create_bd_port -dir I -from 1 -to 0 cameraid ]
  set dout [ create_bd_port -dir O -from 7 -to 0 dout ]
  set fifo_ready [ create_bd_port -dir O fifo_ready ]
  set layerid [ create_bd_port -dir I layerid ]
  set pixClk [ create_bd_port -dir I pixClk ]
  set rst [ create_bd_port -dir I rst ]
  set rx_out [ create_bd_port -dir O rx_out ]
  set sim_enable [ create_bd_port -dir I sim_enable ]

  # Create instance: UART_clk_gen_0, and set properties
  set block_name UART_clk_gen
  set block_cell_name UART_clk_gen_0
  if { [catch {set UART_clk_gen_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $UART_clk_gen_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: camera_simulator_0, and set properties
  set block_name camera_simulator
  set block_cell_name camera_simulator_0
  if { [catch {set camera_simulator_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $camera_simulator_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: central_interface_0, and set properties
  set block_name central_interface
  set block_cell_name central_interface_0
  if { [catch {set central_interface_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $central_interface_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: fifo_generator_1, and set properties
  set fifo_generator_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:fifo_generator:13.2 fifo_generator_1 ]
  set_property -dict [ list \
   CONFIG.Data_Count_Width {11} \
   CONFIG.Empty_Threshold_Assert_Value {5} \
   CONFIG.Empty_Threshold_Negate_Value {6} \
   CONFIG.Fifo_Implementation {Independent_Clocks_Builtin_FIFO} \
   CONFIG.Full_Threshold_Assert_Value {1938} \
   CONFIG.Full_Threshold_Negate_Value {1937} \
   CONFIG.Input_Data_Width {40} \
   CONFIG.Input_Depth {2048} \
   CONFIG.Output_Data_Width {40} \
   CONFIG.Output_Depth {2048} \
   CONFIG.Read_Data_Count_Width {11} \
   CONFIG.Reset_Type {Asynchronous_Reset} \
   CONFIG.Use_Dout_Reset {false} \
   CONFIG.Write_Clock_Frequency {26} \
   CONFIG.Write_Data_Count_Width {11} \
 ] $fifo_generator_1

  # Create instance: fifo_protector_0, and set properties
  set block_name fifo_protector
  set block_cell_name fifo_protector_0
  if { [catch {set fifo_protector_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $fifo_protector_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: image_thresholding_0, and set properties
  set block_name image_thresholding
  set block_cell_name image_thresholding_0
  if { [catch {set image_thresholding_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $image_thresholding_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: threshold_memory_0, and set properties
  set block_name threshold_memory
  set block_cell_name threshold_memory_0
  if { [catch {set threshold_memory_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $threshold_memory_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: uart_rx_0, and set properties
  set block_name uart_rx
  set block_cell_name uart_rx_0
  if { [catch {set uart_rx_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $uart_rx_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: uart_tx_0, and set properties
  set block_name uart_tx
  set block_cell_name uart_tx_0
  if { [catch {set uart_tx_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $uart_tx_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create port connections
  connect_bd_net -net Rx_1 [get_bd_ports Rx] [get_bd_pins uart_rx_0/Rx]
  connect_bd_net -net camera_simulator_0_href [get_bd_pins camera_simulator_0/href] [get_bd_pins image_thresholding_0/href]
  connect_bd_net -net camera_simulator_0_pix_out [get_bd_pins camera_simulator_0/pix_out] [get_bd_pins image_thresholding_0/imgData]
  connect_bd_net -net camera_simulator_0_vsync [get_bd_pins camera_simulator_0/vsync] [get_bd_pins image_thresholding_0/vsync]
  connect_bd_net -net cameraid_1 [get_bd_ports cameraid] [get_bd_pins image_thresholding_0/cameraId]
  connect_bd_net -net central_interface_0_Tx_en [get_bd_pins central_interface_0/Tx_en] [get_bd_pins uart_tx_0/Tx_en]
  connect_bd_net -net central_interface_0_Tx_out [get_bd_ports dout] [get_bd_pins central_interface_0/Tx_out] [get_bd_pins uart_tx_0/Tx_in]
  connect_bd_net -net central_interface_0_read_enable [get_bd_pins central_interface_0/read_enable] [get_bd_pins uart_tx_0/read_enable]
  connect_bd_net -net central_interface_0_threshold_out [get_bd_pins central_interface_0/threshold_out] [get_bd_pins threshold_memory_0/threshold_in]
  connect_bd_net -net fifo_generator_1_dout [get_bd_pins fifo_generator_1/dout] [get_bd_pins uart_tx_0/fifo_in]
  connect_bd_net -net fifo_generator_1_empty [get_bd_pins central_interface_0/FIFO_empty] [get_bd_pins fifo_generator_1/empty]
  connect_bd_net -net fifo_generator_1_full [get_bd_pins central_interface_0/FIFO_full] [get_bd_pins fifo_generator_1/full]
  connect_bd_net -net fifo_protector_0_fifo_ready [get_bd_ports fifo_ready] [get_bd_pins central_interface_0/FIFO_ready] [get_bd_pins fifo_protector_0/fifo_ready]
  connect_bd_net -net fifo_protector_0_fifo_rst [get_bd_pins fifo_generator_1/rst] [get_bd_pins fifo_protector_0/fifo_rst]
  connect_bd_net -net fifo_protector_0_rd_en [get_bd_pins fifo_generator_1/rd_en] [get_bd_pins fifo_protector_0/rd_en]
  connect_bd_net -net fifo_protector_0_wr_en [get_bd_pins fifo_generator_1/wr_en] [get_bd_pins fifo_protector_0/wr_en]
  connect_bd_net -net image_thresholding_0_packet [get_bd_pins fifo_generator_1/din] [get_bd_pins image_thresholding_0/packet]
  connect_bd_net -net image_thresholding_0_wr_en [get_bd_pins fifo_protector_0/wr_in] [get_bd_pins image_thresholding_0/wr_en]
  connect_bd_net -net layerid_1 [get_bd_ports layerid] [get_bd_pins image_thresholding_0/layerId]
  connect_bd_net -net pixClk_1 [get_bd_ports pixClk] [get_bd_pins UART_clk_gen_0/clk] [get_bd_pins camera_simulator_0/clk] [get_bd_pins fifo_generator_1/wr_clk] [get_bd_pins fifo_protector_0/clk] [get_bd_pins image_thresholding_0/pixClk]
  connect_bd_net -net rst_1 [get_bd_ports rst] [get_bd_pins central_interface_0/rst] [get_bd_pins fifo_protector_0/global_rst] [get_bd_pins image_thresholding_0/rst] [get_bd_pins threshold_memory_0/rst] [get_bd_pins uart_rx_0/rst] [get_bd_pins uart_tx_0/rst]
  connect_bd_net -net sim_enable_1 [get_bd_ports sim_enable] [get_bd_pins camera_simulator_0/enable]
  connect_bd_net -net threshold_memory_0_threshold_out [get_bd_pins image_thresholding_0/mem_threshold] [get_bd_pins threshold_memory_0/threshold_out]
  connect_bd_net -net uart_pll_0_clk_out [get_bd_pins UART_clk_gen_0/baudclk] [get_bd_pins central_interface_0/clk] [get_bd_pins fifo_generator_1/rd_clk] [get_bd_pins threshold_memory_0/clk] [get_bd_pins uart_rx_0/uart_clk] [get_bd_pins uart_tx_0/UART_clk]
  connect_bd_net -net uart_rx_0_Rx_end [get_bd_pins central_interface_0/Rx_end] [get_bd_pins uart_rx_0/Rx_end]
  connect_bd_net -net uart_rx_0_Rx_out [get_bd_pins central_interface_0/Rx_in] [get_bd_pins uart_rx_0/Rx_out]
  connect_bd_net -net uart_rx_0_transition [get_bd_ports rx_out] [get_bd_pins uart_rx_0/transition]
  connect_bd_net -net uart_tx_0_Tx [get_bd_ports Tx] [get_bd_pins uart_tx_0/Tx]
  connect_bd_net -net uart_tx_0_rd_en [get_bd_pins fifo_protector_0/rd_in] [get_bd_pins uart_tx_0/rd_en]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


