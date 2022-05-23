# copy config files to design dir
gzip -d ${design_dir}/gds/wrapped_hack_soc_dffram.gds.gz
sed -i '/::env(RT_MAX_LAYER)/d' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i 's/mprj/hack_soc/g' ${design_dir}/openlane/user_project_wrapper/config.tcl
