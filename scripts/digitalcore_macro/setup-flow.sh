# copy config files to design dir
sed -i '/::env(DESIGN_IS_CORE)/d' ${design_dir}/openlane/digitalcore_macro/config.tcl
sed -i '/::env(GLB_RT_MAXLAYER)/d' ${design_dir}/openlane/digitalcore_macro/config.tcl
sed -i '/::env(ROUTING_CORES)/d' ${design_dir}/openlane/digitalcore_macro/config.tcl
