
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name lab1 -dir "/afs/inf.ed.ac.uk/user/s10/s1006260/ComputerDesign/Project1/lab1/planAhead_run_2" -part xc3s500efg320-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property top three_input_adder $srcset
set_param project.paUcfFile  "two_input_xor.ucf"
set hdlfile [add_files [list {three_input_adder.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
add_files "two_input_xor.ucf" -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500efg320-4
