cd [file dirname [file normalize [info script]]]
set ::env(CARAVEL_ROOT) "$::env(DESIGN_DIR)/caravel"
set ::env(DESIGN_IS_CORE) 1
set ::env(GLB_RT_ADJUSTMENT) "0.2"
set ::env(CELL_PAD) 2
source $::env(DESIGN_DIR)/openlane/ycr_core_top/config.tcl
