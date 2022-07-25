cd [file dirname [file normalize [info script]]]
set ::env(CARAVEL_ROOT) "$::env(DESIGN_DIR)/caravel"
set ::env(DESIGN_IS_CORE) 1
set ::env(FP_IO_UNMATCHED_ERROR) 0
set ::env(GRT_ADJUSTMENT) "0.2"
set ::env(GLB_RESIZER_TIMING_OPTIMIZATIONS) 1
source $::env(DESIGN_DIR)/openlane/soric_soc/config.tcl
