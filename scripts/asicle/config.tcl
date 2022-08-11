cd [file dirname [file normalize [info script]]]
set ::env(CARAVEL_ROOT) "$::env(DESIGN_DIR)/caravel"
set ::env(DESIGN_IS_CORE) 1
set ::env(FP_CORE_UTIL) 0.01
set ::env(PL_TARGET_DENSITY) 0.15
set ::env(DPL_CELL_PADDING) 1
set ::env(GRT_ADJUSTMENT) "0.15"
set ::env(GLB_RESIZER_TIMING_OPTIMIZATIONS) 0
source $::env(DESIGN_DIR)/openlane/user_project/config.tcl
