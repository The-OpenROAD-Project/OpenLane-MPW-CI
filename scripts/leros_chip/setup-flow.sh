# copy config files to design dir
sed -i '23,26d' ${design_dir}/openlane/user_proj_example/config.tcl
sed -i '/::env(DESIGN_IS_CORE)/d' ${design_dir}/openlane/user_proj_example/config.tcl
sed -i '/::env(RT_MAX_LAYER)/d' ${design_dir}/openlane/user_proj_example/config.tcl
sed -i 's/\$script_dir\/pin/\$::env(DESIGN_DIR)\/openlane\/user_proj_example\/pin/g' ${design_dir}/openlane/user_proj_example/config.tcl
