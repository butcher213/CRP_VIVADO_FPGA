
################################################################
# This is a generated script based on design: CRP_FPGA
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
# source CRP_FPGA_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# central_interface, fifo_protector, image_thresholding, threshold_memory, uart_tx

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a15tcpg236-1
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name CRP_FPGA

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
  set Camera_data_out [ create_bd_port -dir I -from 11 -to 0 Camera_data_out ]
  set FIFO_IS_READY [ create_bd_port -dir O FIFO_IS_READY ]
  set Rx_end [ create_bd_port -dir I Rx_end ]
  set Rx_in [ create_bd_port -dir I -from 7 -to 0 Rx_in ]
  set Tx [ create_bd_port -dir O Tx ]
  set Tx_counter [ create_bd_port -dir O -from 2 -to 0 Tx_counter ]
  set Tx_enabled [ create_bd_port -dir O Tx_enabled ]
  set camera_id [ create_bd_port -dir I -from 1 -to 0 camera_id ]
  set fifo_is_emtpy [ create_bd_port -dir O -type data fifo_is_emtpy ]
  set fifo_out [ create_bd_port -dir O -from 39 -to 0 fifo_out ]
  set href [ create_bd_port -dir I href ]
  set layerId [ create_bd_port -dir I layerId ]
  set pixclk [ create_bd_port -dir I pixclk ]
  set read_enabled [ create_bd_port -dir O read_enabled ]
  set rst [ create_bd_port -dir I rst ]
  set tx_locked [ create_bd_port -dir O tx_locked ]
  set uartclk [ create_bd_port -dir I uartclk ]
  set vsync [ create_bd_port -dir I vsync ]
  set write_enabled [ create_bd_port -dir O write_enabled ]

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
  
  # Create instance: fifo_generator_0, and set properties
  set fifo_generator_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:fifo_generator:13.2 fifo_generator_0 ]
  set_property -dict [ list \
   CONFIG.Empty_Threshold_Assert_Value {5} \
   CONFIG.Empty_Threshold_Negate_Value {6} \
   CONFIG.Fifo_Implementation {Independent_Clocks_Builtin_FIFO} \
   CONFIG.Full_Threshold_Assert_Value {1017} \
   CONFIG.Full_Threshold_Negate_Value {1016} \
   CONFIG.Input_Data_Width {40} \
   CONFIG.Output_Data_Width {40} \
   CONFIG.Reset_Type {Asynchronous_Reset} \
   CONFIG.Use_Dout_Reset {false} \
 ] $fifo_generator_0

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
  connect_bd_net -net Camera_data_in_1 [get_bd_ports Camera_data_out] [get_bd_pins image_thresholding_0/imgData]
  connect_bd_net -net Rx_end_1 [get_bd_ports Rx_end] [get_bd_pins central_interface_0/Rx_end]
  connect_bd_net -net Rx_in_1 [get_bd_ports Rx_in] [get_bd_pins central_interface_0/Rx_in]
  connect_bd_net -net camera_id_1 [get_bd_ports camera_id] [get_bd_pins image_thresholding_0/cameraId]
  connect_bd_net -net central_interface_0_Tx_en [get_bd_pins central_interface_0/Tx_en] [get_bd_pins uart_tx_0/Tx_en]
  connect_bd_net -net central_interface_0_Tx_out [get_bd_pins central_interface_0/Tx_out] [get_bd_pins uart_tx_0/Tx_in]
  connect_bd_net -net central_interface_0_read_enable [get_bd_pins central_interface_0/read_enable] [get_bd_pins uart_tx_0/read_enable]
  connect_bd_net -net central_interface_0_threshold_out [get_bd_pins central_interface_0/threshold_out] [get_bd_pins threshold_memory_0/threshold_in]
  connect_bd_net -net fifo_generator_0_dout [get_bd_ports fifo_out] [get_bd_pins fifo_generator_0/dout] [get_bd_pins uart_tx_0/fifo_in]
  connect_bd_net -net fifo_generator_0_empty [get_bd_ports fifo_is_emtpy] [get_bd_pins central_interface_0/FIFO_empty] [get_bd_pins fifo_generator_0/empty]
  connect_bd_net -net fifo_generator_0_full [get_bd_pins central_interface_0/FIFO_full] [get_bd_pins fifo_generator_0/full]
  connect_bd_net -net fifo_protector_0_fifo_ready [get_bd_ports FIFO_IS_READY] [get_bd_pins central_interface_0/FIFO_ready] [get_bd_pins fifo_protector_0/fifo_ready] [get_bd_pins uart_tx_0/fifo_ready]
  connect_bd_net -net fifo_protector_0_fifo_rst [get_bd_pins fifo_generator_0/rst] [get_bd_pins fifo_protector_0/fifo_rst]
  connect_bd_net -net fifo_protector_0_rd_en [get_bd_ports read_enabled] [get_bd_pins fifo_generator_0/rd_en] [get_bd_pins fifo_protector_0/rd_en]
  connect_bd_net -net fifo_protector_0_wr_en [get_bd_ports write_enabled] [get_bd_pins fifo_generator_0/wr_en] [get_bd_pins fifo_protector_0/wr_en]
  connect_bd_net -net href_1 [get_bd_ports href] [get_bd_pins image_thresholding_0/href]
  connect_bd_net -net image_thresholding_0_packet [get_bd_pins fifo_generator_0/din] [get_bd_pins image_thresholding_0/packet]
  connect_bd_net -net image_thresholding_0_wr_en [get_bd_pins fifo_protector_0/wr_in] [get_bd_pins image_thresholding_0/wr_en]
  connect_bd_net -net layerId_1 [get_bd_ports layerId] [get_bd_pins image_thresholding_0/layerId]
  connect_bd_net -net pixclk_1 [get_bd_ports pixclk] [get_bd_pins fifo_generator_0/wr_clk] [get_bd_pins fifo_protector_0/clk] [get_bd_pins image_thresholding_0/pixClk]
  connect_bd_net -net rst_1 [get_bd_ports rst] [get_bd_pins central_interface_0/rst] [get_bd_pins fifo_protector_0/global_rst] [get_bd_pins image_thresholding_0/rst] [get_bd_pins threshold_memory_0/rst] [get_bd_pins uart_tx_0/rst]
  connect_bd_net -net threshold_memory_0_threshold_out [get_bd_pins image_thresholding_0/mem_threshold] [get_bd_pins threshold_memory_0/threshold_out]
  connect_bd_net -net uart_tx_0_Tx [get_bd_ports Tx] [get_bd_pins uart_tx_0/Tx]
  connect_bd_net -net uart_tx_0_Tx_enabled [get_bd_ports Tx_enabled] [get_bd_pins uart_tx_0/Tx_enabled]
  connect_bd_net -net uart_tx_0_data_line [get_bd_ports Tx_counter]
  connect_bd_net -net uart_tx_0_rd_en [get_bd_pins fifo_protector_0/rd_in] [get_bd_pins uart_tx_0/rd_en]
  connect_bd_net -net uart_tx_0_tx_lock [get_bd_ports tx_locked] [get_bd_pins uart_tx_0/tx_lock]
  connect_bd_net -net uartclk_1 [get_bd_ports uartclk] [get_bd_pins central_interface_0/clk] [get_bd_pins fifo_generator_0/rd_clk] [get_bd_pins threshold_memory_0/clk] [get_bd_pins uart_tx_0/UART_clk]
  connect_bd_net -net vsync_1 [get_bd_ports vsync] [get_bd_pins image_thresholding_0/vsync]

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


