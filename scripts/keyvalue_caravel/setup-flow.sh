# copy config files to design dir
gzip -d ${design_dir}/gds/both.gds.gz
sed -i 's/user_project_wrapper_empty/user_project_wrapper/g' ${design_dir}/openlane/user_project_wrapper/config.tcl
