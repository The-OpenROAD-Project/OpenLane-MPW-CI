# copy config files to design dir
sed -i '/::env(GLB_RT_MAXLAYER)/d' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i 's/\/\//#/g' ${design_dir}/openlane/user_project_wrapper/macros/placements/macro_placement.cfg
sed -i 's/vssd1 \\/vssd1 vccd1 vssd1, \\/g' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i 's/vssd1 "/vssd1 vccd1 vssd1"/g' ${design_dir}/openlane/user_project_wrapper/config.tcl
