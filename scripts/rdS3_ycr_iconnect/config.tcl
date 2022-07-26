cd [file dirname [file normalize [info script]]]
set ::env(CARAVEL_ROOT) "$::env(DESIGN_DIR)/caravel"
set ::env(DESIGN_IS_CORE) 1
set ::env(CELL_PAD) 2
set ::env(GRT_ADJUSTMENT) {0.2}
set ::env(QUIT_ON_LVS_ERROR) 0
source $::env(DESIGN_DIR)/openlane/ycr_iconnect/config.tcl
