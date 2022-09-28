# copy config files to design dir
sed -i '/::env(DESIGN_IS_CORE)/d' ${design_dir}/openlane/controller_core/config.tcl
sed -i '/::env(RT_MAX_LAYER)/d' ${design_dir}/openlane/controller_core/config.tcl
sed -i '/::env(ROUTING_CORES)/d' ${design_dir}/openlane/controller_core/config.tcl
sed -i 's/\$script_dir\/..\/../\$::env(DESIGN_DIR)/g' ${design_dir}/openlane/controller_core/config.tcl
sed -i 's/\$script_dir\/pin/\$::env(DESIGN_DIR)\/openlane\/controller_core\/pin/g' ${design_dir}/openlane/controller_core/config.tcl
sed -i 's/\$::env(DESIGN_DIR)\/base/\$::env(DESIGN_DIR)\/openlane\/controller_core\/base/g' ${design_dir}/openlane/controller_core/config.tcl
