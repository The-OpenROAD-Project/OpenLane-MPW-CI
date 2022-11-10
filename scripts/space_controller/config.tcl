cd [file dirname [file normalize [info script]]]
set ::env(CARAVEL_ROOT) "$::env(DESIGN_DIR)/caravel"
set ::env(DESIGN_IS_CORE) 1
set ::env(FP_IO_UNMATCHED_ERROR) 0
set ::env(DPL_CELL_PADDING) 1
set ::env(PL_RESIZER_HOLD_SLACK_MARGIN) 0.65
set ::env(GLB_RESIZER_HOLD_SLACK_MARGIN) 0.65
set ::env(PL_RESIZER_HOLD_MAX_BUFFER_PERCENT) 65
source $::env(DESIGN_DIR)/openlane/user_proj_example/config.tcl
