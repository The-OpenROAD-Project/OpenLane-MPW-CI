# copy config files to design dir
sed -i '103,172d' ${design_dir}/openlane/user_proj_example/config.tcl
sed -i '/::env(DESIGN_IS_CORE)/d' ${design_dir}/openlane/user_proj_example/config.tcl
sed -i '/::env(GLB_RT_MAXLAYER)/d' ${design_dir}/openlane/user_proj_example/config.tcl
sed -i '/::env(RT_MAX_LAYER)/d' ${design_dir}/openlane/user_proj_example/config.tcl
sed -i '/::env(RUN_CVC)/d' ${design_dir}/openlane/user_proj_example/config.tcl
sed -i 's/GLB_RT/GRT/g' ${design_dir}/openlane/user_proj_example/config.tcl
