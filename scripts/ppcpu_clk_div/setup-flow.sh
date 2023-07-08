# copy config files to design dir
sed -i '/::env(DESIGN_IS_CORE)/d' ${design_dir}/openlane/clk_div/config.tcl
sed -i '/::env(RT_MAX_LAYER)/d' ${design_dir}/openlane/clk_div/config.tcl
sed -i '/::env(ROUTING_CORES)/d' ${design_dir}/openlane/clk_div/config.tcl
sed -i 's/\$::env(DESIGN_DIR)/\$script_dir/g' ${design_dir}/openlane/clk_div/config.tcl
sed -i 's/\$script_dir\/..\/../\$::env(DESIGN_DIR)/g' ${design_dir}/openlane/clk_div/config.tcl
sed -i 's/\$script_dir\/base/\$::env(DESIGN_DIR)\/openlane\/clk_div\/base/g' ${design_dir}/openlane/clk_div/config.tcl
sed -i 's/SYNTH_CLOCK_UNCERTAINITY/SYNTH_CLOCK_UNCERTAINTY/g' ${design_dir}/openlane/clk_div/base.sdc
sed -i 's/_255_/_249_/g' ${design_dir}/openlane/clk_div/base.sdc
