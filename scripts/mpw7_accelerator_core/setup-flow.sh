# copy config files to design dir
sed -i '38,45d' ${design_dir}/openlane/user_proj_example/config.tcl
sed -i '/::env(DESIGN_IS_CORE)/d' ${design_dir}/openlane/user_proj_example/config.tcl
sed -i '/::env(FP_SIZING)/d' ${design_dir}/openlane/user_proj_example/config.tcl
sed -i '/::env(DIE_AREA)/d' ${design_dir}/openlane/user_proj_example/config.tcl
sed -i '/::env(PL_TARGET_DENSITY)/d' ${design_dir}/openlane/user_proj_example/config.tcl
sed -i '/::env(RT_MAX_LAYER)/d' ${design_dir}/openlane/user_proj_example/config.tcl
sed -i '/::env(ROUTING_CORES)/d' ${design_dir}/openlane/user_proj_example/config.tcl
sed -i '/::env(FP_PIN_ORDER_CFG)/d' ${design_dir}/openlane/user_proj_example/config.tcl
sed -i 's/\$script_dir\/..\/../\$::env(DESIGN_DIR)/g' ${design_dir}/openlane/user_proj_example/config.tcl
sed -i 's/\$script_dir\/pin/\$::env(DESIGN_DIR)\/openlane\/user_proj_example\/pin/g' ${design_dir}/openlane/user_proj_example/config.tcl
