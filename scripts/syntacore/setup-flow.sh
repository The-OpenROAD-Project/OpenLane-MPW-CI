# copy config files to design dir
rsync --archive designs/yifive_a2/. ${design_dir}
cp -f ./scripts/${design}/config.tcl ${design_dir}
sed -i '/::env(FP_PIN_ORDER_CFG)/d' ${design_dir}/openlane/syntacore/config.tcl
