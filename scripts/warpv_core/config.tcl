cd [file dirname [file normalize [info script]]]
set ::env(CARAVEL_ROOT) "$::env(DESIGN_DIR)/caravel"
set ::env(DESIGN_IS_CORE) 1
set ::env(SYNTH_STRATEGY) {DELAY 0}
set ::env(IO_PCT) 0.1
set ::env(PL_RESIZER_HOLD_MAX_BUFFER_PERCENT) 70
set ::env(GLB_RESIZER_HOLD_MAX_BUFFER_PERCENT) 60
set ::env(PL_RESIZER_HOLD_SLACK_MARGIN) 0.7
set ::env(GLB_RESIZER_HOLD_SLACK_MARGIN) 0.6
set ::env(QUIT_ON_TIMING_VIOLATIONS) "0"
source $::env(DESIGN_DIR)/openlane/warpv_core/config.tcl
