cd [file dirname [file normalize [info script]]]
set ::env(CARAVEL_ROOT) "[pwd]/caravel"
set ::env(DESIGN_IS_CORE) 1
set ::env(CELL_PAD) 0
set ::env(GLB_RT_ADJUSTMENT) "0.2"
set ::env(PL_TIME_DRIVEN) 0
set ::env(GLB_RESIZER_TIMING_OPTIMIZATIONS) 0
source openlane/user_project/config.tcl
