cd [file dirname [file normalize [info script]]]
set ::env(CARAVEL_ROOT) "[pwd]/caravel"
set ::env(DESIGN_IS_CORE) 1
set ::env(FP_PDN_MACRO_HOOKS) "\
	core vccd1 vssd vccd1 vssd1, \
	wb_inter_connect vccd1 vssd1 vccd1 vssd1, \
	m1 vccd1 vssd1 vccd1 vssd1, \
	m2 vccd1 vssd1 vccd1 vssd1, \
	m3 vccd1 vssd1 vccd1 vssd1, \
	imem vccd1 vssd1 vccd1 vssd1, \
	dmem vccd1 vssd1 vccd1 vssd1"
source $::env(DESIGN_DIR)/openlane/user_project_wrapper/config.tcl
