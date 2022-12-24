cd [file dirname [file normalize [info script]]]
set ::env(CARAVEL_ROOT) "$::env(DESIGN_DIR)/caravel"
set ::env(DESIGN_IS_CORE) 1
set ::env(FP_IO_UNMATCHED_ERROR) 0
set ::env(DPL_CELL_PADDING) 2
set ::env(IO_PCT) 0.25
source $::env(DESIGN_DIR)/openlane/icache/config.tcl
