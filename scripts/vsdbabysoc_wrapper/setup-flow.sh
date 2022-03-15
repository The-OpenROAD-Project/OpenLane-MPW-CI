# copy config files to design dir
rsync --archive designs/vsdbabysoc/. ${design_dir}
cp -f ./scripts/${design}/config.tcl ${design_dir}
gzip -d ${design_dir}/gds/user_proj_example.gds.gz  ${design_dir}/gds/
gzip -d ${design_dir}/gds/avsddac.gds.gz  ${design_dir}/gds/
gzip -d ${design_dir}/gds/avsdpll.gds.gz  ${design_dir}/gds/
