cd [file dirname [file normalize [info script]]]
set ::env(CARAVEL_ROOT) "$::env(DESIGN_DIR)/caravel"
set ::env(GRT_ADJUSTMENT) {0}
set ::env(GLB_RESIZER_TIMING_OPTIMIZATIONS) 0
set ::env(GRT_OBS) "\
	met4 1000 200 1580 556"
set ::env(QUIT_ON_MAGIC_DRC) 0
source $::env(DESIGN_DIR)/openlane/user_project_wrapper/config.tcl
