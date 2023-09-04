cd [file dirname [file normalize [info script]]]
set ::env(CARAVEL_ROOT) "$::env(DESIGN_DIR)/caravel"
set ::env(DESIGN_IS_CORE) 1
set ::env(FP_IO_UNMATCHED_ERROR) 0
set ::env(VERILOG_FILES) [glob $::env(DESIGN_DIR)/verilog/rtl/aes/generated/*.v]
source $::env(DESIGN_DIR)/openlane/aes/config.tcl
