# copy config files to design dir
sed -i '/::env(DESIGN_IS_CORE)/d' ${design_dir}/openlane/mkLanaiCPU/config.tcl
sed -i '/::env(GLB_RT_MAXLAYER)/d' ${design_dir}/openlane/mkLanaiCPU/config.tcl
sed -i '/::env(RT_MAX_LAYER)/d' ${design_dir}/openlane/mkLanaiCPU/config.tcl
sed -i '/::env(ROUTING_CORES)/d' ${design_dir}/openlane/mkLanaiCPU/config.tcl
sed -i '/::env(FP_PDN_CORE_RING)/d' ${design_dir}/openlane/mkLanaiCPU/config.tcl
sed -i '/::env(PL_RESIZER_TIMING_OPTIMIZATIONS)/d' ${design_dir}/openlane/mkLanaiCPU/config.tcl
sed -i '/::env(GLB_RESIZER_TIMING_OPTIMIZATIONS)/d' ${design_dir}/openlane/mkLanaiCPU/config.tcl
sed -i '/::env(PL_RESIZER_BUFFER_INPUT_PORTS)/d' ${design_dir}/openlane/mkLanaiCPU/config.tcl
