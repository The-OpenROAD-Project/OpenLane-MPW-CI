# copy config files to design dir
gzip -d ${design_dir}/gds/user_project.gds.gz
sed -i 's/FP_PDN_MACRO_HOOKS/HOOKS/g' ${design_dir}/openlane/user_project_wrapper/config.tcl
