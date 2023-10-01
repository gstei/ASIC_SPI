# -------------------------------------------------------------------------------
#  Init Timing
# -------------------------------------------------------------------------------
# slow timing
create_library_set -name ls_wc -timing {/opt/cds_dk/xfab/XKIT/xh035/diglibs/D_CELLSL_5V/v3_1/liberty_MOS5/v3_1_2/PVT_5_00V_range/D_CELLSL_5V_MOS5_slow_4_50V_125C.lib} 

# fast timing
create_library_set -name ls_bc -timing {/opt/cds_dk/xfab/XKIT/xh035/diglibs/D_CELLSL_5V/v3_1/liberty_MOS5/v3_1_2/PVT_5_00V_range/D_CELLSL_5V_MOS5_fast_5_50V_m40C.lib} 

# fast timing
create_library_set -name ls_tt -timing {/opt/cds_dk/xfab/XKIT/xh035/diglibs/D_CELLSL_5V/v3_1/liberty_MOS5/v3_1_2/PVT_5_00V_range/D_CELLSL_5V_MOS5_typ_5_00V_25C.lib} 

# -------------------------------------------------------------------------------
#   create rc_corner
# -------------------------------------------------------------------------------
create_rc_corner -name rc_cWorst -T 125 \
    -qx_tech_file /opt/cds_dk/xfab/XKIT/xh035/cadence/v6_6/QRC_pvs/v6_6_2/XH035_1121/QRC-Max/qrcTechFile \
    -cap_table /opt/cds_dk/xfab/XKIT/xh035/cadence/v6_5/capTbl/v6_5_1/xh035_xx2x_METAL4_max.capTbl

create_rc_corner -name rc_cBest -T -40 \
    -qx_tech_file /opt/cds_dk/xfab/XKIT/xh035/cadence/v6_6/QRC_pvs/v6_6_2/XH035_1121/QRC-Min/qrcTechFile  \
    -cap_table /opt/cds_dk/xfab/XKIT/xh035/cadence/v6_5/capTbl/v6_5_1/xh035_xx2x_METAL4_min.capTbl

# -------------------------------------------------------------------------------
#   create constraint_mode
# -------------------------------------------------------------------------------
create_constraint_mode -name cm -sdc_files ./$OUTPUTS_PATH_SYNTH/$DESIGN.sdc

# -------------------------------------------------------------------------------
#   create delay_corner
# -------------------------------------------------------------------------------
create_delay_corner -name dc_wc -library_set ls_wc -rc_corner rc_cWorst
create_delay_corner -name dc_bc -library_set ls_bc -rc_corner rc_cBest 

# -------------------------------------------------------------------------------
#   create analysis_view
# -------------------------------------------------------------------------------
create_analysis_view -name av_wc -delay_corner dc_wc -constraint_mode cm
create_analysis_view -name av_bc -delay_corner dc_bc -constraint_mode cm
set_analysis_view -setup {av_wc}  -hold {av_bc}