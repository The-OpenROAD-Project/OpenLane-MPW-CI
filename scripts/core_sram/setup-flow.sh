# copy config files to design dir
rsync --archive designs/fuserisc/. ${design_dir}
cp -f ./scripts/${design}/config.tcl ${design_dir}
gzip -d ${design_dir}/gds/sky130_sram_1kbyte_1rw1r_32x256_8.gds.gz  ${design_dir}/gds/
sed -i '/::env(MACRO_PLACEMENT_CFG)/d' ${design_dir}/openlane/core_sram/config.tcl
