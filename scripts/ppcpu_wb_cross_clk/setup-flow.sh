# copy config files to design dir
sed -i '/::env(DESIGN_IS_CORE)/d' ${design_dir}/openlane/wb_cross_clk/config.tcl
sed -i '/::env(RT_MAX_LAYER)/d' ${design_dir}/openlane/wb_cross_clk/config.tcl
sed -i '/::env(ROUTING_CORES)/d' ${design_dir}/openlane/wb_cross_clk/config.tcl
sed -i 's/\$::env(DESIGN_DIR)/\$script_dir/g' ${design_dir}/openlane/wb_cross_clk/config.tcl
sed -i 's/SYNTH_CLOCK_UNCERTAINITY/SYNTH_CLOCK_UNCERTAINTY/g' ${design_dir}/openlane/wb_cross_clk/base.sdc
sed -i 's/\$script_dir\/..\/../\$::env(DESIGN_DIR)/g' ${design_dir}/openlane/wb_cross_clk/config.tcl
sed -i 's/\$script_dir\/pin/\$::env(DESIGN_DIR)\/openlane\/wb_cross_clk\/pin/g' ${design_dir}/openlane/wb_cross_clk/config.tcl
sed -i 's/\$script_dir\/base/\$::env(DESIGN_DIR)\/openlane\/wb_cross_clk\/base/g' ${design_dir}/openlane/wb_cross_clk/config.tcl
