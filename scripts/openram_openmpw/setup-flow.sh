# copy config files to design dir
sed -i '/::env(DESIGN_IS_CORE)/d' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i '/::env(GLB_RT_MAXLAYER)/d' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i '/::env(RT_MAX_LAYER)/d' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i '/::env(DRT_MAX_LAYER)/d' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i '/::env(ROUTING_CORES)/d' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i 's/\/home.*_project_wrapper/$script_dir/g' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i 's/\/home.*pdks/$::env(PDK_ROOT)/g' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i 's/FP_PDN_MACRO_HOOKS/HOOKS/g' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i 's/GLB_RT/GRT/g' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i 's/SYNTH_CLOCK_UNCERTAINITY/SYNTH_CLOCK_UNCERTAINTY/g' ${design_dir}/openlane/user_project_wrapper/base.sdc
