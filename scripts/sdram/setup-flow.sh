# copy config files to design dir
sed -i '/::env(FP_PIN_ORDER_CFG)/d' ${design_dir}/openlane/sdram/config.tcl
sed -i '/::env(PL_TARGET_DENSITY)/d' ${design_dir}/openlane/sdram/config.tcl
