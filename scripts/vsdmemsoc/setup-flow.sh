# copy config files to design dir
gzip -d ${design_dir}/gds/sram_32_256_sky130A.gds.gz
gzip -d ${design_dir}/gds/user_proj_example.gds.gz
sed -i '/::env(GLB_RT_MAXLAYER)/d' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i '/::env(RT_MAX_LAYER)/d' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i '/::env(PL_RANDOM_GLB_PLACEMENT)/d' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i 's/vssd1"/vssd1 vccd1 vssd1, mem vccd1 vssd1 vccd1 vssd1"/g' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i 's/GLB_RT/GRT/g' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i 's/SYNTH_TOP_LEVEL/SYNTH_ELABORATE_ONLY/g' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i 's/TAP_DECAP/RUN_TAP_DECAP/g' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i 's/FILL_/RUN_FILL_/g' ${design_dir}/openlane/user_project_wrapper/config.tcl
