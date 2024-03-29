# copy config files to design dir
sed -i '/::env(DESIGN_IS_CORE)/d' ${design_dir}/openlane/marmot/config.tcl
sed -i '/::env(GLB_RT_MAXLAYER)/d' ${design_dir}/openlane/marmot/config.tcl
sed -i '/::env(RT_MAX_LAYER)/d' ${design_dir}/openlane/marmot/config.tcl
sed -i '/::env(ROUTING_CORES)/d' ${design_dir}/openlane/marmot/config.tcl
sed -i 's/SYNTH_CLOCK_UNCERTAINITY/SYNTH_CLOCK_UNCERTAINTY/g'  ${design_dir}/openlane/marmot/base.sdc
