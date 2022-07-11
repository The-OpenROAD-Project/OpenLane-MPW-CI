# copy config files to design dir
gzip -d ${design_dir}/gds/sky130_sram_1kbyte_1rw1r_32x256_8.gds.gz
gzip -d ${design_dir}/gds/wb_bridge_2way.gds.gz
gzip -d ${design_dir}/gds/wb_openram_wrapper.gds.gz
gzip -d ${design_dir}/gds/wrapped_PrimitiveCalculator.gds.gz
gzip -d ${design_dir}/gds/wrapped_cpr.gds.gz
gzip -d ${design_dir}/gds/wrapped_function_generator.gds.gz
gzip -d ${design_dir}/gds/wrapped_instrumented_adder_behav.gds.gz
gzip -d ${design_dir}/gds/wrapped_instrumented_adder_brent.gds.gz
gzip -d ${design_dir}/gds/wrapped_instrumented_adder_kogge.gds.gz
gzip -d ${design_dir}/gds/wrapped_instrumented_adder_ripple.gds.gz
gzip -d ${design_dir}/gds/wrapped_instrumented_adder_sklansky.gds.gz
gzip -d ${design_dir}/gds/wrapped_scan_test.gds.gz
gzip -d ${design_dir}/gds/wrapped_snn.gds.gz
gzip -d ${design_dir}/gds/wrapped_wavelet_transform.gds.gz
sed -i '/::env(DESIGN_IS_CORE)/d' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i '/::env(GLB_RT_MAXLAYER)/d' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i '/::env(RT_MAX_LAYER)/d' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i '/::env(ROUTING_CORES)/d' ${design_dir}/openlane/user_project_wrapper/config.tcl
