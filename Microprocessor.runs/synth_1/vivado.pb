
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental C:/Users/chetan/project/Microprocessor/Microprocessor.srcs/utils_1/imports/synth_1/top.dcpZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2\
ZC:/Users/chetan/project/Microprocessor/Microprocessor.srcs/utils_1/imports/synth_1/top.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
^
Command: %s
53*	vivadotcl2-
+synth_design -top top -part xc7z020clg484-1Z4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
z
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2	
xc7z020Z17-347h px� 
j
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2	
xc7z020Z17-349h px� 
D
Loading part %s157*device2
xc7z020clg484-1Z21-403h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
2Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
N
#Helper process launched with PID %s4824*oasys2
13680Z8-7075h px� 
�
%s*synth2{
yStarting RTL Elaboration : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 1082.582 ; gain = 468.602
h px� 
�
$data object '%s' is already declared5597*oasys2

mux2_out2R
NC:/Users/chetan/project/Microprocessor/Microprocessor.srcs/sources_1/new/top.v2
1548@Z8-9339h px� 
�
)previous declaration of '%s' is from here4683*oasys2

mux2_out2R
NC:/Users/chetan/project/Microprocessor/Microprocessor.srcs/sources_1/new/top.v2
288@Z8-6826h px� 
�
%second declaration of '%s' is ignored7413*oasys2

mux2_out2R
NC:/Users/chetan/project/Microprocessor/Microprocessor.srcs/sources_1/new/top.v2
1548@Z8-11152h px� 
�
synthesizing module '%s'%s4497*oasys2
top2
 2R
NC:/Users/chetan/project/Microprocessor/Microprocessor.srcs/sources_1/new/top.v2
228@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
ProgramCounter2
 2]
YC:/Users/chetan/project/Microprocessor/Microprocessor.srcs/sources_1/new/ProgramCounter.v2
238@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ProgramCounter2
 2
02
12]
YC:/Users/chetan/project/Microprocessor/Microprocessor.srcs/sources_1/new/ProgramCounter.v2
238@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
instruction_register2
 2c
_C:/Users/chetan/project/Microprocessor/Microprocessor.srcs/sources_1/new/instruction_register.v2
238@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
instruction_register2
 2
02
12c
_C:/Users/chetan/project/Microprocessor/Microprocessor.srcs/sources_1/new/instruction_register.v2
238@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
accumulator2
 2Z
VC:/Users/chetan/project/Microprocessor/Microprocessor.srcs/sources_1/new/accumulator.v2
238@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
accumulator2
 2
02
12Z
VC:/Users/chetan/project/Microprocessor/Microprocessor.srcs/sources_1/new/accumulator.v2
238@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
data_register2
 2\
XC:/Users/chetan/project/Microprocessor/Microprocessor.srcs/sources_1/new/data_register.v2
238@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
data_register2
 2
02
12\
XC:/Users/chetan/project/Microprocessor/Microprocessor.srcs/sources_1/new/data_register.v2
238@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
status_register2
 2^
ZC:/Users/chetan/project/Microprocessor/Microprocessor.srcs/sources_1/new/status_register.v2
238@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
status_register2
 2
02
12^
ZC:/Users/chetan/project/Microprocessor/Microprocessor.srcs/sources_1/new/status_register.v2
238@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
adder2
 2\
XC:/Users/chetan/project/Microprocessor/Microprocessor.srcs/sources_1/imports/new/adder.v2
238@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
adder2
 2
02
12\
XC:/Users/chetan/project/Microprocessor/Microprocessor.srcs/sources_1/imports/new/adder.v2
238@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
ALU2
 2Z
VC:/Users/chetan/project/Microprocessor/Microprocessor.srcs/sources_1/imports/new/ALU.v2
148@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ALU2
 2
02
12Z
VC:/Users/chetan/project/Microprocessor/Microprocessor.srcs/sources_1/imports/new/ALU.v2
148@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
Control_Logic2
 2d
`C:/Users/chetan/project/Microprocessor/Microprocessor.srcs/sources_1/imports/new/Control_Logic.v2
228@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Control_Logic2
 2
02
12d
`C:/Users/chetan/project/Microprocessor/Microprocessor.srcs/sources_1/imports/new/Control_Logic.v2
228@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
DMem2
 2[
WC:/Users/chetan/project/Microprocessor/Microprocessor.srcs/sources_1/imports/new/DMem.v2
238@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
DMem2
 2
02
12[
WC:/Users/chetan/project/Microprocessor/Microprocessor.srcs/sources_1/imports/new/DMem.v2
238@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
program_memory2
 2]
YC:/Users/chetan/project/Microprocessor/Microprocessor.srcs/sources_1/new/program_memory.v2
228@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
program_memory2
 2
02
12]
YC:/Users/chetan/project/Microprocessor/Microprocessor.srcs/sources_1/new/program_memory.v2
228@Z8-6155h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
82	
acc_out2
162
program_memory2R
NC:/Users/chetan/project/Microprocessor/Microprocessor.srcs/sources_1/new/top.v2
1508@Z8-689h px� 
�
synthesizing module '%s'%s4497*oasys2
mux22
 2S
