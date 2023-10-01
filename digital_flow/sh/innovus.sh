#!/bin/sh

#innovus -lic_startup vdi -cds_lib_file /mnt/imesl/Projects/471_5193_Matriq/digital_flow/lib/cds.lib -files ../tcl/innovus_$1.tcl
QT_SCALE_FACTOR=1 innovus -cds_lib_file /mnt/imesl/Projects/MSE_PA_Jansky_Meyer/digital/digital_flow/lib/cds.lib -files ../tcl/innovus_$1.tcl
