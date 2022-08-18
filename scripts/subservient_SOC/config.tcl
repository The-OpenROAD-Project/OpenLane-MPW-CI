cd [file dirname [file normalize [info script]]]
set ::env(CARAVEL_ROOT) "$::env(DESIGN_DIR)/caravel"
set ::env(FP_PDN_MACRO_HOOKS) "\
	sram vccd1 vssd1 vccd1 vssd1, \
	sram1 vccd1 vssd1 vccd1 vssd1, \
	sram2 vccd1 vssd1 vccd1 vssd1, \
	dut vccd1 vssd1 vccd1 vssd1, \
	dut1 vccd1 vssd1 vccd1 vssd1, \
	dut2 vccd1 vssd1 vccd1 vssd1"
set ::env(GLB_RT_LAYER_ADJUSTMENTS) {0.99,0.99,0,0,0,0}
set ::env(GRT_LAYER_ADJUSTMENTS) {0.99,0.99,0,0,0,0}
source $::env(DESIGN_DIR)/openlane/user_project_wrapper/config.tcl