OC:/Users/chetan/project/Microprocessor/Microprocessor.srcs/sources_1/new/mux2.v2
238@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
mux22
 2
02
12S
OC:/Users/chetan/project/Microprocessor/Microprocessor.srcs/sources_1/new/mux2.v2
238@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
top2
 2
02
12R
NC:/Users/chetan/project/Microprocessor/Microprocessor.srcs/sources_1/new/top.v2
228@Z8-6155h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2

ir_out[15]2
mux2Z8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2

ir_out[14]2
mux2Z8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2

ir_out[13]2
mux2Z8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2

ir_out[12]2
mux2Z8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2

ir_out[11]2
mux2Z8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2

ir_out[10]2
mux2Z8-7129h px� 
p
9Port %s in module %s is either unconnected or has no load4866*oasys2
	ir_out[9]2
mux2Z8-7129h px� 
p
9Port %s in module %s is either unconnected or has no load4866*oasys2
	ir_out[8]2
mux2Z8-7129h px� 
u
9Port %s in module %s is either unconnected or has no load4866*oasys2
IR[7]2
Control_LogicZ8-7129h px� 
u
9Port %s in module %s is either unconnected or has no load4866*oasys2
IR[6]2
Control_LogicZ8-7129h px� 
u
9Port %s in module %s is either unconnected or has no load4866*oasys2
IR[5]2
Control_LogicZ8-7129h px� 
u
9Port %s in module %s is either unconnected or has no load4866*oasys2
IR[4]2
Control_LogicZ8-7129h px� 
u
9Port %s in module %s is either unconnected or has no load4866*oasys2
IR[3]2
Control_LogicZ8-7129h px� 
u
9Port %s in module %s is either unconnected or has no load4866*oasys2
IR[2]2
Control_LogicZ8-7129h px� 
u
9Port %s in module %s is either unconnected or has no load4866*oasys2
IR[1]2
Control_LogicZ8-7129h px� 
u
9Port %s in module %s is either unconnected or has no load4866*oasys2
IR[0]2
Control_LogicZ8-7129h px� 
u
9Port %s in module %s is either unconnected or has no load4866*oasys2
SR[3]2
Control_LogicZ8-7129h px� 
u
9Port %s in module %s is either unconnected or has no load4866*oasys2
SR[2]2
Control_LogicZ8-7129h px� 
u
9Port %s in module %s is either unconnected or has no load4866*oasys2
SR[1]2
Control_LogicZ8-7129h px� 
u
9Port %s in module %s is either unconnected or has no load4866*oasys2
SR[0]2
Control_LogicZ8-7129h px� 
o
9Port %s in module %s is either unconnected or has no load4866*oasys2
	CFlags[3]2
ALUZ8-7129h px� 
o
9Port %s in module %s is either unconnected or has no load4866*oasys2
	CFlags[2]2
ALUZ8-7129h px� 
o
9Port %s in module %s is either unconnected or has no load4866*oasys2
	CFlags[1]2
