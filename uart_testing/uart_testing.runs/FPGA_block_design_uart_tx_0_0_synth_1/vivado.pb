
�
Command: %s
53*	vivadotcl2n
Zsynth_design -top FPGA_Block_Design_uart_tx_0_0 -part xc7a15tcpg236-1 -mode out_of_context2default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a15t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a15t2default:defaultZ17-349h px� 
�
%s*synth2�
sStarting Synthesize : Time (s): cpu = 00:00:03 ; elapsed = 00:00:04 . Memory (MB): peak = 441.609 ; gain = 100.125
2default:defaulth px� 
�
synthesizing module '%s'638*oasys21
FPGA_Block_Design_uart_tx_0_02default:default2�
�c:/Users/butchertd/Documents/eaglesat/uart_testing/uart_testing.srcs/sources_1/bd/FPGA_Block_Design/ip/FPGA_Block_Design_uart_tx_0_0_1/synth/FPGA_Block_Design_uart_tx_0_0.vhd2default:default2
722default:default8@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
uart_tx2default:default2r
^C:/Users/butchertd/Documents/eaglesat/uart_testing/uart_testing.srcs/sources_1/new/uart_tx.vhd2default:default2
342default:default2
U02default:default2
uart_tx2default:default2�
�c:/Users/butchertd/Documents/eaglesat/uart_testing/uart_testing.srcs/sources_1/bd/FPGA_Block_Design/ip/FPGA_Block_Design_uart_tx_0_0_1/synth/FPGA_Block_Design_uart_tx_0_0.vhd2default:default2
1052default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
uart_tx2default:default2t
^C:/Users/butchertd/Documents/eaglesat/uart_testing/uart_testing.srcs/sources_1/new/uart_tx.vhd2default:default2
482default:default8@Z8-638h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2"
data_index_reg2default:default2t
^C:/Users/butchertd/Documents/eaglesat/uart_testing/uart_testing.srcs/sources_1/new/uart_tx.vhd2default:default2
712default:default8@Z8-6014h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
uart_tx2default:default2
12default:default2
12default:default2t
^C:/Users/butchertd/Documents/eaglesat/uart_testing/uart_testing.srcs/sources_1/new/uart_tx.vhd2default:default2
482default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys21
FPGA_Block_Design_uart_tx_0_02default:default2
22default:default2
12default:default2�
�c:/Users/butchertd/Documents/eaglesat/uart_testing/uart_testing.srcs/sources_1/bd/FPGA_Block_Design/ip/FPGA_Block_Design_uart_tx_0_0_1/synth/FPGA_Block_Design_uart_tx_0_0.vhd2default:default2
722default:default8@Z8-256h px� 
�
!design %s has unconnected port %s3331*oasys2
uart_tx2default:default2

fifo_ready2default:defaultZ8-3331h px� 
�
%s*synth2�
sFinished Synthesize : Time (s): cpu = 00:00:04 ; elapsed = 00:00:05 . Memory (MB): peak = 496.461 ; gain = 154.977
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
~Finished Constraint Validation : Time (s): cpu = 00:00:04 ; elapsed = 00:00:05 . Memory (MB): peak = 496.461 ; gain = 154.977
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Loading part: xc7a15tcpg236-1
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:04 ; elapsed = 00:00:05 . Memory (MB): peak = 496.461 ; gain = 154.977
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
Loading part %s157*device2#
xc7a15tcpg236-12default:defaultZ21-403h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2%
Tx_line_index_reg2default:default2
uart_tx2default:defaultZ8-802h px� 
r
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
Tx2default:defaultZ8-5546h px� 
}
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2!
current_state2default:defaultZ8-5546h px� 
}
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2!
current_state2default:defaultZ8-5546h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2!
Tx_line_index2default:default2
32default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
	fifo_data2default:default2
32default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2!
current_state2default:default2
32default:default2
52default:defaultZ8-5544h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2s
_                 iSTATE0 |                              000 |                              000
2default:defaulth p
x
� 
�
%s
*synth2s
_                 iSTATE1 |                              001 |                              001
2default:defaulth p
x
� 
�
%s
*synth2s
_                 iSTATE2 |                              010 |                              011
2default:defaulth p
x
� 
�
%s
*synth2s
_                 iSTATE3 |                              011 |                              010
2default:defaulth p
x
� 
�
%s
*synth2s
_                 iSTATE4 |                              100 |                              110
2default:defaulth p
x
� 
�
%s
*synth2s
_                 iSTATE5 |                              101 |                              111
2default:defaulth p
x
� 
�
%s
*synth2s
_                  iSTATE |                              110 |                              101
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2%
Tx_line_index_reg2default:default2

