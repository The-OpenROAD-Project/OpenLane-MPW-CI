# copy config files to design dir
sed -i '31,61d' ${design_dir}/openlane/marmot/config.tcl
sed -i '/::env(DIODE_INSERTION_STRATEGY)/d' ${design_dir}/openlane/marmot/config.tcl
sed -i '/::env(PL_RESIZER_HOLD_SLACK_MARGIN)/d' ${design_dir}/openlane/marmot/config.tcl
sed -i '/::env(GLB_RESIZER_HOLD_SLACK_MARGIN)/d' ${design_dir}/openlane/marmot/config.tcl
sed -i '/::env(ROUTING_CORES)/d' ${design_dir}/openlane/marmot/config.tcl
sed -i '/::env(GLB_RT_ALLOW_CONGESTION)/d' ${design_dir}/openlane/marmot/config.tcl
sed -i 's/CELL_PAD/DPL_CELL_PADDING/g' ${design_dir}/openlane/marmot/config.tcl
sed -i 's/GLB_RT/GRT/g' ${design_dir}/openlane/marmot/config.tcl
sed -i 's/GLB_RT/GRT/g' ${design_dir}/openlane/marmot/macro_obs.tcl
sed -i 's/\$script_dir\/..\/..\/../\$::env(DESIGN_DIR)/g' ${design_dir}/openlane/marmot/config.tcl
sed -i 's/SYNTH_CLOCK_UNCERTAINITY/SYNTH_CLOCK_UNCERTAINTY/g'  ${design_dir}/openlane/marmot/base.sdc
