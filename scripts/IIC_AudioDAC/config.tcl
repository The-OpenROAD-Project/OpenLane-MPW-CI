cd [file dirname [file normalize [info script]]]
set ::env(CARAVEL_ROOT) "[pwd]/caravel"
set ::env(DESIGN_IS_CORE) 1
set ::env(CELL_PAD) 1
set ::env(FP_IO_UNMATCHED_ERROR) 0
set ::env(GLB_RT_ADJUSTMENT) 0.2
source $::env(DESIGN_DIR)/openlane/user_proj_dac/config.tcl
