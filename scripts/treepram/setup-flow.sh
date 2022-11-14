# copy config files to design dir
gzip -d ${design_dir}/gds/user_project.gds.gz
sed -i 's/FP_PDN_MACRO_HOOKS/HOOKS/g' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i 's/SYNTH_TOP_LEVEL/SYNTH_ELABORATE_ONLY/g' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i 's/TAP_DECAP/RUN_TAP_DECAP/g' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i 's/FILL_/RUN_FILL_/g' ${design_dir}/openlane/user_project_wrapper/config.tcl
