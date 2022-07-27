# copy config files to design dir
sed -i '/::env(BASE_SDC_FILE)/d' ${design_dir}/openlane/tile_clb/config.tcl
sed -i '/set_case_analysis/d' ${design_dir}/openlane/tile_clb/constraint.sdc
