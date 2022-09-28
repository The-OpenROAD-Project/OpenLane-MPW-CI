# copy config files to design dir
sed -i '/::env(DESIGN_IS_CORE)/d' ${design_dir}/openlane/cpu/config.tcl
sed -i '/::env(RT_MAX_LAYER)/d' ${design_dir}/openlane/cpu/config.tcl
sed -i 's/\$script_dir\/..\/../\$::env(DESIGN_DIR)/g' ${design_dir}/openlane/cpu/config.tcl
