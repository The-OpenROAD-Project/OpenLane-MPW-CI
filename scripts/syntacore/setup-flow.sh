# copy config files to design dir
sed -i '/::env(DESIGN_IS_CORE)/d' ${design_dir}/openlane/syntacore/config.tcl
sed -i '/::env(FP_PDN_CORE_RING)/d' ${design_dir}/openlane/syntacore/config.tcl
sed -i '/::env(FP_SIZING)/d' ${design_dir}/openlane/syntacore/config.tcl
sed -i '/::env(DIE_AREA)/d' ${design_dir}/openlane/syntacore/config.tcl
sed -i '/::env(FP_PIN_ORDER_CFG)/d' ${design_dir}/openlane/syntacore/config.tcl
sed -i '/::env(PL_TARGET_DENSITY)/d' ${design_dir}/openlane/syntacore/config.tcl
sed -i '/::env(GLB_RT_MAXLAYER)/d' ${design_dir}/openlane/syntacore/config.tcl
