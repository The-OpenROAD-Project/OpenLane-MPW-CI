# copy config files to design dir
sed -i '40,44d' ${design_dir}/openlane/iiitb_rv32i/config.tcl
sed -i '/::env(DESIGN_IS_CORE)/d' ${design_dir}/openlane/iiitb_rv32i/config.tcl
sed -i '/::env(RT_MAX_LAYER)/d' ${design_dir}/openlane/iiitb_rv32i/config.tcl
sed -i 's/\$script_dir\/..\/../\$::env(DESIGN_DIR)/g' ${design_dir}/openlane/iiitb_rv32i/config.tcl
sed -i 's/\$script_dir\/pin/\$::env(DESIGN_DIR)\/openlane\/iiitb_rv32i\/pin/g' ${design_dir}/openlane/iiitb_rv32i/config.tcl
