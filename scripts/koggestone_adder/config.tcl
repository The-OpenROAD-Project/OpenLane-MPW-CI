cd [file dirname [file normalize [info script]]]
set ::env(CARAVEL_ROOT) "[pwd]/caravel"
set ::env(DESIGN_IS_CORE) 1
set ::env(CLOCK_NET) ""
source $::env(DESIGN_DIR)/openlane/user_proj_example/config.tcl
