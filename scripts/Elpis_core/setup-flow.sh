# copy config files to design dir
sed -i '/::env(DESIGN_IS_CORE)/d' ${design_dir}/openlane/core/config.tcl
sed -i '/::env(GLB_RT_MAXLAYER)/d' ${design_dir}/openlane/core/config.tcl
sed -i '/::env(ROUTING_CORES)/d' ${design_dir}/openlane/core/config.tcl
sed -i '21i $script_dir/../../verilog/rtl/elpis/definitions.v \' ${design_dir}/openlane/core/config.tcl
sed -i '14,18d' ${design_dir}/verilog/rtl/elpis/alu.v
sed -i '14,18d' ${design_dir}/verilog/rtl/elpis/arbiter.v
sed -i '14,18d' ${design_dir}/verilog/rtl/elpis/betweenStages.v
sed -i '14,18d' ${design_dir}/verilog/rtl/elpis/branchComparer.v
sed -i '14,18d' ${design_dir}/verilog/rtl/elpis/cache.v
sed -i '14,18d' ${design_dir}/verilog/rtl/elpis/controlunit.v
sed -i '14,18d' ${design_dir}/verilog/rtl/elpis/core.v
sed -i '14,18d' ${design_dir}/verilog/rtl/elpis/datapath.v
sed -i '14,18d' ${design_dir}/verilog/rtl/elpis/decoder.v
sed -i '14,18d' ${design_dir}/verilog/rtl/elpis/forwardingunit.v
sed -i '14,18d' ${design_dir}/verilog/rtl/elpis/hazardDetectionUnit.v
sed -i '14,18d' ${design_dir}/verilog/rtl/elpis/regfile.v
sed -i '14,18d' ${design_dir}/verilog/rtl/elpis/specialreg.v
sed -i '14,18d' ${design_dir}/verilog/rtl/elpis/storebuffer.v
sed -i '14,18d' ${design_dir}/verilog/rtl/elpis/utils.v
