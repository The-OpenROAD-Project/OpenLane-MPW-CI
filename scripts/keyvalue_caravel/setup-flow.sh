# copy config files to design dir
rsync --archive designs/${design}/. ${design_dir}
cp -f ./scripts/${design}/config.tcl ${design_dir}
gzip -d ${design_dir}/gds/both.gds.gz  ${design_dir}/gds/
sed -i 's/user_project_wrapper_empty/user_project_wrapper/g' ${design_dir}/openlane/user_project_wrapper/config.tcl
