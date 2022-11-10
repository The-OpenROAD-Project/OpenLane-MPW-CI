cd [file dirname [file normalize [info script]]]
set ::env(CARAVEL_ROOT) "$::env(DESIGN_DIR)/caravel"
set ::env(DESIGN_IS_CORE) 1
set ::env(FP_CORE_UTIL) 40
set ::(PL_TARGET_DENSITY) "0.45"
set ::env(DPL_CELL_PADDING) 3
set ::env(QUIT_ON_TIMING_VIOLATIONS) "0"
source $::env(DESIGN_DIR)/openlane/user_proj_example/config.tcl
