cd [file dirname [file normalize [info script]]]
set ::env(CARAVEL_ROOT) "[pwd]/caravel"
set ::env(DESIGN_IS_CORE) 1
set ::env(FP_IO_UNMATCHED_ERROR) 0
set ::env(FP_PDN_MACRO_HOOKS) "SRAM0 vccd1 vssd1 vccd1 vssd1, \
			       SRAM1 vccd1 vssd1 vccd1 vssd1, \
			       SRAM2 vccd1 vssd1 vccd1 vssd1, \ 
			       SRAM3 vccd1 vssd1 vccd1 vssd1"
source openlane/user_project_wrapper/config.tcl
