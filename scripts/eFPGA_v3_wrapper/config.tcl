cd [file dirname [file normalize [info script]]]
set ::env(CARAVEL_ROOT) "$::env(DESIGN_DIR)/caravel"
set ::env(FP_PDN_MACRO_HOOKS) "inst_eFPGA_top vccd1 vssd1 vccd1 vssd1"
source $::env(DESIGN_DIR)/openlane/user_project_wrapper/config.tcl
