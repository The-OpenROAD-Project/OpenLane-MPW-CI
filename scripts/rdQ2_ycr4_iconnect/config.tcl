cd [file dirname [file normalize [info script]]]
set ::env(CARAVEL_ROOT) "$::env(DESIGN_DIR)/caravel"
set ::env(DESIGN_IS_CORE) 1
set ::env(FP_IO_MIN_DISTANCE) 2
source $::env(DESIGN_DIR)/openlane/ycr4_iconnect/config.tcl