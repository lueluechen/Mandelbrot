
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name paste -dir "F:/file/homework/Logic_and_computer_design/MANDELBROT-master/mandelbrot1.02_cursor/paste/planAhead_run_3" -part xc7k160tfbg676-2L
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "F:/file/homework/Logic_and_computer_design/MANDELBROT-master/mandelbrot1.02_cursor/paste/top.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {F:/file/homework/Logic_and_computer_design/MANDELBROT-master/mandelbrot1.02_cursor/paste} {ipcore_dir} }
add_files [list {ipcore_dir/ram.ncf}] -fileset [get_property constrset [current_run]]
set_property target_constrs_file "YoDawg.ucf" [current_fileset -constrset]
add_files [list {YoDawg.ucf}] -fileset [get_property constrset [current_run]]
link_design
