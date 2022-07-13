cd [file dirname [file normalize [info script]]]
set ::env(CARAVEL_ROOT) "[pwd]/caravel"
set ::env(FP_PDN_MACRO_HOOKS) "\
	dac vccd1 vssd1 vccd1 vssd1, \
	mprj vccd1 vssd1 vccd1 vssd1, \
	pll vccd1 vssd1 vccd1 vssd1"
source openlane/user_project_wrapper/config.tcl
