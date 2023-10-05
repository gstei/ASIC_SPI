#-------------------------------------------------------------------------------
# Info and path setup
#-------------------------------------------------------------------------------
set DESIGN  "top"
set LIBRARY "Lib1"
set DATE [clock format [clock seconds] -format "%b%d-%T"] 
set OUTPUTS_PATH ../results/par
set OUTPUTS_PATH_SYNTH ../results/synth
set REPORTS_PATH ../reports/par
set REFLIBS [list D_CELLSL_5V]
set VERILOGFILE "./${OUTPUTS_PATH_SYNTH}/${DESIGN}.v"
set IOFILE "../io/${DESIGN}.io"
set POWERNETS [list "vdd5!"]
set GROUNDNETS [list "gnd!"]
set RESETNET "rst"
set auto_file_dir ${REPORTS_PATH}/auto/

# ----------------------------------------------------------
# Definition of Innovus variables
# ----------------------------------------------------------
setOaxMode -compressLevel 0
setOaxMode -allowBitConnection true
setOaxMode -allowTechUpdate false
setOaxMode -updateMode true
#setGenerateViaMode -auto true
setOaxMode -pinPurpose true
setDesignMode -process 250
setViaGenMode -symmetrical_via_only true

# ----------------------------------------------------------
# Globals
# ----------------------------------------------------------
set_table_style -no_frame_fix_width
set_global timing_report_enable_auto_column_width true
# setMultiCpuUsage -localCpu 8 -acquireLicense 8

# ----------------------------------------------------------
# Import and initialization of design
# ----------------------------------------------------------
set init_oa_design_lib      $LIBRARY
set init_top_cell   	    $DESIGN
set init_oa_ref_lib 	    $REFLIBS
set init_verilog    	    $VERILOGFILE
set init_mmmc_file  	    "../tcl/mmcm.tcl"
set init_io_file    	    $IOFILE
set init_pwr_net    	    $POWERNETS
set init_gnd_net    	    $GROUNDNETS
set init_abstract_view      abstract
set init_layout_view        layout
init_design

# ----------------------------------------------------------
# Routing layers
# ----------------------------------------------------------
setNanoRouteMode -quiet -routeTopRoutingLayer 3
setNanoRouteMode -quiet -routeBottomRoutingLayer 1
setRouteMode -earlyGlobalMaxRouteLayer 3
setRouteMode -earlyGlobalMinRouteLayer 1
setTrialRouteMode -maxRouteLayer 3
set bottom_preffered_routing_layer 1
set top_preffered_routing_layer 3
setAttribute -net {*} -bottom_preferred_routing_layer 1
setAttribute -net {*} -top_preferred_routing_layer 3

# ----------------------------------------------------------
# Create floorplan
# ----------------------------------------------------------
set coreWidth 1040
set coreHeight 60
set borderWidth 5
set powerWidth 2
set powerSpacing 1

# Calculate border and align to grid
set coreWidthA [expr {ceil($coreWidth / 1.4) * 1.4}]
set coreHeightA [expr {floor($coreHeight / 13) * 13}]
set borderWidthTB [expr {ceil(($powerWidth * 2 + $powerSpacing + $borderWidth) / 1.3) * 1.3 - $powerWidth * 2 - $powerSpacing}]
set borderWidthLR [expr {ceil(($powerWidth * 2 + $powerSpacing + $borderWidth) / 1.4) * 1.4 - $powerWidth * 2 - $powerSpacing}]
set borderWidthTotalTB [expr {$powerWidth * 2 + $powerSpacing + $borderWidthTB}]
set borderWidthTotalLR [expr {$powerWidth * 2 + $powerSpacing + $borderWidthLR}]

# W H Left Bottom Right Top
floorPlan -s $coreWidthA $coreHeightA $borderWidthTotalLR $borderWidthTotalTB $borderWidthTotalLR $borderWidthTotalTB

# ----------------------------------------------------------
# Load IO file
# ----------------------------------------------------------
loadIoFile $IOFILE

# ----------------------------------------------------------
# Global P/G net connections
# ----------------------------------------------------------
# Connect the power pins from the cells to the power lines
clearGlobalNets
globalNetConnect ${POWERNETS} -type pgpin -pin ${POWERNETS}  -inst * -all -override
globalNetConnect ${GROUNDNETS} -type pgpin -pin ${GROUNDNETS}  -inst * -all -override

# Power route on the left and right side
deleteAllPowerPreroutes 

# Ring 
addRing -nets [list ${GROUNDNETS} ${POWERNETS}] -type core_rings -layer {top MET3 bottom MET3 left MET2 right MET2} -width $powerWidth -spacing $powerSpacing -offset 0 -center 0

# ----------------------------------------------------------
# Connect the power
# ----------------------------------------------------------
sroute -allowJogging 1 -allowLayerChange 1 -connect {blockPin padPin padRing corePin}  -nets [list ${GROUNDNETS} ${POWERNETS}]

