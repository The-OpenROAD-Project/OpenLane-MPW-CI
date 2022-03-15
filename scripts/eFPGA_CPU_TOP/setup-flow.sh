# copy config files to design dir
rsync --archive designs/fuserisc/. ${design_dir}
cp -f ./scripts/${design}/config.tcl ${design_dir}
sed -i '/::env(FP_CORE_UTIL)/d' ${design_dir}/openlane/user_proj_example/config.tcl
sed -i '/::env(PL_TARGET_DESNITY)/d' ${design_dir}/openlane/user_proj_example/config.tcl
