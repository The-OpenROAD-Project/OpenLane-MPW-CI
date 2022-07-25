cd [file dirname [file normalize [info script]]]
set ::env(CARAVEL_ROOT) "$::env(DESIGN_DIR)/caravel"
set ::env(DESIGN_IS_CORE) 1
set ::env(QUIT_ON_TIMING_VIOLATIONS) 0
source $::env(DESIGN_DIR)/openlane/user_project/config.tcl
