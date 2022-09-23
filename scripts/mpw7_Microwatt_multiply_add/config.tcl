cd [file dirname [file normalize [info script]]]
set ::env(CARAVEL_ROOT) "$::env(DESIGN_DIR)/caravel"
set ::env(DESIGN_IS_CORE) 1
set ::env(VERILOG_FILES) "$::env(DESIGN_DIR)/openlane/multiply_add_64x64/src/multiply_add_64x64.v"
set ::env(FP_PIN_ORDER_CFG) "$::env(DESIGN_DIR)/openlane/multiply_add_64x64/pin_order.cfg"
source $::env(DESIGN_DIR)/openlane/multiply_add_64x64/config.tcl
