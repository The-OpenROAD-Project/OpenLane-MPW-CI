# User config
set ::env(DESIGN_NAME) highSpeedAdder

# Change if needed
set ::env(VERILOG_FILES) [glob $::env(DESIGN_DIR)/src/*.v]

# Fill this
set ::env(CLOCK_PERIOD) "10.0"
set ::env(CLOCK_PORT) "wb_clk_i"

set filename $::env(DESIGN_DIR)/$::env(PDK)_$::env(STD_CELL_LIBRARY)_config.tcl
if { [file exists $filename] == 1} {
	source $filename
}

#Floorplann
set ::env(FP_SIZING) absolute
set ::env(DIE_AREA) "0 0 610 610"

#Placement
set ::env(PL_TARGET_DENSITY) 0.25
