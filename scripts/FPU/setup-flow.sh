# copy config files to design dir
sed -i '/::env(DESIGN_IS_CORE)/d' ${design_dir}/openlane/user_proj_example/config.tcl
sed -i '/::env(FP_PIN_ORDER_CFG)/d' ${design_dir}/openlane/user_proj_example/config.tcl
sed -i '/::env(CLOCK_PERIOD)/d' ${design_dir}/openlane/user_proj_example/config.tcl
