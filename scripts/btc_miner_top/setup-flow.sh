# copy config files to design dir
sed -i '42,116d' ${design_dir}/openlane/btc_miner_top/config.tcl
sed -i '/::env(DESIGN_IS_CORE)/d' ${design_dir}/openlane/btc_miner_top/config.tcl
sed -i '/::env(RT_MAX_LAYER)/d' ${design_dir}/openlane/btc_miner_top/config.tcl
sed -i 's/\$script_dir\/..\/../\$::env(DESIGN_DIR)/g' ${design_dir}/openlane/btc_miner_top/config.tcl
sed -i 's/\$script_dir\/pin/\$::env(DESIGN_DIR)\/openlane\/btc_miner_top\/pin/g' ${design_dir}/openlane/btc_miner_top/config.tcl
