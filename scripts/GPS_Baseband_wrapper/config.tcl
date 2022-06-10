cd [file dirname [file normalize [info script]]]
set ::env(CARAVEL_ROOT) "[pwd]/caravel"
set ::env(DESIGN_IS_CORE) 1
set ::env(GLB_RESIZER_TIMING_OPTIMIZATIONS) {0}
set ::env(FP_PDN_MACRO_HOOKS) "\
	mprj vccd1 vssd1, \
	temp1 vccd1 vssd1, \
	temp2 vccd1 vssd1, \
	temp3 vccd1 vssd1"
set ::env(GLB_RT_ADJUSTMENT) {0}
source openlane/user_project_wrapper/config.tcl
