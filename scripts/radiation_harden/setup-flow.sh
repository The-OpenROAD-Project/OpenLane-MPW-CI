# copy config files to design dir
gzip -d ${design_dir}/gds/user_proj_example.gds.gz
sed -i '/::env(ROUTING_CORES)/d' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i '/::env(ROUTING_OPT_ITERS)/d' ${design_dir}/openlane/user_project_wrapper/config.tcl
