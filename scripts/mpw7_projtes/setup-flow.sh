# copy config files to design dir
sed -i '26,33d' ${design_dir}/openlane/projtes/config.tcl
sed -i '/::env(ROUTING_CORES)/d' ${design_dir}/openlane/projtes/config.tcl
sed -i 's/\$::env(DESIGN_DIR)\/..\/../\$::env(DESIGN_DIR)/g' ${design_dir}/openlane/projtes/config.tcl
