# copy config files to design dir
rsync --archive designs/fuserisc/. ${design_dir}
cp -f ./scripts/${design}/config.tcl ${design_dir}
sed -i '/::env(PDN_CFG)/d' ${design_dir}/openlane/wb_mem_split/config.tcl
