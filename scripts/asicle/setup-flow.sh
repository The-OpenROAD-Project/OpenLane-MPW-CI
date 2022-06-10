# copy config files to design dir
sed -i '/::env(DESIGN_IS_CORE)/d' ${design_dir}/openlane/user_project/config.tcl
sed -i '/::env(GLB_RT_MAXLAYER)/d' ${design_dir}/openlane/user_project/config.tcl
sed -i '/::env(RT_MAX_LAYER)/d' ${design_dir}/openlane/user_project/config.tcl
sed -i '/::env(FP_ASPECT_RATIO)/d' ${design_dir}/openlane/user_project/config.tcl
sed -i '/::env(PL_TARGET_DENSITY)/d' ${design_dir}/openlane/user_project/config.tcl
sed -i '/::env(FP_SIZING)/d' ${design_dir}/openlane/user_project/config.tcl
