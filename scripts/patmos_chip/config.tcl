cd [file dirname [file normalize [info script]]]
set ::env(CARAVEL_ROOT) "$::env(DESIGN_DIR)/caravel"
set ::env(DESIGN_IS_CORE) 1
set ::env(FP_IO_UNMATCHED_ERROR) 0
set ::env(PL_BASIC_PLACEMENT) 0
set ::env(PL_TARGET_DENSITY) 0.20
set ::env(FP_PDN_MACRO_HOOKS) "patmos.patmos.Spm.sky130_sram_1kbyte_1rw1r_32x256_8 vccd1 vssd1 vccd1 vssd1, \
 patmos.patmos.cores_0.fetch.bootMem.memWithWrEven vccd1 vssd1 vccd1 vssd1, \
 patmos.patmos.cores_0.fetch.bootMem.memWithWrOdd vccd1 vssd1 vccd1 vssd1"
set ::env(GRT_OBS) " \
    met1  900.00  1500.00  1379.78  1897.5, \
    met2  900.00  1500.00  1379.78  1897.5, \
    met3  900.00  1500.00  1379.78  1897.5, \
    met4  900.00  1500.00  1379.78  1897.5, \
    met1  1800.00  1200.00  2279.78 1597.5, \
    met2  1800.00  1200.00  2279.78 1597.5, \ 
    met3  1800.00  1200.00  2279.78 1597.5, \
    met4  1800.00  1200.00  2279.78 1597.5, \
    met1  1800.00 1800.00  2279.78 2197.5, \
    met2  1800.00 1800.00  2279.78 2197.5, \
    met3  1800.00 1800.00  2279.78 2197.5, \
    met4  1800.00 1800.00  2279.78 2197.5"
source $::env(DESIGN_DIR)/openlane/user_project_wrapper/config.tcl
