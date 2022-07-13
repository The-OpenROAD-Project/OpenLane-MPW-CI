# copy config files to design dir
sed -i 's/user_project_wrapper_empty/user_project_wrapper/g' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i 's/vssd1 \\/vssd1, \\/g' ${design_dir}/openlane/user_project_wrapper/config.tcl
gzip -d ${design_dir}/gds/user_proj_example.gds.gz
gzip -d ${design_dir}/gds/sky130_sram_1kbyte_1rw1r_32x256_8.gds.gz
gzip -d ${design_dir}/gds/sky130_sram_2kbyte_1rw1r_32x512_8.gds.gz
sed -i '/::env(GLB_RT_MAXLAYER)/d' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i '/::env(RT_MAX_LAYER)/d' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i 's/FP_PDN_MACRO_HOOKS/HOOKS/g' ${design_dir}/openlane/user_project_wrapper/config.tcl
