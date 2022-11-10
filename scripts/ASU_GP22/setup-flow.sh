# copy config files to design dir
sed -i '/::env(ROUTING_CORES)/d' ${design_dir}/openlane/tile/config.tcl
sed -i '/::env(RT_MAX_LAYER)/d' ${design_dir}/openlane/tile/config.tcl
sed -i '/::env(GRT_ADJUSTMENT)/d' ${design_dir}/openlane/tile/config.tcl
sed -i '/::env(DIODE_INSERTION_STRATEGY)/d' ${design_dir}/openlane/tile/config.tcl
sed -i 's/\/home\/younis\/caravel\/caravel_user_project/\$::env(DESIGN_DIR)/g' ${design_dir}/openlane/tile/config.tcl
sed -i 's/\/home\/younis\/caravel\/caravel_user_project/..\/../g' ${design_dir}/verilog/rtl/tile/include.v
