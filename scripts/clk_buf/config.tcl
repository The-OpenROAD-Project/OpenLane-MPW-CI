cd [file dirname [file normalize [info script]]]
set ::env(CARAVEL_ROOT) "[pwd]/caravel"
set ::env(CLOCK_PORT) "clk_i"
source $::env(DESIGN_DIR)/openlane/clk_buf/config.tcl
