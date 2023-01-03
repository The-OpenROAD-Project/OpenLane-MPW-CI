# copy config files to design dir
sed -i '138,150d' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i '/::env(FP_CORE_UTIL)/d' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i '/::env(ROUTING_CORES)/d' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i '/::env(PL_TARGET_DENSITY)/d' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i '/::env(MACRO_PLACE_HALO)/d' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i '/::env(MACRO_PLACE_CHANNEL)/d' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i '/::env(LVS_CONNECT_BY_LABEL)/d' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i '/::env(MACRO_PLACEMENT_CFG)/d' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i '/::env(GLB_RESIZER_HOLD_SLACK_MARGIN)/d' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i '/::env(PL_RESIZER_HOLD_SLACK_MARGIN)/d' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i 's/FP_PDN_MACRO_HOOKS/HOOKS/g' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i 's/GLB_RT/GRT/g' ${design_dir}/openlane/user_project_wrapper/config.tcl
