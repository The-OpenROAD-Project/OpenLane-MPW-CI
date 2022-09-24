# copy config files to design dir
sed -i '5,12d' ${design_dir}/openlane/tile_clb/constraint.sdc
sed -i 's/\$script_dir\/..\/../\$::env(DESIGN_DIR)/g' ${design_dir}/openlane/tile_clb/config.tcl
sed -i 's/\$script_dir\/pin/\$::env(DESIGN_DIR)\/openlane\/tile_clb\/pin/g' ${design_dir}/openlane/tile_clb/config.tcl
sed -i 's/\$script_dir\/pdn/\$::env(DESIGN_DIR)\/openlane\/tile_clb\/pdn/g' ${design_dir}/openlane/tile_clb/config.tcl
sed -i 's/\$::env(DESIGN_DIR)\/constraint/\$::env(DESIGN_DIR)\/openlane\/tile_clb\/constraint/g' ${design_dir}/openlane/tile_clb/config.tcl
