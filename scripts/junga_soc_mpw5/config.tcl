cd [file dirname [file normalize [info script]]]
set ::env(CARAVEL_ROOT) "$::env(DESIGN_DIR)/caravel"
set ::env(DESIGN_IS_CORE) 1
set ::env(GLB_RT_ADJUSTMENT) "0.15"
set ::env(FP_IO_UNMATCHED_ERROR) 0
source $::env(DESIGN_DIR)/openlane/user_proj/config.tcl
