# copy config files to design dir
sed -i '5,6d' ${design_dir}/openlane/Microwatt_FP_DFFRFile/config.tcl
sed -i '/::env(DESIGN_IS_CORE)/d' ${design_dir}/openlane/Microwatt_FP_DFFRFile/config.tcl
sed -i '/::env(RT_MAX_LAYER)/d' ${design_dir}/openlane/Microwatt_FP_DFFRFile/config.tcl
sed -i '/::env(FP_PDN_CORE_RING)/d' ${design_dir}/openlane/Microwatt_FP_DFFRFile/config.tcl
sed -i 's/SYNTH_CLOCK_UNCERTAINITY/SYNTH_CLOCK_UNCERTAINTY/g' ${design_dir}/openlane/Microwatt_FP_DFFRFile/base.sdc
sed -i 's/\$script_dir\//\$script_dir\/openlane\/Microwatt_FP_DFFRFile\//g' ${design_dir}/openlane/Microwatt_FP_DFFRFile/config.tcl
