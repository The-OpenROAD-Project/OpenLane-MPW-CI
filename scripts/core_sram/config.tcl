cd [file dirname [file normalize [info script]]]
set ::env(CARAVEL_ROOT) "[pwd]/caravel"
set ::env(DESIGN_IS_CORE) 1
set ::env(MACRO_PLACEMENT_CFG) "openlane/core_sram/macro_placement.cfg"
source openlane/core_sram/config.tcl
