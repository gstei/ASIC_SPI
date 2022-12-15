proc compile (top) {
    global script_path
    global PartDev
    global VivDir
    global OutputDir
    source [ file join [pwd][ file dirname [ file normalize [ info script ] ] ] ]/General_functions.tcl
    setupFolders $top
    #set topTB as top file.
    set_property top topTB [get_filesets simset]
    set simulation time to 1ms
    set_property -name {xsim.simulate.runtime} -value {5ms} -objects [current_fileset -simset]
    set waveform config file
    add_files -fileset simset -norecurse [findFiles "simvectors/waves" "topTB_behav.wcfg"]
    puts "INFO: Start simulation"
    update_compile_order -fileset [current_fileset -sinset]
    set_property target_simulator "XSim" [current_project]
    launch_simulation -mode "behavioral" -simset [get_filesets simset]
    }

#Call the compile function and generate the bit file
variable script path
variable PartDev
variable VivDir
variable OutputDir
compile fpga_OpalKelly_top