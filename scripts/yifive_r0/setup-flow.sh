# copy config files to design dir
#lef
gzip -d ${design_dir}/lef/spi_master.lef.gz
gzip -d ${design_dir}/lef/glbl_cfg.lef.gz
gzip -d ${design_dir}/lef/wb_interconnect.lef.gz
gzip -d ${design_dir}/lef/sdram.lef.gz
gzip -d ${design_dir}/lef/uart_i2cm_usb.lef.gz
gzip -d ${design_dir}/lef/wb_host.lef.gz
gzip -d ${design_dir}/lef/mbist.lef.gz
gzip -d ${design_dir}/lef/syntacore.lef.gz
gzip -d ${design_dir}/lef/sky130_sram_2kbyte_1rw1r_32x512_8.lef.gz
#gds
gzip -d ${design_dir}/gds/spi_master.gds.gz
gzip -d ${design_dir}/gds/glbl_cfg.gds.gz
gzip -d ${design_dir}/gds/wb_interconnect.gds.gz
gzip -d ${design_dir}/gds/uart_i2cm_usb.gds.gz
gzip -d ${design_dir}/gds/sdram.gds.gz
gzip -d ${design_dir}/gds/wb_host.gds.gz
gzip -d ${design_dir}/gds/mbist.gds.gz
gzip -d ${design_dir}/gds/syntacore.gds.gz
gzip -d ${design_dir}/gds/sky130_sram_2kbyte_1rw1r_32x512_8.gds.gz
sed -i '/::env(GLB_RT_MAXLAYER)/d' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i '/::env(RT_MAX_LAYER)/d' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i 's/FP_PDN_MACROS/FP_PDN_MACRO_HOOKS/g' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i 's/user_project_wrapper_empty/user_project_wrapper/g' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i 's/vssd1 \\/vssd1 vccd1 vssd1, \\/g' ${design_dir}/openlane/user_project_wrapper/config.tcl
