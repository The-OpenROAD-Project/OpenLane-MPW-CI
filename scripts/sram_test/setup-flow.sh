# copy config files to design dir
rsync --archive designs/${design}/. ${design_dir}
cp -f ./scripts/${design}/config.tcl ${design_dir}
sed -i 's/user_project_wrapper_empty/user_project_wrapper/g' ${design_dir}/openlane/user_project_wrapper/config.tcl
gzip -d ${design_dir}/gds/user_proj_example.gds.gz  ${design_dir}/gds/
gzip -d ${design_dir}/gds/sky130_sram_1kbyte_1rw1r_32x256_8.gds.gz  ${design_dir}/gds/
gzip -d ${design_dir}/gds/sky130_sram_2kbyte_1rw1r_32x512_8.gds.gz  ${design_dir}/gds/
