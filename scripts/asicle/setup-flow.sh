# copy config files to design dir
sed -i '/::env(DESIGN_IS_CORE)/d' ${design_dir}/openlane/user_project/config.tcl
sed -i '/::env(GLB_RT_MAXLAYER)/d' ${design_dir}/openlane/user_project/config.tcl
sed -i '/::env(RT_MAX_LAYER)/d' ${design_dir}/openlane/user_project/config.tcl
sed -i '/::env(FP_CORE_UTIL)/d' ${design_dir}/openlane/user_project/config.tcl
sed -i '/::env(PL_TARGET_DENSITY)/d' ${design_dir}/openlane/user_project/config.tcl
sed -i '/::env(PL_RESIZER_HOLD_SLACK_MARGIN)/d' ${design_dir}/openlane/user_project/config.tcl
sed -i 's/GLB_RT/GRT/g' ${design_dir}/openlane/user_project/config.tcl
