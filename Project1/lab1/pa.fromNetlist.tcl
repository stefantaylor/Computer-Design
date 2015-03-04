
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name lab1 -dir "/afs/inf.ed.ac.uk/user/s10/s1006260/ComputerDesign/Project1/lab1/planAhead_run_5" -part xc3s500efg320-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "/afs/inf.ed.ac.uk/user/s10/s1006260/ComputerDesign/Project1/lab1/three_input_adder.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/afs/inf.ed.ac.uk/user/s10/s1006260/ComputerDesign/Project1/lab1} }
set_param project.pinAheadLayout  yes
set_param project.paUcfFile  "two_input_xor.ucf"
add_files "two_input_xor.ucf" -fileset [get_property constrset [current_run]]
open_netlist_design
