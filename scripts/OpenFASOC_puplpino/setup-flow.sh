# copy config files to design dir
gzip -d ${design_dir}/gds/pulpino_top.gds.gz
sed -i '/::env(RT_MAX_LAYER)/d' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i 's/vssd1"/vssd1 vccd1 vssd1"/g' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i 's/SYNTH_TOP_LEVEL/SYNTH_ELABORATE_ONLY/g' ${design_dir}/openlane/user_project_wrapper/config.tcl
