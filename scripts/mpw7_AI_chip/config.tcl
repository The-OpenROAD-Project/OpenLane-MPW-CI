cd [file dirname [file normalize [info script]]]
set ::env(CARAVEL_ROOT) "$::env(DESIGN_DIR)/caravel"
set ::env(EXTRA_LEFS) [glob $::env(DESIGN_DIR)/lef/b_box/*.lef]
set ::env(EXTRA_GDS_FILES) [glob $::env(DESIGN_DIR)/gds/b_box/*.gds]
source $::env(DESIGN_DIR)/openlane/user_project_wrapper/config.tcl
