# copy config files to design dir
sed -i '/::env(DESIGN_IS_CORE)/d' ${design_dir}/openlane/soric_soc/config.tcl
sed -i '/::env(ROUTING_CORES)/d' ${design_dir}/openlane/soric_soc/config.tcl
sed -i '/::env(GLB_RT_MAXLAYER)/d' ${design_dir}/openlane/soric_soc/config.tcl
sed -i '/::env(PL_RESIZER_ALLOW_SETUP_VIOS)/d' ${design_dir}/openlane/soric_soc/config.tcl

