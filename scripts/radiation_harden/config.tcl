cd [file dirname [file normalize [info script]]]
set ::env(CARAVEL_ROOT) "$::env(DESIGN_DIR)/caravel"
set ::env(FP_PDN_MACRO_HOOKS) "\
	mprj vccd1 vssd1 vccd1 vssd1, \
	mprj vccd2 vssd2 vccd2 vssd2, \
	mprj vdda1 vssa1 vdda1 vssa1, \
	mprj vdda2 vssa2 vdda2 vssa2"
set ::env(GRT_LAYER_ADJUSTMENTS) {0.99,0.99,0,0,0,0}
source $::env(DESIGN_DIR)/openlane/user_project_wrapper/config.tcl
