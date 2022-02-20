# copy config files to design dir
rsync --archive designs/mbist_ctrl/. ${design_dir}
cp -f ./scripts/${design}/config.tcl ${design_dir}
sed -i '/::env(DESIGN_IS_CORE)/d' ${design_dir}/openlane/mbist2/config.tcl
sed -i '/::env(FP_PIN_ORDER_CFG)/d' ${design_dir}/openlane/mbist2/config.tcl
