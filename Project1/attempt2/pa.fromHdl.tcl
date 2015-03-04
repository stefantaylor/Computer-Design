
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name attempt2 -dir "/afs/inf.ed.ac.uk/user/s10/s1006260/ComputerDesign/Project1/attempt2/planAhead_run_1" -part xc3s500efg320-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property top topModule $srcset
set_param project.paUcfFile  "topModule.ucf"
set hdlfile [add_files [list {topModule.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
add_files "topModule.ucf" -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500efg320-4
