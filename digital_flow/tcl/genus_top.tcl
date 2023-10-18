#-------------------------------------------------------------------------------
# Info and path setup
#-------------------------------------------------------------------------------
set DESIGN  "top"
set LIBRARY "Lib1"
set DATE [clock format [clock seconds] -format "%b%d-%T"] 
set OUTPUTS_PATH ../results/synth
set OUTPUTS_ATPG_PATH ../results/atpg
set REPORTS_PATH ../reports/synth
set REPORTS_ATPG_PATH ../reports/atpg

#-------------------------------------------------------------------------------
# Attributes
#-------------------------------------------------------------------------------
set_attribute information_level 3
set_attribute remove_assigns true
set_attribute ignore_preserve_in_tiecell_insertion true
set_attribute auto_ungroup none

set_attribute lp_power_unit mW
set_attribute lp_insert_clock_gating false
set_attribute lp_power_analysis_effort medium
set_attribute leakage_power_effort low
set_attribute hdl_vhdl_read_version 2008
set_attribute verification_directory $REPORTS_PATH/fv

#-------------------------------------------------------------------------------
# Library setup
#-------------------------------------------------------------------------------
set_attribute library {/opt/cds_dk/xfab/XKIT/xh035/diglibs/D_CELLSL_5V/v3_1/liberty_MOS5/v3_1_2/PVT_5_00V_range/D_CELLSL_5V_MOS5_slow_4_50V_125C.lib}

set_attribute lef_library {/opt/cds_dk/xfab/XKIT/xh035/cadence/v6_6/techLEF/v6_6_1/xh035_xx2x_METAL4.lef \
    	    	    	   /opt/cds_dk/xfab/XKIT/xh035/diglibs/D_CELLSL_5V/v3_1/LEF/v3_1_2/xh035_D_CELLSL_5V.lef \
    	    	    	   /opt/cds_dk/xfab/XKIT/xh035/diglibs/D_CELLSL_5V/v3_1/LEF/v3_1_2/xh035_xx2x_METAL4_D_CELLSL_5V_mprobe.lef} 


set_attribute cap_table_file {/opt/cds_dk/xfab/XKIT/xh035/cadence/v6_5/capTbl/v6_5_1/xh035_xx2x_METAL4_max.capTbl}

set_attribute operating_conditions slow_4_50V_125C

# set_attribute avoid false {LGC* LSGC* LSOGC*}

#------------------------------------------------------------------------------- 
# Read design
#-------------------------------------------------------------------------------
read_hdl -vhdl [format %s "../../controller/sources/ctrl_pkg.vhd"]
read_hdl -vhdl [format %s "../../controller/sources/ctrl.vhd"]
read_hdl -vhdl [format %s "../../controller/sources/mux.vhd"]
read_hdl -vhdl [format %s "../../controller/sources/spi_slave.vhd"]
read_hdl -vhdl [format %s "../../controller/sources/top.vhd"]


elaborate ${DESIGN} 
check_design -unresolved -multidriven

#-------------------------------------------------------------------------------
# Constraints
#-------------------------------------------------------------------------------
set_time_unit -picoseconds
set_load_unit -femtofarads

#Define clock stuff
# Increase clock for 20%
#define_clock -period 250000 -name CLK_ext [get_ports sck_in]
define_clock -period 200000 -name CLK_ext [get_ports clk]
# No known uncertainty
#set_attribute clock_setup_uncertainty {5000 5000} CLK_ext 
#min rise, min fall, max rise, max fall. Extracted from simulation of pads
set_attribute slew {5000 5000 5000 5000} CLK_ext 

# Signals are synchronous to the clock
external_delay -clock CLK_ext -input 0 [get_ports rst] 
external_delay -clock CLK_ext -input 0 [get_ports i_register] 
external_delay -clock CLK_ext -input 0 [get_ports i_sclk] 
external_delay -clock CLK_ext -input 0 [get_ports i_ss]
external_delay -clock CLK_ext -input 0 [get_ports i_mosi]


# Input delay: Signal coming from pixel, asynchronous to clock source
#external_delay -clock CLK_ext -input 0 [get_ports aresetn_in]

# Slew rate on input pins
set_input_transition 0 [get_ports rst]
set_input_transition 0 [get_ports i_register]
set_input_transition 5000 [get_ports i_sclk]
set_input_transition 5000 [get_ports i_ss]
set_input_transition 5000 [get_ports i_mosi]

# Load
set_load -pin_load -max 1000 [get_ports o_miso]
set_load -pin_load -max 1000 [get_ports o_miso_en]
set_load -pin_load -max 1000 [get_ports o_register]
set_load -pin_load -max 1000 [get_ports o_analog_p]





# Output delay: Signal going to pixel
external_delay -clock CLK_ext -output 0 [get_ports o_miso]
external_delay -clock CLK_ext -output 0 [get_ports o_miso_en]
external_delay -clock CLK_ext -output 0 [get_ports o_register]
external_delay -clock CLK_ext -output 0 [get_ports o_analog_p]


# Max Fanout
set_attribute max_fanout 10 * 






#-------------------------------------------------------------------------------
# Synthesize to generic
#-------------------------------------------------------------------------------
syn_gen

report datapath > $REPORTS_PATH/${DESIGN}_datapath_generic.rpt

#-------------------------------------------------------------------------------
# Synthesize to gates
#-------------------------------------------------------------------------------
syn_map


report clock_gating -detail

set_attribute ui_respects_preserve false
set_attribute use_tiehilo_for_const unique

set all_regs [dc::all_registers]
path_adjust -from $all_regs -to $all_regs -delay -2000 -name PA_C2C 

syn_opt


#-------------------------------------------------------------------------------
# Reporting and export
#-------------------------------------------------------------------------------
report gates -power 	> $REPORTS_PATH/${DESIGN}_gates_power.rpt
report area 			> $REPORTS_PATH/${DESIGN}_area.rpt
report_timing -lint 	> $REPORTS_PATH/${DESIGN}_timing_lint.rpt
report_timing 			> $REPORTS_PATH/${DESIGN}_timing.rpt
report_qor 				> $REPORTS_PATH/${DESIGN}_qor.rpt
report_port * 			> $REPORTS_PATH/${DESIGN}_timing_port.rpt
check_design -all		> $REPORTS_PATH/${DESIGN}_design.rpt
report summary			> $REPORTS_PATH/${DESIGN}_summary.rpt

write_design -basename $OUTPUTS_PATH/${DESIGN}
write_sdc -exclude "set_ideal_network set_dont_use group_path set_wire_load_selection_group \
                    set_max_dynamic_power set_max_leakage_power \
                    set_units set_operating_conditions" > $OUTPUTS_PATH/${DESIGN}.sdc
write_sdf -timescale ns -edges check_edge -delimiter "/" > $OUTPUTS_PATH/${DESIGN}.sdf


write_hdl 			> $OUTPUTS_PATH/${DESIGN}.v
#write_script 		> $OUTPUTS_PATH/${DESIGN}.script.tcl


gui_show

#exit

