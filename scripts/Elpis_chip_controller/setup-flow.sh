# copy config files to design dir
sed -i '/::env(DESIGN_IS_CORE)/d' ${design_dir}/openlane/chip_controller/config.tcl
sed -i '/::env(GLB_RT_MAXLAYER)/d' ${design_dir}/openlane/chip_controller/config.tcl
sed -i '/::env(ROUTING_CORES)/d' ${design_dir}/openlane/chip_controller/config.tcl
sed -i '12,16d' ${design_dir}/verilog/rtl/elpis/sram_wrapper.v
sed -i '12,18d' ${design_dir}/verilog/rtl/elpis/IO_arbiter.v
