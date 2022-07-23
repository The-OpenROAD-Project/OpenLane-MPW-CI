cd [file dirname [file normalize [info script]]]
set ::env(CARAVEL_ROOT) "$::env(DESIGN_DIR)/caravel"
set ::env(BASE_SDC_FILE) "$::env(DESIGN_DIR)/$::env(DESIGN_DIR)/openlane/tile_clb/constraint.sdc"
set ::env(CELL_PAD) 2
source $::env(DESIGN_DIR)/openlane/tile_clb/config.tcl
