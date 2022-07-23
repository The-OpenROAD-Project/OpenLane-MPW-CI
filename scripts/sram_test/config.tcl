cd [file dirname [file normalize [info script]]]
set ::env(CARAVEL_ROOT) "$::env(DESIGN_DIR)/caravel"
#1152 gh issue
set ::env(QUIT_ON_MAGIC_DRC) "0"
set ::env(FP_PDN_MACRO_HOOKS) "\
	mprj vccd1 vssd1 vccd1 vssd1, \
	SRAM0 vccd1 vssd1 vccd1 vssd1"
source $::env(DESIGN_DIR)/openlane/user_project_wrapper/config.tcl