sequential2default:default2
uart_tx2default:defaultZ8-3354h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 496.461 ; gain = 154.977
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               40 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               10 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 3     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   6 Input     40 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   7 Input     10 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   6 Input     10 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   7 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  12 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   7 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   6 Input      1 Bit        Muxes := 9     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   7 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Y
%s
*synth2A
-Start RTL Hierarchical Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Hierarchical RTL Component report 
2default:defaulth p
x
� 
<
%s
*synth2$
Module uart_tx 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               40 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               10 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 3     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   6 Input     40 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   7 Input     10 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   6 Input     10 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   7 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  12 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   7 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   6 Input      1 Bit        Muxes := 9     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   7 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
[
%s
*synth2C
/Finished RTL Hierarchical Component Statistics
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2i
UPart Resources:
DSPs: 45 (col length:60)
BRAMs: 50 (col length: RAMB18 60 RAMB36 30)
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
]
%s
*synth2E
1Warning: Parallel synthesis criteria is not met 
2default:defaulth p
x
� 
u
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
U0/Tx2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2$
U0/current_state2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2$
U0/current_state2default:defaultZ8-5546h px� 
�
!design %s has unconnected port %s3331*oasys21
FPGA_Block_Design_uart_tx_0_02default:default2

fifo_ready2default:defaultZ8-3331h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:09 ; elapsed = 00:00:11 . Memory (MB): peak = 636.711 ; gain = 295.227
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
|Finished Timing Optimization : Time (s): cpu = 00:00:09 ; elapsed = 00:00:11 . Memory (MB): peak = 636.711 ; gain = 295.227
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
{Finished Technology Mapping : Time (s): cpu = 00:00:09 ; elapsed = 00:00:11 . Memory (MB): peak = 637.070 ; gain = 295.586
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
uFinished IO Insertion : Time (s): cpu = 00:00:11 ; elapsed = 00:00:12 . Memory (MB): peak = 637.070 ; gain = 295.586
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
+multi-driven net %s with %s driver pin '%s'3351*oasys2 
data_line[2]2default:default2
1st2default:default2
i_47/O2default:default2t
^C:/Users/butchertd/Documents/eaglesat/uart_testing/uart_testing.srcs/sources_1/new/uart_tx.vhd2default:default2
652default:default8@Z8-3352h px� 
�
+multi-driven net %s with %s driver pin '%s'3351*oasys2 
data_line[2]2default:default2
2nd2default:default2)
U0/data_line_reg[2]/Q2default:default2t
^C:/Users/butchertd/Documents/eaglesat/uart_testing/uart_testing.srcs/sources_1/new/uart_tx.vhd2default:default2
732default:default8@Z8-3352h px� 
�
+multi-driven net %s with %s driver pin '%s'3351*oasys2 
data_line[1]2default:default2
1st2default:default2
i_40/O2default:default2t
^C:/Users/butchertd/Documents/eaglesat/uart_testing/uart_testing.srcs/sources_1/new/uart_tx.vhd2default:default2
652default:default8@Z8-3352h px� 
�
+multi-driven net %s with %s driver pin '%s'3351*oasys2 
data_line[1]2default:default2
2nd2default:default2)
U0/data_line_reg[1]/Q2default:default2t
^C:/Users/butchertd/Documents/eaglesat/uart_testing/uart_testing.srcs/sources_1/new/uart_tx.vhd2default:default2
732default:default8@Z8-3352h px� 
�
+multi-driven net %s with %s driver pin '%s'3351*oasys2 
data_line[0]2default:default2
1st2default:default2)
U0/data_line_reg[0]/Q2default:default2t
^C:/Users/butchertd/Documents/eaglesat/uart_testing/uart_testing.srcs/sources_1/new/uart_tx.vhd2default:default2
732default:default8@Z8-3352h px� 
�
+multi-driven net %s with %s driver pin '%s'3351*oasys2 
data_line[0]2default:default2
2nd2default:default2
i_8/O2default:default2t
^C:/Users/butchertd/Documents/eaglesat/uart_testing/uart_testing.srcs/sources_1/new/uart_tx.vhd2default:default2
652default:default8@Z8-3352h px� 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        3|Failed |Multi driven nets |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:11 ; elapsed = 00:00:12 . Memory (MB): peak = 637.070 ; gain = 295.586
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:11 ; elapsed = 00:00:12 . Memory (MB): peak = 637.070 ; gain = 295.586
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:11 ; elapsed = 00:00:12 . Memory (MB): peak = 637.070 ; gain = 295.586
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:11 ; elapsed = 00:00:12 . Memory (MB): peak = 637.070 ; gain = 295.586
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:11 ; elapsed = 00:00:12 . Memory (MB): peak = 637.070 ; gain = 295.586
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
B
%s*synth2*
+------+-----+------+
2default:defaulth px� 
B
%s*synth2*
|      |Cell |Count |
2default:defaulth px� 
B
%s*synth2*
+------+-----+------+
2default:defaulth px� 
B
%s*synth2*
|1     |BUF  |     1|
2default:defaulth px� 
B
%s*synth2*
|2     |LUT2 |     3|
2default:defaulth px� 
B
%s*synth2*
|3     |LUT3 |     2|
2default:defaulth px� 
B
%s*synth2*
|4     |LUT4 |     6|
2default:defaulth px� 
B
%s*synth2*
|5     |LUT5 |     8|
2default:defaulth px� 
B
%s*synth2*
|6     |LUT6 |    28|
2default:defaulth px� 
B
%s*synth2*
|7     |FDRE |    62|
2default:defaulth px� 
B
%s*synth2*
+------+-----+------+
2default:defaulth px� 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
� 
O
%s
*synth27
#+------+---------+--------+------+
2default:defaulth p
x
� 
O
%s
*synth27
#|      |Instance |Module  |Cells |
2default:defaulth p
x
� 
O
%s
*synth27
#+------+---------+--------+------+
2default:defaulth p
x
� 
O
%s
*synth27
#|1     |top      |        |   110|
2default:defaulth p
x
� 
O
%s
*synth27
#|2     |  U0     |uart_tx |   109|
2default:defaulth p
x
� 
O
%s
*synth27
#+------+---------+--------+------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:11 ; elapsed = 00:00:12 . Memory (MB): peak = 637.070 ; gain = 295.586
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 6 critical warnings and 3 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
~Synthesis Optimization Runtime : Time (s): cpu = 00:00:11 ; elapsed = 00:00:12 . Memory (MB): peak = 637.070 ; gain = 295.586
2default:defaulth p
x
� 
�
%s
*synth2�
Synthesis Optimization Complete : Time (s): cpu = 00:00:11 ; elapsed = 00:00:12 . Memory (MB): peak = 637.070 ; gain = 295.586
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
e
-Analyzing %s Unisim elements for replacement
17*netlist2
12default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
�
!Unisim Transformation Summary:
%s111*project2Z
F  A total of 1 instances were transformed.
  BUF => LUT1: 1 instances
