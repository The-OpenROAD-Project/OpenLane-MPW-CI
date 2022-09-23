# copy config files to design dir
sed -i '/::env(DESIGN_IS_CORE)/d' ${design_dir}/openlane/uart_i2cm_usb_spi_top/config.tcl
sed -i '/::env(RT_MAX_LAYER)/d' ${design_dir}/openlane/uart_i2cm_usb_spi_top/config.tcl
sed -i '/::env(FP_PDN_CORE_RING)/d' ${design_dir}/openlane/uart_i2cm_usb_spi_top/config.tcl
sed -i '/::env(FP_PIN_ORDER_CFG)/d' ${design_dir}/openlane/uart_i2cm_usb_spi_top/config.tcl
sed -i 's/\$::env(DESIGN_DIR)\/..\/../\$::env(DESIGN_DIR)/g' ${design_dir}/openlane/uart_i2cm_usb_spi_top/config.tcl
sed -i 's/\$::env(DESIGN_DIR)\/base.sdc/\$::env(DESIGN_DIR)\/openlane\/uart_i2cm_usb_spi_top\/base.sdc/g' ${design_dir}/openlane/uart_i2cm_usb_spi_top/config.tcl
