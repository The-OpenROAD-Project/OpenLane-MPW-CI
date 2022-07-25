# copy config files to design dir
sed -i '/::env(FP_PIN_ORDER_CFG)/d' ${design_dir}/openlane/uart_i2cm_usb/config.tcl
sed -i '/::env(PL_TARGET_DENSITY)/d' ${design_dir}/openlane/uart_i2cm_usb/config.tcl
sed -i 's/GLB_RT/GRT/g' ${design_dir}/openlane/uart_i2cm_usb/config.tcl
