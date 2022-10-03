cd [file dirname [file normalize [info script]]]
set ::env(CARAVEL_ROOT) "$::env(DESIGN_DIR)/caravel"
set ::env(DESIGN_IS_CORE) 1
set ::env(VERILOG_FILES) "\
	$::env(CARAVEL_ROOT)/verilog/rtl/defines.v \
	$::env(DESIGN_DIR)/verilog/final_verilog/final_verilog_includes.v \
	$::env(DESIGN_DIR)/verilog/final_verilog/digital_unison/digital_unison.v"
source $::env(DESIGN_DIR)/openlane/digital_unison/config.tcl
