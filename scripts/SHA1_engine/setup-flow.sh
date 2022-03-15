# copy config files to design dir
gzip -d ${design_dir}/gds/wrapper_fibonacci.gds.gz
gzip -d ${design_dir}/gds/wrapper_sha1.gds.gz
sed -i '/::env(ROUTING_OPT_ITERS)/d' ${design_dir}/openlane/user_project_wrapper/config.tcl
