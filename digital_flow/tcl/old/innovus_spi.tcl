#-------------------------------------------------------------------------------
# Info and path setup
#-------------------------------------------------------------------------------
set DESIGN  "spi"
set LIBRARY "matriq"
set DATE [clock format [clock seconds] -format "%b%d-%T"] 
set OUTPUTS_PATH ./results
set REPORTS_PATH ./reports
set REFLIBS [list D_CELLSL_JI5V]
set VERILOGFILE "./${OUTPUTS_PATH}/${DESIGN}.v"
set IOFILE "./src/${DESIGN}.io"
set POWERNETS [list vdd5i!]
set GROUNDNETS [list gnd5i!]
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
setMultiCpuUsage -localCpu 8

# ----------------------------------------------------------
# Import and initialization of design
# ----------------------------------------------------------
set init_oa_design_lib      $LIBRARY
set init_top_cell   	    $DESIGN
set init_oa_ref_lib 	    $REFLIBS
set init_verilog    	    $VERILOGFILE
set init_mmmc_file  	    "./src/mmcm.tcl"
set init_io_file    	    $IOFILE
set init_pwr_net    	    $POWERNETS
set init_gnd_net    	    $GROUNDNETS
set init_abstract_view      abstract
set init_layout_view        layout
init_design

# ----------------------------------------------------------
# Routing layers
# ----------------------------------------------------------
setNanoRouteMode -quiet -routeTopRoutingLayer 2
setNanoRouteMode -quiet -routeBottomRoutingLayer 1
setRouteMode -earlyGlobalMaxRouteLayer 2
setRouteMode -earlyGlobalMinRouteLayer 1
setTrialRouteMode -maxRouteLayer 2
set bottom_preffered_routing_layer 1
set top_preffered_routing_layer 2
setAttribute -net {*} -bottom_preferred_routing_layer 1
setAttribute -net {*} -top_preferred_routing_layer 2

# ----------------------------------------------------------
# Read IO file, define floorplan, add IO filler
# ----------------------------------------------------------
floorPlan -s 800 200 40 40 40 40 

loadIoFile $IOFILE

#snapFPlanIO -usergrid

#addIoFiller -cell FILLER100F FILLER84F FILLER50F FILLER40F FILLER20F FILLER10F FILLER05F FILLER02F FILLER01F -prefix IOFILLER

# ----------------------------------------------------------
# Save floorplan layout
# ----------------------------------------------------------
# saveDesign -cellview [list $LIBRARY $DESIGN layout_01_fplan]

# ----------------------------------------------------------
# Global P/G net connections
# ----------------------------------------------------------
clearGlobalNets

deleteAllPowerPreroutes 
addRing -nets [list ${GROUNDNETS} ${POWERNETS}] -type core_rings -layer {top MET3 bottom MET3 left MET2 right MET2} -width 10 -spacing 1 -offset 0 -center 0
sroute -allowJogging 1 -allowLayerChange 1 -nets [list ${GROUNDNETS} ${POWERNETS}]
createPGPin ${POWERNETS} -net ${POWERNETS} -geom {MET3 40.6 19.3 50.6 29.3}
createPGPin ${GROUNDNETS} -net ${GROUNDNETS} -geom {MET3 40.6 30.3 50.6 40.3}

# ----------------------------------------------------------
# Save layout with special/power routes
# ----------------------------------------------------------
# saveDesign -cellview [list $LIBRARY $DESIGN layout_02_sroute]

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
setPlaceMode -place_global_clock_gate_aware false \
             -place_global_place_io_pins false \
             -place_detail_preroute_as_obs {}
setPlaceMode -place_global_ignore_scan 1
setPlaceMode -place_global_reorder_scan false

setNanoRouteMode -drouteUseMultiCutViaEffort high \
                 -drouteUseMinSpacingForBlockage false \
                 -routeInsertAntennaDiode true \
                 -routeAntennaCellName "ANTENNACELL2LJI5V"
				 
setNanoRouteMode -quiet -timingEngine {}

setOptMode -clkGateAware false \
           -fixDRC true \
           -fixFanoutLoad true \
           -timeDesignCompressReports false \
           -usefulSkew true
		  

# ----------------------------------------------------------
# Placement
# ----------------------------------------------------------
place_opt_design

checkPlace -ignoreOutOfCore ${REPORTS_PATH}/${DESIGN}.checkPlace

# ----------------------------------------------------------
# Save layout placed
# ----------------------------------------------------------
# saveDesign -cellview [list $LIBRARY $DESIGN layout_03_placed]

# ----------------------------------------------------------
# Clock tree synthesis
# ----------------------------------------------------------
timeDesign -preCTS -outDir ${REPORTS_PATH}/timingReports/
timeDesign -preCTS -hold -outDir ${REPORTS_PATH}/timingReports/

delete_ccopt_clock_tree_spec
create_ccopt_clock_tree_spec -file $OUTPUTS_PATH/ccopt.spec

source $OUTPUTS_PATH/ccopt.spec

set_ccopt_property allow_resize_of_dont_touch_cells false

