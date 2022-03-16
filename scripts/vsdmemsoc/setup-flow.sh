# copy config files to design dir
rsync --archive designs/${design}/. ${design_dir}
cp -f ./scripts/${design}/config.tcl ${design_dir}
gzip -d ${design_dir}/gds/sram_32_256_sky130A.gds.gz
gzip -d ${design_dir}/gds/user_proj_example.gds.gz
