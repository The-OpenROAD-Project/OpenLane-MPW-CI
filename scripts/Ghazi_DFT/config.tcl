cd [file dirname [file normalize [info script]]]
set ::env(CARAVEL_ROOT) "$::env(DESIGN_DIR)/caravel"
set ::env(DESIGN_IS_CORE) 1
set ::env(FP_PDN_MACRO_HOOKS) "mprj vccd1 vssd1 vccd1 vssd1"
set ::env(QUIT_ON_MAGIC_DRC) 0
source $::env(DESIGN_DIR)/openlane/user_project_wrapper/config.tcl
