cd [file dirname [file normalize [info script]]]
set ::env(CARAVEL_ROOT) "$::env(DESIGN_DIR)/caravel"
set ::env(DESIGN_IS_CORE) 1
set ::env(FP_IO_UNMATCHED_ERROR) 0
set ::env(FP_PDN_MACRO_HOOKS) "\
	Modbus_w_RegSpace_Controller_inst vccd1 vssd1 vccd1 vssd1, \
	sram_inst vccd1 vssd1 vccd1 vssd1"
set ::env(QUIT_ON_LVS_ERROR) 0
source $::env(DESIGN_DIR)/openlane/user_project_wrapper/config.tcl
