cd [file dirname [file normalize [info script]]]
set ::env(CARAVEL_ROOT) "$::env(DESIGN_DIR)/caravel"
set ::env(FP_PDN_MACRO_HOOKS) "\
	dac vccd1 vssd1 vccd1 vssd1, \
	mprj vccd1 vssd1 vccd1 vssd1, \
	pll vccd1 vssd1 vccd1 vssd1"
set ::env(QUIT_ON_MAGIC_DRC) 0
source $::env(DESIGN_DIR)/openlane/user_project_wrapper/config.tcl
