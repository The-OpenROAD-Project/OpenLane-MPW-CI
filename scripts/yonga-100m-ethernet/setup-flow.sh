# copy config files to design dir
sed -i '/::env(GLB_RT_MAXLAYER)/d' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i 's/mprj/eth/g' ${design_dir}/openlane/user_project_wrapper/config.tcl
