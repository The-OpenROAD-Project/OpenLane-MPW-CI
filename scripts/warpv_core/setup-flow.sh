# copy config files to design dir
sed -i '/::env(DESIGN_IS_CORE)/d' ${design_dir}/openlane/warpv_core/config.tcl
sed -i '/::env(RT_MAX_LAYER)/d' ${design_dir}/openlane/warpv_core/config.tcl
sed -i '/::env(CLOCK_NET)/d' ${design_dir}/openlane/warpv_core/config.tcl
sed -i 's/\$script_dir\/..\/../\$::env(DESIGN_DIR)/g' ${design_dir}/openlane/warpv_core/config.tcl
sed -i 's/\$script_dir\/pin/\$::env(DESIGN_DIR)\/openlane\/warpv_core\/pin/g' ${design_dir}/openlane/warpv_core/config.tcl
