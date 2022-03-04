# copy config files to design dir
rsync --archive designs/${design}/. ${design_dir}
cp -f ./scripts/${design}/config.tcl ${design_dir}
sed -i '/::env(DESIGN_IS_CORE)/d' ${design_dir}/openlane/user_proj_example/config.tcl
sed -i '/::env(GLB_RT_MAXLAYER)/d' ${design_dir}/openlane/user_proj_example/config.tcl
sed -i '/::env(ROUTING_CORES)/d' ${design_dir}/openlane/user_proj_example/config.tcl
sed -i '/::env(PL_RESIZER_HOLD_SLACK_MARGIN)/d' ${design_dir}/openlane/user_proj_example/config.tcl
sed -i '/::env(PL_RESIZER_MAX_SLEW_MARGIN)/d' ${design_dir}/openlane/user_proj_example/config.tcl
sed -i '/::env(PL_RESIZER_MAX_CAP_MARGIN)/d' ${design_dir}/openlane/user_proj_example/config.tcl
sed -i '/::env(PL_RESIZER_HOLD_MAX_BUFFER_PERCENT)/d' ${design_dir}/openlane/user_proj_example/config.tcl