# Create pins for the power lines
createPGPin ${POWERNETS} -net ${POWERNETS} -geom MET2 ${borderWidthLR} ${borderWidthTB} [expr {$borderWidthLR + $powerWidth}] [expr {$borderWidthTB + $powerWidth}]
createPGPin ${GROUNDNETS} -net ${GROUNDNETS} -geom MET2 [expr {${borderWidthLR} + $powerWidth + $powerSpacing}] [expr {${borderWidthTB} + $powerWidth + $powerSpacing}] [expr {$borderWidthLR + 2 * $powerWidth + $powerSpacing}] [expr {$borderWidthTB + 2 * $powerWidth + $powerSpacing}]



# ----------------------------------------------------------
# Expand path groups
# ----------------------------------------------------------
createBasicPathGroups -expanded

# ----------------------------------------------------------
# Check timing constraints and design
# Check timing in preplace mode
# ----------------------------------------------------------
check_timing -verbose
checkDesign -all -outdir ${REPORTS_PATH}/checkDesign_pre/



# ----------------------------------------------------------
# Mode settings
# ----------------------------------------------------------
setPlaceMode -place_global_clock_gate_aware true \
             -place_global_place_io_pins false \
             -place_detail_preroute_as_obs {} \
             -congEffort high \
             -place_global_cong_effort high

setNanoRouteMode -drouteUseMultiCutViaEffort high \
                 -drouteUseMinSpacingForBlockage false \
                 -routeInsertAntennaDiode true \
                 -routeAntennaCellName "ANTENNACELL2L5V" \
				 -timingEngine {} \
				 -drouteAutoStop false
#                 -drouteEndIteration 50

setOptMode -clkGateAware true \
           -fixDRC true \
           -fixFanoutLoad true \
           -timeDesignCompressReports false \
           -usefulSkew true \
           -effort high \
           -checkRoutingCongestion true \
           -usefulSkewCCOpt extreme

# ----------------------------------------------------------
# Placement
# ----------------------------------------------------------
place_opt_design -out_dir ${REPORTS_PATH}/timingReports/opt_design/

checkPlace -ignoreOutOfCore ${REPORTS_PATH}/${DESIGN}.checkPlace

# ----------------------------------------------------------
# Clock tree synthesis
# ----------------------------------------------------------
timeDesign -preCTS -outDir ${REPORTS_PATH}/timingReports/
timeDesign -preCTS -hold -outDir ${REPORTS_PATH}/timingReports/

delete_ccopt_clock_tree_spec
create_ccopt_clock_tree_spec -file $OUTPUTS_PATH/ccopt.spec

source $OUTPUTS_PATH/ccopt.spec

set_ccopt_property allow_resize_of_dont_touch_cells false
set_ccopt_property max_fanout  10

set_ccopt_mode -cts_inverter_cells {INL5VX1 INL5VX2 INL5VX3 INL5VX4 INL5VX6 INL5VX8 INL5VX16} \
               -cts_buffer_cells {BUL5VX1 BUL5VX2 BUL5VX3 BUL5VX4 BUL5VX6 BUL5VX8 BUL5VX16}
set_ccopt_mode  -integration "native" -ccopt_modify_clock_latency true


ccopt_design -cts

optDesign -postCTS -outDir ${REPORTS_PATH}/timingReports/opt_design/
optDesign -postCTS -hold -outDir ${REPORTS_PATH}/timingReports/opt_design/

# ----------------------------------------------------------
# Reset tree synthesis
# ----------------------------------------------------------
setLimitedAccessFeature legacy_fects_final_release 1
bufferTreeSynthesis -nets $RESETNET \
                    -bufList {BUL5VX1 BUL5VX2 BUL5VX3 BUL5VX4 BUL5VX6 BUL5VX8 BUL5VX16} \
                    -maxFanout 10 \
                    -prefix "RESET" \
                    -fixedBuf \
                    -fixedNet

# ----------------------------------------------------------
# Route design and optimization
# ----------------------------------------------------------
setDelayCalMode -engine aae 
setAnalysisMode -analysisType onChipVariation -cppr both
setNanoRouteMode -routeWithTimingDriven false \
                 -routeWithSiDriven true \
                 -droutePostRouteSpreadWire false
# droutePostRouteSpreadWire requires Advanced Node license
setAttribute -net {*} -bottom_preferred_routing_layer 1
setAttribute -net {*} -top_preferred_routing_layer 3

routeDesign -globalDetail -viaOpt -wireOpt
setDelayCalMode -SIAware false
# SIAware requires XL license
optDesign -postRoute -setup -hold -outDir ${REPORTS_PATH}/timingReports/opt_design/

pdi report_design

# ----------------------------------------------------------
# Add filler
# ----------------------------------------------------------
#setFillerMode -core {DECAP25L5V DECAP10L5V DECAP5L5V DECAP3L5V DECAP2L5V R_FEED25L5V FEED10L5V FEED5L5V R_FEED4L5V FEED3L5V FEED2L5V FEED1L5V} \
# use more repair cells
setFillerMode -core {DECAP25L5V DECAP10L5V DECAP5L5V DECAP3L5V DECAP2L5V FEED25L5V FEED4L5V FEED3L5V FEED2L5V FEED1L5V} \
              -merge true \
              -corePrefix FILL \
              -add_fillers_with_drc true \
              -fitGap true \
              -ecoMode true \
              -diffCellViol true
              
