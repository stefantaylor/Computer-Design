
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name Practical3 -dir "/afs/inf.ed.ac.uk/user/s10/s1006260/ComputerDesign/Project1/Practical_3_ISE_Project/planAhead_run_2" -part xc3s500efg320-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property top bigadder $srcset
set_param project.paUcfFile  "bigadder.ucf"
set hdlfile [add_files [list {halfadder.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {add.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {bigadder.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
add_files "bigadder.ucf" -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500efg320-4
