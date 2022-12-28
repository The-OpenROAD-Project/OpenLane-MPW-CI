cd [file dirname [file normalize [info script]]]
set ::env(CARAVEL_ROOT) "$::env(DESIGN_DIR)/caravel"
set ::env(DESIGN_IS_CORE) 1
set ::env(CLOCK_PERIOD) "100"
source $::env(DESIGN_DIR)/openlane/rift2Fake/config.tcl
