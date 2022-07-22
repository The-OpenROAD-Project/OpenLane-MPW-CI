cd [file dirname [file normalize [info script]]]
set ::env(CARAVEL_ROOT) "[pwd]/caravel"
set ::env(DESIGN_IS_CORE) 1
set ::env(MACRO_PLACEMENT_CFG) "$::env(DESIGN_DIR)/openlane/core_sram/macro_placement.cfg"
set ::env(FP_PDN_MACRO_HOOKS) "FSTi.ram_0.sram_i vccd1 vssd1 vccd1 vssd1"
source $::env(DESIGN_DIR)/openlane/core_sram/config.tcl
