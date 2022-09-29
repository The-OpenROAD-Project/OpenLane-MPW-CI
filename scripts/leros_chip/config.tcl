cd [file dirname [file normalize [info script]]]
set ::env(CARAVEL_ROOT) "$::env(DESIGN_DIR)/caravel"
set ::env(DESIGN_IS_CORE) 1
set ::env(VERILOG_FILES) "\
	$::env(CARAVEL_ROOT)/verilog/rtl/defines.v \
	$::env(DESIGN_DIR)/verilog/rtl/LerosFsmd.v \
	$::env(DESIGN_DIR)/verilog/rtl/user_proj_example.v"
source $::env(DESIGN_DIR)/openlane/user_proj_example/config.tcl
