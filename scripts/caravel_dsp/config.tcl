cd [file dirname [file normalize [info script]]]
set ::env(CARAVEL_ROOT) "[pwd]/caravel"
set ::env(DESIGN_IS_CORE) 1
set ::env(FP_IO_UNMATCHED_ERROR) 0
set ::env(CLOCK_PERIOD) "130.0"
set ::env(CELL_PAD) 2
set ::env(GLB_RESIZER_TIMING_OPTIMIZATIONS) 1
set ::env(PL_TIME_DRIVEN) 1
source openlane/user_proj_example/config.tcl
