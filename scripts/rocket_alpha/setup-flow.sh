# copy config files to design dir
sed -i 's/wrapper1.gds/wrapper1.gds.gz/g' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i 's/SYNTH_TOP_LEVEL/SYNTH_ELABORATE_ONLY/g' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i 's/FILL_INSERTION/RUN_FILL_INSERTION/g' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i 's/TAP_DECAP_INSERTION/RUN_TAP_DECAP_INSERTION/g' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i 's/vssd1"/vssd1 vccd1 vssd1"/g' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i 's/\$script_dir\/..\/../\$::env(DESIGN_DIR)/g' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i 's/\$script_dir\/macro/\$::env(DESIGN_DIR)\/openlane\/user_project_wrapper\/macro/g' ${design_dir}/openlane/user_project_wrapper/config.tcl
