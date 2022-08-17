cd [file dirname [file normalize [info script]]]
set ::env(CARAVEL_ROOT) "$::env(DESIGN_DIR)/caravel"
set ::env(FP_PDN_MACRO_HOOKS) "\
	wrapper_sha1 vccd1 vssd1 vccd1 vssd1, \
	wrapper_sha1 vccd2 vssd2 vccd2 vssd2, \
	wrapper_sha1 vdda1 vssa1 vdda1 vssa1, \
	wrapper_sha1 vdda2 vssa2 vdda2 vssa2, \
	wrapper_fibonacci vccd1 vssd1 vccd1 vssd1, \
	wrapper_fibonacci vccd2 vssd2 vccd2 vssd2, \
	wrapper_fibonacci vdda1 vssa1 vdda1 vssa1, \
	wrapper_fibonacci vdda2 vssa2 vdda2 vssa2"
set ::env(GLB_RT_LAYER_ADJUSTMENTS) "0.99,0.7,0,0,0,0"
set ::env(QUIT_ON_MAGIC_DRC) 0
source $::env(DESIGN_DIR)/openlane/user_project_wrapper/config.tcl
