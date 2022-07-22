cd [file dirname [file normalize [info script]]]
set ::env(CARAVEL_ROOT) "[pwd]/caravel"
set ::env(PL_TARGET_DENSITY) "0.46"
set ::env(CELL_PAD) "2"
source $::env(DESIGN_DIR)/openlane/uart_i2cm_usb/config.tcl
