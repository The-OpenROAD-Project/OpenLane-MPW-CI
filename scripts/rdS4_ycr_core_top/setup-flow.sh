# copy config files to design dir
sed -i '92,102d' ${design_dir}/openlane/ycr_core_top/config.tcl
sed -i '/::env(DESIGN_IS_CORE)/d' ${design_dir}/openlane/ycr_core_top/config.tcl
sed -i '/::env(ROUTING_CORES)/d' ${design_dir}/openlane/ycr_core_top/config.tcl
sed -i '/::env(RT_MAX_LAYER)/d' ${design_dir}/openlane/ycr_core_top/config.tcl
sed -i '/::env(FP_PDN_CORE_RING)/d' ${design_dir}/openlane/ycr_core_top/config.tcl
sed -i '/::env(FP_PIN_ORDER_CFG)/d' ${design_dir}/openlane/ycr_core_top/config.tcl
sed -i '/::env(GRT_ADJUSTMENT)/d' ${design_dir}/openlane/ycr_core_top/config.tcl
sed -i '/::env(SYNTH_MAX_FANOUT)/d' ${design_dir}/openlane/ycr_core_top/config.tcl
sed -i 's/\$::env(DESIGN_DIR)\/..\/../\$::env(DESIGN_DIR)/g' ${design_dir}/openlane/ycr_core_top/config.tcl
sed -i 's/\$::env(DESIGN_DIR)\/base.sdc/\$::env(DESIGN_DIR)\/openlane\/ycr_core_top\/base.sdc/g' ${design_dir}/openlane/ycr_core_top/config.tcl
sed -i 's/8.0000/4.000/g' ${design_dir}/openlane/ycr_core_top/base.sdc
