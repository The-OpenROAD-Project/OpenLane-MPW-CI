# copy config files to design dir
sed -i '/::env(DESIGN_IS_CORE)/d' ${design_dir}/openlane/pwm/config.tcl
sed -i '/::env(GLB_RT_MAXLAYER)/d' ${design_dir}/openlane/pwm/config.tcl
sed -i '/::env(BASE_SDC_FILE)/d' ${design_dir}/openlane/pwm/config.tcl