set_ccopt_mode -cts_inverter_cells {INLJI5VX1 INLJI5VX2 INLJI5VX3 INLJI5VX4 INLJI5VX6 INLJI5VX8 INLJI5VX16} \
               -cts_buffer_cells {BULJI5VX1 BULJI5VX2 BULJI5VX3 BULJI5VX4 BULJI5VX6 BULJI5VX8 BULJI5VX16}
set_ccopt_mode  -integration "native" -ccopt_modify_clock_latency true

ccopt_design -cts

optDesign -postCTS
optDesign -postCTS -hold

# ----------------------------------------------------------
# Save layout with clocktree
# ----------------------------------------------------------
# saveDesign -cellview [list $LIBRARY $DESIGN layout_04_cts]

# ----------------------------------------------------------
# Route design and optimization
# ----------------------------------------------------------
setDelayCalMode -engine aae 
setAnalysisMode -analysisType onChipVariation -cppr both
setNanoRouteMode -quiet -routeWithTimingDriven false
setNanoRouteMode -quiet -routeWithSiDriven true
setAttribute -net {*} -bottom_preferred_routing_layer 1
setAttribute -net {*} -top_preferred_routing_layer 2
routeDesign -globalDetail -viaOpt -wireOpt

optDesign -postRoute -setup -hold

# ----------------------------------------------------------
# Add filler
# ----------------------------------------------------------
setFillerMode -add_fillers_with_drc false
addFiller -prefix FILLCAP -cell  DECAP25LJI5V DECAP10LJI5V DECAP5LJI5V DECAP3LJI5V DECAP2LJI5V
addFiller -prefix FILL -cell FEED25LJI5V FEED10LJI5V FEED5LJI5V FEED3LJI5V FEED2LJI5V FEED1LJI5V
ecoRoute -fix_drc

pdi report_design

# ----------------------------------------------------------
# Save routed layout
# ----------------------------------------------------------
# saveDesign -cellview [list $LIBRARY $DESIGN layout_05_route]

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
verifyMetalDensity -report $REPORTS_PATH/verifyDensity.rpt 
verifyProcessAntenna -report $REPORTS_PATH/verifyProcessAnt.rpt


# ----------------------------------------------------------
# Data export
# ----------------------------------------------------------
saveNetlist $OUTPUTS_PATH/${DESIGN}_impl.v -excludeLeafCell
saveNetlist $OUTPUTS_PATH/${DESIGN}_impl_phys.v -includePhysicalInst -excludeCellInst "FEED25LJI5V FEED10LJI5V FEED5LJI5V FEED3LJI5V FEED2LJI5V FEED1LJI5V"

set dbgLefDefOutVersion 5.8
defOut -floorplan -routing $OUTPUTS_PATH/${DESIGN}.def

rcOut -view av_wc -spef $OUTPUTS_PATH/${DESIGN}_wc.spef

checkDesign -all -outdir ${REPORTS_PATH}/checkDesign_post/

write_sdf -setuphold merge_always \
          -recrem merge_always -version 3.0 \
          -min_view av_bc -max_view av_wc \
          -target_application verilog $OUTPUTS_PATH/${DESIGN}.sdf
		  
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
			lappend rectangles [add_shape -rect [list [dbGet $term.pt_x] [expr [dbGet $term.pt_y] - [dbGet $term.depth]/2] \
				[expr [dbGet $term.pt_x] + [dbGet $term.width]] [expr [dbGet $term.pt_y] + [dbGet $term.depth]/2]] -layer [dbGet $term.layer.name] -net [dbGet $term.name]]
		}
		1 {			
			lappend rectangles [add_shape -rect [list [expr [dbGet $term.pt_x] - [dbGet $term.width]/2] [expr [dbGet $term.pt_y] - [dbGet $term.depth]] \
				[expr [dbGet $term.pt_x] + [dbGet $term.width]/2] [dbGet $term.pt_y]] -layer [dbGet $term.layer.name] -net [dbGet $term.name]]
		}
		2 {
			lappend rectangles [add_shape -rect [list [expr [dbGet $term.pt_x] - [dbGet $term.width]] [expr [dbGet $term.pt_y] - [dbGet $term.depth]/2] \
				[dbGet $term.pt_x] [expr [dbGet $term.pt_y] + [dbGet $term.depth]/2]] -layer [dbGet $term.layer.name] -net [dbGet $term.name]]
		}
		3 {
			lappend rectangles [add_shape -rect [list [expr [dbGet $term.pt_x] - [dbGet $term.width]/2] [dbGet $term.pt_y] \
				[expr [dbGet $term.pt_x] + [dbGet $term.width]/2] [expr [dbGet $term.pt_y] + [dbGet $term.depth]]] -layer [dbGet $term.layer.name] -net [dbGet $term.name]]
		}
	}
}
setOaxMode -textPurpose drawing

dbDeleteMarker -all

# ----------------------------------------------------------
# Save signoff layout with RC database
# ----------------------------------------------------------
# saveDesign -cellview [list $LIBRARY $DESIGN layout_06_signoff]
# saveDesign -cellview [list $LIBRARY $DESIGN layout] -nocompress
# saveDesign -cellview [list $LIBRARY $DESIGN layout_rc] -rc -nocompress
oaOut $LIBRARY $DESIGN layout -leafViewNames layout

win