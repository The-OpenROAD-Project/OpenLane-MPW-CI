# copy config files to design dir
sed -i '/::env(ROUTING_CORES)/d' ${design_dir}/openlane/tile_clb/config.tcl
sed -i '/::env(BASE_SDC_FILE)/d' ${design_dir}/openlane/tile_clb/config.tcl
