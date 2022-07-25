# copy config files to design dir
sed -i '/::env(FP_PIN_ORDER_CFG)/d' ${design_dir}/openlane/glbl_cfg/config.tcl
sed -i 's/GLB_RT/GRT/g' ${design_dir}/openlane/glbl_cfg/config.tcl
