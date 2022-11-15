# copy config files to design dir
sed -i '/::env(RT_MAX_LAYER)/d' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i '/::env(EXTRA_LEFS)/d' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i '/::env(EXTRA_GDS_FILES)/d' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i 's/\$script_dir\/..\/../\$::env(DESIGN_DIR)/g' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i 's/\$script_dir\/macro/\$::env(DESIGN_DIR)\/openlane\/user_project_wrapper\/macro/g' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i 's/\$::env(DESIGN_DIR)\/fixed/\$::env(DESIGN_DIR)\/openlane\/user_project_wrapper\/fixed/g' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i 's/\$::env(DESIGN_DIR)\/fixed/\$::env(DESIGN_DIR)\/openlane\/user_project_wrapper\/fixed/g' ${design_dir}/openlane/user_project_wrapper/fixed_dont_change/fixed_wrapper_cfgs.tcl
sed -i 's/SYNTH_TOP_LEVEL/SYNTH_ELABORATE_ONLY/g' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i 's/TAP_DECAP/RUN_TAP_DECAP/g' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i 's/FILL_/RUN_FILL_/g' ${design_dir}/openlane/user_project_wrapper/config.tcl
