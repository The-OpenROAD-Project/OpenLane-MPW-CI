cd [file dirname [file normalize [info script]]]
set ::env(CARAVEL_ROOT) "$::env(DESIGN_DIR)/caravel"
set ::env(FP_PDN_HORIZONTAL_HALO) 20
set ::env(FP_PDN_VERTICAL_HALO) 20
set ::env(FP_PDN_MACRO_HOOKS) "\
	wb_openram_wrapper vccd1 vssd1 vccd1 vssd1, \
	openram_1kB vccd1 vssd1 vssd1 vccd1 vssd1, \
	wb_bus_mux vccd1 vssd1 vssd1 vccd1 vssd1, \
	wb_hyperram vccd1 vssd1 vssd1 vccd1 vssd1"
source $::env(DESIGN_DIR)/openlane/user_project_wrapper/config.tcl
