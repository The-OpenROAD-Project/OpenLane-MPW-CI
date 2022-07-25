# copy config files to design dir
sed -i '/::env(DESIGN_IS_CORE)/d' ${design_dir}/openlane/user_proj_dac/config.tcl
sed -i '/::env(GLB_RT_MAXLAYER)/d' ${design_dir}/openlane/user_proj_dac/config.tcl
sed -i '/::env(ROUTING_CORES)/d' ${design_dir}/openlane/user_proj_dac/config.tcl
sed -i '/::env(FP_SIZING)/d' ${design_dir}/openlane/user_proj_dac/config.tcl
sed -i '/::env(DIE_AREA)/d' ${design_dir}/openlane/user_proj_dac/config.tcl
sed -i 's/GLB_RT/GRT/g' ${design_dir}/openlane/user_proj_dac/config.tcl
