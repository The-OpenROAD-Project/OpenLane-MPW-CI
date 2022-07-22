cd [file dirname [file normalize [info script]]]
set ::env(CARAVEL_ROOT) "[pwd]/caravel"
set ::env(DESIGN_IS_CORE) 1
set ::env(GLB_RT_ADJUSTMENT) "0.2"
source $::env(DESIGN_DIR)/openlane/yifive/config.tcl
