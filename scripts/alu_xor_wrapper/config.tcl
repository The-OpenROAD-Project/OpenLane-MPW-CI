cd [file dirname [file normalize [info script]]]
set ::env(CARAVEL_ROOT) "[pwd]/caravel"
set ::env(DESIGN_IS_CORE) 1
set ::env(FP_PDN_MACRO_HOOKS) "user_proj_example_1 vccd1 vssd1 vccd1 vssd1"
source $::env(DESIGN_DIR)/openlane/user_project_wrapper/config.tcl