ALUZ8-7129h px� 
�
%s*synth2{
yFinished RTL Elaboration : Time (s): cpu = 00:00:07 ; elapsed = 00:00:08 . Memory (MB): peak = 1192.629 ; gain = 578.648
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:07 ; elapsed = 00:00:08 . Memory (MB): peak = 1192.629 ; gain = 578.648
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:07 ; elapsed = 00:00:08 . Memory (MB): peak = 1192.629 ; gain = 578.648
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0032

1192.6292
0.000Z17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
Parsing XDC File [%s]
179*designutils2W
SC:/Users/chetan/project/Microprocessor/Microprocessor.srcs/constrs_1/new/Master.xdc8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2W
SC:/Users/chetan/project/Microprocessor/Microprocessor.srcs/constrs_1/new/Master.xdc8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2U
SC:/Users/chetan/project/Microprocessor/Microprocessor.srcs/constrs_1/new/Master.xdc2
.Xil/top_propImpl.xdcZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1268.1332
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
 Constraint Validation Runtime : 2

00:00:002
00:00:00.0032

1268.1332
0.000Z17-268h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:14 ; elapsed = 00:00:15 . Memory (MB): peak = 1268.133 ; gain = 654.152
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Loading part: xc7z020clg484-1
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:14 ; elapsed = 00:00:15 . Memory (MB): peak = 1268.133 ; gain = 654.152
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
%s
*synth20
.Start Applying 'set_property' XDC Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:14 ; elapsed = 00:00:15 . Memory (MB): peak = 1268.133 ; gain = 654.152
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
!inferring latch for variable '%s'327*oasys2
	Flags_reg2Z
VC:/Users/chetan/project/Microprocessor/Microprocessor.srcs/sources_1/imports/new/ALU.v2
508@Z8-327h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:14 ; elapsed = 00:00:15 . Memory (MB): peak = 1268.133 ; gain = 654.152
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
� 
(
%s
*synth2
+---Adders : 
h p
x
� 
F
%s
*synth2.
,	   3 Input    9 Bit       Adders := 3     
h p
x
� 
F
%s
*synth2.
,	   2 Input    8 Bit       Adders := 4     
h p
x
� 
F
%s
*synth2.
,	   3 Input    8 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   4 Input    8 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    2 Bit       Adders := 1     
h p
x
� 
&
%s
*synth2
+---XORs : 
h p
x
� 
H
%s
*synth20
.	   2 Input      8 Bit         XORs := 1     
h p
x
� 
+
%s
*synth2
+---Registers : 
h p
x
� 
H
%s
*synth20
.	               16 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                8 Bit    Registers := 4     
h p
x
� 
H
%s
*synth20
.	                4 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                2 Bit    Registers := 1     
h p
x
� 
&
%s
*synth2
+---RAMs : 
h p
x
� 
V
%s
*synth2>
<	              128 Bit	(16 X 8 bit)          RAMs := 1     
h p
x
� 
'
%s
*synth2
+---Muxes : 
h p
x
� 
F
%s
*synth2.
,	   2 Input   16 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    8 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	  16 Input    4 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input    4 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   4 Input    1 Bit        Muxes := 3     
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
q
%s
*synth2Y
WPart Resources:
DSPs: 220 (col length:60)
BRAMs: 280 (col length: RAMB18 60 RAMB36 30)
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
g
/Removed RAM (%s) due to inactive write enable.
4980*oasys2
pmem_unit/pmem_regZ8-7257h px� 
c
+Unused sequential element %s was removed. 
4326*oasys2
pmem_unit/pmem_regZ8-6014h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
alu/Flags_reg[3]2
topZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
alu/Flags_reg[2]2
topZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
alu/Flags_reg[1]2
topZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
alu/Flags_reg[0]2
topZ8-3332h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:16 ; elapsed = 00:00:17 . Memory (MB): peak = 1268.133 ; gain = 654.152
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
@
%s
*synth2(
&Start Applying XDC Timing Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:22 ; elapsed = 00:00:23 . Memory (MB): peak = 1375.488 ; gain = 761.508
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
4
%s
*synth2
Start Timing Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2
}Finished Timing Optimization : Time (s): cpu = 00:00:22 ; elapsed = 00:00:23 . Memory (MB): peak = 1375.488 ; gain = 761.508
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
3
%s
*synth2
Start Technology Mapping
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2~
|Finished Technology Mapping : Time (s): cpu = 00:00:22 ; elapsed = 00:00:23 . Memory (MB): peak = 1385.055 ; gain = 771.074
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Start IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
?
%s
*synth2'
%Start Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2x
vFinished IO Insertion : Time (s): cpu = 00:00:25 ; elapsed = 00:00:27 . Memory (MB): peak = 1601.715 ; gain = 987.734
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:25 ; elapsed = 00:00:27 . Memory (MB): peak = 1601.715 ; gain = 987.734
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:25 ; elapsed = 00:00:27 . Memory (MB): peak = 1601.715 ; gain = 987.734
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Renaming Generated Ports
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:25 ; elapsed = 00:00:27 . Memory (MB): peak = 1601.715 ; gain = 987.734
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:25 ; elapsed = 00:00:27 . Memory (MB): peak = 1601.715 ; gain = 987.734
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Start Renaming Generated Nets
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:25 ; elapsed = 00:00:27 . Memory (MB): peak = 1601.715 ; gain = 987.734
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
/
%s
*synth2

Report BlackBoxes: 
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
| |BlackBox name |Instances |
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
0
%s*synth2
+------+-----+------+
h px� 
0
%s*synth2
|      |Cell |Count |
h px� 
0
%s*synth2
+------+-----+------+
h px� 
0
%s*synth2
|1     |OBUF |     8|
h px� 
0
%s*synth2
+------+-----+------+
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:25 ; elapsed = 00:00:27 . Memory (MB): peak = 1601.715 ; gain = 987.734
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
`
%s
*synth2H
FSynthesis finished with 0 errors, 0 critical warnings and 8 warnings.
h p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:16 ; elapsed = 00:00:25 . Memory (MB): peak = 1601.715 ; gain = 912.230
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:25 ; elapsed = 00:00:27 . Memory (MB): peak = 1601.715 ; gain = 987.734
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1601.7152
0.000Z17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1601.7152
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

7c4843ccZ4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 

G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
442
322
22
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
synth_design: 2

00:00:292

00:00:332

1601.7152

1223.707Z17-268h px� 
c
%s6*runtcl2G
ESynthesis results are not added to the cache due to CRITICAL_WARNING
h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.0012

1601.7152
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2L
JC:/Users/chetan/project/Microprocessor/Microprocessor.runs/synth_1/top.dcpZ17-1381h px� 
�
Executing command : %s
56330*	planAhead2Q
Oreport_utilization -file top_utilization_synth.rpt -pb top_utilization_synth.pbZ12-24828h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Sat Apr 26 17:33:44 2025Z17-206h px� 


End Record