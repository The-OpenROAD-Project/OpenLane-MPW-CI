# copy config files to design dir
sed -i '/::env(DESIGN_IS_CORE)/d' ${design_dir}/openlane/user_proj/config.tcl
sed -i '/::env(ROUTING_CORES)/d' ${design_dir}/openlane/user_proj/config.tcl
sed -i '/::env(FP_PDN_CORE_RING)/d' ${design_dir}/openlane/user_proj/config.tcl
sed -i 's/GLB_RT/GRT/g' ${design_dir}/openlane/user_proj/config.tcl
