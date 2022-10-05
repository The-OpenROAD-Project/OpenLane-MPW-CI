# copy config files to design dir
sed -i '/::env(RT_MAX_LAYER)/d' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i '/::env(ROUTING_CORES)/d' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i '/::env(VERILOG_FILES)/d' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i 's/\$script_dir\/..\/../\$::env(DESIGN_DIR)/g' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i 's/\$::env(DESIGN_DIR)\/fixed/\$::env(DESIGN_DIR)\/openlane\/user_project_wrapper\/fixed/g' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i 's/\$::env(DESIGN_DIR)\/fixed/\$::env(DESIGN_DIR)\/openlane\/user_project_wrapper\/fixed/g' ${design_dir}/openlane/user_project_wrapper/fixed_dont_change/fixed_wrapper_cfgs.tcl
