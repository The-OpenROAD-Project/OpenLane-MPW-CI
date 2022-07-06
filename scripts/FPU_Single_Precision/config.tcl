cd [file dirname [file normalize [info script]]]
set ::env(CARAVEL_ROOT) "[pwd]/caravel"
set ::env(DESIGN_IS_CORE) 1
set ::env(FP_IO_UNMATCHED_ERROR) 0
set ::env(CLOCK_PERIOD) "30"
set ::env(CLOCK_PORT) ""
set ::env(CLOCK_NET) "FPU_Single_Precision_Top.clk"
set ::env(CELL_PAD) 1
set ::env(FP_CORE_UTIL) {25}
set ::env(PL_TARGET_DENSITY) {0.30}
set ::env(GLB_RT_ADJUSTMENT) {0.2}
source openlane/user_proj_example/config.tcl
