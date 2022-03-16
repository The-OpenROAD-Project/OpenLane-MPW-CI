# copy config files to design dir
rsync --archive designs/${design}/. ${design_dir}
cp -f ./scripts/${design}/config.tcl ${design_dir}
sed -i '/::env(DESIGN_IS_CORE)/d' ${design_dir}/openlane/user_proj_example/config.tcl
sed -i '/::env(GLB_RT_MAXLAYER)/d' ${design_dir}/openlane/user_proj_example/config.tcl
sed -i '/::env(FP_CORE_UTIL)/d' ${design_dir}/openlane/user_proj_example/config.tcl
sed -i '/::env(CELL_PAD)/d' ${design_dir}/openlane/user_proj_example/config.tcl
sed -i '/::env(SYNTH_STRATEGY)/d' ${design_dir}/openlane/user_proj_example/config.tcl
sed -i '/::env(PL_RESIZER_ALLOW_SETUP_VIOS)/d' ${design_dir}/openlane/user_proj_example/config.tcl
sed -i '/::env(GLB_RESIZER_ALLOW_SETUP_VIOS)/d' ${design_dir}/openlane/user_proj_example/config.tcl
sed -i '/::env(PL_TARGET_DENSITY)/d' ${design_dir}/openlane/user_proj_example/config.tcl
