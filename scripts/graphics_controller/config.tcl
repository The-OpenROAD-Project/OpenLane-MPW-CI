cd [file dirname [file normalize [info script]]]
set ::env(CARAVEL_ROOT) "$::env(DESIGN_DIR)/caravel"
set ::env(DESIGN_IS_CORE) 1
set ::env(IO_PCT) 0.15
set ::env(PL_RESIZER_HOLD_MAX_BUFFER_PERCENT) 70
set ::env(GLB_RESIZER_HOLD_MAX_BUFFER_PERCENT) 70
set ::env(PL_RESIZER_SETUP_MAX_BUFFER_PERCENT) 30
set ::env(GLB_RESIZER_SETUP_MAX_BUFFER_PERCENT) 30
set ::env(PL_RESIZER_HOLD_SLACK_MARGIN) 0.4
set ::env(GLB_RESIZER_HOLD_SLACK_MARGIN) 0.4
set ::env(PL_RESIZER_SETUP_SLACK_MARGIN) 0.3
set ::env(GLB_RESIZER_SETUP_SLACK_MARGIN) 0.3
set ::env(QUIT_ON_TIMING_VIOLATIONS) "0"
source $::env(DESIGN_DIR)/openlane/openGFX430/config.tcl
