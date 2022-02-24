# copy config files to design dir
rsync --archive designs/crypto_accelerator/. ${design_dir}
cp -f ./scripts/${design}/config.tcl ${design_dir}
sed -i '/::env(DESIGN_IS_CORE)/d' ${design_dir}/openlane/accelerator_top/config.tcl
sed -i '/::env(GLB_RT_MAXLAYER)/d' ${design_dir}/openlane/accelerator_top/config.tcl
sed -i '/::env(ROUTING_CORES)/d' ${design_dir}/openlane/accelerator_top/config.tcl
