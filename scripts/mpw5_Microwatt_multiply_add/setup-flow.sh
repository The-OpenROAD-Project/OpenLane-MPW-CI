# copy config files to design dir
sed -i '/::env(DESIGN_IS_CORE)/d' ${design_dir}/openlane/multiply_add_64x64/config.tcl
sed -i '/::env(GLB_RT_MAXLAYER)/d' ${design_dir}/openlane/multiply_add_64x64/config.tcl
sed -i '/::env(RT_MAX_LAYER)/d' ${design_dir}/openlane/multiply_add_64x64/config.tcl
sed -i '/::env(FP_PDN_CORE_RING)/d' ${design_dir}/openlane/multiply_add_64x64/config.tcl
sed -i '/::env(ECO_ENABLE)/d' ${design_dir}/openlane/multiply_add_64x64/config.tcl
