# copy config files to design dir
gzip -d ${design_dir}/gds/azadi_soc_top_caravel.gds.gz
sed -i '/::env(RT_MAX_LAYER)/d' ${design_dir}/openlane/user_project_wrapper/config.tcl
