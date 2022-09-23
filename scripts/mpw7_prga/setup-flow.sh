# copy config files to design dir
gzip -d ${design_dir}/gds/tile_clb.gds.gz
sed -i '/::env(ROUTING_CORES)/d' ${design_dir}/openlane/prga/config.tcl
sed -i 's/GLB_RT/GRT/g' ${design_dir}/openlane/prga/config.tcl
sed -i 's/\$script_dir\/..\/../\$::env(DESIGN_DIR)/g' ${design_dir}/openlane/prga/config.tcl
sed -i 's/\$script_dir\/pin/\$::env(DESIGN_DIR)\/openlane\/prga\/pin/g' ${design_dir}/openlane/prga/config.tcl
sed -i 's/\$script_dir\/pdn/\$::env(DESIGN_DIR)\/openlane\/prga\/pdn/g' ${design_dir}/openlane/prga/config.tcl
sed -i 's/\$script_dir\/macro/\$::env(DESIGN_DIR)\/openlane\/prga\/macro/g' ${design_dir}/openlane/prga/config.tcl
sed -i 's/\$::env(DESIGN_DIR)\/constraint/\$::env(DESIGN_DIR)\/openlane\/prga\/constraint/g' ${design_dir}/openlane/prga/config.tcl
