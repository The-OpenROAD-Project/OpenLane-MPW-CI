cd [file dirname [file normalize [info script]]]
set ::env(CARAVEL_ROOT) "$::env(DESIGN_DIR)/caravel"
set ::env(DESIGN_IS_CORE) 1
set ::env(VERILOG_FILES) "\
	$::env(DESIGN_DIR)/verilog/rtl/fpga_struct_block/fpga_struct_block_fromvhdl.v \
	$::env(DESIGN_DIR)/verilog/rtl/fpga_struct_block/fpga_tech.v"
set ::env(BASE_SDC_FILE) "$::env(DESIGN_DIR)/openlane/fpga_struct_block/fpga_struct_block.sdc"
set ::env(FP_PIN_ORDER_CFG) "$::env(DESIGN_DIR)/openlane/fpga_struct_block/pin.cfg"
set ::env(DPL_CELL_PADDING) 2
source $::env(DESIGN_DIR)/openlane/fpga_struct_block/config.tcl
