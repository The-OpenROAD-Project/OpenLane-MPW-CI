cd [file dirname [file normalize [info script]]]
set ::env(CARAVEL_ROOT) "$::env(DESIGN_DIR)/caravel"
set ::env(VERILOG_FILES) [glob $::env(DESIGN_DIR)/verilog/rtl/defines.v \
                         $::env(DESIGN_DIR)/verilog/rtl/Config.v \
                         $::env(DESIGN_DIR)/verilog/rtl/ConfigFSM.v \
                         $::env(DESIGN_DIR)/verilog/rtl/Config_access.v \
                         $::env(DESIGN_DIR)/verilog/rtl/Frame_Data_Reg_Pack.v \
                         $::env(DESIGN_DIR)/verilog/rtl/Frame_Select_Pack.v \
                         $::env(DESIGN_DIR)/verilog/rtl/bitbang.v \
                         $::env(DESIGN_DIR)/verilog/rtl/config_UART.v \
                         $::env(DESIGN_DIR)/verilog/rtl/eFPGA_v3_top_sky130.v \
                         $::env(DESIGN_DIR)/verilog/rtl/fabric_DSP_tile.v \
                         $::env(DESIGN_DIR)/verilog/rtl/models_pack.v \
                         $::env(DESIGN_DIR)/verilog/rtl/user_project_wrapper.v]
set ::env(DPL_CELL_PADDING) 3
source $::env(DESIGN_DIR)/openlane/user_project_wrapper/config.tcl
