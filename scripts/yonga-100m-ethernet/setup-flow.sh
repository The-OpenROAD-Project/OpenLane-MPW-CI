# copy config files to design dir
sed -i '/::env(GLB_RT_MAXLAYER)/d' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i 's/mprj/eth/g' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i 's/FP_PDN_MACRO_HOOKS/HOOKS/g' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i 's/GLB_RT/GRT/g' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i 's/SYNTH_TOP_LEVEL/SYNTH_ELABORATE_ONLY/g' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i 's/TAP_DECAP/RUN_TAP_DECAP/g' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i 's/FILL_/RUN_FILL_/g' ${design_dir}/openlane/user_project_wrapper/config.tcl
