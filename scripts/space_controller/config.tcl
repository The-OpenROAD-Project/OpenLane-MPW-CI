cd [file dirname [file normalize [info script]]]
set ::env(CARAVEL_ROOT) "[pwd]/caravel"
set ::env(DESIGN_IS_CORE) 1
set ::env(FP_IO_UNMATCHED_ERROR) 0
set ::env(CELL_PAD) 1
source $::env(DESIGN_DIR)/openlane/user_proj_example/config.tcl
