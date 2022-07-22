cd [file dirname [file normalize [info script]]]
set ::env(CARAVEL_ROOT) "[pwd]/caravel"
set ::env(FP_PDN_MACRO_HOOKS) "\
	sram vccd1 vssd1 vccd1 vssd1, \
	sram1 vccd1 vssd1 vccd1 vssd1, \
	sram2 vccd1 vssd1 vccd1 vssd1, \
	dut vccd1 vssd1 vccd1 vssd1, \
	dut1 vccd1 vssd1 vccd1 vssd1, \
	dut2 vccd1 vssd1 vccd1 vssd1"
source $::env(DESIGN_DIR)/openlane/user_project_wrapper/config.tcl
