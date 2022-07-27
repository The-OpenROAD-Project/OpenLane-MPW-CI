cd [file dirname [file normalize [info script]]]
set ::env(CARAVEL_ROOT) "$::env(DESIGN_DIR)/caravel"
set ::env(DESIGN_IS_CORE) 1
set ::env(GRT_ADJUSTMENT) 0.1
set ::env(PL_ROUTABILITY_DRIVEN) 1
set ::env(DPL_CELL_PADDING) 2
source $::env(DESIGN_DIR)/openlane/wb_interconnect/config.tcl
