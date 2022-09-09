# copy config files to design dir
sed -i '/::env(DESIGN_IS_CORE)/d' ${design_dir}/openlane/Microwatt_FP_DFFRFile/config.tcl
sed -i '/::env(GLB_RT_MAXLAYER)/d' ${design_dir}/openlane/Microwatt_FP_DFFRFile/config.tcl
sed -i '/::env(RT_MAX_LAYER)/d' ${design_dir}/openlane/Microwatt_FP_DFFRFile/config.tcl
sed -i '/::env(FP_PDN_CORE_RING)/d' ${design_dir}/openlane/Microwatt_FP_DFFRFile/config.tcl
sed -i '/::env(ECO_ENABLE)/d' ${design_dir}/openlane/Microwatt_FP_DFFRFile/config.tcl
sed -i 's/SYNTH_CLOCK_UNCERTAINITY/SYNTH_CLOCK_UNCERTAINTY/g' ${design_dir}/openlane/Microwatt_FP_DFFRFile/base.sdc
