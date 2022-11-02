cd [file dirname [file normalize [info script]]]
set ::env(CARAVEL_ROOT) "$::env(DESIGN_DIR)/caravel"
set ::env(DESIGN_IS_CORE) 1
set ::env(FP_CORE_UTIL) 30
set ::env(PL_TARGET_DENSITY) 0.37
set ::env(DPL_CELL_PADDING) 3
set ::env(IO_PCT) 0.1
set ::env(PL_RESIZER_HOLD_MAX_BUFFER_PERCENT) 80
set ::env(GLB_RESIZER_HOLD_MAX_BUFFER_PERCENT) 80
set ::env(PL_RESIZER_HOLD_SLACK_MARGIN) 0.8
set ::env(GLB_RESIZER_HOLD_SLACK_MARGIN) 0.8
set ::nev(PL_RESIZER_SETUP_MAX_BUFFER_PERCENT) 80
set ::nev(GLB_RESIZER_SETUP_MAX_BUFFER_PERCENT) 80
set ::env(PL_RESIZER_SETUP_SLACK_MARGIN) 0.4
set ::env(GLB_RESIZER_SETUP_SLACK_MARGIN) 0.4
source $::env(DESIGN_DIR)/openlane/btc_miner_top/config.tcl
