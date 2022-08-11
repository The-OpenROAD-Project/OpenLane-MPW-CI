# copy config files to design dir
sed -i 's/GLB_RT/GRT/g' ${design_dir}/openlane/user_project_wrapper/config.tcl
sed -i 's/dout1)/dout1 `ifdef USE_POWER_PINS ,vccd1, vssd1 `endif)/g' ${design_dir}/verilog/rtl/azadi_soc_top_dffram.v
