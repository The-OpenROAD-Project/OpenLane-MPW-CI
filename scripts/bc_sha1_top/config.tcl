cd [file dirname [file normalize [info script]]]
set ::env(CARAVEL_ROOT) "$::env(DESIGN_DIR)/caravel"
set ::env(DESIGN_IS_CORE) 1
set ::env(SYNTH_STRATEGY) "DELAY 0"
set ::env(IO_PCT) 0.24
source $::env(DESIGN_DIR)/openlane/sha1_top/config.tcl
