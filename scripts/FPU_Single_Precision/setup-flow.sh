# copy config files to design dir
sed -i '/::env(DESIGN_IS_CORE)/d' ${design_dir}/openlane/user_proj_example/config.tcl
sed -i '/::env(GLB_RT_MAXLAYER)/d' ${design_dir}/openlane/user_proj_example/config.tcl
sed -i '/::env(RT_MAX_LAYER)/d' ${design_dir}/openlane/user_proj_example/config.tcl
sed -i '/::env(CLOCK_PERIOD)/d' ${design_dir}/openlane/user_proj_example/config.tcl
sed -i '/::env(CLOCK_PORT)/d' ${design_dir}/openlane/user_proj_example/config.tcl
sed -i '/::env(CLOCK_NET)/d' ${design_dir}/openlane/user_proj_example/config.tcl
sed -i '/::env(CELL_PAD)/d' ${design_dir}/openlane/user_proj_example/config.tcl
