# copy config files to design dir
gzip -d ${design_dir}/gds/azadi_soc_top_caravel.gds.gz
sed -i '72,86d' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i '/::env(RT_MAX_LAYER)/d' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i '/::env(MACRO_PLACEMENT_CFG)/d' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i 's/FP_PDN_MACRO_HOOKS/HOOKS/g' ${design_dir}/openlane/user_project_wrapper/config.tcl
