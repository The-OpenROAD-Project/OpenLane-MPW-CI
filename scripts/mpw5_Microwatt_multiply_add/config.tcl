cd [file dirname [file normalize [info script]]]
set ::env(CARAVEL_ROOT) "$::env(DESIGN_DIR)/caravel"
set ::env(DESIGN_IS_CORE) 1
set ::env(ECO_ENABLE) {0}
source $::env(DESIGN_DIR)/openlane/multiply_add_64x64/config.tcl
