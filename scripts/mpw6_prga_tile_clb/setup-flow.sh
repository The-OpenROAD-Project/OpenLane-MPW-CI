# copy config files to design dir
sed -i '/::env(BASE_SDC_FILE)/d' ${design_dir}/openlane/tile_clb/config.tcl
