cd [file dirname [file normalize [info script]]]
set ::env(CARAVEL_ROOT) "$::env(DESIGN_DIR)/caravel"
set ::env(DESIGN_IS_CORE) 1
set ::env(FP_IO_UNMATCHED_ERROR) 0
set ::env(CLOCK_PERIOD) "30"
set ::env(CLOCK_PORT) ""
set ::env(CLOCK_NET) "FPU_Bfloat16_Precision_Top.clk"
set ::env(CELL_PAD) 1
set ::env(FP_CORE_UTIL) {25}
set ::env(PL_TARGET_DENSITY) {0.30}
source $::env(DESIGN_DIR)/openlane/user_proj_example/config.tcl
