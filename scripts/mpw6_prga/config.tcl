cd [file dirname [file normalize [info script]]]
set ::env(CARAVEL_ROOT) "$::env(DESIGN_DIR)/caravel"
set ::env(DESIGN_IS_CORE) 1
set ::env(BASE_SDC_FILE) "$::env(DESIGN_DIR)/openlane/prga/constraint.sdc"
set ::env(DPL_CELL_PADDING) 1
source $::env(DESIGN_DIR)/openlane/prga/config.tcl
