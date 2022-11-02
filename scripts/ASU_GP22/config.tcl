cd [file dirname [file normalize [info script]]]
set ::env(CARAVEL_ROOT) "$::env(DESIGN_DIR)/caravel"
set ::env(IO_PCT) 0.25
set ::env(PL_RESIZER_HOLD_MAX_BUFFER_PERCENT) 80
set ::env(GLB_RESIZER_HOLD_MAX_BUFFER_PERCENT) 80
set ::env(PL_RESIZER_HOLD_SLACK_MARGIN) 0.8
set ::env(GLB_RESIZER_HOLD_SLACK_MARGIN) 0.8
source $::env(DESIGN_DIR)/openlane/tile/config.tcl
