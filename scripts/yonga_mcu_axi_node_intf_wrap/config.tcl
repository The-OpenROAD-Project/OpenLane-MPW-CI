cd [file dirname [file normalize [info script]]]
set ::env(CARAVEL_ROOT) "$::env(DESIGN_DIR)/caravel"
set ::env(DESIGN_IS_CORE) 1
source $::env(DESIGN_DIR)/openlane/axi_node_intf_wrap/config.tcl
