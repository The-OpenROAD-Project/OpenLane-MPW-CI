# copy config files to design dir
sed -i '84,94d' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i '/::env(GLB_RT_MAXLAYER)/d' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i '/::env(RT_MAX_LAYER)/d' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i 's/SYNTH_TOP_LEVEL/SYNTH_ELABORATE_ONLY/g' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i 's/TAP_DECAP/RUN_TAP_DECAP/g' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i 's/FILL_/RUN_FILL_/g' ${design_dir}/openlane/user_project_wrapper/config.tcl
