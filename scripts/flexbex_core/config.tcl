cd [file dirname [file normalize [info script]]]
set ::env(CARAVEL_ROOT) "[pwd]/caravel"
set ::env(DESIGN_IS_CORE) 1
set ::env(SYNTH_STRATEGY) "DELAY 1"
source $::env(DESIGN_DIR)/openlane/flexbex_core/config.tcl
