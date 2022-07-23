cd [file dirname [file normalize [info script]]]
set ::env(CARAVEL_ROOT) "$::env(DESIGN_DIR)/caravel"
set ::env(DESIGN_IS_CORE) 1
set ::env(FP_IO_UNMATCHED_ERROR) 0
set ::env(FP_CORE_UTIL) 30
set ::env(PL_TARGET_DENSITY) 0.45
set ::env(GLB_RT_ADJUSTMENT) 0.15
source $::env(DESIGN_DIR)/openlane/Wishbone_InterConnect/config.tcl
