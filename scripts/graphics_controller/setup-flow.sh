# copy config files to design dir
sed -i '/::env(DESIGN_IS_CORE)/d' ${design_dir}/openlane/openGFX430/config.tcl
sed -i '/::env(RT_MAX_LAYER)/d' ${design_dir}/openlane/openGFX430/config.tcl
sed -i '/::env(GLB_RT_ADJUSTMENT)/d' ${design_dir}/openlane/openGFX430/config.tcl
sed -i '/::env(CELL_PAD)/d' ${design_dir}/openlane/openGFX430/config.tcl
sed -i 's/\$::env(DESIGN_DIR)\/..\/../\$::env(DESIGN_DIR)/g' ${design_dir}/openlane/openGFX430/config.tcl
