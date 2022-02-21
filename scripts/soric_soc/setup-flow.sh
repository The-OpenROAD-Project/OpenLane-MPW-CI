# copy config files to design dir
rsync --archive designs/soric_project/. ${design_dir}
cp -f ./scripts/${design}/config.tcl ${design_dir}
sed -i '/::env(DESIGN_IS_CORE)/d' ${design_dir}/openlane/soric_soc/config.tcl
sed -i '/::env(GLB_RT_MAXLAYER)/d' ${design_dir}/openlane/soric_soc/config.tcl
sed -i '/::env(PL_RESIZER_HOLD_SLACK_MARGIN)/d' ${design_dir}/openlane/soric_soc/config.tcl
sed -i '/::env(GLB_RESIZER_HOLD_SLACK_MARGIN)/d' ${design_dir}/openlane/soric_soc/config.tcl
