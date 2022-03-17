# copy config files to design dir
sed -i '/::env(FP_CORE_UTIL)/d' ${design_dir}/openlane/user_proj_example/config.tcl
sed -i '/::env(PL_TARGET_DESNITY)/d' ${design_dir}/openlane/user_proj_example/config.tcl
