# copy config files to design dir
gzip -d ${design_dir}/gds/user_proj_example.gds.gz
sed -i '/::env(FP_HORIZONTAL_HALO)/d' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i '/::env(FP_VERTICAL_HALO)/d' ${design_dir}/openlane/user_project_wrapper/config.tcl
