cd [file dirname [file normalize [info script]]]
set ::env(CARAVEL_ROOT) "$::env(DESIGN_DIR)/caravel"
set ::env(CELL_PAD) 1
set ::env(PL_ROUTABILITY_DRIVEN) 0
set ::env(PL_TARGET_DENSITY) "0.52"
source $::env(DESIGN_DIR)/openlane/syntacore/config.tcl