addFiller -check_signal_drc true
ecoRoute -fix_drc

# ----------------------------------------------------------
# Signoff extraction and timing
# ----------------------------------------------------------
setExtractRCMode -engine postRoute -coupled true -effortLevel low
extractRC 

timeDesign -signOff -reportOnly -outDir ${REPORTS_PATH}/timingReports/
timeDesign -signOff -hold -reportOnly -outDir ${REPORTS_PATH}/timingReports/
report_timing > $REPORTS_PATH/timing.txt

# ----------------------------------------------------------
# Verification
# ----------------------------------------------------------
verifyConnectivity -report $REPORTS_PATH/verifyConn.rpt
verify_drc -report $REPORTS_PATH/verifyDrc.rpt
# verifyMetalDensity -report $REPORTS_PATH/verifyDensity.rpt 
verifyProcessAntenna -report $REPORTS_PATH/verifyProcessAnt.rpt


# ----------------------------------------------------------
# Data export
# ----------------------------------------------------------
saveNetlist $OUTPUTS_PATH/${DESIGN}_impl.v -excludeLeafCell 
saveNetlist $OUTPUTS_PATH/${DESIGN}_impl_phys.v -includePhysicalInst -excludeCellInst "FEED25L5V FEED10L5V FEED5L5V FEED3L5V FEED2L5V FEED1L5V"

set dbgLefDefOutVersion 5.8
defOut -floorplan -routing $OUTPUTS_PATH/${DESIGN}.def

rcOut -view av_wc -spef $OUTPUTS_PATH/${DESIGN}_wc.spef

checkDesign -all -outdir ${REPORTS_PATH}/checkDesign_post/

write_sdf -setuphold merge_always \
          -recrem merge_always -version 3.0 \
          -min_view av_bc -max_view av_wc \
          -target_application verilog $OUTPUTS_PATH/${DESIGN}.sdf
exec sed -i "s/\\\\//g" $OUTPUTS_PATH/${DESIGN}.sdf
		  
summaryReport -outdir ${REPORTS_PATH}/summary

# ----------------------------------------------------------
# Pin post processing
# ----------------------------------------------------------
# Add labels to pin
set labels {}
set rectangles {}
set orientations [list R0 R270 R180 R90]
set layers [list CETXT M1T M2T M3T CETXT]
foreach term [list {*}[dbGet top.terms] {*}[dbGet top.pgTerms]] {
	lappend labels [add_text -label [string map {[ < ] >} {*}[dbGet $term.name]] -height [dbGet $term.width]  -alignment centerLeft \
		-pt [dbGet $term.pt] -layer [lindex $layers [dbGet $term.layer.num]] \
		-orient [lindex $orientations [dbGet $term.edge]] -oaPurpose drawing]
	switch [dbGet $term.edge] {
		0 {
			lappend rectangles [add_shape -rect [list [dbGet $term.pt_x] [expr [dbGet $term.pt_y] - [dbGet $term.width]/2] \
				[expr [dbGet $term.pt_x] + [dbGet $term.depth]] [expr [dbGet $term.pt_y] + [dbGet $term.width]/2]] -layer [dbGet $term.layer.name] -net [dbGet $term.name]]
		}
		1 {			
			lappend rectangles [add_shape -rect [list [expr [dbGet $term.pt_x] - [dbGet $term.width]/2] [expr [dbGet $term.pt_y] - [dbGet $term.depth]] \
				[expr [dbGet $term.pt_x] + [dbGet $term.width]/2] [dbGet $term.pt_y]] -layer [dbGet $term.layer.name] -net [dbGet $term.name]]
		}
		2 {
			lappend rectangles [add_shape -rect [list [expr [dbGet $term.pt_x] - [dbGet $term.depth]] [expr [dbGet $term.pt_y] - [dbGet $term.width]/2] \
				[dbGet $term.pt_x] [expr [dbGet $term.pt_y] + [dbGet $term.width]/2]] -layer [dbGet $term.layer.name] -net [dbGet $term.name]]
		}
		3 {
			lappend rectangles [add_shape -rect [list [expr [dbGet $term.pt_x] - [dbGet $term.width]/2] [dbGet $term.pt_y] \
				[expr [dbGet $term.pt_x] + [dbGet $term.width]/2] [expr [dbGet $term.pt_y] + [dbGet $term.depth]]] -layer [dbGet $term.layer.name] -net [dbGet $term.name]]
		}
	}
}
setOaxMode -textPurpose drawing

# dbDeleteMarker -all

# Remove blockages
deleteRouteBlk -type all
deletePlaceBlockage -all

# ----------------------------------------------------------
# Save signoff layout with RC database
# ----------------------------------------------------------
oaOut $LIBRARY $DESIGN layout -leafViewNames layout

win