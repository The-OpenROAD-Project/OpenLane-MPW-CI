# copy config files to design dir
sed -i '/::env(FP_PIN_ORDER_CFG)/d' ${design_dir}/openlane/spi_master/config.tcl
sed -i 's/GLB_RT/GRT/g' ${design_dir}/openlane/spi_master/config.tcl
