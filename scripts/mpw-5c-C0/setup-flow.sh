# copy config files to design dir
sed -i '/::env(DESIGN_IS_CORE)/d' ${design_dir}/openlane/c0_system/config.tcl
sed -i '/::env(GLB_RT_MAXLAYER)/d' ${design_dir}/openlane/c0_system/config.tcl
sed -i '/::env(RT_MAX_LAYER)/d' ${design_dir}/openlane/c0_system/config.tcl