2default:defaultZ1-111h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
252default:default2
32default:default2
62default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:172default:default2
00:00:202default:default2
738.4962default:default2
409.7462default:defaultZ17-268h px� 
K
"No constraint will be written out.1103*constraintsZ18-5210h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2�
�C:/Users/butchertd/Documents/eaglesat/uart_testing/uart_testing.runs/FPGA_block_design_uart_tx_0_0_synth_1/FPGA_Block_Design_uart_tx_0_0.dcp2default:defaultZ17-1381h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2&
write_checkpoint: 2default:default2
00:00:152default:default2
00:00:192default:default2
1240.6332default:default2
502.1372default:defaultZ17-268h px� 
K
"No constraint will be written out.1103*constraintsZ18-5210h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2�
�C:/Users/butchertd/Documents/eaglesat/uart_testing/uart_testing.runs/FPGA_block_design_uart_tx_0_0_synth_1/FPGA_Block_Design_uart_tx_0_0.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2�
�Executing : report_utilization -file FPGA_Block_Design_uart_tx_0_0_utilization_synth.rpt -pb FPGA_Block_Design_uart_tx_0_0_utilization_synth.pb
2default:defaulth px� 
�
treport_utilization: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.034 . Memory (MB): peak = 1241.063 ; gain = 0.000
*commonh px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Thu Feb 28 12:34:36 20192default:defaultZ17-206h px� 


End Record