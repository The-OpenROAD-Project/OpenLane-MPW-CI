cd [file dirname [file normalize [info script]]]
set ::env(CARAVEL_ROOT) "$::env(DESIGN_DIR)/caravel"
set ::env(CLOCK_PORT) "clk_i"
source $::env(DESIGN_DIR)/openlane/clk_skew_adjust/config.tcl
