# copy config files to design dir
rsync --archive designs/${design}/. ${design_dir}
cp -f ./scripts/${design}/config.tcl ${design_dir}
gzip -d ${design_dir}/gds/wrapper_fibonacci.gds.gz  ${design_dir}/gds/
gzip -d ${design_dir}/gds/wrapper_sha1.gds.gz  ${design_dir}/gds/
sed -i '/::env(ROUTING_OPT_ITERS)/d' ${design_dir}/openlane/user_project_wrapper/config.tcl
