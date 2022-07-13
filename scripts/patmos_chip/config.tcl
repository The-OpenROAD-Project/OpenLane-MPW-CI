cd [file dirname [file normalize [info script]]]
set ::env(CARAVEL_ROOT) "[pwd]/caravel"
set ::env(DESIGN_IS_CORE) 1
set ::env(FP_IO_UNMATCHED_ERROR) 0
set ::env(FP_CORE_UTIL) 0.01
set ::env(PL_BASIC_PLACEMENT) 0
set ::env(PL_TARGET_DENSITY) 0.05
set ::env(FP_PDN_MACRO_HOOKS) "patmos.patmos.Spm.sky130_sram_1kbyte_1rw1r_32x256_8 vccd1 vssd1 vccd1 vssd1, \
 patmos.patmos.cores_0.fetch.bootMem.memWithWrEven vccd1 vssd1 vccd1 vssd1, \
 patmos.patmos.cores_0.fetch.bootMem.memWithWrOdd vccd1 vssd1 vccd1 vssd1"
source openlane/user_project_wrapper/config.tcl
