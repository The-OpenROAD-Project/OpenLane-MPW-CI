# copy config files to design dir
sed -i 's/user_proj_example/soc_now_caravel_top/g' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i 's/Caravel_Top/soc_now_caravel_top/g' ${design_dir}/openlane/user_project_wrapper/config.tcl
