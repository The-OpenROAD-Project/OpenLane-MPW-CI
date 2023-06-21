cd [file dirname [file normalize [info script]]]
set ::env(CARAVEL_ROOT) "$::env(DESIGN_DIR)/caravel"
set ::env(DESIGN_IS_CORE) 1
set ::env(FP_IO_UNMATCHED_ERROR) 0
set ::env(QUIT_ON_LINTER_ERRORS) 0
set ::env(QUIT_ON_SYNTH_CHECKS) 0
source $::env(DESIGN_DIR)/openlane/wb_cross_clk/config.tcl
