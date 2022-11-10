# copy config files to design dir
sed -i '30,32d' ${design_dir}/openlane/fpga_struct_block/config.tcl
sed -i '/::env(DESIGN_IS_CORE)/d' ${design_dir}/openlane/fpga_struct_block/config.tcl
sed -i '/::env(ROUTING_CORES)/d' ${design_dir}/openlane/fpga_struct_block/config.tcl
sed -i '/::env(RT_MAX_LAYER)/d' ${design_dir}/openlane/fpga_struct_block/config.tcl
sed -i '/::env(FP_PDN_CORE_RING)/d' ${design_dir}/openlane/fpga_struct_block/config.tcl
sed -i 's/GLB_RT/GRT/g' ${design_dir}/openlane/fpga_struct_block/config.tcl
sed -i 's/0.7/1.2/g' ${design_dir}/openlane/fpga_struct_block/fpga_struct_block.sdc
sed -i 's/0.9/1.2/g' ${design_dir}/openlane/fpga_struct_block/fpga_struct_block.sdc
