cd [file dirname [file normalize [info script]]]
set ::env(CARAVEL_ROOT) "[pwd]/caravel"
set ::env(DESIGN_IS_CORE) 1
set ::env(FP_IO_MIN_DISTANCE) 2
set ::env(GLB_RT_ADJUSTMENT) "0.2"
source $::env(DESIGN_DIR)/openlane/ycr2_iconnect/config.tcl
