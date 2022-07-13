# copy config files to design dir
sed -i 's/FP_PDN_MACRO_HOOKS/HOOKS/g' ${design_dir}/openlane/user_project_wrapper/config.tcl
