cd [file dirname [file normalize [info script]]]
set ::env(CARAVEL_ROOT) "$::env(DESIGN_DIR)/caravel"
set ::env(PL_TARGET_DENSITY) "0.46"
set ::env(DPL_CELL_PADDING) 2
source $::env(DESIGN_DIR)/openlane/uart_i2cm_usb/config.tcl
