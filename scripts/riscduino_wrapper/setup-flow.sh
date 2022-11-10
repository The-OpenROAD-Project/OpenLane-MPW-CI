# copy config files to design dir
#gds
gzip -d ${design_dir}/gds/DFFRAM.gds.gz
gzip -d ${design_dir}/gds/pinmux.gds.gz
gzip -d ${design_dir}/gds/qspim_top.gds.gz
gzip -d ${design_dir}/gds/sky130_sram_2kbyte_1rw1r_32x512_8.gds.gz
gzip -d ${design_dir}/gds/uart_i2c_usb_spi_top.gds.gz
gzip -d ${design_dir}/gds/wb_host.gds.gz
gzip -d ${design_dir}/gds/wb_interconnect.gds.gz
gzip -d ${design_dir}/gds/yifive.gds.gz
gzip -d ${design_dir}/lef/DFFRAM.lef.gz
#lef
gzip -d ${design_dir}/lef/pinmux.lef.gz
gzip -d ${design_dir}/lef/qspim_top.lef.gz
gzip -d ${design_dir}/lef/sky130_sram_2kbyte_1rw1r_32x512_8.lef.gz
gzip -d ${design_dir}/lef/uart_i2c_usb_spi_top.lef.gz
gzip -d ${design_dir}/lef/wb_host.lef.gz
gzip -d ${design_dir}/lef/wb_interconnect.lef.gz
gzip -d ${design_dir}/lef/yifive.lef.gz
sed -i '/::env(GLB_RT_MAXLAYER)/d' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i '/::env(RT_MAX_LAYER)/d' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i 's/SYNTH_TOP_LEVEL/SYNTH_ELABORATE_ONLY/g' ${design_dir}/openlane/user_project_wrapper/config.tcl
