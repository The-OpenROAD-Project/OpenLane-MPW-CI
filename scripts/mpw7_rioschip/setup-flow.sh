# copy config files to design dir
sed -i '/::env(DESIGN_IS_CORE)/d' ${design_dir}/openlane/top/config.tcl
sed -i '/::env(RT_MAX_LAYER)/d' ${design_dir}/openlane/top/config.tcl
sed -i '/::env(ROUTING_CORES)/d' ${design_dir}/openlane/top/config.tcl
sed -i '/::env(MACRO_PLACEMENT_CFG)/d' ${design_dir}/openlane/top/config.tcl
sed -i 's/\$proj_dir\/..\/../\$::env(DESIGN_DIR)/g' ${design_dir}/openlane/top/config.tcl
sed -i 's/\$proj_dir\/..\/../\$::env(DESIGN_DIR)/g' ${design_dir}/openlane/top/config.tcl
sed -i 's/GLB_RT/GRT/g' ${design_dir}/openlane/top/config.tcl
