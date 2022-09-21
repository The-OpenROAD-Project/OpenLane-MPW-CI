cd [file dirname [file normalize [info script]]]
set ::env(CARAVEL_ROOT) "$::env(DESIGN_DIR)/caravel"
set ::env(DESIGN_IS_CORE) 1
set ::env(VERILOG_FILES) "$::env(DESIGN_DIR)/verilog/rtl/Microwatt_FP_DFFRFile.v"
source $::env(DESIGN_DIR)/openlane/Microwatt_FP_DFFRFile/config.tcl
