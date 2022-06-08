cd [file dirname [file normalize [info script]]]
set ::env(CARAVEL_ROOT) "[pwd]/caravel"
set ::env(DESIGN_IS_CORE) 1
set ::env(FP_SIZING) "absolute"
set ::env(DIE_AREA) "0 0 1200 1200"
set ::env(CORE_AREA) "5 10 1190 1195" 
set ::env(CELL_PAD) 1
set ::env(GLB_RT_ADJUSTMENT) {0.2}
source openlane/user_project/config.tcl
