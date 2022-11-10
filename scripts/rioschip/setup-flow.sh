# copy config files to design dir
gzip -d ${design_dir}/gds/sky130_sram_1kbyte_1rw1r_32x256_8.gds.gz
gzip -d ${design_dir}/gds/top.gds.gz
sed -i '/::env(ROUTING_CORES)/d' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i 's/\$::env(DESIGN_DIR)\/fixed/\$::env(DESIGN_DIR)\/openlane\/user_project_wrapper\/fixed/g' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i 's/\$::env(DESIGN_DIR)\/fixed/\$::env(DESIGN_DIR)\/openlane\/user_project_wrapper\/fixed/g' ${design_dir}/openlane/user_project_wrapper/fixed_dont_change/fixed_wrapper_cfgs.tcl
sed -i 's/\$proj_dir\/..\/../\$::env(DESIGN_DIR)/g' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i 's/\$proj_dir\/base/\$::env(DESIGN_DIR)\/openlane\/user_project_wrapper\/base/g' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i 's/\$proj_dir\/macro/\$::env(DESIGN_DIR)\/openlane\/user_project_wrapper\/macro/g' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i 's/SYNTH_TOP_LEVEL/SYNTH_ELABORATE_ONLY/g' ${design_dir}/openlane/user_project_wrapper/config.tcl
