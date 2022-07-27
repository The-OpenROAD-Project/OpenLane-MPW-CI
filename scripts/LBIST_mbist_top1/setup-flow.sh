# copy config files to design dir
sed -i '/::env(DESIGN_IS_CORE)/d' ${design_dir}/openlane/mbist_top1/config.tcl
sed -i '/::env(GLB_RT_MAXLAYER)/d' ${design_dir}/openlane/mbist_top1/config.tcl
sed -i '/::env(RT_MAX_LAYER)/d' ${design_dir}/openlane/mbist_top1/config.tcl
sed -i '/::env(FP_PIN_ORDER_CFG)/d' ${design_dir}/openlane/mbist_top1/config.tcl
sed -i 's/GLB_RT/GRT/g' ${design_dir}/openlane/mbist_top1/config.tcl
