# copy config files to design dir
sed -i '6d' ${design_dir}/openlane/trng_wb_wrapper/config.tcl
sed -i 's/::env(DESIGN_DIR)/script_dir/g' ${design_dir}/openlane/trng_wb_wrapper/config.tcl
sed -i '/::env(DESIGN_IS_CORE)/d' ${design_dir}/openlane/trng_wb_wrapper/config.tcl
sed -i '/::env(GLB_RT_MAXLAYER)/d' ${design_dir}/openlane/trng_wb_wrapper/config.tcl
sed -i '/::env(PL_BASIC_PLACEMENT)/d' ${design_dir}/openlane/trng_wb_wrapper/config.tcl
