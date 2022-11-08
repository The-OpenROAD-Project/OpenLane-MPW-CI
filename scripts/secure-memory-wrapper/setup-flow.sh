# copy config files to design dir
sed -i '29d' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i 's/::env(DESIGN_DIR)/script_dir/g' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i 's/GLB_RT/GRT/g' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i '/::env(ROUTING_CORES)/d' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i 's/SYNTH_TOP_LEVEL/SYNTH_ELABORATE_ONLY/g' ${design_dir}/openlane/user_project_wrapper/config.tcl
