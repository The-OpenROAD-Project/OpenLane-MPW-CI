# copy config files to design dir
sed -i '/::env(DESIGN_IS_CORE)/d' ${design_dir}/openlane/custom_sram/config.tcl
sed -i '/::env(GLB_RT_MAXLAYER)/d' ${design_dir}/openlane/custom_sram/config.tcl
sed -i '/::env(ROUTING_CORES)/d' ${design_dir}/openlane/custom_sram/config.tcl
sed -i '14,18d' ${design_dir}/verilog/rtl/elpis/custom_sram.v
