# copy config files to design dir
gzip -d ${design_dir}/gds/user_proj_example.gds.gz
sed -i '108,116d' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i '/::env(FP_HORIZONTAL_HALO)/d' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i '/::env(FP_VERTICAL_HALO)/d' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i '/::env(GLB_RT_MAXLAYER)/d' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i '/::env(RT_MAX_LAYER)/d' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i 's/logic/reg/g' ${design_dir}/wb_hyperram/src/wb_hyperram.v
sed -i 's/FP_PDN_MACRO_HOOKS/HOOKS/g' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i 's/GLB_RT_/GRT_/g' ${design_dir}/openlane/user_project_wrapper/config.tcl
