#-------------------------------------------------------------------------------
# Info and path setup
#-------------------------------------------------------------------------------
set DESIGN  "spi"
set LIBRARY "matriq"
set DATE [clock format [clock seconds] -format "%b%d-%T"] 
set OUTPUTS_PATH ./results
set REPORTS_PATH ./reports

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

#-------------------------------------------------------------------------------
# Library setup
#-------------------------------------------------------------------------------
#set_attribute library {/opt/cds_dk/xfab/XKIT/xa035/diglibs/D_CELLSL_JI5V/v1_0/liberty_CPF_MOS5A/v1_0_2/PVT_5_00V_range/D_CELLSL_JI5V_MOS5A_CPF_fast_5_50V_25C.lib}
#set_attribute library {/opt/cds_dk/xfab/XKIT/xa035/diglibs/D_CELLSL_JI5V/v1_0/liberty_CPF_MOS5A/v1_0_2/PVT_5_00V_range/D_CELLSL_JI5V_MOS5A_CPF_fast_5_50V_175C.lib}
#set_attribute library {/opt/cds_dk/xfab/XKIT/xa035/diglibs/D_CELLSL_JI5V/v1_0/liberty_CPF_MOS5A/v1_0_2/PVT_5_00V_range/D_CELLSL_JI5V_MOS5A_CPF_fast_5_50V_m40C.lib}
#set_attribute library {/opt/cds_dk/xfab/XKIT/xa035/diglibs/D_CELLSL_JI5V/v1_0/liberty_CPF_MOS5A/v1_0_2/PVT_5_00V_range/D_CELLSL_JI5V_MOS5A_CPF_slow_4_50V_125C.lib}
#set_attribute library {/opt/cds_dk/xfab/XKIT/xa035/diglibs/D_CELLSL_JI5V/v1_0/liberty_CPF_MOS5A/v1_0_2/PVT_5_00V_range/D_CELLSL_JI5V_MOS5A_CPF_slow_4_50V_175C.lib}
set_attribute library {/opt/cds_dk/xfab/XKIT/xa035/diglibs/D_CELLSL_JI5V/v1_0/liberty_CPF_MOS5A/v1_0_2/PVT_5_00V_range/D_CELLSL_JI5V_MOS5A_CPF_typ_5_00V_25C.lib}

set_attribute lef_library {/opt/cds_dk/xfab/XKIT/xa035/cadence/v6_2/techLEF/v6_2_1/xa035_xx3x_THKMET_routing.lef \
    	    	    	   /opt/cds_dk/xfab/XKIT/xa035/diglibs/D_CELLSL_JI5V/v1_0/LEF/v1_0_3/xa035_D_CELLSL_JI5V.lef \
    	    	    	   /opt/cds_dk/xfab/XKIT/xa035/diglibs/D_CELLSL_JI5V/v1_0/LEF/v1_0_3/xa035_xx3x_THKMET_D_CELLSL_JI5V_mprobe.lef} 

#set_attribute cap_table_file {./lib/xa035_xx3x_THKMET_routing_min.capTbl}
set_attribute cap_table_file {/opt/cds_dk/xfab/XKIT/xa035/cadence/v6_1/capTbl/v6_1_1/xa035_xx3x_THKMET_routing_typ.capTbl}
#set_attribute cap_table_file {./lib/xa035_xx3x_THKMET_routing_max.capTbl}

set_attribute operating_conditions typ_5_00V_25C

set_attribute avoid false {LGC* LSGC* LSOGC*}

#------------------------------------------------------------------------------- 
# Read design
#-------------------------------------------------------------------------------
read_hdl -vhdl [format %s%s%s%s%s "../" ${LIBRARY} "/" ${DESIGN} "/entity/vhdl.vhms"]

elaborate ${DESIGN} 

check_design -unresolved -multidriven

#-------------------------------------------------------------------------------
# Constraints
#-------------------------------------------------------------------------------
create_clock -name "CLK_ext" -add -period 25.0 -waveform {0.0 12.5} [get_ports sck_in]

#set_input_transition 0.3 [get_ports d_in]
#set_input_transition 0.3 [get_ports sck_in]
#set_input_transition 0.3 [get_ports cs_in]
#set_input_transition 0.3 [get_ports reset_in]

