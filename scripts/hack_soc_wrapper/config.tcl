cd [file dirname [file normalize [info script]]]
set ::env(CARAVEL_ROOT) "[pwd]/caravel"
set ::env(DESIGN_IS_CORE) 1
set ::env(FP_PDN_MACRO_HOOKS) "hack_soc vccd1 vssd1 vccd1 vssd1"
source openlane/user_project_wrapper/config.tcl
