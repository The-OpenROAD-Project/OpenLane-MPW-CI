# copy config files to design dir
sed -i '/::env(GLB_RT_MAXLAYER)/d' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i '/::env(ROUTING_OPT_ITERS)/d' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i '/::env(GLB_RT_ADJUSTMENT)/d' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i 's/500 1500 N/500 100 N/g' ${design_dir}/openlane/user_project_wrapper/macro.cfg
sed -i '/::env(GLB_RT_L2_ADJUSTMENT)/d' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i '/::env(GLB_RT_L3_ADJUSTMENT)/d' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i 's/SYNTH_TOP_LEVEL/SYNTH_ELABORATE_ONLY/g' ${design_dir}/openlane/user_project_wrapper/config.tcl
