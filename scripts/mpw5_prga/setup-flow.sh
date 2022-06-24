# copy config files to design dir
sed -i '/::env(DESIGN_IS_CORE)/d' ${design_dir}/openlane/prga/config.tcl
sed -i '/::env(GLB_RT_MAXLAYER)/d' ${design_dir}/openlane/prga/config.tcl
sed -i '/::env(RT_MAX_LAYER)/d' ${design_dir}/openlane/prga/config.tcl
sed -i '/::env(DRT_MAX_LAYER)/d' ${design_dir}/openlane/prga/config.tcl
sed -i '/::env(ROUTING_CORES)/d' ${design_dir}/openlane/prga/config.tcl
sed -i '/::env(BASE_SDC_FILE)/d' ${design_dir}/openlane/prga/config.tcl
