# copy config files to design dir
sed -i '/::env(DESIGN_IS_CORE)/d' ${design_dir}/openlane/user_proj_example/config.tcl
sed -i '/::env(FP_PDN_CORE_RING)/d' ${design_dir}/openlane/user_proj_example/config.tcl
sed -i '/::env(GLB_RT_MAXLAYER)/d' ${design_dir}/openlane/user_proj_example/config.tcl
sed -i '/::env(ROUTING_CORES)/d' ${design_dir}/openlane/user_proj_example/config.tcl
sed -i '/::env(SYNTH_NO_FLAT)/d' ${design_dir}/openlane/user_proj_example/config.tcl
sed -i '/::env(GLB_RT_ALLOW_CONGESTION)/d' ${design_dir}/openlane/user_proj_example/config.tcl
