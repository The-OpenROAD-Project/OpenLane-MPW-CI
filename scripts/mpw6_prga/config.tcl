cd [file dirname [file normalize [info script]]]
set ::env(CARAVEL_ROOT) "[pwd]/caravel"
set ::env(DESIGN_IS_CORE) 1
set ::env(BASE_SDC_FILE) "openlane/prga/constraint.sdc"
set ::env(CELL_PAD) 0
source openlane/prga/config.tcl
