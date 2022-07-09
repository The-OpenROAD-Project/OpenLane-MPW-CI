# copy config files to design dir
sed -i '/::env(GLB_RT_MAXLAYER)/d' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i '/::env(RT_MAX_LAYER)/d' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i '/::env(FP_CORE_UTIL)/d' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i '/::env(PL_BASIC_PLACEMENT)/d' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i '/::env(PL_TARGET_DENSITY)/d' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i '/::env(ROUTING_CORES)/d' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i '/::env(GLB_RESIZER_HOLD_SLACK_MARGIN)/d' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i '/::env(PL_RESIZER_HOLD_SLACK_MARGIN)/d' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i 's/vssd1 \\/vssd1, \\/g' ${design_dir}/openlane/user_project_wrapper/config.tcl
