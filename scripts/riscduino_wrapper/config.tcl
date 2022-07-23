cd [file dirname [file normalize [info script]]]
set ::env(CARAVEL_ROOT) "$::env(DESIGN_DIR)/caravel"
set ::env(DESIGN_IS_CORE) 1
set ::env(_WITH_STRAPS) 0
set ::env(FP_PDN_MACROS) ""
source $::env(DESIGN_DIR)/openlane/user_project_wrapper/config.tcl