#set_load -pin_load -max 0.25 [get_ports data_out*]
#set_load -pin_load -max 0.25 [get_ports d_out]

#-------------------------------------------------------------------------------
# DFT
#-------------------------------------------------------------------------------
#set_attribute dft_scan_style muxed_scan
#set_attribute dft_prefix DFT_
#set_attribute dft_identify_top_level_test_clocks true
#set_attribute dft_identify_test_signals true
#set_attribute dft_identify_internal_test_clocks false
#set_attribute use_scan_seqs_for_non_dft true
#set_attribute dft_lockup_element_type preferred_edge_sensitive "/designs/$DESIGN"
#set_attribute dft_mix_clock_edges_in_scan_chains true "/designs/$DESIGN"
#set_attribute lp_clock_gating_control_point precontrol "/designs/$DESIGN"

#define_dft shift_enable -name scan_enable             -active high ss_in
#define_dft test_mode    -name test_mode   -scan_shift -active high sck_in
#define_dft scan_chain   -name scan_f      -sdi mosi_in -sdo miso_out -shared_input -shared_output

#check_dft_rules > $REPORTS_PATH/${DESIGN}_dft_rules_before_synth.rpt
#report dft_setup > $REPORTS_PATH/${DESIGN}_dft_setup_tdrc.rpt

#-------------------------------------------------------------------------------
# Synthesize to generic
#-------------------------------------------------------------------------------
syn_gen

report datapath > $REPORTS_PATH/${DESIGN}_datapath_generic.rpt
#check_dft_rules > $REPORTS_PATH/${DESIGN}_dft_rules.rpt
#report dft_registers > $REPORTS_PATH/${DESIGN}_dft_register.rpt
#set_attribute lp_clock_gating_test_signal test_mode "/designs/$DESIGN"

#set numDFTviolations [check_dft_rules]
#if {$numDFTviolations > "0"} {
#    report dft_violations > $REPORTS_PATH/${DESIGN}_dft_violations_before_fixing_intermed.rpt
#    fix_dft_violations -async_reset -async_set -clock -test_control test_mode
#    check_dft_rules > $REPORTS_PATH/${DESIGN}_dft_rules_after_fixing_intermed.rpt
#}


#-------------------------------------------------------------------------------
# Synthesize to gates
#-------------------------------------------------------------------------------
syn_map

#check_dft_rules > $REPORTS_PATH/${DESIGN}_dft_rules_before_connecting.rpt

#connect_scan_chains -chains scan_f

#report dft_chains > $REPORTS_PATH/${DESIGN}_dft_chain.rpt

report clock_gating -detail

set_attribute ui_respects_preserve false
set_attribute use_tiehilo_for_const unique

delete_unloaded_undriven -all -force_bit_blast $DESIGN

set all_regs [dc::all_registers]
path_adjust -from $all_regs -to $all_regs -delay -2000 -name PA_C2C 

syn_opt

#-------------------------------------------------------------------------------
# Reporting and export
#-------------------------------------------------------------------------------
report gates -power 	> $REPORTS_PATH/${DESIGN}_gates_power.rpt
report area 		> $REPORTS_PATH/${DESIGN}_area.rpt
report_timing -lint 	> $REPORTS_PATH/${DESIGN}_timing.rpt
report_qor 		> $REPORTS_PATH/${DESIGN}_qor.rpt

#check_dft_rules > $REPORTS_PATH/${DESIGN}_dft_rules_after_synth.rpt

write_design -basename $OUTPUTS_PATH/${DESIGN}
write_sdc -exclude "set_ideal_network set_dont_use group_path set_wire_load_selection_group \
                    set_max_dynamic_power set_max_leakage_power \
                    set_units set_operating_conditions" > $OUTPUTS_PATH/${DESIGN}.sdc
#write_scandef > $OUTPUTS_PATH/${DESIGN}.scan.def
write_sdf -timescale ns -edges check_edge -delimiter "/" > $OUTPUTS_PATH/${DESIGN}.sdf


write_hdl 		> $OUTPUTS_PATH/${DESIGN}.v
#write_script 		> $OUTPUTS_PATH/${DESIGN}.script.tcl

gui_show

#exit

