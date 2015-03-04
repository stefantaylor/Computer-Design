
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name Practical3 -dir "/afs/inf.ed.ac.uk/user/s10/s1006260/ComputerDesign/Project1/Practical_3_ISE_Project/planAhead_run_4" -part xc3s500efg320-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "/afs/inf.ed.ac.uk/user/s10/s1006260/ComputerDesign/Project1/Practical_3_ISE_Project/bigadder.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/afs/inf.ed.ac.uk/user/s10/s1006260/ComputerDesign/Project1/Practical_3_ISE_Project} }
set_param project.pinAheadLayout  yes
set_param project.paUcfFile  "bigadder.ucf"
add_files "bigadder.ucf" -fileset [get_property constrset [current_run]]
open_netlist_design
