cd [file dirname [file normalize [info script]]]
set ::env(CARAVEL_ROOT) "$::env(DESIGN_DIR)/caravel"
set ::env(DESIGN_IS_CORE) 1
set ::env(FP_SIZING) "absolute"
set ::env(DIE_AREA) "0 0 1800 1800"
set ::env(PL_TARGET_DENSITY) "0.13"
set ::env(DPL_CELL_PADDING) 1
set ::env(GRT_ADJUSTMENT) "0.15"
set ::env(CLOCK_PERIOD) "25"
source $::env(DESIGN_DIR)/openlane/user_project/config.tcl
