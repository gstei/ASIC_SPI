//************************************************************************************
// Copyright        : (c) All Rights Reserved
// Company          : X-FAB Semiconductor Foundries AG
// Address          : Haarbergstr. 67,  D-99097 Erfurt, Germany
//
// File             : D_CELLSL_JI5V.v
// Description      : Verilog model file for Library D_CELLSL_JI5V
//                  : with negative timing check support; 0.35um, Digital
//                    Logic Library, low power 5V, junction isolated
//
// Technology       : 0.35um junction isolated CMOS 5V
// Lib_version      : 1.0.2, Wed Aug 27 10:12:29 2014
// Created by       : X-FAB Library Characterizer XLICDD 
// Program version  : XLICDD - waz_gvt_main, 1.1000 build 1285 Time stamp:
//                    Tue Nov 20 14:24:42 2012
// Last Modified by : XLICDD generated
//
// #######################################################################
//
//  Copyright (c) X-FAB Semiconductor Foundries AG . All rights reserved.
//  This Design Kit data and the associated documentation are
//  confidential and proprietary to X-FAB Semiconductor Foundries AG.
//
//  DISCLAIMER
//  The information contained herein is provided by X-FAB Semiconductor
//  Foundries AG  on an "AS IS" basis without any warranty.
//
//  X-FAB Semiconductor Foundries AG disclaims any representation that
//  the information does not infringe any intellectual property rights or 
//  proprietary rights of any third parties. There are no other warranties 
//  given by X-FAB, whether express, implied or statutory, including, 
//  without limitation, implied warranties of merchantability and fitness 
//  for a particular purpose.
//
//  In no event X-FAB Semiconductor Foundries AG will be liable or 
//  responsible for any expense, losses, damages, or action incurred or 
//  undertaken as a result of the receipt of the information.
// 
//  X-FAB Semiconductor Foundries AG  reserves the right to make changes
//  to the information at any time and without notice.
//
// #######################################################################
// ***********************************************************************
// Remark:
// 
// This Verilog library uses  User Defined Primitives (UDP)
// which are defined in the Verilog library file VLG_PRIMITIVES.v.
//
// If an ATPG tool is used then the compiler directive 
//   `define ATPG_RUN yes
// has to be set before reading this library.
// 
// Use the compiler directive command
//   `define  DISPLAY_HOLD yes
// to enable the logic pullup/down behaviour of the Leakage current 
// compensator cell SIGNALHOLD* (see also the comment in the SIGNALHOLD* 
// cell model)
// 
// Use the compiler directive command
//   `define  NEG_TCHK yes
// to enable the syntax support for negative timing checks. 
//
//************************************************************************/
 

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : AN211LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 2-Input AND into 3-Input NOR
//   last modified by : XLICDD generated
//****************************************************************************

module AN211LJI5VX1 (A, B, C, D, Q);

   input     A, B, C, D;
   output    Q;

// Function Q: !((A*B)+C+D)
   and       i0  (n_0, A, B);
   nor       i1  (Q, n_0, C, D);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1 && D == 1'b0)) (C -=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0 && D == 1'b0)) (C -=> Q) = (0.02, 0.02);
      (D -=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1 && C == 1'b0)) (D -=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0 && C == 1'b0)) (D -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : AN21LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 2-Input AND into 2-Input NOR
//   last modified by : XLICDD generated
//****************************************************************************

module AN21LJI5VX1 (A, B, C, Q);

   input     A, B, C;
   output    Q;

// Function Q: !((A*B)+C)
   and       i0  (n_0, A, B);
   nor       i1  (Q, n_0, C);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0)) (C -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : AN21LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 2-Input AND into 2-Input NOR
//   last modified by : XLICDD generated
//****************************************************************************

module AN21LJI5VX2 (A, B, C, Q);

   input     A, B, C;
   output    Q;

// Function Q: !((A*B)+C)
   and       i0  (n_0, A, B);
   nor       i1  (Q, n_0, C);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0)) (C -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : AN221LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 2x2-Input AND into 3-Input NOR
//   last modified by : XLICDD generated
//****************************************************************************

module AN221LJI5VX1 (A, B, C, D, E, Q);

   input     A, B, C, D, E;
   output    Q;

// Function Q: !((A*B)+(C*D)+E)
   and       i0  (n_0, A, B);
   and       i1  (n_1, C, D);
   nor       i2  (Q, n_0, n_1, E);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
         if ((D == 1'b1)) (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);
         if ((D == 1'b1)) (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1)) (C -=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0)) (C -=> Q) = (0.02, 0.02);
      (D -=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1)) (D -=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0)) (D -=> Q) = (0.02, 0.02);
      (E -=> Q) = (0.02, 0.02);
         if ((B == 1'b1 && D == 1'b0) || (B == 1'b0 && C == 1'b0 && D ==
                   1'b1)) (E -=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1 && C == 1'b0 && D == 1'b1)) (E -=> Q) =
                   (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : AN222LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 3x2-Input AND into 3-Input NOR
//   last modified by : XLICDD generated
//****************************************************************************

module AN222LJI5VX1 (A, B, C, D, E, F, Q);

   input     A, B, C, D, E, F;
   output    Q;

// Function Q: !((A*B)+(C*D)+(E*F))
   and       i0  (n_0, A, B);
   and       i1  (n_1, C, D);
   and       i2  (n_2, E, F);
   nor       i3  (Q, n_0, n_1, n_2);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
         if ((B == 1'b1 && C == 1'b0 && D == 1'b1 && E == 1'b0 && F == 1'b1))
                   (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && C == 1'b0 && D == 1'b1 && E == 1'b0 && F == 1'b1))
                   (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
         if ((B == 1'b1) || (A == 1'b1 && B == 1'b0 && F == 1'b1)) (C -=> Q) =
                   (0.02, 0.02);
      (D -=> Q) = (0.02, 0.02);
         if ((B == 1'b1) || (A == 1'b1 && B == 1'b0 && F == 1'b1)) (D -=> Q) =
                   (0.02, 0.02);
      (E -=> Q) = (0.02, 0.02);
         if ((B == 1'b0 && D == 1'b1) || (A == 1'b1 && B == 1'b0 && C == 1'b1
                   && D == 1'b0)) (E -=> Q) = (0.02, 0.02);
         if ((B == 1'b1 && D == 1'b0)) (E -=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1 && C == 1'b0 && D == 1'b1)) (E -=> Q) =
                   (0.02, 0.02);
      (F -=> Q) = (0.02, 0.02);
         if ((B == 1'b0 && D == 1'b1) || (A == 1'b1 && B == 1'b0 && C == 1'b1
                   && D == 1'b0)) (F -=> Q) = (0.02, 0.02);
         if ((B == 1'b1 && D == 1'b0)) (F -=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1 && C == 1'b0 && D == 1'b1)) (F -=> Q) =
                   (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : AN22LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 2x2-Input AND into 2-Input NOR
//   last modified by : XLICDD generated
//****************************************************************************

module AN22LJI5VX1 (A, B, C, D, Q);

   input     A, B, C, D;
   output    Q;

// Function Q: !((A*B)+(C*D))
   and       i0  (n_0, A, B);
   and       i1  (n_1, C, D);
   nor       i2  (Q, n_0, n_1);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
         if ((B == 1'b1 && C == 1'b1)) (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && C == 1'b1)) (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1)) (C -=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0)) (C -=> Q) = (0.02, 0.02);
      (D -=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1)) (D -=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0)) (D -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : AN22LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 2x2-Input AND into 2-Input NOR
//   last modified by : XLICDD generated
//****************************************************************************

module AN22LJI5VX2 (A, B, C, D, Q);

   input     A, B, C, D;
   output    Q;

// Function Q: !((A*B)+(C*D))
   and       i0  (n_0, A, B);
   and       i1  (n_1, C, D);
   nor       i2  (Q, n_0, n_1);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
         if ((B == 1'b1 && C == 1'b1)) (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && C == 1'b1)) (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1)) (C -=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0)) (C -=> Q) = (0.02, 0.02);
      (D -=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1)) (D -=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0)) (D -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : AN311LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 3-Input AND into 3-Input NOR
//   last modified by : XLICDD generated
//****************************************************************************

module AN311LJI5VX1 (A, B, C, D, E, Q);

   input     A, B, C, D, E;
   output    Q;

// Function Q: !((A*B*C)+D+E)
   and       i0  (n_0, A, B, C);
   nor       i1  (Q, n_0, D, E);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
      (D -=> Q) = (0.02, 0.02);
         if ((B == 1'b0 && C == 1'b1)) (D -=> Q) = (0.02, 0.02);
         if ((B == 1'b1 && C == 1'b1)) (D -=> Q) = (0.02, 0.02);
      (E -=> Q) = (0.02, 0.02);
         if ((B == 1'b0 && C == 1'b1)) (E -=> Q) = (0.02, 0.02);
         if ((B == 1'b1 && C == 1'b1)) (E -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : AN31LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 3-Input AND into 2-Input NOR
//   last modified by : XLICDD generated
//****************************************************************************

module AN31LJI5VX1 (A, B, C, D, Q);

   input     A, B, C, D;
   output    Q;

// Function Q: !((A*B*C)+D)
   and       i0  (n_0, A, B, C);
   nor       i1  (Q, n_0, D);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
      (D -=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b0 && C == 1'b1)) (D -=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0 && C == 1'b1)) (D -=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b1 && C == 1'b0)) (D -=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1 && C == 1'b1)) (D -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : AN31LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 3-Input AND into 2-Input NOR
//   last modified by : XLICDD generated
//****************************************************************************

module AN31LJI5VX2 (A, B, C, D, Q);

   input     A, B, C, D;
   output    Q;

// Function Q: !((A*B*C)+D)
   and       i0  (n_0, A, B, C);
   nor       i1  (Q, n_0, D);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
      (D -=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b0 && C == 1'b1)) (D -=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0 && C == 1'b1)) (D -=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b1 && C == 1'b0)) (D -=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1 && C == 1'b1)) (D -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : AN321LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 3-Input AND, 2-Input AND into 3-Input NOR
//   last modified by : XLICDD generated
//****************************************************************************

module AN321LJI5VX1 (A, B, C, D, E, F, Q);

   input     A, B, C, D, E, F;
   output    Q;

// Function Q: !((A*B*C)+(D*E)+F)
   and       i0  (n_0, A, B, C);
   and       i1  (n_1, D, E);
   nor       i2  (Q, n_0, n_1, F);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
         if ((B == 1'b1 && C == 1'b1 && D == 1'b0 && E == 1'b1 && F == 1'b0))
                   (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && C == 1'b1 && D == 1'b0 && E == 1'b1 && F == 1'b0))
                   (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b1 && D == 1'b0 && E == 1'b1 && F == 1'b0))
                   (C -=> Q) = (0.02, 0.02);
      (D -=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b1 && C == 1'b0) || (A == 1'b0 && B == 1'b0
                   && C == 1'b1)) (D -=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0 && C == 1'b1) || (A == 1'b0 && B == 1'b1
                   && C == 1'b1)) (D -=> Q) = (0.02, 0.02);
      (E -=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b1 && C == 1'b0) || (A == 1'b0 && B == 1'b0
                   && C == 1'b1)) (E -=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0 && C == 1'b1) || (A == 1'b0 && B == 1'b1
                   && C == 1'b1)) (E -=> Q) = (0.02, 0.02);
      (F -=> Q) = (0.02, 0.02);
         if ((C == 1'b0 && E == 1'b1) || (B == 1'b0 && C == 1'b1 && D == 1'b1
                   && E == 1'b0) || (A == 1'b1 && B == 1'b0 && C == 1'b1 && D
                   == 1'b0 && E == 1'b0) || (A == 1'b0 && B == 1'b1 && C ==
                   1'b1 && D == 1'b0 && E == 1'b0)) (F -=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1 && C == 1'b1 && D == 1'b1 && E == 1'b0)
                   || (A == 1'b1 && B == 1'b0 && C == 1'b1 && D == 1'b0 && E
                   == 1'b1)) (F -=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1 && C == 1'b1 && D == 1'b0 && E == 1'b1))
                   (F -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : AN32LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 3-Input, 2-Input AND into 2-Input NOR
//   last modified by : XLICDD generated
//****************************************************************************

module AN32LJI5VX1 (A, B, C, D, E, Q);

   input     A, B, C, D, E;
   output    Q;

// Function Q: !((A*B*C)+(D*E))
   and       i0  (n_0, A, B, C);
   and       i1  (n_1, D, E);
   nor       i2  (Q, n_0, n_1);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
         if ((E == 1'b1)) (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);
         if ((E == 1'b1)) (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
         if ((E == 1'b1)) (C -=> Q) = (0.02, 0.02);
      (D -=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b0 && C == 1'b1) || (A == 1'b1 && B == 1'b1
                   && C == 1'b0)) (D -=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1 && C == 1'b1) || (A == 1'b1 && B == 1'b0
                   && C == 1'b1)) (D -=> Q) = (0.02, 0.02);
      (E -=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b1 && C == 1'b0)) (E -=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b0 && C == 1'b1)) (E -=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0 && C == 1'b1)) (E -=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1 && C == 1'b1)) (E -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : AN32LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 3-Input, 2-Input AND into 2-Input NOR
//   last modified by : XLICDD generated
//****************************************************************************

module AN32LJI5VX2 (A, B, C, D, E, Q);

   input     A, B, C, D, E;
   output    Q;

// Function Q: !((A*B*C)+(D*E))
   and       i0  (n_0, A, B, C);
   and       i1  (n_1, D, E);
   nor       i2  (Q, n_0, n_1);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
         if ((E == 1'b1)) (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);
         if ((E == 1'b1)) (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
         if ((E == 1'b1)) (C -=> Q) = (0.02, 0.02);
      (D -=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b0 && C == 1'b1) || (A == 1'b1 && B == 1'b1
                   && C == 1'b0)) (D -=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1 && C == 1'b1) || (A == 1'b1 && B == 1'b0
                   && C == 1'b1)) (D -=> Q) = (0.02, 0.02);
      (E -=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b1 && C == 1'b0)) (E -=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b0 && C == 1'b1)) (E -=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0 && C == 1'b1)) (E -=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1 && C == 1'b1)) (E -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : AN33LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 2x3-Input AND into 2-Input NOR
//   last modified by : XLICDD generated
//****************************************************************************

module AN33LJI5VX1 (A, B, C, D, E, F, Q);

   input     A, B, C, D, E, F;
   output    Q;

// Function Q: !((A*B*C)+(D*E*F))
   and       i0  (n_0, A, B, C);
   and       i1  (n_1, D, E, F);
   nor       i2  (Q, n_0, n_1);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
         if ((B == 1'b1 && C == 1'b1 && D == 1'b0 && E == 1'b1 && F == 1'b1))
                   (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && C == 1'b1 && D == 1'b0 && E == 1'b1 && F == 1'b1))
                   (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b1 && D == 1'b0 && E == 1'b1 && F == 1'b1))
                   (C -=> Q) = (0.02, 0.02);
      (D -=> Q) = (0.02, 0.02);
         if ((C == 1'b1)) (D -=> Q) = (0.02, 0.02);
      (E -=> Q) = (0.02, 0.02);
         if ((C == 1'b1)) (E -=> Q) = (0.02, 0.02);
      (F -=> Q) = (0.02, 0.02);
         if ((C == 1'b1)) (F -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : AN33LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 2x3-Input AND into 2-Input NOR
//   last modified by : XLICDD generated
//****************************************************************************

module AN33LJI5VX2 (A, B, C, D, E, F, Q);

   input     A, B, C, D, E, F;
   output    Q;

// Function Q: !((A*B*C)+(D*E*F))
   and       i0  (n_0, A, B, C);
   and       i1  (n_1, D, E, F);
   nor       i2  (Q, n_0, n_1);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
         if ((B == 1'b1 && C == 1'b1 && D == 1'b0 && E == 1'b1 && F == 1'b1))
                   (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && C == 1'b1 && D == 1'b0 && E == 1'b1 && F == 1'b1))
                   (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b1 && D == 1'b0 && E == 1'b1 && F == 1'b1))
                   (C -=> Q) = (0.02, 0.02);
      (D -=> Q) = (0.02, 0.02);
         if ((C == 1'b1)) (D -=> Q) = (0.02, 0.02);
      (E -=> Q) = (0.02, 0.02);
         if ((C == 1'b1)) (E -=> Q) = (0.02, 0.02);
      (F -=> Q) = (0.02, 0.02);
         if ((C == 1'b1)) (F -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : AND2LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 2-Input AND
//   last modified by : XLICDD generated
//****************************************************************************

module AND2LJI5VX1 (A, B, Q);

   input     A, B;
   output    Q;

// Function Q: (A*B)
   and       i0  (Q, A, B);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : AND2LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 2-Input AND
//   last modified by : XLICDD generated
//****************************************************************************

module AND2LJI5VX2 (A, B, Q);

   input     A, B;
   output    Q;

// Function Q: (A*B)
   and       i0  (Q, A, B);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : AND3LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 3-Input AND
//   last modified by : XLICDD generated
//****************************************************************************

module AND3LJI5VX1 (A, B, C, Q);

   input     A, B, C;
   output    Q;

// Function Q: (A*B*C)
   and       i0  (Q, A, B, C);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : AND3LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 3-Input AND
//   last modified by : XLICDD generated
//****************************************************************************

module AND3LJI5VX2 (A, B, C, Q);

   input     A, B, C;
   output    Q;

// Function Q: (A*B*C)
   and       i0  (Q, A, B, C);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : AND4LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 4-Input AND
//   last modified by : XLICDD generated
//****************************************************************************

module AND4LJI5VX1 (A, B, C, D, Q);

   input     A, B, C, D;
   output    Q;

// Function Q: (A*B*C*D)
   and       i0  (Q, A, B, C, D);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : AND4LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 4-Input AND
//   last modified by : XLICDD generated
//****************************************************************************

module AND4LJI5VX2 (A, B, C, D, Q);

   input     A, B, C, D;
   output    Q;

// Function Q: (A*B*C*D)
   and       i0  (Q, A, B, C, D);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : AND4SLJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 4-Input AND with 4-stocked n-channal transistors
//   last modified by : XLICDD generated
//****************************************************************************

module AND4SLJI5VX1 (A, B, C, D, Q);

   input     A, B, C, D;
   output    Q;

// Function Q: (A*B*C*D)
   and       i0  (Q, A, B, C, D);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : AND4SLJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 4-Input AND with 4-stocked n-channal transistors
//   last modified by : XLICDD generated
//****************************************************************************

module AND4SLJI5VX2 (A, B, C, D, Q);

   input     A, B, C, D;
   output    Q;

// Function Q: (A*B*C*D)
   and       i0  (Q, A, B, C, D);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : AND5LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 5-Input AND
//   last modified by : XLICDD generated
//****************************************************************************

module AND5LJI5VX1 (A, B, C, D, E, Q);

   input     A, B, C, D, E;
   output    Q;

// Function Q: (A*B*C*D*E)
   and       i0  (Q, A, B, C, D, E);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
      (E +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : AND5LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 5-Input AND
//   last modified by : XLICDD generated
//****************************************************************************

module AND5LJI5VX2 (A, B, C, D, E, Q);

   input     A, B, C, D, E;
   output    Q;

// Function Q: (A*B*C*D*E)
   and       i0  (Q, A, B, C, D, E);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
      (E +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : AND6LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 6-Input AND
//   last modified by : XLICDD generated
//****************************************************************************

module AND6LJI5VX1 (A, B, C, D, E, F, Q);

   input     A, B, C, D, E, F;
   output    Q;

// Function Q: (A*B*C*D*E*F)
   and       i0  (Q, A, B, C, D, E, F);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
      (E +=> Q) = (0.02, 0.02);
      (F +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : AND6LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 6-Input AND
//   last modified by : XLICDD generated
//****************************************************************************

module AND6LJI5VX2 (A, B, C, D, E, F, Q);

   input     A, B, C, D, E, F;
   output    Q;

// Function Q: (A*B*C*D*E*F)
   and       i0  (Q, A, B, C, D, E, F);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
      (E +=> Q) = (0.02, 0.02);
      (F +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : AO211LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 2-Input AND into 3-Input OR
//   last modified by : XLICDD generated
//****************************************************************************

module AO211LJI5VX1 (A, B, C, D, Q);

   input     A, B, C, D;
   output    Q;

// Function Q: ((A*B)+C+D)
   and       i0  (n_0, A, B);
   or        i1  (Q, n_0, C, D);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1 && D == 1'b0)) (C +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0 && D == 1'b0)) (C +=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1 && C == 1'b0)) (D +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0 && C == 1'b0)) (D +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : AO211LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 2-Input AND into 3-Input OR
//   last modified by : XLICDD generated
//****************************************************************************

module AO211LJI5VX2 (A, B, C, D, Q);

   input     A, B, C, D;
   output    Q;

// Function Q: ((A*B)+C+D)
   and       i0  (n_0, A, B);
   or        i1  (Q, n_0, C, D);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1 && D == 1'b0)) (C +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0 && D == 1'b0)) (C +=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1 && C == 1'b0)) (D +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0 && C == 1'b0)) (D +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : AO21LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 2-Input AND into 2-Input OR
//   last modified by : XLICDD generated
//****************************************************************************

module AO21LJI5VX1 (A, B, C, Q);

   input     A, B, C;
   output    Q;

// Function Q: ((A*B)+C)
   and       i0  (n_0, A, B);
   or        i1  (Q, n_0, C);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0)) (C +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : AO21LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 2-Input AND into 2-Input OR
//   last modified by : XLICDD generated
//****************************************************************************

module AO21LJI5VX2 (A, B, C, Q);

   input     A, B, C;
   output    Q;

// Function Q: ((A*B)+C)
   and       i0  (n_0, A, B);
   or        i1  (Q, n_0, C);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0)) (C +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : AO221LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 2x2-Input AND into 3-Input OR
//   last modified by : XLICDD generated
//****************************************************************************

module AO221LJI5VX1 (A, B, C, D, E, Q);

   input     A, B, C, D, E;
   output    Q;

// Function Q: ((A*B)+(C*D)+E)
   and       i0  (n_0, A, B);
   and       i1  (n_1, C, D);
   or        i2  (Q, n_0, n_1, E);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
         if ((D == 1'b1)) (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
         if ((D == 1'b1)) (B +=> Q) = (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1)) (C +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0)) (C +=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1)) (D +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0)) (D +=> Q) = (0.02, 0.02);
      (E +=> Q) = (0.02, 0.02);
         if ((B == 1'b1 && D == 1'b0) || (B == 1'b0 && C == 1'b0 && D ==
                   1'b1)) (E +=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1 && C == 1'b0 && D == 1'b1)) (E +=> Q) =
                   (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : AO221LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 2x2-Input AND into 3-Input OR
//   last modified by : XLICDD generated
//****************************************************************************

module AO221LJI5VX2 (A, B, C, D, E, Q);

   input     A, B, C, D, E;
   output    Q;

// Function Q: ((A*B)+(C*D)+E)
   and       i0  (n_0, A, B);
   and       i1  (n_1, C, D);
   or        i2  (Q, n_0, n_1, E);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
         if ((D == 1'b1)) (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
         if ((D == 1'b1)) (B +=> Q) = (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1)) (C +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0)) (C +=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1)) (D +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0)) (D +=> Q) = (0.02, 0.02);
      (E +=> Q) = (0.02, 0.02);
         if ((B == 1'b1 && D == 1'b0) || (B == 1'b0 && C == 1'b0 && D ==
                   1'b1)) (E +=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1 && C == 1'b0 && D == 1'b1)) (E +=> Q) =
                   (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : AO222LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 3x2-Input AND into 3-Input OR
//   last modified by : XLICDD generated
//****************************************************************************

module AO222LJI5VX1 (A, B, C, D, E, F, Q);

   input     A, B, C, D, E, F;
   output    Q;

// Function Q: ((A*B)+(C*D)+(E*F))
   and       i0  (n_0, A, B);
   and       i1  (n_1, C, D);
   and       i2  (n_2, E, F);
   or        i3  (Q, n_0, n_1, n_2);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
         if ((B == 1'b1 && C == 1'b0 && D == 1'b1 && E == 1'b0 && F == 1'b1))
                   (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && C == 1'b0 && D == 1'b1 && E == 1'b0 && F == 1'b1))
                   (B +=> Q) = (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);
         if ((B == 1'b1) || (A == 1'b1 && B == 1'b0 && F == 1'b1)) (C +=> Q) =
                   (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
         if ((B == 1'b1) || (A == 1'b1 && B == 1'b0 && F == 1'b1)) (D +=> Q) =
                   (0.02, 0.02);
      (E +=> Q) = (0.02, 0.02);
         if ((B == 1'b0 && D == 1'b1) || (A == 1'b1 && B == 1'b0 && C == 1'b1
                   && D == 1'b0)) (E +=> Q) = (0.02, 0.02);
         if ((B == 1'b1 && D == 1'b0)) (E +=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1 && C == 1'b0 && D == 1'b1)) (E +=> Q) =
                   (0.02, 0.02);
      (F +=> Q) = (0.02, 0.02);
         if ((B == 1'b0 && D == 1'b1) || (A == 1'b1 && B == 1'b0 && C == 1'b1
                   && D == 1'b0)) (F +=> Q) = (0.02, 0.02);
         if ((B == 1'b1 && D == 1'b0)) (F +=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1 && C == 1'b0 && D == 1'b1)) (F +=> Q) =
                   (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : AO222LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 3x2-Input AND into 3-Input OR
//   last modified by : XLICDD generated
//****************************************************************************

module AO222LJI5VX2 (A, B, C, D, E, F, Q);

   input     A, B, C, D, E, F;
   output    Q;

// Function Q: ((A*B)+(C*D)+(E*F))
   and       i0  (n_0, A, B);
   and       i1  (n_1, C, D);
   and       i2  (n_2, E, F);
   or        i3  (Q, n_0, n_1, n_2);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
         if ((B == 1'b1 && C == 1'b0 && D == 1'b1 && E == 1'b0 && F == 1'b1))
                   (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && C == 1'b0 && D == 1'b1 && E == 1'b0 && F == 1'b1))
                   (B +=> Q) = (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);
         if ((B == 1'b1) || (A == 1'b1 && B == 1'b0 && F == 1'b1)) (C +=> Q) =
                   (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
         if ((B == 1'b1) || (A == 1'b1 && B == 1'b0 && F == 1'b1)) (D +=> Q) =
                   (0.02, 0.02);
      (E +=> Q) = (0.02, 0.02);
         if ((B == 1'b0 && D == 1'b1) || (A == 1'b1 && B == 1'b0 && C == 1'b1
                   && D == 1'b0)) (E +=> Q) = (0.02, 0.02);
         if ((B == 1'b1 && D == 1'b0)) (E +=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1 && C == 1'b0 && D == 1'b1)) (E +=> Q) =
                   (0.02, 0.02);
      (F +=> Q) = (0.02, 0.02);
         if ((B == 1'b0 && D == 1'b1) || (A == 1'b1 && B == 1'b0 && C == 1'b1
                   && D == 1'b0)) (F +=> Q) = (0.02, 0.02);
         if ((B == 1'b1 && D == 1'b0)) (F +=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1 && C == 1'b0 && D == 1'b1)) (F +=> Q) =
                   (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : AO22LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 2x2-Input AND into 2-Input OR
//   last modified by : XLICDD generated
//****************************************************************************

module AO22LJI5VX1 (A, B, C, D, Q);

   input     A, B, C, D;
   output    Q;

// Function Q: ((A*B)+(C*D))
   and       i0  (n_0, A, B);
   and       i1  (n_1, C, D);
   or        i2  (Q, n_0, n_1);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
         if ((B == 1'b1 && C == 1'b1)) (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && C == 1'b1)) (B +=> Q) = (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1)) (C +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0)) (C +=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1)) (D +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0)) (D +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : AO22LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 2x2-Input AND into 2-Input OR
//   last modified by : XLICDD generated
//****************************************************************************

module AO22LJI5VX2 (A, B, C, D, Q);

   input     A, B, C, D;
   output    Q;

// Function Q: ((A*B)+(C*D))
   and       i0  (n_0, A, B);
   and       i1  (n_1, C, D);
   or        i2  (Q, n_0, n_1);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
         if ((B == 1'b1 && C == 1'b1)) (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && C == 1'b1)) (B +=> Q) = (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1)) (C +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0)) (C +=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1)) (D +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0)) (D +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : AO311LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 3-Input AND into 3-Input OR
//   last modified by : XLICDD generated
//****************************************************************************

module AO311LJI5VX1 (A, B, C, D, E, Q);

   input     A, B, C, D, E;
   output    Q;

// Function Q: ((A*B*C)+D+E)
   and       i0  (n_0, A, B, C);
   or        i1  (Q, n_0, D, E);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
         if ((B == 1'b0 && C == 1'b1)) (D +=> Q) = (0.02, 0.02);
         if ((B == 1'b1 && C == 1'b1)) (D +=> Q) = (0.02, 0.02);
      (E +=> Q) = (0.02, 0.02);
         if ((B == 1'b0 && C == 1'b1)) (E +=> Q) = (0.02, 0.02);
         if ((B == 1'b1 && C == 1'b1)) (E +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : AO311LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 3-Input AND into 3-Input OR
//   last modified by : XLICDD generated
//****************************************************************************

module AO311LJI5VX2 (A, B, C, D, E, Q);

   input     A, B, C, D, E;
   output    Q;

// Function Q: ((A*B*C)+D+E)
   and       i0  (n_0, A, B, C);
   or        i1  (Q, n_0, D, E);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
         if ((B == 1'b0 && C == 1'b1)) (D +=> Q) = (0.02, 0.02);
         if ((B == 1'b1 && C == 1'b1)) (D +=> Q) = (0.02, 0.02);
      (E +=> Q) = (0.02, 0.02);
         if ((B == 1'b0 && C == 1'b1)) (E +=> Q) = (0.02, 0.02);
         if ((B == 1'b1 && C == 1'b1)) (E +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : AO31LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 3-Input AND into 2-Input OR
//   last modified by : XLICDD generated
//****************************************************************************

module AO31LJI5VX1 (A, B, C, D, Q);

   input     A, B, C, D;
   output    Q;

// Function Q: ((A*B*C)+D)
   and       i0  (n_0, A, B, C);
   or        i1  (Q, n_0, D);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b0 && C == 1'b1)) (D +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0 && C == 1'b1)) (D +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b1 && C == 1'b0)) (D +=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1 && C == 1'b1)) (D +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : AO31LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 3-Input AND into 2-Input OR
//   last modified by : XLICDD generated
//****************************************************************************

module AO31LJI5VX2 (A, B, C, D, Q);

   input     A, B, C, D;
   output    Q;

// Function Q: ((A*B*C)+D)
   and       i0  (n_0, A, B, C);
   or        i1  (Q, n_0, D);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b0 && C == 1'b1)) (D +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0 && C == 1'b1)) (D +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b1 && C == 1'b0)) (D +=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1 && C == 1'b1)) (D +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : AO321LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 3-Input AND, 2-Input AND into 3-Input OR
//   last modified by : XLICDD generated
//****************************************************************************

module AO321LJI5VX1 (A, B, C, D, E, F, Q);

   input     A, B, C, D, E, F;
   output    Q;

// Function Q: ((A*B*C)+(D*E)+F)
   and       i0  (n_0, A, B, C);
   and       i1  (n_1, D, E);
   or        i2  (Q, n_0, n_1, F);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
         if ((B == 1'b1 && C == 1'b1 && D == 1'b0 && E == 1'b1 && F == 1'b0))
                   (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && C == 1'b1 && D == 1'b0 && E == 1'b1 && F == 1'b0))
                   (B +=> Q) = (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b1 && D == 1'b0 && E == 1'b1 && F == 1'b0))
                   (C +=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b1 && C == 1'b0) || (A == 1'b0 && B == 1'b0
                   && C == 1'b1)) (D +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0 && C == 1'b1) || (A == 1'b0 && B == 1'b1
                   && C == 1'b1)) (D +=> Q) = (0.02, 0.02);
      (E +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b1 && C == 1'b0) || (A == 1'b0 && B == 1'b0
                   && C == 1'b1)) (E +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0 && C == 1'b1) || (A == 1'b0 && B == 1'b1
                   && C == 1'b1)) (E +=> Q) = (0.02, 0.02);
      (F +=> Q) = (0.02, 0.02);
         if ((C == 1'b0 && E == 1'b1) || (B == 1'b0 && C == 1'b1 && D == 1'b1
                   && E == 1'b0) || (A == 1'b1 && B == 1'b0 && C == 1'b1 && D
                   == 1'b0 && E == 1'b0) || (A == 1'b0 && B == 1'b1 && C ==
                   1'b1 && D == 1'b0 && E == 1'b0)) (F +=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1 && C == 1'b1 && D == 1'b1 && E == 1'b0)
                   || (A == 1'b1 && B == 1'b0 && C == 1'b1 && D == 1'b0 && E
                   == 1'b1)) (F +=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1 && C == 1'b1 && D == 1'b0 && E == 1'b1))
                   (F +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : AO321LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 3-Input AND, 2-Input AND into 3-Input OR
//   last modified by : XLICDD generated
//****************************************************************************

module AO321LJI5VX2 (A, B, C, D, E, F, Q);

   input     A, B, C, D, E, F;
   output    Q;

// Function Q: ((A*B*C)+(D*E)+F)
   and       i0  (n_0, A, B, C);
   and       i1  (n_1, D, E);
   or        i2  (Q, n_0, n_1, F);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
         if ((B == 1'b1 && C == 1'b1 && D == 1'b0 && E == 1'b1 && F == 1'b0))
                   (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && C == 1'b1 && D == 1'b0 && E == 1'b1 && F == 1'b0))
                   (B +=> Q) = (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b1 && D == 1'b0 && E == 1'b1 && F == 1'b0))
                   (C +=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b1 && C == 1'b0) || (A == 1'b0 && B == 1'b0
                   && C == 1'b1)) (D +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0 && C == 1'b1) || (A == 1'b0 && B == 1'b1
                   && C == 1'b1)) (D +=> Q) = (0.02, 0.02);
      (E +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b1 && C == 1'b0) || (A == 1'b0 && B == 1'b0
                   && C == 1'b1)) (E +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0 && C == 1'b1) || (A == 1'b0 && B == 1'b1
                   && C == 1'b1)) (E +=> Q) = (0.02, 0.02);
      (F +=> Q) = (0.02, 0.02);
         if ((C == 1'b0 && E == 1'b1) || (B == 1'b0 && C == 1'b1 && D == 1'b1
                   && E == 1'b0) || (A == 1'b1 && B == 1'b0 && C == 1'b1 && D
                   == 1'b0 && E == 1'b0) || (A == 1'b0 && B == 1'b1 && C ==
                   1'b1 && D == 1'b0 && E == 1'b0)) (F +=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1 && C == 1'b1 && D == 1'b1 && E == 1'b0)
                   || (A == 1'b1 && B == 1'b0 && C == 1'b1 && D == 1'b0 && E
                   == 1'b1)) (F +=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1 && C == 1'b1 && D == 1'b0 && E == 1'b1))
                   (F +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : AO32LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 3-Input, 2-Input AND into 2-Input OR
//   last modified by : XLICDD generated
//****************************************************************************

module AO32LJI5VX1 (A, B, C, D, E, Q);

   input     A, B, C, D, E;
   output    Q;

// Function Q: ((A*B*C)+(D*E))
   and       i0  (n_0, A, B, C);
   and       i1  (n_1, D, E);
   or        i2  (Q, n_0, n_1);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
         if ((E == 1'b1)) (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
         if ((E == 1'b1)) (B +=> Q) = (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);
         if ((E == 1'b1)) (C +=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b0 && C == 1'b1) || (A == 1'b1 && B == 1'b1
                   && C == 1'b0)) (D +=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1 && C == 1'b1) || (A == 1'b1 && B == 1'b0
                   && C == 1'b1)) (D +=> Q) = (0.02, 0.02);
      (E +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b1 && C == 1'b0)) (E +=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b0 && C == 1'b1)) (E +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0 && C == 1'b1)) (E +=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1 && C == 1'b1)) (E +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : AO32LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 3-Input, 2-Input AND into 2-Input OR
//   last modified by : XLICDD generated
//****************************************************************************

module AO32LJI5VX2 (A, B, C, D, E, Q);

   input     A, B, C, D, E;
   output    Q;

// Function Q: ((A*B*C)+(D*E))
   and       i0  (n_0, A, B, C);
   and       i1  (n_1, D, E);
   or        i2  (Q, n_0, n_1);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
         if ((E == 1'b1)) (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
         if ((E == 1'b1)) (B +=> Q) = (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);
         if ((E == 1'b1)) (C +=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b0 && C == 1'b1) || (A == 1'b1 && B == 1'b1
                   && C == 1'b0)) (D +=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1 && C == 1'b1) || (A == 1'b1 && B == 1'b0
                   && C == 1'b1)) (D +=> Q) = (0.02, 0.02);
      (E +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b1 && C == 1'b0)) (E +=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b0 && C == 1'b1)) (E +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0 && C == 1'b1)) (E +=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1 && C == 1'b1)) (E +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : AO33LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 2x3-Input AND into 2-Input OR
//   last modified by : XLICDD generated
//****************************************************************************

module AO33LJI5VX1 (A, B, C, D, E, F, Q);

   input     A, B, C, D, E, F;
   output    Q;

// Function Q: ((A*B*C)+(D*E*F))
   and       i0  (n_0, A, B, C);
   and       i1  (n_1, D, E, F);
   or        i2  (Q, n_0, n_1);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
         if ((B == 1'b1 && C == 1'b1 && D == 1'b0 && E == 1'b1 && F == 1'b1))
                   (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && C == 1'b1 && D == 1'b0 && E == 1'b1 && F == 1'b1))
                   (B +=> Q) = (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b1 && D == 1'b0 && E == 1'b1 && F == 1'b1))
                   (C +=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
         if ((C == 1'b1)) (D +=> Q) = (0.02, 0.02);
      (E +=> Q) = (0.02, 0.02);
         if ((C == 1'b1)) (E +=> Q) = (0.02, 0.02);
      (F +=> Q) = (0.02, 0.02);
         if ((C == 1'b1)) (F +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : AO33LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 2x3-Input AND into 2-Input OR
//   last modified by : XLICDD generated
//****************************************************************************

module AO33LJI5VX2 (A, B, C, D, E, F, Q);

   input     A, B, C, D, E, F;
   output    Q;

// Function Q: ((A*B*C)+(D*E*F))
   and       i0  (n_0, A, B, C);
   and       i1  (n_1, D, E, F);
   or        i2  (Q, n_0, n_1);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
         if ((B == 1'b1 && C == 1'b1 && D == 1'b0 && E == 1'b1 && F == 1'b1))
                   (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && C == 1'b1 && D == 1'b0 && E == 1'b1 && F == 1'b1))
                   (B +=> Q) = (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b1 && D == 1'b0 && E == 1'b1 && F == 1'b1))
                   (C +=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
         if ((C == 1'b1)) (D +=> Q) = (0.02, 0.02);
      (E +=> Q) = (0.02, 0.02);
         if ((C == 1'b1)) (E +=> Q) = (0.02, 0.02);
      (F +=> Q) = (0.02, 0.02);
         if ((C == 1'b1)) (F +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : BTHLJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : Tristate Buffer with active high Enable
//   last modified by : XLICDD generated
//****************************************************************************

module BTHLJI5VX1 (A, E, Q);

   input     A, E;
   output    Q;

// Function Q: A; Tristate function: !E
   bufif1    i1  (Q, A, E);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (E  => Q) = (0.02, 0.02, 0.02, 0.02, 0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : BTHLJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : Tristate Buffer with active high Enable
//   last modified by : XLICDD generated
//****************************************************************************

module BTHLJI5VX2 (A, E, Q);

   input     A, E;
   output    Q;

// Function Q: A; Tristate function: !E
   bufif1    i1  (Q, A, E);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (E  => Q) = (0.02, 0.02, 0.02, 0.02, 0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : BTHLJI5VX3
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : Tristate Buffer with active high Enable
//   last modified by : XLICDD generated
//****************************************************************************

module BTHLJI5VX3 (A, E, Q);

   input     A, E;
   output    Q;

// Function Q: A; Tristate function: !E
   bufif1    i1  (Q, A, E);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (E  => Q) = (0.02, 0.02, 0.02, 0.02, 0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : BTHLJI5VX4
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : Tristate Buffer with active high Enable
//   last modified by : XLICDD generated
//****************************************************************************

module BTHLJI5VX4 (A, E, Q);

   input     A, E;
   output    Q;

// Function Q: A; Tristate function: !E
   bufif1    i1  (Q, A, E);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (E  => Q) = (0.02, 0.02, 0.02, 0.02, 0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : BTHLJI5VX8
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : Tristate Buffer with active high Enable
//   last modified by : XLICDD generated
//****************************************************************************

module BTHLJI5VX8 (A, E, Q);

   input     A, E;
   output    Q;

// Function Q: A; Tristate function: !E
   bufif1    i1  (Q, A, E);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (E  => Q) = (0.02, 0.02, 0.02, 0.02, 0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : BTLLJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : Tristate Buffer with active low Enable
//   last modified by : XLICDD generated
//****************************************************************************

module BTLLJI5VX1 (A, EN, Q);

   input     A, EN;
   output    Q;

// Function Q: A; Tristate function: EN
   bufif0    i0  (Q, A, EN);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (EN  => Q) = (0.02, 0.02, 0.02, 0.02, 0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : BTLLJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : Tristate Buffer with active low Enable
//   last modified by : XLICDD generated
//****************************************************************************

module BTLLJI5VX2 (A, EN, Q);

   input     A, EN;
   output    Q;

// Function Q: A; Tristate function: EN
   bufif0    i0  (Q, A, EN);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (EN  => Q) = (0.02, 0.02, 0.02, 0.02, 0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : BTLLJI5VX3
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : Tristate Buffer with active low Enable
//   last modified by : XLICDD generated
//****************************************************************************

module BTLLJI5VX3 (A, EN, Q);

   input     A, EN;
   output    Q;

// Function Q: A; Tristate function: EN
   bufif0    i0  (Q, A, EN);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (EN  => Q) = (0.02, 0.02, 0.02, 0.02, 0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : BTLLJI5VX4
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : Tristate Buffer with active low Enable
//   last modified by : XLICDD generated
//****************************************************************************

module BTLLJI5VX4 (A, EN, Q);

   input     A, EN;
   output    Q;

// Function Q: A; Tristate function: EN
   bufif0    i0  (Q, A, EN);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (EN  => Q) = (0.02, 0.02, 0.02, 0.02, 0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : BTLLJI5VX8
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : Tristate Buffer with active low Enable
//   last modified by : XLICDD generated
//****************************************************************************

module BTLLJI5VX8 (A, EN, Q);

   input     A, EN;
   output    Q;

// Function Q: A; Tristate function: EN
   bufif0    i0  (Q, A, EN);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (EN  => Q) = (0.02, 0.02, 0.02, 0.02, 0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : BULJI5VX16
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : Buffer
//   last modified by : XLICDD generated
//****************************************************************************

module BULJI5VX16 (A, Q);

   input     A;
   output    Q;

// Function Q: A
   buf       i0  (Q, A);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : BULJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : Buffer
//   last modified by : XLICDD generated
//****************************************************************************

module BULJI5VX1 (A, Q);

   input     A;
   output    Q;

// Function Q: A
   buf       i0  (Q, A);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : BULJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : Buffer
//   last modified by : XLICDD generated
//****************************************************************************

module BULJI5VX2 (A, Q);

   input     A;
   output    Q;

// Function Q: A
   buf       i0  (Q, A);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : BULJI5VX3
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : Buffer
//   last modified by : XLICDD generated
//****************************************************************************

module BULJI5VX3 (A, Q);

   input     A;
   output    Q;

// Function Q: A
   buf       i0  (Q, A);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : BULJI5VX4
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : Buffer
//   last modified by : XLICDD generated
//****************************************************************************

module BULJI5VX4 (A, Q);

   input     A;
   output    Q;

// Function Q: A
   buf       i0  (Q, A);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : BULJI5VX6
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : Buffer
//   last modified by : XLICDD generated
//****************************************************************************

module BULJI5VX6 (A, Q);

   input     A;
   output    Q;

// Function Q: A
   buf       i0  (Q, A);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : BULJI5VX8
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : Buffer
//   last modified by : XLICDD generated
//****************************************************************************

module BULJI5VX8 (A, Q);

   input     A;
   output    Q;

// Function Q: A
   buf       i0  (Q, A);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : DFFLJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : negedge D-Flip-Flop
//   last modified by : XLICDD generated
//****************************************************************************

module DFFLJI5VX1 (CN, D, Q, QN);

   input     CN, D;
   output    Q, QN;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_CN, delay_D, d_clock_i, IQN;

   not       i0  (d_clock_i, delay_CN);
   u1_fd5    i1  (IQ, delay_D, d_clock_i, 1'b1, 1'b1, NOTIFY_REG);
   not       i2  (IQN, IQ);
   buf       i3  (Q, IQ);
   buf       i4  (QN, IQN);


// timing section:
   specify

      (negedge CN => (Q +: D)) = (0.02, 0.02);

      (negedge CN => (QN -: D)) = (0.02, 0.02);

      $setuphold (negedge CN, posedge D, 0.02, 0.02, NOTIFY_REG,,, delay_CN,
                   delay_D);
      $setuphold (negedge CN, negedge D, 0.02, 0.02, NOTIFY_REG,,, delay_CN,
                   delay_D);

      $width (posedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge CN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, clock_i, IQN;

   not       i0  (clock_i, CN);
   u1_fd5    i1  (IQ, D, clock_i, 1'b1, 1'b1, NOTIFY_REG);
   not       i2  (IQN, IQ);
   buf       i3  (Q, IQ);
   buf       i4  (QN, IQN);


// timing section:
   specify

      (negedge CN => (Q +: D)) = (0.02, 0.02);

      (negedge CN => (QN -: D)) = (0.02, 0.02);

      $setuphold (negedge CN, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN, negedge D, 0.02, 0.02, NOTIFY_REG);

      $width (posedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge CN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : DFFLJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : negedge D-Flip-Flop
//   last modified by : XLICDD generated
//****************************************************************************

module DFFLJI5VX2 (CN, D, Q, QN);

   input     CN, D;
   output    Q, QN;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_CN, delay_D, d_clock_i, IQN;

   not       i0  (d_clock_i, delay_CN);
   u1_fd5    i1  (IQ, delay_D, d_clock_i, 1'b1, 1'b1, NOTIFY_REG);
   not       i2  (IQN, IQ);
   buf       i3  (Q, IQ);
   buf       i4  (QN, IQN);


// timing section:
   specify

      (negedge CN => (Q +: D)) = (0.02, 0.02);

      (negedge CN => (QN -: D)) = (0.02, 0.02);

      $setuphold (negedge CN, posedge D, 0.02, 0.02, NOTIFY_REG,,, delay_CN,
                   delay_D);
      $setuphold (negedge CN, negedge D, 0.02, 0.02, NOTIFY_REG,,, delay_CN,
                   delay_D);

      $width (posedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge CN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, clock_i, IQN;

   not       i0  (clock_i, CN);
   u1_fd5    i1  (IQ, D, clock_i, 1'b1, 1'b1, NOTIFY_REG);
   not       i2  (IQN, IQ);
   buf       i3  (Q, IQ);
   buf       i4  (QN, IQN);


// timing section:
   specify

      (negedge CN => (Q +: D)) = (0.02, 0.02);

      (negedge CN => (QN -: D)) = (0.02, 0.02);

      $setuphold (negedge CN, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN, negedge D, 0.02, 0.02, NOTIFY_REG);

      $width (posedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge CN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : DFFQLJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : negedge single Q D-Flip-Flop
//   last modified by : XLICDD generated
//****************************************************************************

module DFFQLJI5VX1 (CN, D, Q);

   input     CN, D;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_CN, delay_D, d_clock_i;

   not       i0  (d_clock_i, delay_CN);
   u1_fd5    i1  (IQ, delay_D, d_clock_i, 1'b1, 1'b1, NOTIFY_REG);
   buf       i2  (Q, IQ);


// timing section:
   specify

      (negedge CN => (Q +: D)) = (0.02, 0.02);

      $setuphold (negedge CN, posedge D, 0.02, 0.02, NOTIFY_REG,,, delay_CN,
                   delay_D);
      $setuphold (negedge CN, negedge D, 0.02, 0.02, NOTIFY_REG,,, delay_CN,
                   delay_D);

      $width (posedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge CN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, clock_i;

   not       i0  (clock_i, CN);
   u1_fd5    i1  (IQ, D, clock_i, 1'b1, 1'b1, NOTIFY_REG);
   buf       i2  (Q, IQ);


// timing section:
   specify

      (negedge CN => (Q +: D)) = (0.02, 0.02);

      $setuphold (negedge CN, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN, negedge D, 0.02, 0.02, NOTIFY_REG);

      $width (posedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge CN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : DFFQLJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : negedge single Q D-Flip-Flop
//   last modified by : XLICDD generated
//****************************************************************************

module DFFQLJI5VX2 (CN, D, Q);

   input     CN, D;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_CN, delay_D, d_clock_i;

   not       i0  (d_clock_i, delay_CN);
   u1_fd5    i1  (IQ, delay_D, d_clock_i, 1'b1, 1'b1, NOTIFY_REG);
   buf       i2  (Q, IQ);


// timing section:
   specify

      (negedge CN => (Q +: D)) = (0.02, 0.02);

      $setuphold (negedge CN, posedge D, 0.02, 0.02, NOTIFY_REG,,, delay_CN,
                   delay_D);
      $setuphold (negedge CN, negedge D, 0.02, 0.02, NOTIFY_REG,,, delay_CN,
                   delay_D);

      $width (posedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge CN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, clock_i;

   not       i0  (clock_i, CN);
   u1_fd5    i1  (IQ, D, clock_i, 1'b1, 1'b1, NOTIFY_REG);
   buf       i2  (Q, IQ);


// timing section:
   specify

      (negedge CN => (Q +: D)) = (0.02, 0.02);

      $setuphold (negedge CN, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN, negedge D, 0.02, 0.02, NOTIFY_REG);

      $width (posedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge CN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : DFFRLJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : negedge D-Flip-Flop with Reset
//   last modified by : XLICDD generated
//****************************************************************************

module DFFRLJI5VX1 (CN, D, Q, QN, RN);

   input     CN, D, RN;
   output    Q, QN;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_CN, delay_D, delay_RN, d_clock_i, IQN, c_SH_D;

   not       i1  (d_clock_i, delay_CN);
   u1_fd5    i2  (IQ, delay_D, d_clock_i, delay_RN, 1'b1, NOTIFY_REG);
   not       i3  (IQN, IQ);
   buf       i4  (Q, IQ);
   buf       i5  (QN, IQN);

   checkrs   i6  (c_SH_D, delay_RN, 1'b1);

// timing section:
   specify

      (negedge RN => (Q +: RN)) = (0.02, 0.02);
      (negedge CN => (Q +: D)) = (0.02, 0.02);

      (negedge RN => (QN -: RN)) = (0.02, 0.02);
      (negedge CN => (QN -: D)) = (0.02, 0.02);

      $setuphold (negedge CN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_CN, delay_D);
      $setuphold (negedge CN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_CN, delay_D);

      $recrem (posedge RN, negedge CN, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_CN);

      $width (posedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, clock_i, IQN, c_SH_D;

   not       i1  (clock_i, CN);
   u1_fd5    i2  (IQ, D, clock_i, RN, 1'b1, NOTIFY_REG);
   not       i3  (IQN, IQ);
   buf       i4  (Q, IQ);
   buf       i5  (QN, IQN);

   checkrs   i6  (c_SH_D, RN, 1'b1);

// timing section:
   specify

      (negedge RN => (Q +: RN)) = (0.02, 0.02);
      (negedge CN => (Q +: D)) = (0.02, 0.02);

      (negedge RN => (QN -: RN)) = (0.02, 0.02);
      (negedge CN => (QN -: D)) = (0.02, 0.02);

      $setuphold (negedge CN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge RN, negedge CN, 0.02, 0.02, NOTIFY_REG);

      $width (posedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : DFFRLJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : negedge D-Flip-Flop with Reset
//   last modified by : XLICDD generated
//****************************************************************************

module DFFRLJI5VX2 (CN, D, Q, QN, RN);

   input     CN, D, RN;
   output    Q, QN;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_CN, delay_D, delay_RN, d_clock_i, IQN, c_SH_D;

   not       i1  (d_clock_i, delay_CN);
   u1_fd5    i2  (IQ, delay_D, d_clock_i, delay_RN, 1'b1, NOTIFY_REG);
   not       i3  (IQN, IQ);
   buf       i4  (Q, IQ);
   buf       i5  (QN, IQN);

   checkrs   i6  (c_SH_D, delay_RN, 1'b1);

// timing section:
   specify

      (negedge RN => (Q +: RN)) = (0.02, 0.02);
      (negedge CN => (Q +: D)) = (0.02, 0.02);

      (negedge RN => (QN -: RN)) = (0.02, 0.02);
      (negedge CN => (QN -: D)) = (0.02, 0.02);

      $setuphold (negedge CN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_CN, delay_D);
      $setuphold (negedge CN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_CN, delay_D);

      $recrem (posedge RN, negedge CN, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_CN);

      $width (posedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, clock_i, IQN, c_SH_D;

   not       i1  (clock_i, CN);
   u1_fd5    i2  (IQ, D, clock_i, RN, 1'b1, NOTIFY_REG);
   not       i3  (IQN, IQ);
   buf       i4  (Q, IQ);
   buf       i5  (QN, IQN);

   checkrs   i6  (c_SH_D, RN, 1'b1);

// timing section:
   specify

      (negedge RN => (Q +: RN)) = (0.02, 0.02);
      (negedge CN => (Q +: D)) = (0.02, 0.02);

      (negedge RN => (QN -: RN)) = (0.02, 0.02);
      (negedge CN => (QN -: D)) = (0.02, 0.02);

      $setuphold (negedge CN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge RN, negedge CN, 0.02, 0.02, NOTIFY_REG);

      $width (posedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : DFFRQLJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : negedge single Q D-Flip-Flop with Reset
//   last modified by : XLICDD generated
//****************************************************************************

module DFFRQLJI5VX1 (CN, D, Q, RN);

   input     CN, D, RN;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_CN, delay_D, delay_RN, d_clock_i, c_SH_D;

   not       i1  (d_clock_i, delay_CN);
   u1_fd5    i2  (IQ, delay_D, d_clock_i, delay_RN, 1'b1, NOTIFY_REG);
   buf       i3  (Q, IQ);

   checkrs   i4  (c_SH_D, delay_RN, 1'b1);

// timing section:
   specify

      (negedge RN => (Q +: RN)) = (0.02, 0.02);
      (negedge CN => (Q +: D)) = (0.02, 0.02);

      $setuphold (negedge CN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_CN, delay_D);
      $setuphold (negedge CN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_CN, delay_D);

      $recrem (posedge RN, negedge CN, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_CN);

      $width (posedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, clock_i, c_SH_D;

   not       i1  (clock_i, CN);
   u1_fd5    i2  (IQ, D, clock_i, RN, 1'b1, NOTIFY_REG);
   buf       i3  (Q, IQ);

   checkrs   i4  (c_SH_D, RN, 1'b1);

// timing section:
   specify

      (negedge RN => (Q +: RN)) = (0.02, 0.02);
      (negedge CN => (Q +: D)) = (0.02, 0.02);

      $setuphold (negedge CN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge RN, negedge CN, 0.02, 0.02, NOTIFY_REG);

      $width (posedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : DFFRQLJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : negedge single Q D-Flip-Flop with Reset
//   last modified by : XLICDD generated
//****************************************************************************

module DFFRQLJI5VX2 (CN, D, Q, RN);

   input     CN, D, RN;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_CN, delay_D, delay_RN, d_clock_i, c_SH_D;

   not       i1  (d_clock_i, delay_CN);
   u1_fd5    i2  (IQ, delay_D, d_clock_i, delay_RN, 1'b1, NOTIFY_REG);
   buf       i3  (Q, IQ);

   checkrs   i4  (c_SH_D, delay_RN, 1'b1);

// timing section:
   specify

      (negedge RN => (Q +: RN)) = (0.02, 0.02);
      (negedge CN => (Q +: D)) = (0.02, 0.02);

      $setuphold (negedge CN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_CN, delay_D);
      $setuphold (negedge CN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_CN, delay_D);

      $recrem (posedge RN, negedge CN, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_CN);

      $width (posedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, clock_i, c_SH_D;

   not       i1  (clock_i, CN);
   u1_fd5    i2  (IQ, D, clock_i, RN, 1'b1, NOTIFY_REG);
   buf       i3  (Q, IQ);

   checkrs   i4  (c_SH_D, RN, 1'b1);

// timing section:
   specify

      (negedge RN => (Q +: RN)) = (0.02, 0.02);
      (negedge CN => (Q +: D)) = (0.02, 0.02);

      $setuphold (negedge CN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge RN, negedge CN, 0.02, 0.02, NOTIFY_REG);

      $width (posedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : DFFRSLJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : negedge D-Flip-Flop with Reset and Set
//   last modified by : XLICDD generated
//****************************************************************************

module DFFRSLJI5VX1 (CN, D, Q, QN, RN, SN);

   input     CN, D, RN, SN;
   output    Q, QN;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_CN, delay_D, delay_RN, delay_SN, d_clock_i, IQN,
                   qin_and_set, c_SH_D;

   not       i1  (d_clock_i, delay_CN);
   u1_fd5    i3  (IQ, delay_D, d_clock_i, delay_RN, delay_SN, NOTIFY_REG);
   not       i4  (IQN, IQ);
   and       i5  (qin_and_set, IQN, delay_SN);
   buf       i6  (Q, IQ);
   buf       i7  (QN, qin_and_set);

   checkrs   i8  (c_SH_D, delay_RN, delay_SN);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);
      (negedge CN => (Q +: D)) = (0.02, 0.02);

      (SN +=> QN) = (0.02, 0.02);
      (negedge RN => (QN -: RN)) = (0.02, 0.02);
      (negedge CN => (QN -: D)) = (0.02, 0.02);

      $setuphold (negedge CN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_CN, delay_D);
      $setuphold (negedge CN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_CN, delay_D);

      $setuphold (posedge RN, posedge SN, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_SN);

      $recrem (posedge RN, negedge CN, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_CN);

      $recrem (posedge SN, negedge CN, 0.02, 0.02, NOTIFY_REG,,, delay_SN,
                   delay_CN);

      $width (posedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, clock_i, IQN, qin_and_set, c_SH_D;

   not       i1  (clock_i, CN);
   u1_fd5    i3  (IQ, D, clock_i, RN, SN, NOTIFY_REG);
   not       i4  (IQN, IQ);
   and       i5  (qin_and_set, IQN, SN);
   buf       i6  (Q, IQ);
   buf       i7  (QN, qin_and_set);

   checkrs   i8  (c_SH_D, RN, SN);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);
      (negedge CN => (Q +: D)) = (0.02, 0.02);

      (SN +=> QN) = (0.02, 0.02);
      (negedge RN => (QN -: RN)) = (0.02, 0.02);
      (negedge CN => (QN -: D)) = (0.02, 0.02);

      $setuphold (negedge CN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge RN, posedge SN, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge RN, negedge CN, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge SN, negedge CN, 0.02, 0.02, NOTIFY_REG);

      $width (posedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : DFFRSLJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : negedge D-Flip-Flop with Reset and Set
//   last modified by : XLICDD generated
//****************************************************************************

module DFFRSLJI5VX2 (CN, D, Q, QN, RN, SN);

   input     CN, D, RN, SN;
   output    Q, QN;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_CN, delay_D, delay_RN, delay_SN, d_clock_i, IQN,
                   qin_and_set, c_SH_D;

   not       i1  (d_clock_i, delay_CN);
   u1_fd5    i3  (IQ, delay_D, d_clock_i, delay_RN, delay_SN, NOTIFY_REG);
   not       i4  (IQN, IQ);
   and       i5  (qin_and_set, IQN, delay_SN);
   buf       i6  (Q, IQ);
   buf       i7  (QN, qin_and_set);

   checkrs   i8  (c_SH_D, delay_RN, delay_SN);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);
      (negedge CN => (Q +: D)) = (0.02, 0.02);

      (SN +=> QN) = (0.02, 0.02);
      (negedge RN => (QN -: RN)) = (0.02, 0.02);
      (negedge CN => (QN -: D)) = (0.02, 0.02);

      $setuphold (negedge CN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_CN, delay_D);
      $setuphold (negedge CN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_CN, delay_D);

      $setuphold (posedge RN, posedge SN, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_SN);

      $recrem (posedge RN, negedge CN, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_CN);

      $recrem (posedge SN, negedge CN, 0.02, 0.02, NOTIFY_REG,,, delay_SN,
                   delay_CN);

      $width (posedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, clock_i, IQN, qin_and_set, c_SH_D;

   not       i1  (clock_i, CN);
   u1_fd5    i3  (IQ, D, clock_i, RN, SN, NOTIFY_REG);
   not       i4  (IQN, IQ);
   and       i5  (qin_and_set, IQN, SN);
   buf       i6  (Q, IQ);
   buf       i7  (QN, qin_and_set);

   checkrs   i8  (c_SH_D, RN, SN);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);
      (negedge CN => (Q +: D)) = (0.02, 0.02);

      (SN +=> QN) = (0.02, 0.02);
      (negedge RN => (QN -: RN)) = (0.02, 0.02);
      (negedge CN => (QN -: D)) = (0.02, 0.02);

      $setuphold (negedge CN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge RN, posedge SN, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge RN, negedge CN, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge SN, negedge CN, 0.02, 0.02, NOTIFY_REG);

      $width (posedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : DFFRSQLJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : negedge single Q D-Flip-Flop with Reset and Set
//   last modified by : XLICDD generated
//****************************************************************************

module DFFRSQLJI5VX1 (CN, D, Q, RN, SN);

   input     CN, D, RN, SN;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_CN, delay_D, delay_RN, delay_SN, d_clock_i, c_SH_D;

   not       i1  (d_clock_i, delay_CN);
   u1_fd5    i3  (IQ, delay_D, d_clock_i, delay_RN, delay_SN, NOTIFY_REG);
   buf       i4  (Q, IQ);

   checkrs   i5  (c_SH_D, delay_RN, delay_SN);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);
      (negedge CN => (Q +: D)) = (0.02, 0.02);

      $setuphold (negedge CN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_CN, delay_D);
      $setuphold (negedge CN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_CN, delay_D);

      $setuphold (posedge RN, posedge SN, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_SN);

      $recrem (posedge RN, negedge CN, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_CN);

      $recrem (posedge SN, negedge CN, 0.02, 0.02, NOTIFY_REG,,, delay_SN,
                   delay_CN);

      $width (posedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, clock_i, c_SH_D;

   not       i1  (clock_i, CN);
   u1_fd5    i3  (IQ, D, clock_i, RN, SN, NOTIFY_REG);
   buf       i4  (Q, IQ);

   checkrs   i5  (c_SH_D, RN, SN);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);
      (negedge CN => (Q +: D)) = (0.02, 0.02);

      $setuphold (negedge CN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge RN, posedge SN, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge RN, negedge CN, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge SN, negedge CN, 0.02, 0.02, NOTIFY_REG);

      $width (posedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : DFFRSQLJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : negedge single Q D-Flip-Flop with Reset and Set
//   last modified by : XLICDD generated
//****************************************************************************

module DFFRSQLJI5VX2 (CN, D, Q, RN, SN);

   input     CN, D, RN, SN;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_CN, delay_D, delay_RN, delay_SN, d_clock_i, c_SH_D;

   not       i1  (d_clock_i, delay_CN);
   u1_fd5    i3  (IQ, delay_D, d_clock_i, delay_RN, delay_SN, NOTIFY_REG);
   buf       i4  (Q, IQ);

   checkrs   i5  (c_SH_D, delay_RN, delay_SN);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);
      (negedge CN => (Q +: D)) = (0.02, 0.02);

      $setuphold (negedge CN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_CN, delay_D);
      $setuphold (negedge CN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_CN, delay_D);

      $setuphold (posedge RN, posedge SN, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_SN);

      $recrem (posedge RN, negedge CN, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_CN);

      $recrem (posedge SN, negedge CN, 0.02, 0.02, NOTIFY_REG,,, delay_SN,
                   delay_CN);

      $width (posedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, clock_i, c_SH_D;

   not       i1  (clock_i, CN);
   u1_fd5    i3  (IQ, D, clock_i, RN, SN, NOTIFY_REG);
   buf       i4  (Q, IQ);

   checkrs   i5  (c_SH_D, RN, SN);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);
      (negedge CN => (Q +: D)) = (0.02, 0.02);

      $setuphold (negedge CN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge RN, posedge SN, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge RN, negedge CN, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge SN, negedge CN, 0.02, 0.02, NOTIFY_REG);

      $width (posedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : DFFSLJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : negedge D-Flip-Flop with Set
//   last modified by : XLICDD generated
//****************************************************************************

module DFFSLJI5VX1 (CN, D, Q, QN, SN);

   input     CN, D, SN;
   output    Q, QN;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_CN, delay_D, delay_SN, d_clock_i, IQN, c_SH_D;

   not       i0  (d_clock_i, delay_CN);
   u1_fd5    i2  (IQ, delay_D, d_clock_i, 1'b1, delay_SN, NOTIFY_REG);
   not       i3  (IQN, IQ);
   buf       i4  (Q, IQ);
   buf       i5  (QN, IQN);

   checkrs   i6  (c_SH_D, 1'b1, delay_SN);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (negedge CN => (Q +: D)) = (0.02, 0.02);

      (negedge SN => (QN +: SN)) = (0.02, 0.02);
      (negedge CN => (QN -: D)) = (0.02, 0.02);

      $setuphold (negedge CN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_CN, delay_D);
      $setuphold (negedge CN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_CN, delay_D);

      $recrem (posedge SN, negedge CN, 0.02, 0.02, NOTIFY_REG,,, delay_SN,
                   delay_CN);

      $width (posedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, clock_i, IQN, c_SH_D;

   not       i0  (clock_i, CN);
   u1_fd5    i2  (IQ, D, clock_i, 1'b1, SN, NOTIFY_REG);
   not       i3  (IQN, IQ);
   buf       i4  (Q, IQ);
   buf       i5  (QN, IQN);

   checkrs   i6  (c_SH_D, 1'b1, SN);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (negedge CN => (Q +: D)) = (0.02, 0.02);

      (negedge SN => (QN +: SN)) = (0.02, 0.02);
      (negedge CN => (QN -: D)) = (0.02, 0.02);

      $setuphold (negedge CN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge SN, negedge CN, 0.02, 0.02, NOTIFY_REG);

      $width (posedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : DFFSLJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : negedge D-Flip-Flop with Set
//   last modified by : XLICDD generated
//****************************************************************************

module DFFSLJI5VX2 (CN, D, Q, QN, SN);

   input     CN, D, SN;
   output    Q, QN;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_CN, delay_D, delay_SN, d_clock_i, IQN, c_SH_D;

   not       i0  (d_clock_i, delay_CN);
   u1_fd5    i2  (IQ, delay_D, d_clock_i, 1'b1, delay_SN, NOTIFY_REG);
   not       i3  (IQN, IQ);
   buf       i4  (Q, IQ);
   buf       i5  (QN, IQN);

   checkrs   i6  (c_SH_D, 1'b1, delay_SN);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (negedge CN => (Q +: D)) = (0.02, 0.02);

      (negedge SN => (QN +: SN)) = (0.02, 0.02);
      (negedge CN => (QN -: D)) = (0.02, 0.02);

      $setuphold (negedge CN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_CN, delay_D);
      $setuphold (negedge CN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_CN, delay_D);

      $recrem (posedge SN, negedge CN, 0.02, 0.02, NOTIFY_REG,,, delay_SN,
                   delay_CN);

      $width (posedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, clock_i, IQN, c_SH_D;

   not       i0  (clock_i, CN);
   u1_fd5    i2  (IQ, D, clock_i, 1'b1, SN, NOTIFY_REG);
   not       i3  (IQN, IQ);
   buf       i4  (Q, IQ);
   buf       i5  (QN, IQN);

   checkrs   i6  (c_SH_D, 1'b1, SN);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (negedge CN => (Q +: D)) = (0.02, 0.02);

      (negedge SN => (QN +: SN)) = (0.02, 0.02);
      (negedge CN => (QN -: D)) = (0.02, 0.02);

      $setuphold (negedge CN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge SN, negedge CN, 0.02, 0.02, NOTIFY_REG);

      $width (posedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : DFFSQLJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : negedge single Q D-Flip-Flop with Set
//   last modified by : XLICDD generated
//****************************************************************************

module DFFSQLJI5VX1 (CN, D, Q, SN);

   input     CN, D, SN;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_CN, delay_D, delay_SN, d_clock_i, c_SH_D;

   not       i0  (d_clock_i, delay_CN);
   u1_fd5    i2  (IQ, delay_D, d_clock_i, 1'b1, delay_SN, NOTIFY_REG);
   buf       i3  (Q, IQ);

   checkrs   i4  (c_SH_D, 1'b1, delay_SN);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (negedge CN => (Q +: D)) = (0.02, 0.02);

      $setuphold (negedge CN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_CN, delay_D);
      $setuphold (negedge CN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_CN, delay_D);

      $recrem (posedge SN, negedge CN, 0.02, 0.02, NOTIFY_REG,,, delay_SN,
                   delay_CN);

      $width (posedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, clock_i, c_SH_D;

   not       i0  (clock_i, CN);
   u1_fd5    i2  (IQ, D, clock_i, 1'b1, SN, NOTIFY_REG);
   buf       i3  (Q, IQ);

   checkrs   i4  (c_SH_D, 1'b1, SN);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (negedge CN => (Q +: D)) = (0.02, 0.02);

      $setuphold (negedge CN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge SN, negedge CN, 0.02, 0.02, NOTIFY_REG);

      $width (posedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : DFFSQLJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : negedge single Q D-Flip-Flop with Set
//   last modified by : XLICDD generated
//****************************************************************************

module DFFSQLJI5VX2 (CN, D, Q, SN);

   input     CN, D, SN;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_CN, delay_D, delay_SN, d_clock_i, c_SH_D;

   not       i0  (d_clock_i, delay_CN);
   u1_fd5    i2  (IQ, delay_D, d_clock_i, 1'b1, delay_SN, NOTIFY_REG);
   buf       i3  (Q, IQ);

   checkrs   i4  (c_SH_D, 1'b1, delay_SN);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (negedge CN => (Q +: D)) = (0.02, 0.02);

      $setuphold (negedge CN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_CN, delay_D);
      $setuphold (negedge CN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_CN, delay_D);

      $recrem (posedge SN, negedge CN, 0.02, 0.02, NOTIFY_REG,,, delay_SN,
                   delay_CN);

      $width (posedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, clock_i, c_SH_D;

   not       i0  (clock_i, CN);
   u1_fd5    i2  (IQ, D, clock_i, 1'b1, SN, NOTIFY_REG);
   buf       i3  (Q, IQ);

   checkrs   i4  (c_SH_D, 1'b1, SN);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (negedge CN => (Q +: D)) = (0.02, 0.02);

      $setuphold (negedge CN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge SN, negedge CN, 0.02, 0.02, NOTIFY_REG);

      $width (posedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : DFRLJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : posedge D-Flip-Flop
//   last modified by : XLICDD generated
//****************************************************************************

module DFRLJI5VX1 (C, D, Q, QN);

   input     C, D;
   output    Q, QN;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_C, delay_D, IQN;

   u1_fd5    i0  (IQ, delay_D, delay_C, 1'b1, 1'b1, NOTIFY_REG);
   not       i1  (IQN, IQ);
   buf       i2  (Q, IQ);
   buf       i3  (QN, IQN);


// timing section:
   specify

      (posedge C => (Q +: D)) = (0.02, 0.02);

      (posedge C => (QN -: D)) = (0.02, 0.02);

      $setuphold (posedge C, posedge D, 0.02, 0.02, NOTIFY_REG,,, delay_C,
                   delay_D);
      $setuphold (posedge C, negedge D, 0.02, 0.02, NOTIFY_REG,,, delay_C,
                   delay_D);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, IQN;

   u1_fd5    i0  (IQ, D, C, 1'b1, 1'b1, NOTIFY_REG);
   not       i1  (IQN, IQ);
   buf       i2  (Q, IQ);
   buf       i3  (QN, IQN);


// timing section:
   specify

      (posedge C => (Q +: D)) = (0.02, 0.02);

      (posedge C => (QN -: D)) = (0.02, 0.02);

      $setuphold (posedge C, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C, negedge D, 0.02, 0.02, NOTIFY_REG);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : DFRLJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : posedge D-Flip-Flop
//   last modified by : XLICDD generated
//****************************************************************************

module DFRLJI5VX2 (C, D, Q, QN);

   input     C, D;
   output    Q, QN;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_C, delay_D, IQN;

   u1_fd5    i0  (IQ, delay_D, delay_C, 1'b1, 1'b1, NOTIFY_REG);
   not       i1  (IQN, IQ);
   buf       i2  (Q, IQ);
   buf       i3  (QN, IQN);


// timing section:
   specify

      (posedge C => (Q +: D)) = (0.02, 0.02);

      (posedge C => (QN -: D)) = (0.02, 0.02);

      $setuphold (posedge C, posedge D, 0.02, 0.02, NOTIFY_REG,,, delay_C,
                   delay_D);
      $setuphold (posedge C, negedge D, 0.02, 0.02, NOTIFY_REG,,, delay_C,
                   delay_D);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, IQN;

   u1_fd5    i0  (IQ, D, C, 1'b1, 1'b1, NOTIFY_REG);
   not       i1  (IQN, IQ);
   buf       i2  (Q, IQ);
   buf       i3  (QN, IQN);


// timing section:
   specify

      (posedge C => (Q +: D)) = (0.02, 0.02);

      (posedge C => (QN -: D)) = (0.02, 0.02);

      $setuphold (posedge C, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C, negedge D, 0.02, 0.02, NOTIFY_REG);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : DFRQLJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : posedge single Q D-Flip-Flop
//   last modified by : XLICDD generated
//****************************************************************************

module DFRQLJI5VX1 (C, D, Q);

   input     C, D;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_C, delay_D;

   u1_fd5    i0  (IQ, delay_D, delay_C, 1'b1, 1'b1, NOTIFY_REG);
   buf       i1  (Q, IQ);


// timing section:
   specify

      (posedge C => (Q +: D)) = (0.02, 0.02);

      $setuphold (posedge C, posedge D, 0.02, 0.02, NOTIFY_REG,,, delay_C,
                   delay_D);
      $setuphold (posedge C, negedge D, 0.02, 0.02, NOTIFY_REG,,, delay_C,
                   delay_D);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ;

   u1_fd5    i0  (IQ, D, C, 1'b1, 1'b1, NOTIFY_REG);
   buf       i1  (Q, IQ);


// timing section:
   specify

      (posedge C => (Q +: D)) = (0.02, 0.02);

      $setuphold (posedge C, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C, negedge D, 0.02, 0.02, NOTIFY_REG);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : DFRQLJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : posedge single Q D-Flip-Flop
//   last modified by : XLICDD generated
//****************************************************************************

module DFRQLJI5VX2 (C, D, Q);

   input     C, D;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_C, delay_D;

   u1_fd5    i0  (IQ, delay_D, delay_C, 1'b1, 1'b1, NOTIFY_REG);
   buf       i1  (Q, IQ);


// timing section:
   specify

      (posedge C => (Q +: D)) = (0.02, 0.02);

      $setuphold (posedge C, posedge D, 0.02, 0.02, NOTIFY_REG,,, delay_C,
                   delay_D);
      $setuphold (posedge C, negedge D, 0.02, 0.02, NOTIFY_REG,,, delay_C,
                   delay_D);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ;

   u1_fd5    i0  (IQ, D, C, 1'b1, 1'b1, NOTIFY_REG);
   buf       i1  (Q, IQ);


// timing section:
   specify

      (posedge C => (Q +: D)) = (0.02, 0.02);

      $setuphold (posedge C, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C, negedge D, 0.02, 0.02, NOTIFY_REG);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : DFRRLJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : posedge D-Flip-Flop with Reset
//   last modified by : XLICDD generated
//****************************************************************************

module DFRRLJI5VX1 (C, D, Q, QN, RN);

   input     C, D, RN;
   output    Q, QN;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_C, delay_D, delay_RN, IQN, c_SH_D;

   u1_fd5    i1  (IQ, delay_D, delay_C, delay_RN, 1'b1, NOTIFY_REG);
   not       i2  (IQN, IQ);
   buf       i3  (Q, IQ);
   buf       i4  (QN, IQN);

   checkrs   i5  (c_SH_D, delay_RN, 1'b1);

// timing section:
   specify

      (negedge RN => (Q +: RN)) = (0.02, 0.02);
      (posedge C => (Q +: D)) = (0.02, 0.02);

      (negedge RN => (QN -: RN)) = (0.02, 0.02);
      (posedge C => (QN -: D)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);

      $recrem (posedge RN, posedge C, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_C);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, IQN, c_SH_D;

   u1_fd5    i1  (IQ, D, C, RN, 1'b1, NOTIFY_REG);
   not       i2  (IQN, IQ);
   buf       i3  (Q, IQ);
   buf       i4  (QN, IQN);

   checkrs   i5  (c_SH_D, RN, 1'b1);

// timing section:
   specify

      (negedge RN => (Q +: RN)) = (0.02, 0.02);
      (posedge C => (Q +: D)) = (0.02, 0.02);

      (negedge RN => (QN -: RN)) = (0.02, 0.02);
      (posedge C => (QN -: D)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge RN, posedge C, 0.02, 0.02, NOTIFY_REG);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : DFRRLJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : posedge D-Flip-Flop with Reset
//   last modified by : XLICDD generated
//****************************************************************************

module DFRRLJI5VX2 (C, D, Q, QN, RN);

   input     C, D, RN;
   output    Q, QN;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_C, delay_D, delay_RN, IQN, c_SH_D;

   u1_fd5    i1  (IQ, delay_D, delay_C, delay_RN, 1'b1, NOTIFY_REG);
   not       i2  (IQN, IQ);
   buf       i3  (Q, IQ);
   buf       i4  (QN, IQN);

   checkrs   i5  (c_SH_D, delay_RN, 1'b1);

// timing section:
   specify

      (negedge RN => (Q +: RN)) = (0.02, 0.02);
      (posedge C => (Q +: D)) = (0.02, 0.02);

      (negedge RN => (QN -: RN)) = (0.02, 0.02);
      (posedge C => (QN -: D)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);

      $recrem (posedge RN, posedge C, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_C);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, IQN, c_SH_D;

   u1_fd5    i1  (IQ, D, C, RN, 1'b1, NOTIFY_REG);
   not       i2  (IQN, IQ);
   buf       i3  (Q, IQ);
   buf       i4  (QN, IQN);

   checkrs   i5  (c_SH_D, RN, 1'b1);

// timing section:
   specify

      (negedge RN => (Q +: RN)) = (0.02, 0.02);
      (posedge C => (Q +: D)) = (0.02, 0.02);

      (negedge RN => (QN -: RN)) = (0.02, 0.02);
      (posedge C => (QN -: D)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge RN, posedge C, 0.02, 0.02, NOTIFY_REG);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : DFRRQLJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : posedge single Q D-Flip-Flop with Reset
//   last modified by : XLICDD generated
//****************************************************************************

module DFRRQLJI5VX1 (C, D, Q, RN);

   input     C, D, RN;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_C, delay_D, delay_RN, c_SH_D;

   u1_fd5    i1  (IQ, delay_D, delay_C, delay_RN, 1'b1, NOTIFY_REG);
   buf       i2  (Q, IQ);

   checkrs   i3  (c_SH_D, delay_RN, 1'b1);

// timing section:
   specify

      (negedge RN => (Q +: RN)) = (0.02, 0.02);
      (posedge C => (Q +: D)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);

      $recrem (posedge RN, posedge C, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_C);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, c_SH_D;

   u1_fd5    i1  (IQ, D, C, RN, 1'b1, NOTIFY_REG);
   buf       i2  (Q, IQ);

   checkrs   i3  (c_SH_D, RN, 1'b1);

// timing section:
   specify

      (negedge RN => (Q +: RN)) = (0.02, 0.02);
      (posedge C => (Q +: D)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge RN, posedge C, 0.02, 0.02, NOTIFY_REG);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : DFRRQLJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : posedge single Q D-Flip-Flop with Reset
//   last modified by : XLICDD generated
//****************************************************************************

module DFRRQLJI5VX2 (C, D, Q, RN);

   input     C, D, RN;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_C, delay_D, delay_RN, c_SH_D;

   u1_fd5    i1  (IQ, delay_D, delay_C, delay_RN, 1'b1, NOTIFY_REG);
   buf       i2  (Q, IQ);

   checkrs   i3  (c_SH_D, delay_RN, 1'b1);

// timing section:
   specify

      (negedge RN => (Q +: RN)) = (0.02, 0.02);
      (posedge C => (Q +: D)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);

      $recrem (posedge RN, posedge C, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_C);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, c_SH_D;

   u1_fd5    i1  (IQ, D, C, RN, 1'b1, NOTIFY_REG);
   buf       i2  (Q, IQ);

   checkrs   i3  (c_SH_D, RN, 1'b1);

// timing section:
   specify

      (negedge RN => (Q +: RN)) = (0.02, 0.02);
      (posedge C => (Q +: D)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge RN, posedge C, 0.02, 0.02, NOTIFY_REG);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : DFRRSLJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : posedge D-Flip-Flop with Reset and Set
//   last modified by : XLICDD generated
//****************************************************************************

module DFRRSLJI5VX1 (C, D, Q, QN, RN, SN);

   input     C, D, RN, SN;
   output    Q, QN;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_C, delay_D, delay_RN, delay_SN, IQN, qin_and_set,
                   c_SH_D;

   u1_fd5    i2  (IQ, delay_D, delay_C, delay_RN, delay_SN, NOTIFY_REG);
   not       i3  (IQN, IQ);
   and       i4  (qin_and_set, IQN, delay_SN);
   buf       i5  (Q, IQ);
   buf       i6  (QN, qin_and_set);

   checkrs   i7  (c_SH_D, delay_RN, delay_SN);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);
      (posedge C => (Q +: D)) = (0.02, 0.02);

      (SN +=> QN) = (0.02, 0.02);
      (negedge RN => (QN -: RN)) = (0.02, 0.02);
      (posedge C => (QN -: D)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);

      $setuphold (posedge RN, posedge SN, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_SN);

      $recrem (posedge RN, posedge C, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_C);

      $recrem (posedge SN, posedge C, 0.02, 0.02, NOTIFY_REG,,, delay_SN,
                   delay_C);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, IQN, qin_and_set, c_SH_D;

   u1_fd5    i2  (IQ, D, C, RN, SN, NOTIFY_REG);
   not       i3  (IQN, IQ);
   and       i4  (qin_and_set, IQN, SN);
   buf       i5  (Q, IQ);
   buf       i6  (QN, qin_and_set);

   checkrs   i7  (c_SH_D, RN, SN);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);
      (posedge C => (Q +: D)) = (0.02, 0.02);

      (SN +=> QN) = (0.02, 0.02);
      (negedge RN => (QN -: RN)) = (0.02, 0.02);
      (posedge C => (QN -: D)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge RN, posedge SN, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge RN, posedge C, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge SN, posedge C, 0.02, 0.02, NOTIFY_REG);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : DFRRSLJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : posedge D-Flip-Flop with Reset and Set
//   last modified by : XLICDD generated
//****************************************************************************

module DFRRSLJI5VX2 (C, D, Q, QN, RN, SN);

   input     C, D, RN, SN;
   output    Q, QN;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_C, delay_D, delay_RN, delay_SN, IQN, qin_and_set,
                   c_SH_D;

   u1_fd5    i2  (IQ, delay_D, delay_C, delay_RN, delay_SN, NOTIFY_REG);
   not       i3  (IQN, IQ);
   and       i4  (qin_and_set, IQN, delay_SN);
   buf       i5  (Q, IQ);
   buf       i6  (QN, qin_and_set);

   checkrs   i7  (c_SH_D, delay_RN, delay_SN);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);
      (posedge C => (Q +: D)) = (0.02, 0.02);

      (SN +=> QN) = (0.02, 0.02);
      (negedge RN => (QN -: RN)) = (0.02, 0.02);
      (posedge C => (QN -: D)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);

      $setuphold (posedge RN, posedge SN, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_SN);

      $recrem (posedge RN, posedge C, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_C);

      $recrem (posedge SN, posedge C, 0.02, 0.02, NOTIFY_REG,,, delay_SN,
                   delay_C);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, IQN, qin_and_set, c_SH_D;

   u1_fd5    i2  (IQ, D, C, RN, SN, NOTIFY_REG);
   not       i3  (IQN, IQ);
   and       i4  (qin_and_set, IQN, SN);
   buf       i5  (Q, IQ);
   buf       i6  (QN, qin_and_set);

   checkrs   i7  (c_SH_D, RN, SN);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);
      (posedge C => (Q +: D)) = (0.02, 0.02);

      (SN +=> QN) = (0.02, 0.02);
      (negedge RN => (QN -: RN)) = (0.02, 0.02);
      (posedge C => (QN -: D)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge RN, posedge SN, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge RN, posedge C, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge SN, posedge C, 0.02, 0.02, NOTIFY_REG);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : DFRRSQLJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : posedge single Q D-Flip-Flop with Reset and Set
//   last modified by : XLICDD generated
//****************************************************************************

module DFRRSQLJI5VX1 (C, D, Q, RN, SN);

   input     C, D, RN, SN;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_C, delay_D, delay_RN, delay_SN, c_SH_D;

   u1_fd5    i2  (IQ, delay_D, delay_C, delay_RN, delay_SN, NOTIFY_REG);
   buf       i3  (Q, IQ);

   checkrs   i4  (c_SH_D, delay_RN, delay_SN);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);
      (posedge C => (Q +: D)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);

      $setuphold (posedge RN, posedge SN, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_SN);

      $recrem (posedge RN, posedge C, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_C);

      $recrem (posedge SN, posedge C, 0.02, 0.02, NOTIFY_REG,,, delay_SN,
                   delay_C);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, c_SH_D;

   u1_fd5    i2  (IQ, D, C, RN, SN, NOTIFY_REG);
   buf       i3  (Q, IQ);

   checkrs   i4  (c_SH_D, RN, SN);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);
      (posedge C => (Q +: D)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge RN, posedge SN, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge RN, posedge C, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge SN, posedge C, 0.02, 0.02, NOTIFY_REG);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : DFRRSQLJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : posedge single Q D-Flip-Flop with Reset and Set
//   last modified by : XLICDD generated
//****************************************************************************

module DFRRSQLJI5VX2 (C, D, Q, RN, SN);

   input     C, D, RN, SN;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_C, delay_D, delay_RN, delay_SN, c_SH_D;

   u1_fd5    i2  (IQ, delay_D, delay_C, delay_RN, delay_SN, NOTIFY_REG);
   buf       i3  (Q, IQ);

   checkrs   i4  (c_SH_D, delay_RN, delay_SN);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);
      (posedge C => (Q +: D)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);

      $setuphold (posedge RN, posedge SN, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_SN);

      $recrem (posedge RN, posedge C, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_C);

      $recrem (posedge SN, posedge C, 0.02, 0.02, NOTIFY_REG,,, delay_SN,
                   delay_C);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, c_SH_D;

   u1_fd5    i2  (IQ, D, C, RN, SN, NOTIFY_REG);
   buf       i3  (Q, IQ);

   checkrs   i4  (c_SH_D, RN, SN);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);
      (posedge C => (Q +: D)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge RN, posedge SN, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge RN, posedge C, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge SN, posedge C, 0.02, 0.02, NOTIFY_REG);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : DFRSLJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : posedge D-Flip-Flop with Set
//   last modified by : XLICDD generated
//****************************************************************************

module DFRSLJI5VX1 (C, D, Q, QN, SN);

   input     C, D, SN;
   output    Q, QN;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_C, delay_D, delay_SN, IQN, c_SH_D;

   u1_fd5    i1  (IQ, delay_D, delay_C, 1'b1, delay_SN, NOTIFY_REG);
   not       i2  (IQN, IQ);
   buf       i3  (Q, IQ);
   buf       i4  (QN, IQN);

   checkrs   i5  (c_SH_D, 1'b1, delay_SN);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (posedge C => (Q +: D)) = (0.02, 0.02);

      (negedge SN => (QN +: SN)) = (0.02, 0.02);
      (posedge C => (QN -: D)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);

      $recrem (posedge SN, posedge C, 0.02, 0.02, NOTIFY_REG,,, delay_SN,
                   delay_C);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, IQN, c_SH_D;

   u1_fd5    i1  (IQ, D, C, 1'b1, SN, NOTIFY_REG);
   not       i2  (IQN, IQ);
   buf       i3  (Q, IQ);
   buf       i4  (QN, IQN);

   checkrs   i5  (c_SH_D, 1'b1, SN);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (posedge C => (Q +: D)) = (0.02, 0.02);

      (negedge SN => (QN +: SN)) = (0.02, 0.02);
      (posedge C => (QN -: D)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge SN, posedge C, 0.02, 0.02, NOTIFY_REG);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : DFRSLJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : posedge D-Flip-Flop with Set
//   last modified by : XLICDD generated
//****************************************************************************

module DFRSLJI5VX2 (C, D, Q, QN, SN);

   input     C, D, SN;
   output    Q, QN;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_C, delay_D, delay_SN, IQN, c_SH_D;

   u1_fd5    i1  (IQ, delay_D, delay_C, 1'b1, delay_SN, NOTIFY_REG);
   not       i2  (IQN, IQ);
   buf       i3  (Q, IQ);
   buf       i4  (QN, IQN);

   checkrs   i5  (c_SH_D, 1'b1, delay_SN);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (posedge C => (Q +: D)) = (0.02, 0.02);

      (negedge SN => (QN +: SN)) = (0.02, 0.02);
      (posedge C => (QN -: D)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);

      $recrem (posedge SN, posedge C, 0.02, 0.02, NOTIFY_REG,,, delay_SN,
                   delay_C);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, IQN, c_SH_D;

   u1_fd5    i1  (IQ, D, C, 1'b1, SN, NOTIFY_REG);
   not       i2  (IQN, IQ);
   buf       i3  (Q, IQ);
   buf       i4  (QN, IQN);

   checkrs   i5  (c_SH_D, 1'b1, SN);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (posedge C => (Q +: D)) = (0.02, 0.02);

      (negedge SN => (QN +: SN)) = (0.02, 0.02);
      (posedge C => (QN -: D)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge SN, posedge C, 0.02, 0.02, NOTIFY_REG);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : DFRSQLJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : posedge single Q D-Flip-Flop with Set
//   last modified by : XLICDD generated
//****************************************************************************

module DFRSQLJI5VX1 (C, D, Q, SN);

   input     C, D, SN;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_C, delay_D, delay_SN, c_SH_D;

   u1_fd5    i1  (IQ, delay_D, delay_C, 1'b1, delay_SN, NOTIFY_REG);
   buf       i2  (Q, IQ);

   checkrs   i3  (c_SH_D, 1'b1, delay_SN);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (posedge C => (Q +: D)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);

      $recrem (posedge SN, posedge C, 0.02, 0.02, NOTIFY_REG,,, delay_SN,
                   delay_C);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, c_SH_D;

   u1_fd5    i1  (IQ, D, C, 1'b1, SN, NOTIFY_REG);
   buf       i2  (Q, IQ);

   checkrs   i3  (c_SH_D, 1'b1, SN);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (posedge C => (Q +: D)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge SN, posedge C, 0.02, 0.02, NOTIFY_REG);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : DFRSQLJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : posedge single Q D-Flip-Flop with Set
//   last modified by : XLICDD generated
//****************************************************************************

module DFRSQLJI5VX2 (C, D, Q, SN);

   input     C, D, SN;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_C, delay_D, delay_SN, c_SH_D;

   u1_fd5    i1  (IQ, delay_D, delay_C, 1'b1, delay_SN, NOTIFY_REG);
   buf       i2  (Q, IQ);

   checkrs   i3  (c_SH_D, 1'b1, delay_SN);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (posedge C => (Q +: D)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);

      $recrem (posedge SN, posedge C, 0.02, 0.02, NOTIFY_REG,,, delay_SN,
                   delay_C);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, c_SH_D;

   u1_fd5    i1  (IQ, D, C, 1'b1, SN, NOTIFY_REG);
   buf       i2  (Q, IQ);

   checkrs   i3  (c_SH_D, 1'b1, SN);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (posedge C => (Q +: D)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge SN, posedge C, 0.02, 0.02, NOTIFY_REG);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : DLHLJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : high active transparent D-latch with active high
//                      enable
//   last modified by : XLICDD generated
//****************************************************************************

module DLHLJI5VX1 (D, G, Q, QN);

   input     D, G;
   output    Q, QN;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_G, delay_D, IQN;

   u_ld6     i0  (IQ, delay_D, delay_G, 1'b1, 1'b1, NOTIFY_REG);
   not       i1  (IQN, IQ);
   buf       i2  (Q, IQ);
   buf       i3  (QN, IQN);


// timing section:
   specify

      (posedge G => (Q -: Q)) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);

      (posedge G => (QN -: QN)) = (0.02, 0.02);
      (D -=> QN) = (0.02, 0.02);

      $setuphold (negedge G, posedge D, 0.02, 0.02, NOTIFY_REG,,, delay_G,
                   delay_D);
      $setuphold (negedge G, negedge D, 0.02, 0.02, NOTIFY_REG,,, delay_G,
                   delay_D);

      $width (posedge G, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, IQN;

   u_ld6     i0  (IQ, D, G, 1'b1, 1'b1, NOTIFY_REG);
   not       i1  (IQN, IQ);
   buf       i2  (Q, IQ);
   buf       i3  (QN, IQN);


// timing section:
   specify

      (posedge G => (Q -: Q)) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);

      (posedge G => (QN -: QN)) = (0.02, 0.02);
      (D -=> QN) = (0.02, 0.02);

      $setuphold (negedge G, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge G, negedge D, 0.02, 0.02, NOTIFY_REG);

      $width (posedge G, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : DLHLJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : high active transparent D-latch with active high
//                      enable
//   last modified by : XLICDD generated
//****************************************************************************

module DLHLJI5VX2 (D, G, Q, QN);

   input     D, G;
   output    Q, QN;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_G, delay_D, IQN;

   u_ld6     i0  (IQ, delay_D, delay_G, 1'b1, 1'b1, NOTIFY_REG);
   not       i1  (IQN, IQ);
   buf       i2  (Q, IQ);
   buf       i3  (QN, IQN);


// timing section:
   specify

      (posedge G => (Q -: Q)) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);

      (posedge G => (QN -: QN)) = (0.02, 0.02);
      (D -=> QN) = (0.02, 0.02);

      $setuphold (negedge G, posedge D, 0.02, 0.02, NOTIFY_REG,,, delay_G,
                   delay_D);
      $setuphold (negedge G, negedge D, 0.02, 0.02, NOTIFY_REG,,, delay_G,
                   delay_D);

      $width (posedge G, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, IQN;

   u_ld6     i0  (IQ, D, G, 1'b1, 1'b1, NOTIFY_REG);
   not       i1  (IQN, IQ);
   buf       i2  (Q, IQ);
   buf       i3  (QN, IQN);


// timing section:
   specify

      (posedge G => (Q -: Q)) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);

      (posedge G => (QN -: QN)) = (0.02, 0.02);
      (D -=> QN) = (0.02, 0.02);

      $setuphold (negedge G, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge G, negedge D, 0.02, 0.02, NOTIFY_REG);

      $width (posedge G, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : DLHQLJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : high active single Q transparent D-latch with
//                      active high enable
//   last modified by : XLICDD generated
//****************************************************************************

module DLHQLJI5VX1 (D, G, Q);

   input     D, G;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_G, delay_D;

   u_ld6     i0  (IQ, delay_D, delay_G, 1'b1, 1'b1, NOTIFY_REG);
   buf       i1  (Q, IQ);


// timing section:
   specify

      (posedge G => (Q -: Q)) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);

      $setuphold (negedge G, posedge D, 0.02, 0.02, NOTIFY_REG,,, delay_G,
                   delay_D);
      $setuphold (negedge G, negedge D, 0.02, 0.02, NOTIFY_REG,,, delay_G,
                   delay_D);

      $width (posedge G, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ;

   u_ld6     i0  (IQ, D, G, 1'b1, 1'b1, NOTIFY_REG);
   buf       i1  (Q, IQ);


// timing section:
   specify

      (posedge G => (Q -: Q)) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);

      $setuphold (negedge G, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge G, negedge D, 0.02, 0.02, NOTIFY_REG);

      $width (posedge G, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : DLHQLJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : high active single Q transparent D-latch with
//                      active high enable
//   last modified by : XLICDD generated
//****************************************************************************

module DLHQLJI5VX2 (D, G, Q);

   input     D, G;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_G, delay_D;

   u_ld6     i0  (IQ, delay_D, delay_G, 1'b1, 1'b1, NOTIFY_REG);
   buf       i1  (Q, IQ);


// timing section:
   specify

      (posedge G => (Q -: Q)) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);

      $setuphold (negedge G, posedge D, 0.02, 0.02, NOTIFY_REG,,, delay_G,
                   delay_D);
      $setuphold (negedge G, negedge D, 0.02, 0.02, NOTIFY_REG,,, delay_G,
                   delay_D);

      $width (posedge G, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ;

   u_ld6     i0  (IQ, D, G, 1'b1, 1'b1, NOTIFY_REG);
   buf       i1  (Q, IQ);


// timing section:
   specify

      (posedge G => (Q -: Q)) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);

      $setuphold (negedge G, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge G, negedge D, 0.02, 0.02, NOTIFY_REG);

      $width (posedge G, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : DLHRLJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : high active transparent D-latch with active high
//                      enable and reset
//   last modified by : XLICDD generated
//****************************************************************************

module DLHRLJI5VX1 (D, G, Q, QN, RN);

   input     D, G, RN;
   output    Q, QN;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_G, delay_D, delay_RN, IQN, c_SH_D;

   u_ld6     i1  (IQ, delay_D, delay_G, 1'b1, delay_RN, NOTIFY_REG);
   not       i2  (IQN, IQ);
   buf       i3  (Q, IQ);
   buf       i4  (QN, IQN);

   checkrs   i5  (c_SH_D, delay_RN, 1'b1);

// timing section:
   specify

      (posedge G => (Q -: Q)) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);

      (posedge G => (QN -: QN)) = (0.02, 0.02);
      (D -=> QN) = (0.02, 0.02);
      (RN -=> QN) = (0.02, 0.02);

      $setuphold (negedge G &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_G, delay_D);
      $setuphold (negedge G &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_G, delay_D);

      $recrem (posedge RN, negedge G, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_G);

      $width (posedge G, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, IQN, c_SH_D;

   u_ld6     i1  (IQ, D, G, 1'b1, RN, NOTIFY_REG);
   not       i2  (IQN, IQ);
   buf       i3  (Q, IQ);
   buf       i4  (QN, IQN);

   checkrs   i5  (c_SH_D, RN, 1'b1);

// timing section:
   specify

      (posedge G => (Q -: Q)) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);

      (posedge G => (QN -: QN)) = (0.02, 0.02);
      (D -=> QN) = (0.02, 0.02);
      (RN -=> QN) = (0.02, 0.02);

      $setuphold (negedge G &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge G &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge RN, negedge G, 0.02, 0.02, NOTIFY_REG);

      $width (posedge G, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : DLHRLJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : high active transparent D-latch with active high
//                      enable and reset
//   last modified by : XLICDD generated
//****************************************************************************

module DLHRLJI5VX2 (D, G, Q, QN, RN);

   input     D, G, RN;
   output    Q, QN;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_G, delay_D, delay_RN, IQN, c_SH_D;

   u_ld6     i1  (IQ, delay_D, delay_G, 1'b1, delay_RN, NOTIFY_REG);
   not       i2  (IQN, IQ);
   buf       i3  (Q, IQ);
   buf       i4  (QN, IQN);

   checkrs   i5  (c_SH_D, delay_RN, 1'b1);

// timing section:
   specify

      (posedge G => (Q -: Q)) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);

      (posedge G => (QN -: QN)) = (0.02, 0.02);
      (D -=> QN) = (0.02, 0.02);
      (RN -=> QN) = (0.02, 0.02);

      $setuphold (negedge G &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_G, delay_D);
      $setuphold (negedge G &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_G, delay_D);

      $recrem (posedge RN, negedge G, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_G);

      $width (posedge G, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, IQN, c_SH_D;

   u_ld6     i1  (IQ, D, G, 1'b1, RN, NOTIFY_REG);
   not       i2  (IQN, IQ);
   buf       i3  (Q, IQ);
   buf       i4  (QN, IQN);

   checkrs   i5  (c_SH_D, RN, 1'b1);

// timing section:
   specify

      (posedge G => (Q -: Q)) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);

      (posedge G => (QN -: QN)) = (0.02, 0.02);
      (D -=> QN) = (0.02, 0.02);
      (RN -=> QN) = (0.02, 0.02);

      $setuphold (negedge G &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge G &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge RN, negedge G, 0.02, 0.02, NOTIFY_REG);

      $width (posedge G, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : DLHRQLJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : high active single Q transparent D-latch with
//                      active high enable and reset
//   last modified by : XLICDD generated
//****************************************************************************

module DLHRQLJI5VX1 (D, G, Q, RN);

   input     D, G, RN;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_G, delay_D, delay_RN, c_SH_D;

   u_ld6     i1  (IQ, delay_D, delay_G, 1'b1, delay_RN, NOTIFY_REG);
   buf       i2  (Q, IQ);

   checkrs   i3  (c_SH_D, delay_RN, 1'b1);

// timing section:
   specify

      (posedge G => (Q -: Q)) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);

      $setuphold (negedge G &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_G, delay_D);
      $setuphold (negedge G &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_G, delay_D);

      $recrem (posedge RN, negedge G, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_G);

      $width (posedge G, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, c_SH_D;

   u_ld6     i1  (IQ, D, G, 1'b1, RN, NOTIFY_REG);
   buf       i2  (Q, IQ);

   checkrs   i3  (c_SH_D, RN, 1'b1);

// timing section:
   specify

      (posedge G => (Q -: Q)) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);

      $setuphold (negedge G &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge G &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge RN, negedge G, 0.02, 0.02, NOTIFY_REG);

      $width (posedge G, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : DLHRQLJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : high active single Q transparent D-latch with
//                      active high enable and reset
//   last modified by : XLICDD generated
//****************************************************************************

module DLHRQLJI5VX2 (D, G, Q, RN);

   input     D, G, RN;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_G, delay_D, delay_RN, c_SH_D;

   u_ld6     i1  (IQ, delay_D, delay_G, 1'b1, delay_RN, NOTIFY_REG);
   buf       i2  (Q, IQ);

   checkrs   i3  (c_SH_D, delay_RN, 1'b1);

// timing section:
   specify

      (posedge G => (Q -: Q)) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);

      $setuphold (negedge G &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_G, delay_D);
      $setuphold (negedge G &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_G, delay_D);

      $recrem (posedge RN, negedge G, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_G);

      $width (posedge G, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, c_SH_D;

   u_ld6     i1  (IQ, D, G, 1'b1, RN, NOTIFY_REG);
   buf       i2  (Q, IQ);

   checkrs   i3  (c_SH_D, RN, 1'b1);

// timing section:
   specify

      (posedge G => (Q -: Q)) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);

      $setuphold (negedge G &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge G &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge RN, negedge G, 0.02, 0.02, NOTIFY_REG);

      $width (posedge G, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : DLHRSLJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : high active transparent D-latch with active high
//                      enable, set and reset
//   last modified by : XLICDD generated
//****************************************************************************

module DLHRSLJI5VX1 (D, G, Q, QN, RN, SN);

   input     D, G, RN, SN;
   output    Q, QN;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_G, delay_D, delay_RN, delay_SN, IQN, c_SH_D;

   u_ld6     i2  (IQ, delay_D, delay_G, delay_SN, delay_RN, NOTIFY_REG);
   not       i3  (IQN, IQ);
   buf       i4  (Q, IQ);
   buf       i5  (QN, IQN);

   checkrs   i6  (c_SH_D, delay_RN, delay_SN);

// timing section:
   specify

      (SN -=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
      (posedge G => (Q -: Q)) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);

      (SN +=> QN) = (0.02, 0.02);
      (D -=> QN) = (0.02, 0.02);
      (posedge G => (QN -: QN)) = (0.02, 0.02);
      (RN -=> QN) = (0.02, 0.02);

      $setuphold (negedge G &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_G, delay_D);
      $setuphold (negedge G &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_G, delay_D);

      $setuphold (posedge RN, posedge SN, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_SN);

      $recrem (posedge RN, negedge G, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_G);

      $recrem (posedge SN, negedge G, 0.02, 0.02, NOTIFY_REG,,, delay_SN,
                   delay_G);

      $width (posedge G, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, IQN, c_SH_D;

   u_ld6     i2  (IQ, D, G, SN, RN, NOTIFY_REG);
   not       i3  (IQN, IQ);
   buf       i4  (Q, IQ);
   buf       i5  (QN, IQN);

   checkrs   i6  (c_SH_D, RN, SN);

// timing section:
   specify

      (SN -=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
      (posedge G => (Q -: Q)) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);

      (SN +=> QN) = (0.02, 0.02);
      (D -=> QN) = (0.02, 0.02);
      (posedge G => (QN -: QN)) = (0.02, 0.02);
      (RN -=> QN) = (0.02, 0.02);

      $setuphold (negedge G &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge G &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge RN, posedge SN, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge RN, negedge G, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge SN, negedge G, 0.02, 0.02, NOTIFY_REG);

      $width (posedge G, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : DLHRSLJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : high active transparent D-latch with active high
//                      enable, set and reset
//   last modified by : XLICDD generated
//****************************************************************************

module DLHRSLJI5VX2 (D, G, Q, QN, RN, SN);

   input     D, G, RN, SN;
   output    Q, QN;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_G, delay_D, delay_RN, delay_SN, IQN, c_SH_D;

   u_ld6     i2  (IQ, delay_D, delay_G, delay_SN, delay_RN, NOTIFY_REG);
   not       i3  (IQN, IQ);
   buf       i4  (Q, IQ);
   buf       i5  (QN, IQN);

   checkrs   i6  (c_SH_D, delay_RN, delay_SN);

// timing section:
   specify

      (SN -=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
      (posedge G => (Q -: Q)) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);

      (SN +=> QN) = (0.02, 0.02);
      (D -=> QN) = (0.02, 0.02);
      (posedge G => (QN -: QN)) = (0.02, 0.02);
      (RN -=> QN) = (0.02, 0.02);

      $setuphold (negedge G &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_G, delay_D);
      $setuphold (negedge G &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_G, delay_D);

      $setuphold (posedge RN, posedge SN, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_SN);

      $recrem (posedge RN, negedge G, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_G);

      $recrem (posedge SN, negedge G, 0.02, 0.02, NOTIFY_REG,,, delay_SN,
                   delay_G);

      $width (posedge G, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, IQN, c_SH_D;

   u_ld6     i2  (IQ, D, G, SN, RN, NOTIFY_REG);
   not       i3  (IQN, IQ);
   buf       i4  (Q, IQ);
   buf       i5  (QN, IQN);

   checkrs   i6  (c_SH_D, RN, SN);

// timing section:
   specify

      (SN -=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
      (posedge G => (Q -: Q)) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);

      (SN +=> QN) = (0.02, 0.02);
      (D -=> QN) = (0.02, 0.02);
      (posedge G => (QN -: QN)) = (0.02, 0.02);
      (RN -=> QN) = (0.02, 0.02);

      $setuphold (negedge G &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge G &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge RN, posedge SN, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge RN, negedge G, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge SN, negedge G, 0.02, 0.02, NOTIFY_REG);

      $width (posedge G, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : DLHRSQLJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : high active single Q transparent D-latch with
//                      active high enable, set and reset
//   last modified by : XLICDD generated
//****************************************************************************

module DLHRSQLJI5VX1 (D, G, Q, RN, SN);

   input     D, G, RN, SN;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_G, delay_D, delay_RN, delay_SN, c_SH_D;

   u_ld6     i2  (IQ, delay_D, delay_G, delay_SN, delay_RN, NOTIFY_REG);
   buf       i3  (Q, IQ);

   checkrs   i4  (c_SH_D, delay_RN, delay_SN);

// timing section:
   specify

      (SN -=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
      (posedge G => (Q -: Q)) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);

      $setuphold (negedge G &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_G, delay_D);
      $setuphold (negedge G &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_G, delay_D);

      $setuphold (posedge RN, posedge SN, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_SN);

      $recrem (posedge RN, negedge G, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_G);

      $recrem (posedge SN, negedge G, 0.02, 0.02, NOTIFY_REG,,, delay_SN,
                   delay_G);

      $width (posedge G, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, c_SH_D;

   u_ld6     i2  (IQ, D, G, SN, RN, NOTIFY_REG);
   buf       i3  (Q, IQ);

   checkrs   i4  (c_SH_D, RN, SN);

// timing section:
   specify

      (SN -=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
      (posedge G => (Q -: Q)) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);

      $setuphold (negedge G &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge G &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge RN, posedge SN, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge RN, negedge G, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge SN, negedge G, 0.02, 0.02, NOTIFY_REG);

      $width (posedge G, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : DLHRSQLJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : high active single Q transparent D-latch with
//                      active high enable, set and reset
//   last modified by : XLICDD generated
//****************************************************************************

module DLHRSQLJI5VX2 (D, G, Q, RN, SN);

   input     D, G, RN, SN;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_G, delay_D, delay_RN, delay_SN, c_SH_D;

   u_ld6     i2  (IQ, delay_D, delay_G, delay_SN, delay_RN, NOTIFY_REG);
   buf       i3  (Q, IQ);

   checkrs   i4  (c_SH_D, delay_RN, delay_SN);

// timing section:
   specify

      (SN -=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
      (posedge G => (Q -: Q)) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);

      $setuphold (negedge G &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_G, delay_D);
      $setuphold (negedge G &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_G, delay_D);

      $setuphold (posedge RN, posedge SN, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_SN);

      $recrem (posedge RN, negedge G, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_G);

      $recrem (posedge SN, negedge G, 0.02, 0.02, NOTIFY_REG,,, delay_SN,
                   delay_G);

      $width (posedge G, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, c_SH_D;

   u_ld6     i2  (IQ, D, G, SN, RN, NOTIFY_REG);
   buf       i3  (Q, IQ);

   checkrs   i4  (c_SH_D, RN, SN);

// timing section:
   specify

      (SN -=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
      (posedge G => (Q -: Q)) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);

      $setuphold (negedge G &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge G &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge RN, posedge SN, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge RN, negedge G, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge SN, negedge G, 0.02, 0.02, NOTIFY_REG);

      $width (posedge G, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : DLHSLJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : high active transparent D-latch with active high
//                      enable and set
//   last modified by : XLICDD generated
//****************************************************************************

module DLHSLJI5VX1 (D, G, Q, QN, SN);

   input     D, G, SN;
   output    Q, QN;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_G, delay_D, delay_SN, IQN, c_SH_D;

   u_ld6     i1  (IQ, delay_D, delay_G, delay_SN, 1'b1, NOTIFY_REG);
   not       i2  (IQN, IQ);
   buf       i3  (Q, IQ);
   buf       i4  (QN, IQN);

   checkrs   i5  (c_SH_D, 1'b1, delay_SN);

// timing section:
   specify

      (posedge G => (Q -: Q)) = (0.02, 0.02);
      (SN -=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);

      (posedge G => (QN -: QN)) = (0.02, 0.02);
      (SN +=> QN) = (0.02, 0.02);
      (D -=> QN) = (0.02, 0.02);

      $setuphold (negedge G &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_G, delay_D);
      $setuphold (negedge G &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_G, delay_D);

      $recrem (posedge SN, negedge G, 0.02, 0.02, NOTIFY_REG,,, delay_SN,
                   delay_G);

      $width (posedge G, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, IQN, c_SH_D;

   u_ld6     i1  (IQ, D, G, SN, 1'b1, NOTIFY_REG);
   not       i2  (IQN, IQ);
   buf       i3  (Q, IQ);
   buf       i4  (QN, IQN);

   checkrs   i5  (c_SH_D, 1'b1, SN);

// timing section:
   specify

      (posedge G => (Q -: Q)) = (0.02, 0.02);
      (SN -=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);

      (posedge G => (QN -: QN)) = (0.02, 0.02);
      (SN +=> QN) = (0.02, 0.02);
      (D -=> QN) = (0.02, 0.02);

      $setuphold (negedge G &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge G &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge SN, negedge G, 0.02, 0.02, NOTIFY_REG);

      $width (posedge G, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : DLHSLJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : high active transparent D-latch with active high
//                      enable and set
//   last modified by : XLICDD generated
//****************************************************************************

module DLHSLJI5VX2 (D, G, Q, QN, SN);

   input     D, G, SN;
   output    Q, QN;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_G, delay_D, delay_SN, IQN, c_SH_D;

   u_ld6     i1  (IQ, delay_D, delay_G, delay_SN, 1'b1, NOTIFY_REG);
   not       i2  (IQN, IQ);
   buf       i3  (Q, IQ);
   buf       i4  (QN, IQN);

   checkrs   i5  (c_SH_D, 1'b1, delay_SN);

// timing section:
   specify

      (posedge G => (Q -: Q)) = (0.02, 0.02);
      (SN -=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);

      (posedge G => (QN -: QN)) = (0.02, 0.02);
      (SN +=> QN) = (0.02, 0.02);
      (D -=> QN) = (0.02, 0.02);

      $setuphold (negedge G &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_G, delay_D);
      $setuphold (negedge G &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_G, delay_D);

      $recrem (posedge SN, negedge G, 0.02, 0.02, NOTIFY_REG,,, delay_SN,
                   delay_G);

      $width (posedge G, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, IQN, c_SH_D;

   u_ld6     i1  (IQ, D, G, SN, 1'b1, NOTIFY_REG);
   not       i2  (IQN, IQ);
   buf       i3  (Q, IQ);
   buf       i4  (QN, IQN);

   checkrs   i5  (c_SH_D, 1'b1, SN);

// timing section:
   specify

      (posedge G => (Q -: Q)) = (0.02, 0.02);
      (SN -=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);

      (posedge G => (QN -: QN)) = (0.02, 0.02);
      (SN +=> QN) = (0.02, 0.02);
      (D -=> QN) = (0.02, 0.02);

      $setuphold (negedge G &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge G &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge SN, negedge G, 0.02, 0.02, NOTIFY_REG);

      $width (posedge G, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : DLHSQLJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : high active single Q transparent D-latch with
//                      active high enable and set
//   last modified by : XLICDD generated
//****************************************************************************

module DLHSQLJI5VX1 (D, G, Q, SN);

   input     D, G, SN;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_G, delay_D, delay_SN, c_SH_D;

   u_ld6     i1  (IQ, delay_D, delay_G, delay_SN, 1'b1, NOTIFY_REG);
   buf       i2  (Q, IQ);

   checkrs   i3  (c_SH_D, 1'b1, delay_SN);

// timing section:
   specify

      (posedge G => (Q -: Q)) = (0.02, 0.02);
      (SN -=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);

      $setuphold (negedge G &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_G, delay_D);
      $setuphold (negedge G &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_G, delay_D);

      $recrem (posedge SN, negedge G, 0.02, 0.02, NOTIFY_REG,,, delay_SN,
                   delay_G);

      $width (posedge G, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, c_SH_D;

   u_ld6     i1  (IQ, D, G, SN, 1'b1, NOTIFY_REG);
   buf       i2  (Q, IQ);

   checkrs   i3  (c_SH_D, 1'b1, SN);

// timing section:
   specify

      (posedge G => (Q -: Q)) = (0.02, 0.02);
      (SN -=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);

      $setuphold (negedge G &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge G &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge SN, negedge G, 0.02, 0.02, NOTIFY_REG);

      $width (posedge G, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : DLHSQLJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : high active single Q transparent D-latch with
//                      active high enable and set
//   last modified by : XLICDD generated
//****************************************************************************

module DLHSQLJI5VX2 (D, G, Q, SN);

   input     D, G, SN;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_G, delay_D, delay_SN, c_SH_D;

   u_ld6     i1  (IQ, delay_D, delay_G, delay_SN, 1'b1, NOTIFY_REG);
   buf       i2  (Q, IQ);

   checkrs   i3  (c_SH_D, 1'b1, delay_SN);

// timing section:
   specify

      (posedge G => (Q -: Q)) = (0.02, 0.02);
      (SN -=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);

      $setuphold (negedge G &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_G, delay_D);
      $setuphold (negedge G &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_G, delay_D);

      $recrem (posedge SN, negedge G, 0.02, 0.02, NOTIFY_REG,,, delay_SN,
                   delay_G);

      $width (posedge G, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, c_SH_D;

   u_ld6     i1  (IQ, D, G, SN, 1'b1, NOTIFY_REG);
   buf       i2  (Q, IQ);

   checkrs   i3  (c_SH_D, 1'b1, SN);

// timing section:
   specify

      (posedge G => (Q -: Q)) = (0.02, 0.02);
      (SN -=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);

      $setuphold (negedge G &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge G &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge SN, negedge G, 0.02, 0.02, NOTIFY_REG);

      $width (posedge G, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : DLLLJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : low active transparent D-latch with active low
//                      enable
//   last modified by : XLICDD generated
//****************************************************************************

module DLLLJI5VX1 (D, GN, Q, QN);

   input     D, GN;
   output    Q, QN;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_GN, delay_D, d_clock_i, IQN;

   not       i0  (d_clock_i, delay_GN);
   u_ld6     i1  (IQ, delay_D, d_clock_i, 1'b1, 1'b1, NOTIFY_REG);
   not       i2  (IQN, IQ);
   buf       i3  (Q, IQ);
   buf       i4  (QN, IQN);


// timing section:
   specify

      (negedge GN => (Q -: Q)) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);

      (negedge GN => (QN -: QN)) = (0.02, 0.02);
      (D -=> QN) = (0.02, 0.02);

      $setuphold (posedge GN, posedge D, 0.02, 0.02, NOTIFY_REG,,, delay_GN,
                   delay_D);
      $setuphold (posedge GN, negedge D, 0.02, 0.02, NOTIFY_REG,,, delay_GN,
                   delay_D);

      $width (negedge GN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, clock_i, IQN;

   not       i0  (clock_i, GN);
   u_ld6     i1  (IQ, D, clock_i, 1'b1, 1'b1, NOTIFY_REG);
   not       i2  (IQN, IQ);
   buf       i3  (Q, IQ);
   buf       i4  (QN, IQN);


// timing section:
   specify

      (negedge GN => (Q -: Q)) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);

      (negedge GN => (QN -: QN)) = (0.02, 0.02);
      (D -=> QN) = (0.02, 0.02);

      $setuphold (posedge GN, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge GN, negedge D, 0.02, 0.02, NOTIFY_REG);

      $width (negedge GN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : DLLLJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : low active transparent D-latch with active low
//                      enable
//   last modified by : XLICDD generated
//****************************************************************************

module DLLLJI5VX2 (D, GN, Q, QN);

   input     D, GN;
   output    Q, QN;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_GN, delay_D, d_clock_i, IQN;

   not       i0  (d_clock_i, delay_GN);
   u_ld6     i1  (IQ, delay_D, d_clock_i, 1'b1, 1'b1, NOTIFY_REG);
   not       i2  (IQN, IQ);
   buf       i3  (Q, IQ);
   buf       i4  (QN, IQN);


// timing section:
   specify

      (negedge GN => (Q -: Q)) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);

      (negedge GN => (QN -: QN)) = (0.02, 0.02);
      (D -=> QN) = (0.02, 0.02);

      $setuphold (posedge GN, posedge D, 0.02, 0.02, NOTIFY_REG,,, delay_GN,
                   delay_D);
      $setuphold (posedge GN, negedge D, 0.02, 0.02, NOTIFY_REG,,, delay_GN,
                   delay_D);

      $width (negedge GN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, clock_i, IQN;

   not       i0  (clock_i, GN);
   u_ld6     i1  (IQ, D, clock_i, 1'b1, 1'b1, NOTIFY_REG);
   not       i2  (IQN, IQ);
   buf       i3  (Q, IQ);
   buf       i4  (QN, IQN);


// timing section:
   specify

      (negedge GN => (Q -: Q)) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);

      (negedge GN => (QN -: QN)) = (0.02, 0.02);
      (D -=> QN) = (0.02, 0.02);

      $setuphold (posedge GN, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge GN, negedge D, 0.02, 0.02, NOTIFY_REG);

      $width (negedge GN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : DLLQLJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : low active single Q transparent D-latch with active
//                      low enable
//   last modified by : XLICDD generated
//****************************************************************************

module DLLQLJI5VX1 (D, GN, Q);

   input     D, GN;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_GN, delay_D, d_clock_i;

   not       i0  (d_clock_i, delay_GN);
   u_ld6     i1  (IQ, delay_D, d_clock_i, 1'b1, 1'b1, NOTIFY_REG);
   buf       i2  (Q, IQ);


// timing section:
   specify

      (negedge GN => (Q -: Q)) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);

      $setuphold (posedge GN, posedge D, 0.02, 0.02, NOTIFY_REG,,, delay_GN,
                   delay_D);
      $setuphold (posedge GN, negedge D, 0.02, 0.02, NOTIFY_REG,,, delay_GN,
                   delay_D);

      $width (negedge GN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, clock_i;

   not       i0  (clock_i, GN);
   u_ld6     i1  (IQ, D, clock_i, 1'b1, 1'b1, NOTIFY_REG);
   buf       i2  (Q, IQ);


// timing section:
   specify

      (negedge GN => (Q -: Q)) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);

      $setuphold (posedge GN, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge GN, negedge D, 0.02, 0.02, NOTIFY_REG);

      $width (negedge GN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : DLLQLJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : low active single Q transparent D-latch with active
//                      low enable
//   last modified by : XLICDD generated
//****************************************************************************

module DLLQLJI5VX2 (D, GN, Q);

   input     D, GN;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_GN, delay_D, d_clock_i;

   not       i0  (d_clock_i, delay_GN);
   u_ld6     i1  (IQ, delay_D, d_clock_i, 1'b1, 1'b1, NOTIFY_REG);
   buf       i2  (Q, IQ);


// timing section:
   specify

      (negedge GN => (Q -: Q)) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);

      $setuphold (posedge GN, posedge D, 0.02, 0.02, NOTIFY_REG,,, delay_GN,
                   delay_D);
      $setuphold (posedge GN, negedge D, 0.02, 0.02, NOTIFY_REG,,, delay_GN,
                   delay_D);

      $width (negedge GN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, clock_i;

   not       i0  (clock_i, GN);
   u_ld6     i1  (IQ, D, clock_i, 1'b1, 1'b1, NOTIFY_REG);
   buf       i2  (Q, IQ);


// timing section:
   specify

      (negedge GN => (Q -: Q)) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);

      $setuphold (posedge GN, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge GN, negedge D, 0.02, 0.02, NOTIFY_REG);

      $width (negedge GN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : DLLRLJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : low active transparent D-latch with active low
//                      enable and reset
//   last modified by : XLICDD generated
//****************************************************************************

module DLLRLJI5VX1 (D, GN, Q, QN, RN);

   input     D, GN, RN;
   output    Q, QN;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_GN, delay_D, delay_RN, d_clock_i, IQN, c_SH_D;

   not       i1  (d_clock_i, delay_GN);
   u_ld6     i2  (IQ, delay_D, d_clock_i, 1'b1, delay_RN, NOTIFY_REG);
   not       i3  (IQN, IQ);
   buf       i4  (Q, IQ);
   buf       i5  (QN, IQN);

   checkrs   i6  (c_SH_D, delay_RN, 1'b1);

// timing section:
   specify

      (negedge GN => (Q -: Q)) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);

      (negedge GN => (QN -: QN)) = (0.02, 0.02);
      (D -=> QN) = (0.02, 0.02);
      (RN -=> QN) = (0.02, 0.02);

      $setuphold (posedge GN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_GN, delay_D);
      $setuphold (posedge GN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_GN, delay_D);

      $recrem (posedge RN, posedge GN, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_GN);

      $width (negedge GN, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, clock_i, IQN, c_SH_D;

   not       i1  (clock_i, GN);
   u_ld6     i2  (IQ, D, clock_i, 1'b1, RN, NOTIFY_REG);
   not       i3  (IQN, IQ);
   buf       i4  (Q, IQ);
   buf       i5  (QN, IQN);

   checkrs   i6  (c_SH_D, RN, 1'b1);

// timing section:
   specify

      (negedge GN => (Q -: Q)) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);

      (negedge GN => (QN -: QN)) = (0.02, 0.02);
      (D -=> QN) = (0.02, 0.02);
      (RN -=> QN) = (0.02, 0.02);

      $setuphold (posedge GN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge GN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge RN, posedge GN, 0.02, 0.02, NOTIFY_REG);

      $width (negedge GN, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : DLLRLJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : low active transparent D-latch with active low
//                      enable and reset
//   last modified by : XLICDD generated
//****************************************************************************

module DLLRLJI5VX2 (D, GN, Q, QN, RN);

   input     D, GN, RN;
   output    Q, QN;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_GN, delay_D, delay_RN, d_clock_i, IQN, c_SH_D;

   not       i1  (d_clock_i, delay_GN);
   u_ld6     i2  (IQ, delay_D, d_clock_i, 1'b1, delay_RN, NOTIFY_REG);
   not       i3  (IQN, IQ);
   buf       i4  (Q, IQ);
   buf       i5  (QN, IQN);

   checkrs   i6  (c_SH_D, delay_RN, 1'b1);

// timing section:
   specify

      (negedge GN => (Q -: Q)) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);

      (negedge GN => (QN -: QN)) = (0.02, 0.02);
      (D -=> QN) = (0.02, 0.02);
      (RN -=> QN) = (0.02, 0.02);

      $setuphold (posedge GN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_GN, delay_D);
      $setuphold (posedge GN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_GN, delay_D);

      $recrem (posedge RN, posedge GN, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_GN);

      $width (negedge GN, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, clock_i, IQN, c_SH_D;

   not       i1  (clock_i, GN);
   u_ld6     i2  (IQ, D, clock_i, 1'b1, RN, NOTIFY_REG);
   not       i3  (IQN, IQ);
   buf       i4  (Q, IQ);
   buf       i5  (QN, IQN);

   checkrs   i6  (c_SH_D, RN, 1'b1);

// timing section:
   specify

      (negedge GN => (Q -: Q)) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);

      (negedge GN => (QN -: QN)) = (0.02, 0.02);
      (D -=> QN) = (0.02, 0.02);
      (RN -=> QN) = (0.02, 0.02);

      $setuphold (posedge GN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge GN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge RN, posedge GN, 0.02, 0.02, NOTIFY_REG);

      $width (negedge GN, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : DLLRQLJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : low active single Q transparent D-latch with active
//                      low enable, reset
//   last modified by : XLICDD generated
//****************************************************************************

module DLLRQLJI5VX1 (D, GN, Q, RN);

   input     D, GN, RN;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_GN, delay_D, delay_RN, d_clock_i, c_SH_D;

   not       i1  (d_clock_i, delay_GN);
   u_ld6     i2  (IQ, delay_D, d_clock_i, 1'b1, delay_RN, NOTIFY_REG);
   buf       i3  (Q, IQ);

   checkrs   i4  (c_SH_D, delay_RN, 1'b1);

// timing section:
   specify

      (negedge GN => (Q -: Q)) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);

      $setuphold (posedge GN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_GN, delay_D);
      $setuphold (posedge GN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_GN, delay_D);

      $recrem (posedge RN, posedge GN, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_GN);

      $width (negedge GN, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, clock_i, c_SH_D;

   not       i1  (clock_i, GN);
   u_ld6     i2  (IQ, D, clock_i, 1'b1, RN, NOTIFY_REG);
   buf       i3  (Q, IQ);

   checkrs   i4  (c_SH_D, RN, 1'b1);

// timing section:
   specify

      (negedge GN => (Q -: Q)) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);

      $setuphold (posedge GN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge GN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge RN, posedge GN, 0.02, 0.02, NOTIFY_REG);

      $width (negedge GN, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : DLLRQLJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : low active single Q transparent D-latch with active
//                      low enable, reset
//   last modified by : XLICDD generated
//****************************************************************************

module DLLRQLJI5VX2 (D, GN, Q, RN);

   input     D, GN, RN;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_GN, delay_D, delay_RN, d_clock_i, c_SH_D;

   not       i1  (d_clock_i, delay_GN);
   u_ld6     i2  (IQ, delay_D, d_clock_i, 1'b1, delay_RN, NOTIFY_REG);
   buf       i3  (Q, IQ);

   checkrs   i4  (c_SH_D, delay_RN, 1'b1);

// timing section:
   specify

      (negedge GN => (Q -: Q)) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);

      $setuphold (posedge GN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_GN, delay_D);
      $setuphold (posedge GN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_GN, delay_D);

      $recrem (posedge RN, posedge GN, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_GN);

      $width (negedge GN, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, clock_i, c_SH_D;

   not       i1  (clock_i, GN);
   u_ld6     i2  (IQ, D, clock_i, 1'b1, RN, NOTIFY_REG);
   buf       i3  (Q, IQ);

   checkrs   i4  (c_SH_D, RN, 1'b1);

// timing section:
   specify

      (negedge GN => (Q -: Q)) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);

      $setuphold (posedge GN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge GN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge RN, posedge GN, 0.02, 0.02, NOTIFY_REG);

      $width (negedge GN, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : DLLRSLJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : low active transparent D-latch with active low
//                      enable, set and reset
//   last modified by : XLICDD generated
//****************************************************************************

module DLLRSLJI5VX1 (D, GN, Q, QN, RN, SN);

   input     D, GN, RN, SN;
   output    Q, QN;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_GN, delay_D, delay_RN, delay_SN, d_clock_i, IQN,
                   c_SH_D;

   not       i1  (d_clock_i, delay_GN);
   u_ld6     i3  (IQ, delay_D, d_clock_i, delay_SN, delay_RN, NOTIFY_REG);
   not       i4  (IQN, IQ);
   buf       i5  (Q, IQ);
   buf       i6  (QN, IQN);

   checkrs   i7  (c_SH_D, delay_RN, delay_SN);

// timing section:
   specify

      (SN -=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
      (negedge GN => (Q -: Q)) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);

      (SN +=> QN) = (0.02, 0.02);
      (D -=> QN) = (0.02, 0.02);
      (negedge GN => (QN -: QN)) = (0.02, 0.02);
      (RN -=> QN) = (0.02, 0.02);

      $setuphold (posedge GN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_GN, delay_D);
      $setuphold (posedge GN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_GN, delay_D);

      $setuphold (posedge RN, posedge SN, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_SN);

      $recrem (posedge RN, posedge GN, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_GN);

      $recrem (posedge SN, posedge GN, 0.02, 0.02, NOTIFY_REG,,, delay_SN,
                   delay_GN);

      $width (negedge GN, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, clock_i, IQN, c_SH_D;

   not       i1  (clock_i, GN);
   u_ld6     i3  (IQ, D, clock_i, SN, RN, NOTIFY_REG);
   not       i4  (IQN, IQ);
   buf       i5  (Q, IQ);
   buf       i6  (QN, IQN);

   checkrs   i7  (c_SH_D, RN, SN);

// timing section:
   specify

      (SN -=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
      (negedge GN => (Q -: Q)) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);

      (SN +=> QN) = (0.02, 0.02);
      (D -=> QN) = (0.02, 0.02);
      (negedge GN => (QN -: QN)) = (0.02, 0.02);
      (RN -=> QN) = (0.02, 0.02);

      $setuphold (posedge GN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge GN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge RN, posedge SN, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge RN, posedge GN, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge SN, posedge GN, 0.02, 0.02, NOTIFY_REG);

      $width (negedge GN, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : DLLRSLJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : low active transparent D-latch with active low
//                      enable, set and reset
//   last modified by : XLICDD generated
//****************************************************************************

module DLLRSLJI5VX2 (D, GN, Q, QN, RN, SN);

   input     D, GN, RN, SN;
   output    Q, QN;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_GN, delay_D, delay_RN, delay_SN, d_clock_i, IQN,
                   c_SH_D;

   not       i1  (d_clock_i, delay_GN);
   u_ld6     i3  (IQ, delay_D, d_clock_i, delay_SN, delay_RN, NOTIFY_REG);
   not       i4  (IQN, IQ);
   buf       i5  (Q, IQ);
   buf       i6  (QN, IQN);

   checkrs   i7  (c_SH_D, delay_RN, delay_SN);

// timing section:
   specify

      (SN -=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
      (negedge GN => (Q -: Q)) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);

      (SN +=> QN) = (0.02, 0.02);
      (D -=> QN) = (0.02, 0.02);
      (negedge GN => (QN -: QN)) = (0.02, 0.02);
      (RN -=> QN) = (0.02, 0.02);

      $setuphold (posedge GN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_GN, delay_D);
      $setuphold (posedge GN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_GN, delay_D);

      $setuphold (posedge RN, posedge SN, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_SN);

      $recrem (posedge RN, posedge GN, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_GN);

      $recrem (posedge SN, posedge GN, 0.02, 0.02, NOTIFY_REG,,, delay_SN,
                   delay_GN);

      $width (negedge GN, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, clock_i, IQN, c_SH_D;

   not       i1  (clock_i, GN);
   u_ld6     i3  (IQ, D, clock_i, SN, RN, NOTIFY_REG);
   not       i4  (IQN, IQ);
   buf       i5  (Q, IQ);
   buf       i6  (QN, IQN);

   checkrs   i7  (c_SH_D, RN, SN);

// timing section:
   specify

      (SN -=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
      (negedge GN => (Q -: Q)) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);

      (SN +=> QN) = (0.02, 0.02);
      (D -=> QN) = (0.02, 0.02);
      (negedge GN => (QN -: QN)) = (0.02, 0.02);
      (RN -=> QN) = (0.02, 0.02);

      $setuphold (posedge GN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge GN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge RN, posedge SN, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge RN, posedge GN, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge SN, posedge GN, 0.02, 0.02, NOTIFY_REG);

      $width (negedge GN, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : DLLRSQLJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : low active single Q transparent D-latch with active
//                      low enable, set and reset
//   last modified by : XLICDD generated
//****************************************************************************

module DLLRSQLJI5VX1 (D, GN, Q, RN, SN);

   input     D, GN, RN, SN;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_GN, delay_D, delay_RN, delay_SN, d_clock_i, c_SH_D;

   not       i1  (d_clock_i, delay_GN);
   u_ld6     i3  (IQ, delay_D, d_clock_i, delay_SN, delay_RN, NOTIFY_REG);
   buf       i4  (Q, IQ);

   checkrs   i5  (c_SH_D, delay_RN, delay_SN);

// timing section:
   specify

      (SN -=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
      (negedge GN => (Q -: Q)) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);

      $setuphold (posedge GN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_GN, delay_D);
      $setuphold (posedge GN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_GN, delay_D);

      $setuphold (posedge RN, posedge SN, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_SN);

      $recrem (posedge RN, posedge GN, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_GN);

      $recrem (posedge SN, posedge GN, 0.02, 0.02, NOTIFY_REG,,, delay_SN,
                   delay_GN);

      $width (negedge GN, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, clock_i, c_SH_D;

   not       i1  (clock_i, GN);
   u_ld6     i3  (IQ, D, clock_i, SN, RN, NOTIFY_REG);
   buf       i4  (Q, IQ);

   checkrs   i5  (c_SH_D, RN, SN);

// timing section:
   specify

      (SN -=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
      (negedge GN => (Q -: Q)) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);

      $setuphold (posedge GN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge GN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge RN, posedge SN, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge RN, posedge GN, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge SN, posedge GN, 0.02, 0.02, NOTIFY_REG);

      $width (negedge GN, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : DLLRSQLJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : low active single Q transparent D-latch with active
//                      low enable, set and reset
//   last modified by : XLICDD generated
//****************************************************************************

module DLLRSQLJI5VX2 (D, GN, Q, RN, SN);

   input     D, GN, RN, SN;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_GN, delay_D, delay_RN, delay_SN, d_clock_i, c_SH_D;

   not       i1  (d_clock_i, delay_GN);
   u_ld6     i3  (IQ, delay_D, d_clock_i, delay_SN, delay_RN, NOTIFY_REG);
   buf       i4  (Q, IQ);

   checkrs   i5  (c_SH_D, delay_RN, delay_SN);

// timing section:
   specify

      (SN -=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
      (negedge GN => (Q -: Q)) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);

      $setuphold (posedge GN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_GN, delay_D);
      $setuphold (posedge GN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_GN, delay_D);

      $setuphold (posedge RN, posedge SN, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_SN);

      $recrem (posedge RN, posedge GN, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_GN);

      $recrem (posedge SN, posedge GN, 0.02, 0.02, NOTIFY_REG,,, delay_SN,
                   delay_GN);

      $width (negedge GN, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, clock_i, c_SH_D;

   not       i1  (clock_i, GN);
   u_ld6     i3  (IQ, D, clock_i, SN, RN, NOTIFY_REG);
   buf       i4  (Q, IQ);

   checkrs   i5  (c_SH_D, RN, SN);

// timing section:
   specify

      (SN -=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
      (negedge GN => (Q -: Q)) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);

      $setuphold (posedge GN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge GN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge RN, posedge SN, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge RN, posedge GN, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge SN, posedge GN, 0.02, 0.02, NOTIFY_REG);

      $width (negedge GN, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : DLLSLJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : low active transparent D-latch with active low
//                      enable and set
//   last modified by : XLICDD generated
//****************************************************************************

module DLLSLJI5VX1 (D, GN, Q, QN, SN);

   input     D, GN, SN;
   output    Q, QN;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_GN, delay_D, delay_SN, d_clock_i, IQN, c_SH_D;

   not       i0  (d_clock_i, delay_GN);
   u_ld6     i2  (IQ, delay_D, d_clock_i, delay_SN, 1'b1, NOTIFY_REG);
   not       i3  (IQN, IQ);
   buf       i4  (Q, IQ);
   buf       i5  (QN, IQN);

   checkrs   i6  (c_SH_D, 1'b1, delay_SN);

// timing section:
   specify

      (negedge GN => (Q -: Q)) = (0.02, 0.02);
      (SN -=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);

      (negedge GN => (QN -: QN)) = (0.02, 0.02);
      (SN +=> QN) = (0.02, 0.02);
      (D -=> QN) = (0.02, 0.02);

      $setuphold (posedge GN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_GN, delay_D);
      $setuphold (posedge GN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_GN, delay_D);

      $recrem (posedge SN, posedge GN, 0.02, 0.02, NOTIFY_REG,,, delay_SN,
                   delay_GN);

      $width (negedge GN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, clock_i, IQN, c_SH_D;

   not       i0  (clock_i, GN);
   u_ld6     i2  (IQ, D, clock_i, SN, 1'b1, NOTIFY_REG);
   not       i3  (IQN, IQ);
   buf       i4  (Q, IQ);
   buf       i5  (QN, IQN);

   checkrs   i6  (c_SH_D, 1'b1, SN);

// timing section:
   specify

      (negedge GN => (Q -: Q)) = (0.02, 0.02);
      (SN -=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);

      (negedge GN => (QN -: QN)) = (0.02, 0.02);
      (SN +=> QN) = (0.02, 0.02);
      (D -=> QN) = (0.02, 0.02);

      $setuphold (posedge GN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge GN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge SN, posedge GN, 0.02, 0.02, NOTIFY_REG);

      $width (negedge GN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : DLLSLJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : low active transparent D-latch with active low
//                      enable and set
//   last modified by : XLICDD generated
//****************************************************************************

module DLLSLJI5VX2 (D, GN, Q, QN, SN);

   input     D, GN, SN;
   output    Q, QN;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_GN, delay_D, delay_SN, d_clock_i, IQN, c_SH_D;

   not       i0  (d_clock_i, delay_GN);
   u_ld6     i2  (IQ, delay_D, d_clock_i, delay_SN, 1'b1, NOTIFY_REG);
   not       i3  (IQN, IQ);
   buf       i4  (Q, IQ);
   buf       i5  (QN, IQN);

   checkrs   i6  (c_SH_D, 1'b1, delay_SN);

// timing section:
   specify

      (negedge GN => (Q -: Q)) = (0.02, 0.02);
      (SN -=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);

      (negedge GN => (QN -: QN)) = (0.02, 0.02);
      (SN +=> QN) = (0.02, 0.02);
      (D -=> QN) = (0.02, 0.02);

      $setuphold (posedge GN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_GN, delay_D);
      $setuphold (posedge GN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_GN, delay_D);

      $recrem (posedge SN, posedge GN, 0.02, 0.02, NOTIFY_REG,,, delay_SN,
                   delay_GN);

      $width (negedge GN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, clock_i, IQN, c_SH_D;

   not       i0  (clock_i, GN);
   u_ld6     i2  (IQ, D, clock_i, SN, 1'b1, NOTIFY_REG);
   not       i3  (IQN, IQ);
   buf       i4  (Q, IQ);
   buf       i5  (QN, IQN);

   checkrs   i6  (c_SH_D, 1'b1, SN);

// timing section:
   specify

      (negedge GN => (Q -: Q)) = (0.02, 0.02);
      (SN -=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);

      (negedge GN => (QN -: QN)) = (0.02, 0.02);
      (SN +=> QN) = (0.02, 0.02);
      (D -=> QN) = (0.02, 0.02);

      $setuphold (posedge GN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge GN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge SN, posedge GN, 0.02, 0.02, NOTIFY_REG);

      $width (negedge GN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : DLLSQLJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : low active single Q transparent D-latch with active
//                      low enable and set
//   last modified by : XLICDD generated
//****************************************************************************

module DLLSQLJI5VX1 (D, GN, Q, SN);

   input     D, GN, SN;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_GN, delay_D, delay_SN, d_clock_i, c_SH_D;

   not       i0  (d_clock_i, delay_GN);
   u_ld6     i2  (IQ, delay_D, d_clock_i, delay_SN, 1'b1, NOTIFY_REG);
   buf       i3  (Q, IQ);

   checkrs   i4  (c_SH_D, 1'b1, delay_SN);

// timing section:
   specify

      (negedge GN => (Q -: Q)) = (0.02, 0.02);
      (SN -=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);

      $setuphold (posedge GN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_GN, delay_D);
      $setuphold (posedge GN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_GN, delay_D);

      $recrem (posedge SN, posedge GN, 0.02, 0.02, NOTIFY_REG,,, delay_SN,
                   delay_GN);

      $width (negedge GN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, clock_i, c_SH_D;

   not       i0  (clock_i, GN);
   u_ld6     i2  (IQ, D, clock_i, SN, 1'b1, NOTIFY_REG);
   buf       i3  (Q, IQ);

   checkrs   i4  (c_SH_D, 1'b1, SN);

// timing section:
   specify

      (negedge GN => (Q -: Q)) = (0.02, 0.02);
      (SN -=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);

      $setuphold (posedge GN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge GN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge SN, posedge GN, 0.02, 0.02, NOTIFY_REG);

      $width (negedge GN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : DLLSQLJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : low active single Q transparent D-latch with active
//                      low enable and set
//   last modified by : XLICDD generated
//****************************************************************************

module DLLSQLJI5VX2 (D, GN, Q, SN);

   input     D, GN, SN;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_GN, delay_D, delay_SN, d_clock_i, c_SH_D;

   not       i0  (d_clock_i, delay_GN);
   u_ld6     i2  (IQ, delay_D, d_clock_i, delay_SN, 1'b1, NOTIFY_REG);
   buf       i3  (Q, IQ);

   checkrs   i4  (c_SH_D, 1'b1, delay_SN);

// timing section:
   specify

      (negedge GN => (Q -: Q)) = (0.02, 0.02);
      (SN -=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);

      $setuphold (posedge GN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_GN, delay_D);
      $setuphold (posedge GN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_GN, delay_D);

      $recrem (posedge SN, posedge GN, 0.02, 0.02, NOTIFY_REG,,, delay_SN,
                   delay_GN);

      $width (negedge GN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, clock_i, c_SH_D;

   not       i0  (clock_i, GN);
   u_ld6     i2  (IQ, D, clock_i, SN, 1'b1, NOTIFY_REG);
   buf       i3  (Q, IQ);

   checkrs   i4  (c_SH_D, 1'b1, SN);

// timing section:
   specify

      (negedge GN => (Q -: Q)) = (0.02, 0.02);
      (SN -=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);

      $setuphold (posedge GN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge GN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge SN, posedge GN, 0.02, 0.02, NOTIFY_REG);

      $width (negedge GN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
//*****************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : DLY2LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : Delay Cell 2ns
//                    : Note: used for the different technology modules 
//                            and for the different operating conditions
//                            the cell name does not express a related 
//                            cell delay as nanosecond-value.
//                            The exact cell delay has to be timing 
//                            analyzed at the choosen operating 
//                            conditions and with the backannotated
//                            routing parasitics.
//
//   last modified by : XLICDD generated
//*****************************************************************

module DLY2LJI5VX1 (A, Q);

   input     A;
   output    Q;

// Function Q: A
   buf       i0  (Q, A);



// timing section:
   specify

      (A +=> Q) = (1.94, 1.92);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
//*****************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : DLY4LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : Delay Cell 4ns
//                    : Note: used for the different technology modules 
//                            and for the different operating conditions
//                            the cell name does not express a related 
//                            cell delay as nanosecond-value.
//                            The exact cell delay has to be timing 
//                            analyzed at the choosen operating 
//                            conditions and with the backannotated
//                            routing parasitics.
//
//   last modified by : XLICDD generated
//*****************************************************************

module DLY4LJI5VX1 (A, Q);

   input     A;
   output    Q;

// Function Q: A
   buf       i0  (Q, A);



// timing section:
   specify

      (A +=> Q) = (3.54, 3.69);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
//*****************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : DLY8LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : Delay Cell 8ns
//                    : Note: used for the different technology modules 
//                            and for the different operating conditions
//                            the cell name does not express a related 
//                            cell delay as nanosecond-value.
//                            The exact cell delay has to be timing 
//                            analyzed at the choosen operating 
//                            conditions and with the backannotated
//                            routing parasitics.
//
//   last modified by : XLICDD generated
//*****************************************************************

module DLY8LJI5VX1 (A, Q);

   input     A;
   output    Q;

// Function Q: A
   buf       i0  (Q, A);



// timing section:
   specify

      (A +=> Q) = (7.34, 7.49);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : EN2LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 2-Input XNOR
//   last modified by : XLICDD generated
//****************************************************************************

module EN2LJI5VX1 (A, B, Q);

   input     A, B;
   output    Q;

// Function Q: !(A^B)
   xnor      i0  (Q, A, B);

// timing section:
   specify

      (posedge A => (Q +: Q)) = (0.02, 0.02);
      (negedge A => (Q +: Q)) = (0.02, 0.02);
         if ((B == 1'b1)) (A +=> Q) = (0.02, 0.02);
      (posedge B => (Q +: Q)) = (0.02, 0.02);
      (negedge B => (Q +: Q)) = (0.02, 0.02);
         if ((A == 1'b1)) (B +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : EN2LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 2-Input XNOR
//   last modified by : XLICDD generated
//****************************************************************************

module EN2LJI5VX2 (A, B, Q);

   input     A, B;
   output    Q;

// Function Q: !(A^B)
   xnor      i0  (Q, A, B);

// timing section:
   specify

      (posedge A => (Q +: Q)) = (0.02, 0.02);
      (negedge A => (Q +: Q)) = (0.02, 0.02);
         if ((B == 1'b1)) (A +=> Q) = (0.02, 0.02);
      (posedge B => (Q +: Q)) = (0.02, 0.02);
      (negedge B => (Q +: Q)) = (0.02, 0.02);
         if ((A == 1'b1)) (B +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : EN3LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 3-Input XNOR
//   last modified by : XLICDD generated
//****************************************************************************

module EN3LJI5VX1 (A, B, C, Q);

   input     A, B, C;
   output    Q;

// Function Q: !(A^B^C)
   xnor      i0  (Q, A, B, C);

// timing section:
   specify

      (posedge A => (Q +: Q)) = (0.02, 0.02);
      (negedge A => (Q +: Q)) = (0.02, 0.02);
         if ((B == 1'b0 && C == 1'b1) || (B == 1'b1 && C == 1'b0)) (A +=> Q) =
                   (0.02, 0.02);
      (posedge B => (Q +: Q)) = (0.02, 0.02);
      (negedge B => (Q +: Q)) = (0.02, 0.02);
         if ((A == 1'b0 && C == 1'b1)) (B +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && C == 1'b0)) (B +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && C == 1'b1)) (B -=> Q) = (0.02, 0.02);
      (posedge C => (Q +: Q)) = (0.02, 0.02);
      (negedge C => (Q +: Q)) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1)) (C +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0)) (C +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b1)) (C -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : EN3LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 3-Input XNOR
//   last modified by : XLICDD generated
//****************************************************************************

module EN3LJI5VX2 (A, B, C, Q);

   input     A, B, C;
   output    Q;

// Function Q: !(A^B^C)
   xnor      i0  (Q, A, B, C);

// timing section:
   specify

      (posedge A => (Q +: Q)) = (0.02, 0.02);
      (negedge A => (Q +: Q)) = (0.02, 0.02);
         if ((B == 1'b0 && C == 1'b1) || (B == 1'b1 && C == 1'b0)) (A +=> Q) =
                   (0.02, 0.02);
      (posedge B => (Q +: Q)) = (0.02, 0.02);
      (negedge B => (Q +: Q)) = (0.02, 0.02);
         if ((A == 1'b0 && C == 1'b1)) (B +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && C == 1'b0)) (B +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && C == 1'b1)) (B -=> Q) = (0.02, 0.02);
      (posedge C => (Q +: Q)) = (0.02, 0.02);
      (negedge C => (Q +: Q)) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1)) (C +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0)) (C +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b1)) (C -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : EO2LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 2-Input XOR
//   last modified by : XLICDD generated
//****************************************************************************

module EO2LJI5VX1 (A, B, Q);

   input     A, B;
   output    Q;

// Function Q: (A^B)
   xor       i0  (Q, A, B);

// timing section:
   specify

      (posedge A => (Q +: Q)) = (0.02, 0.02);
      (negedge A => (Q +: Q)) = (0.02, 0.02);
         if ((B == 1'b1)) (A -=> Q) = (0.02, 0.02);
      (posedge B => (Q +: Q)) = (0.02, 0.02);
      (negedge B => (Q +: Q)) = (0.02, 0.02);
         if ((A == 1'b1)) (B -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : EO2LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 2-Input XOR
//   last modified by : XLICDD generated
//****************************************************************************

module EO2LJI5VX2 (A, B, Q);

   input     A, B;
   output    Q;

// Function Q: (A^B)
   xor       i0  (Q, A, B);

// timing section:
   specify

      (posedge A => (Q +: Q)) = (0.02, 0.02);
      (negedge A => (Q +: Q)) = (0.02, 0.02);
         if ((B == 1'b1)) (A -=> Q) = (0.02, 0.02);
      (posedge B => (Q +: Q)) = (0.02, 0.02);
      (negedge B => (Q +: Q)) = (0.02, 0.02);
         if ((A == 1'b1)) (B -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : EO3LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 3-Input XOR
//   last modified by : XLICDD generated
//****************************************************************************

module EO3LJI5VX1 (A, B, C, Q);

   input     A, B, C;
   output    Q;

// Function Q: (A^B^C)
   xor       i0  (Q, A, B, C);

// timing section:
   specify

      (posedge A => (Q +: Q)) = (0.02, 0.02);
      (negedge A => (Q +: Q)) = (0.02, 0.02);
         if ((B == 1'b0 && C == 1'b1) || (B == 1'b1 && C == 1'b0)) (A -=> Q) =
                   (0.02, 0.02);
      (posedge B => (Q +: Q)) = (0.02, 0.02);
      (negedge B => (Q +: Q)) = (0.02, 0.02);
         if ((A == 1'b0 && C == 1'b1)) (B -=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && C == 1'b0)) (B -=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && C == 1'b1)) (B +=> Q) = (0.02, 0.02);
      (posedge C => (Q +: Q)) = (0.02, 0.02);
      (negedge C => (Q +: Q)) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1)) (C -=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0)) (C -=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b1)) (C +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : EO3LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 3-Input XOR
//   last modified by : XLICDD generated
//****************************************************************************

module EO3LJI5VX2 (A, B, C, Q);

   input     A, B, C;
   output    Q;

// Function Q: (A^B^C)
   xor       i0  (Q, A, B, C);

// timing section:
   specify

      (posedge A => (Q +: Q)) = (0.02, 0.02);
      (negedge A => (Q +: Q)) = (0.02, 0.02);
         if ((B == 1'b0 && C == 1'b1) || (B == 1'b1 && C == 1'b0)) (A -=> Q) =
                   (0.02, 0.02);
      (posedge B => (Q +: Q)) = (0.02, 0.02);
      (negedge B => (Q +: Q)) = (0.02, 0.02);
         if ((A == 1'b0 && C == 1'b1)) (B -=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && C == 1'b0)) (B -=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && C == 1'b1)) (B +=> Q) = (0.02, 0.02);
      (posedge C => (Q +: Q)) = (0.02, 0.02);
      (negedge C => (Q +: Q)) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1)) (C -=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0)) (C -=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b1)) (C +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : FALJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : Full Adder
//   last modified by : XLICDD generated
//****************************************************************************

module FALJI5VX1 (A, B, CI, CO, S);

   input     A, B, CI;
   output    CO, S;

// Function CO: (B*CI) + (A*CI) + (A*B)
   and       i0  (n_0, B, CI);
   and       i1  (n_1, A, CI);
   and       i2  (n_2, A, B);
   or        i3  (CO, n_0, n_1, n_2);

// Function S: (A^B^CI)
   xor       i4  (S, A, B, CI);

// timing section:
   specify

      (A +=> CO) = (0.02, 0.02);
      (B +=> CO) = (0.02, 0.02);
      (CI +=> CO) = (0.02, 0.02);

      (posedge A => (S +: S)) = (0.02, 0.02);
      (negedge A => (S +: S)) = (0.02, 0.02);
         if (((B == 1'b0 && CI == 1'b0))) (A +=> S) = (0.02, 0.02);
         if ((B == 1'b1 && CI == 1'b0)) (A -=> S) = (0.02, 0.02);
         if (((B == 1'b1 && CI == 1'b1))) (A +=> S) = (0.02, 0.02);
      (posedge B => (S +: S)) = (0.02, 0.02);
      (negedge B => (S +: S)) = (0.02, 0.02);
         if ((A == 1'b0 && CI == 1'b0)) (B +=> S) = (0.02, 0.02);
         if ((A == 1'b1 && CI == 1'b0)) (B -=> S) = (0.02, 0.02);
         if ((A == 1'b1 && CI == 1'b1)) (B +=> S) = (0.02, 0.02);
      (posedge CI => (S +: S)) = (0.02, 0.02);
      (negedge CI => (S +: S)) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b0)) (CI +=> S) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1)) (CI -=> S) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b1)) (CI +=> S) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : FALJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : Full Adder
//   last modified by : XLICDD generated
//****************************************************************************

module FALJI5VX2 (A, B, CI, CO, S);

   input     A, B, CI;
   output    CO, S;

// Function CO: (B*CI) + (A*CI) + (A*B)
   and       i0  (n_0, B, CI);
   and       i1  (n_1, A, CI);
   and       i2  (n_2, A, B);
   or        i3  (CO, n_0, n_1, n_2);

// Function S: (A^B^CI)
   xor       i4  (S, A, B, CI);

// timing section:
   specify

      (A +=> CO) = (0.02, 0.02);
      (B +=> CO) = (0.02, 0.02);
      (CI +=> CO) = (0.02, 0.02);

      (posedge A => (S +: S)) = (0.02, 0.02);
      (negedge A => (S +: S)) = (0.02, 0.02);
         if (((B == 1'b0 && CI == 1'b0))) (A +=> S) = (0.02, 0.02);
         if ((B == 1'b1 && CI == 1'b0)) (A -=> S) = (0.02, 0.02);
         if (((B == 1'b1 && CI == 1'b1))) (A +=> S) = (0.02, 0.02);
      (posedge B => (S +: S)) = (0.02, 0.02);
      (negedge B => (S +: S)) = (0.02, 0.02);
         if ((A == 1'b0 && CI == 1'b0)) (B +=> S) = (0.02, 0.02);
         if ((A == 1'b1 && CI == 1'b0)) (B -=> S) = (0.02, 0.02);
         if ((A == 1'b1 && CI == 1'b1)) (B +=> S) = (0.02, 0.02);
      (posedge CI => (S +: S)) = (0.02, 0.02);
      (negedge CI => (S +: S)) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b0)) (CI +=> S) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1)) (CI -=> S) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b1)) (CI +=> S) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : HALJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : Half Adder
//   last modified by : XLICDD generated
//****************************************************************************

module HALJI5VX1 (A, B, CO, S);

   input     A, B;
   output    CO, S;

// Function CO: (A*B)
   and       i0  (CO, A, B);

// Function S: (A^B)
   xor       i1  (S, A, B);

// timing section:
   specify

      (A +=> CO) = (0.02, 0.02);
      (B +=> CO) = (0.02, 0.02);

      (posedge A => (S +: S)) = (0.02, 0.02);
      (negedge A => (S +: S)) = (0.02, 0.02);
         if ((B == 1'b0)) (A +=> S) = (0.02, 0.02);
      (posedge B => (S +: S)) = (0.02, 0.02);
      (negedge B => (S +: S)) = (0.02, 0.02);
         if ((A == 1'b0)) (B +=> S) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : HALJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : Half Adder
//   last modified by : XLICDD generated
//****************************************************************************

module HALJI5VX2 (A, B, CO, S);

   input     A, B;
   output    CO, S;

// Function CO: (A*B)
   and       i0  (CO, A, B);

// Function S: (A^B)
   xor       i1  (S, A, B);

// timing section:
   specify

      (A +=> CO) = (0.02, 0.02);
      (B +=> CO) = (0.02, 0.02);

      (posedge A => (S +: S)) = (0.02, 0.02);
      (negedge A => (S +: S)) = (0.02, 0.02);
         if ((B == 1'b0)) (A +=> S) = (0.02, 0.02);
      (posedge B => (S +: S)) = (0.02, 0.02);
      (negedge B => (S +: S)) = (0.02, 0.02);
         if ((A == 1'b0)) (B +=> S) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : INLJI5VX16
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : Inverter
//   last modified by : XLICDD generated
//****************************************************************************

module INLJI5VX16 (A, Q);

   input     A;
   output    Q;

// Function Q: !(A)
   not       i0  (Q, A);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : INLJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : Inverter
//   last modified by : XLICDD generated
//****************************************************************************

module INLJI5VX1 (A, Q);

   input     A;
   output    Q;

// Function Q: !(A)
   not       i0  (Q, A);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : INLJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : Inverter
//   last modified by : XLICDD generated
//****************************************************************************

module INLJI5VX2 (A, Q);

   input     A;
   output    Q;

// Function Q: !(A)
   not       i0  (Q, A);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : INLJI5VX3
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : Inverter
//   last modified by : XLICDD generated
//****************************************************************************

module INLJI5VX3 (A, Q);

   input     A;
   output    Q;

// Function Q: !(A)
   not       i0  (Q, A);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : INLJI5VX4
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : Inverter
//   last modified by : XLICDD generated
//****************************************************************************

module INLJI5VX4 (A, Q);

   input     A;
   output    Q;

// Function Q: !(A)
   not       i0  (Q, A);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : INLJI5VX6
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : Inverter
//   last modified by : XLICDD generated
//****************************************************************************

module INLJI5VX6 (A, Q);

   input     A;
   output    Q;

// Function Q: !(A)
   not       i0  (Q, A);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : INLJI5VX8
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : Inverter
//   last modified by : XLICDD generated
//****************************************************************************

module INLJI5VX8 (A, Q);

   input     A;
   output    Q;

// Function Q: !(A)
   not       i0  (Q, A);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : ITHLJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : Tristate Inverter with active high Enable
//   last modified by : XLICDD generated
//****************************************************************************

module ITHLJI5VX1 (A, E, Q);

   input     A, E;
   output    Q;

// Function Q: !(A); Tristate function: !E
   not       i0  (n_0, A);
   bufif1    i2  (Q, n_0, E);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
      (E  => Q) = (0.02, 0.02, 0.02, 0.02, 0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : ITHLJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : Tristate Inverter with active high Enable
//   last modified by : XLICDD generated
//****************************************************************************

module ITHLJI5VX2 (A, E, Q);

   input     A, E;
   output    Q;

// Function Q: !(A); Tristate function: !E
   not       i0  (n_0, A);
   bufif1    i2  (Q, n_0, E);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
      (E  => Q) = (0.02, 0.02, 0.02, 0.02, 0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : ITHLJI5VX3
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : Tristate Inverter with active high Enable
//   last modified by : XLICDD generated
//****************************************************************************

module ITHLJI5VX3 (A, E, Q);

   input     A, E;
   output    Q;

// Function Q: !(A); Tristate function: !E
   not       i0  (n_0, A);
   bufif1    i2  (Q, n_0, E);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
      (E  => Q) = (0.02, 0.02, 0.02, 0.02, 0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : ITHLJI5VX4
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : Tristate Inverter with active high Enable
//   last modified by : XLICDD generated
//****************************************************************************

module ITHLJI5VX4 (A, E, Q);

   input     A, E;
   output    Q;

// Function Q: !(A); Tristate function: !E
   not       i0  (n_0, A);
   bufif1    i2  (Q, n_0, E);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
      (E  => Q) = (0.02, 0.02, 0.02, 0.02, 0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : ITHLJI5VX8
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : Tristate Inverter with active high Enable
//   last modified by : XLICDD generated
//****************************************************************************

module ITHLJI5VX8 (A, E, Q);

   input     A, E;
   output    Q;

// Function Q: !(A); Tristate function: !E
   not       i0  (n_0, A);
   bufif1    i2  (Q, n_0, E);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
      (E  => Q) = (0.02, 0.02, 0.02, 0.02, 0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : ITLLJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : Tristate Inverter with active low Enable
//   last modified by : XLICDD generated
//****************************************************************************

module ITLLJI5VX1 (A, EN, Q);

   input     A, EN;
   output    Q;

// Function Q: !(A); Tristate function: EN
   not       i0  (n_0, A);
   bufif0    i1  (Q, n_0, EN);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
      (EN  => Q) = (0.02, 0.02, 0.02, 0.02, 0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : ITLLJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : Tristate Inverter with active low Enable
//   last modified by : XLICDD generated
//****************************************************************************

module ITLLJI5VX2 (A, EN, Q);

   input     A, EN;
   output    Q;

// Function Q: !(A); Tristate function: EN
   not       i0  (n_0, A);
   bufif0    i1  (Q, n_0, EN);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
      (EN  => Q) = (0.02, 0.02, 0.02, 0.02, 0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : ITLLJI5VX3
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : Tristate Inverter with active low Enable
//   last modified by : XLICDD generated
//****************************************************************************

module ITLLJI5VX3 (A, EN, Q);

   input     A, EN;
   output    Q;

// Function Q: !(A); Tristate function: EN
   not       i0  (n_0, A);
   bufif0    i1  (Q, n_0, EN);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
      (EN  => Q) = (0.02, 0.02, 0.02, 0.02, 0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : ITLLJI5VX4
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : Tristate Inverter with active low Enable
//   last modified by : XLICDD generated
//****************************************************************************

module ITLLJI5VX4 (A, EN, Q);

   input     A, EN;
   output    Q;

// Function Q: !(A); Tristate function: EN
   not       i0  (n_0, A);
   bufif0    i1  (Q, n_0, EN);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
      (EN  => Q) = (0.02, 0.02, 0.02, 0.02, 0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : ITLLJI5VX8
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : Tristate Inverter with active low Enable
//   last modified by : XLICDD generated
//****************************************************************************

module ITLLJI5VX8 (A, EN, Q);

   input     A, EN;
   output    Q;

// Function Q: !(A); Tristate function: EN
   not       i0  (n_0, A);
   bufif0    i1  (Q, n_0, EN);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
      (EN  => Q) = (0.02, 0.02, 0.02, 0.02, 0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : LGCNLJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : negedge clock gating cell, high latch Enable
//   last modified by : XLICDD generated
//****************************************************************************

module LGCNLJI5VX1 (CLK, E, GCLK);

   input     CLK, E;
   output    GCLK;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_CLK, delay_E;

   u_ld1     i0  (IQ, delay_E, delay_CLK, NOTIFY_REG);
   not       i1  (n_0, IQ);
   or        i2  (GCLK, delay_CLK, n_0);


// timing section:
   specify

      (CLK +=> GCLK) = (0.02, 0.02);

      $setuphold (negedge CLK, posedge E, 0.02, 0.02, NOTIFY_REG,,, delay_CLK,
                   delay_E);
      $setuphold (negedge CLK, negedge E, 0.02, 0.02, NOTIFY_REG,,, delay_CLK,
                   delay_E);

      $width (posedge CLK, 0.02, 0, NOTIFY_REG);
      $width (negedge CLK, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ;

   u_ld1     i0  (IQ, E, CLK, NOTIFY_REG);
   not       i1  (n_0, IQ);
   or        i2  (GCLK, CLK, n_0);


// timing section:
   specify

      (CLK +=> GCLK) = (0.02, 0.02);

      $setuphold (negedge CLK, posedge E, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CLK, negedge E, 0.02, 0.02, NOTIFY_REG);

      $width (posedge CLK, 0.02, 0, NOTIFY_REG);
      $width (negedge CLK, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : LGCNLJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : negedge clock gating cell, high latch Enable
//   last modified by : XLICDD generated
//****************************************************************************

module LGCNLJI5VX2 (CLK, E, GCLK);

   input     CLK, E;
   output    GCLK;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_CLK, delay_E;

   u_ld1     i0  (IQ, delay_E, delay_CLK, NOTIFY_REG);
   not       i1  (n_0, IQ);
   or        i2  (GCLK, delay_CLK, n_0);


// timing section:
   specify

      (CLK +=> GCLK) = (0.02, 0.02);

      $setuphold (negedge CLK, posedge E, 0.02, 0.02, NOTIFY_REG,,, delay_CLK,
                   delay_E);
      $setuphold (negedge CLK, negedge E, 0.02, 0.02, NOTIFY_REG,,, delay_CLK,
                   delay_E);

      $width (posedge CLK, 0.02, 0, NOTIFY_REG);
      $width (negedge CLK, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ;

   u_ld1     i0  (IQ, E, CLK, NOTIFY_REG);
   not       i1  (n_0, IQ);
   or        i2  (GCLK, CLK, n_0);


// timing section:
   specify

      (CLK +=> GCLK) = (0.02, 0.02);

      $setuphold (negedge CLK, posedge E, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CLK, negedge E, 0.02, 0.02, NOTIFY_REG);

      $width (posedge CLK, 0.02, 0, NOTIFY_REG);
      $width (negedge CLK, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : LGCPLJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : posedge clock gating cell, low latch Enable
//   last modified by : XLICDD generated
//****************************************************************************

module LGCPLJI5VX1 (CLK, E, GCLK);

   input     CLK, E;
   output    GCLK;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_CLK, delay_E, d_clock_i;

   not       i0  (d_clock_i, delay_CLK);
   u_ld1     i1  (IQ, delay_E, d_clock_i, NOTIFY_REG);
   and       i2  (GCLK, delay_CLK, IQ);


// timing section:
   specify

      (CLK +=> GCLK) = (0.02, 0.02);

      $setuphold (posedge CLK, posedge E, 0.02, 0.02, NOTIFY_REG,,, delay_CLK,
                   delay_E);
      $setuphold (posedge CLK, negedge E, 0.02, 0.02, NOTIFY_REG,,, delay_CLK,
                   delay_E);

      $width (posedge CLK, 0.02, 0, NOTIFY_REG);
      $width (negedge CLK, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, clock_i;

   not       i0  (clock_i, CLK);
   u_ld1     i1  (IQ, E, clock_i, NOTIFY_REG);
   and       i2  (GCLK, CLK, IQ);


// timing section:
   specify

      (CLK +=> GCLK) = (0.02, 0.02);

      $setuphold (posedge CLK, posedge E, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge CLK, negedge E, 0.02, 0.02, NOTIFY_REG);

      $width (posedge CLK, 0.02, 0, NOTIFY_REG);
      $width (negedge CLK, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : LGCPLJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : posedge clock gating cell, low latch Enable
//   last modified by : XLICDD generated
//****************************************************************************

module LGCPLJI5VX2 (CLK, E, GCLK);

   input     CLK, E;
   output    GCLK;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_CLK, delay_E, d_clock_i;

   not       i0  (d_clock_i, delay_CLK);
   u_ld1     i1  (IQ, delay_E, d_clock_i, NOTIFY_REG);
   and       i2  (GCLK, delay_CLK, IQ);


// timing section:
   specify

      (CLK +=> GCLK) = (0.02, 0.02);

      $setuphold (posedge CLK, posedge E, 0.02, 0.02, NOTIFY_REG,,, delay_CLK,
                   delay_E);
      $setuphold (posedge CLK, negedge E, 0.02, 0.02, NOTIFY_REG,,, delay_CLK,
                   delay_E);

      $width (posedge CLK, 0.02, 0, NOTIFY_REG);
      $width (negedge CLK, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, clock_i;

   not       i0  (clock_i, CLK);
   u_ld1     i1  (IQ, E, clock_i, NOTIFY_REG);
   and       i2  (GCLK, CLK, IQ);


// timing section:
   specify

      (CLK +=> GCLK) = (0.02, 0.02);

      $setuphold (posedge CLK, posedge E, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge CLK, negedge E, 0.02, 0.02, NOTIFY_REG);

      $width (posedge CLK, 0.02, 0, NOTIFY_REG);
      $width (negedge CLK, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : LSGCNLJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : negedge clock gating cell, high latch Enable, scan
//                      precontrol
//   last modified by : XLICDD generated
//****************************************************************************

module LSGCNLJI5VX1 (CLK, E, GCLK, SE);

   input     CLK, E, SE;
   output    GCLK;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_CLK, delay_E, delay_SE, d_dat_i, c_SH_E, c_SH_SE,
                   c_SH_E_v, c_SH_SE_v;

   or        i0  (d_dat_i, delay_E, delay_SE);
   u_ld1     i1  (IQ, d_dat_i, delay_CLK, NOTIFY_REG);
   not       i2  (n_0, IQ);
   or        i3  (GCLK, delay_CLK, n_0);

   not       i4  (c_SH_E, delay_SE);
   not       i5  (c_SH_SE, delay_E);
   not #(0.01) i6  (c_SH_E_v, delay_SE);
   not #(0.01) i7  (c_SH_SE_v, delay_E);

// timing section:
   specify

      (CLK +=> GCLK) = (0.02, 0.02);

      $setuphold (negedge CLK, posedge E &&& c_SH_E_v, 0.02, 0.02,
                   NOTIFY_REG,,, delay_CLK, delay_E);
      $setuphold (negedge CLK, negedge E &&& c_SH_E, 0.02, 0.02, NOTIFY_REG,,,
                   delay_CLK, delay_E);

      $setuphold (negedge CLK, posedge SE &&& c_SH_SE_v, 0.02, 0.02,
                   NOTIFY_REG,,, delay_CLK, delay_SE);
      $setuphold (negedge CLK, negedge SE &&& c_SH_SE, 0.02, 0.02,
                   NOTIFY_REG,,, delay_CLK, delay_SE);

      $width (posedge CLK, 0.02, 0, NOTIFY_REG);
      $width (negedge CLK, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, dat_i, c_SH_E, c_SH_SE, c_SH_E_v, c_SH_SE_v;

   or        i0  (dat_i, E, SE);
   u_ld1     i1  (IQ, dat_i, CLK, NOTIFY_REG);
   not       i2  (n_0, IQ);
   or        i3  (GCLK, CLK, n_0);

   not       i4  (c_SH_E, SE);
   not       i5  (c_SH_SE, E);
   not #(0.01) i6  (c_SH_E_v, SE);
   not #(0.01) i7  (c_SH_SE_v, E);

// timing section:
   specify

      (CLK +=> GCLK) = (0.02, 0.02);

      $setuphold (negedge CLK, posedge E &&& c_SH_E_v, 0.02, 0.02,
                   NOTIFY_REG);
      $setuphold (negedge CLK, negedge E &&& c_SH_E, 0.02, 0.02, NOTIFY_REG);

      $setuphold (negedge CLK, posedge SE &&& c_SH_SE_v, 0.02, 0.02,
                   NOTIFY_REG);
      $setuphold (negedge CLK, negedge SE &&& c_SH_SE, 0.02, 0.02,
                   NOTIFY_REG);

      $width (posedge CLK, 0.02, 0, NOTIFY_REG);
      $width (negedge CLK, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : LSGCNLJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : negedge clock gating cell, high latch Enable, scan
//                      precontrol
//   last modified by : XLICDD generated
//****************************************************************************

module LSGCNLJI5VX2 (CLK, E, GCLK, SE);

   input     CLK, E, SE;
   output    GCLK;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_CLK, delay_E, delay_SE, d_dat_i, c_SH_E, c_SH_SE,
                   c_SH_E_v, c_SH_SE_v;

   or        i0  (d_dat_i, delay_E, delay_SE);
   u_ld1     i1  (IQ, d_dat_i, delay_CLK, NOTIFY_REG);
   not       i2  (n_0, IQ);
   or        i3  (GCLK, delay_CLK, n_0);

   not       i4  (c_SH_E, delay_SE);
   not       i5  (c_SH_SE, delay_E);
   not #(0.01) i6  (c_SH_E_v, delay_SE);
   not #(0.01) i7  (c_SH_SE_v, delay_E);

// timing section:
   specify

      (CLK +=> GCLK) = (0.02, 0.02);

      $setuphold (negedge CLK, posedge E &&& c_SH_E_v, 0.02, 0.02,
                   NOTIFY_REG,,, delay_CLK, delay_E);
      $setuphold (negedge CLK, negedge E &&& c_SH_E, 0.02, 0.02, NOTIFY_REG,,,
                   delay_CLK, delay_E);

      $setuphold (negedge CLK, posedge SE &&& c_SH_SE_v, 0.02, 0.02,
                   NOTIFY_REG,,, delay_CLK, delay_SE);
      $setuphold (negedge CLK, negedge SE &&& c_SH_SE, 0.02, 0.02,
                   NOTIFY_REG,,, delay_CLK, delay_SE);

      $width (posedge CLK, 0.02, 0, NOTIFY_REG);
      $width (negedge CLK, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, dat_i, c_SH_E, c_SH_SE, c_SH_E_v, c_SH_SE_v;

   or        i0  (dat_i, E, SE);
   u_ld1     i1  (IQ, dat_i, CLK, NOTIFY_REG);
   not       i2  (n_0, IQ);
   or        i3  (GCLK, CLK, n_0);

   not       i4  (c_SH_E, SE);
   not       i5  (c_SH_SE, E);
   not #(0.01) i6  (c_SH_E_v, SE);
   not #(0.01) i7  (c_SH_SE_v, E);

// timing section:
   specify

      (CLK +=> GCLK) = (0.02, 0.02);

      $setuphold (negedge CLK, posedge E &&& c_SH_E_v, 0.02, 0.02,
                   NOTIFY_REG);
      $setuphold (negedge CLK, negedge E &&& c_SH_E, 0.02, 0.02, NOTIFY_REG);

      $setuphold (negedge CLK, posedge SE &&& c_SH_SE_v, 0.02, 0.02,
                   NOTIFY_REG);
      $setuphold (negedge CLK, negedge SE &&& c_SH_SE, 0.02, 0.02,
                   NOTIFY_REG);

      $width (posedge CLK, 0.02, 0, NOTIFY_REG);
      $width (negedge CLK, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : LSGCPLJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : posedge clock gating cell, low latch Enable, scan
//                      precontrol
//   last modified by : XLICDD generated
//****************************************************************************

module LSGCPLJI5VX1 (CLK, E, GCLK, SE);

   input     CLK, E, SE;
   output    GCLK;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_CLK, delay_E, delay_SE, d_clock_i, d_dat_i, c_SH_E,
                   c_SH_SE, c_SH_E_v, c_SH_SE_v;

   not       i0  (d_clock_i, delay_CLK);
   or        i1  (d_dat_i, delay_E, delay_SE);
   u_ld1     i2  (IQ, d_dat_i, d_clock_i, NOTIFY_REG);
   and       i3  (GCLK, delay_CLK, IQ);

   not       i4  (c_SH_E, delay_SE);
   not       i5  (c_SH_SE, delay_E);
   not #(0.01) i6  (c_SH_E_v, delay_SE);
   not #(0.01) i7  (c_SH_SE_v, delay_E);

// timing section:
   specify

      (CLK +=> GCLK) = (0.02, 0.02);

      $setuphold (posedge CLK, posedge E &&& c_SH_E_v, 0.02, 0.02,
                   NOTIFY_REG,,, delay_CLK, delay_E);
      $setuphold (posedge CLK, negedge E &&& c_SH_E, 0.02, 0.02, NOTIFY_REG,,,
                   delay_CLK, delay_E);

      $setuphold (posedge CLK, posedge SE &&& c_SH_SE_v, 0.02, 0.02,
                   NOTIFY_REG,,, delay_CLK, delay_SE);
      $setuphold (posedge CLK, negedge SE &&& c_SH_SE, 0.02, 0.02,
                   NOTIFY_REG,,, delay_CLK, delay_SE);

      $width (posedge CLK, 0.02, 0, NOTIFY_REG);
      $width (negedge CLK, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, clock_i, dat_i, c_SH_E, c_SH_SE, c_SH_E_v, c_SH_SE_v;

   not       i0  (clock_i, CLK);
   or        i1  (dat_i, E, SE);
   u_ld1     i2  (IQ, dat_i, clock_i, NOTIFY_REG);
   and       i3  (GCLK, CLK, IQ);

   not       i4  (c_SH_E, SE);
   not       i5  (c_SH_SE, E);
   not #(0.01) i6  (c_SH_E_v, SE);
   not #(0.01) i7  (c_SH_SE_v, E);

// timing section:
   specify

      (CLK +=> GCLK) = (0.02, 0.02);

      $setuphold (posedge CLK, posedge E &&& c_SH_E_v, 0.02, 0.02,
                   NOTIFY_REG);
      $setuphold (posedge CLK, negedge E &&& c_SH_E, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge CLK, posedge SE &&& c_SH_SE_v, 0.02, 0.02,
                   NOTIFY_REG);
      $setuphold (posedge CLK, negedge SE &&& c_SH_SE, 0.02, 0.02,
                   NOTIFY_REG);

      $width (posedge CLK, 0.02, 0, NOTIFY_REG);
      $width (negedge CLK, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : LSGCPLJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : posedge clock gating cell, low latch Enable, scan
//                      precontrol
//   last modified by : XLICDD generated
//****************************************************************************

module LSGCPLJI5VX2 (CLK, E, GCLK, SE);

   input     CLK, E, SE;
   output    GCLK;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_CLK, delay_E, delay_SE, d_clock_i, d_dat_i, c_SH_E,
                   c_SH_SE, c_SH_E_v, c_SH_SE_v;

   not       i0  (d_clock_i, delay_CLK);
   or        i1  (d_dat_i, delay_E, delay_SE);
   u_ld1     i2  (IQ, d_dat_i, d_clock_i, NOTIFY_REG);
   and       i3  (GCLK, delay_CLK, IQ);

   not       i4  (c_SH_E, delay_SE);
   not       i5  (c_SH_SE, delay_E);
   not #(0.01) i6  (c_SH_E_v, delay_SE);
   not #(0.01) i7  (c_SH_SE_v, delay_E);

// timing section:
   specify

      (CLK +=> GCLK) = (0.02, 0.02);

      $setuphold (posedge CLK, posedge E &&& c_SH_E_v, 0.02, 0.02,
                   NOTIFY_REG,,, delay_CLK, delay_E);
      $setuphold (posedge CLK, negedge E &&& c_SH_E, 0.02, 0.02, NOTIFY_REG,,,
                   delay_CLK, delay_E);

      $setuphold (posedge CLK, posedge SE &&& c_SH_SE_v, 0.02, 0.02,
                   NOTIFY_REG,,, delay_CLK, delay_SE);
      $setuphold (posedge CLK, negedge SE &&& c_SH_SE, 0.02, 0.02,
                   NOTIFY_REG,,, delay_CLK, delay_SE);

      $width (posedge CLK, 0.02, 0, NOTIFY_REG);
      $width (negedge CLK, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, clock_i, dat_i, c_SH_E, c_SH_SE, c_SH_E_v, c_SH_SE_v;

   not       i0  (clock_i, CLK);
   or        i1  (dat_i, E, SE);
   u_ld1     i2  (IQ, dat_i, clock_i, NOTIFY_REG);
   and       i3  (GCLK, CLK, IQ);

   not       i4  (c_SH_E, SE);
   not       i5  (c_SH_SE, E);
   not #(0.01) i6  (c_SH_E_v, SE);
   not #(0.01) i7  (c_SH_SE_v, E);

// timing section:
   specify

      (CLK +=> GCLK) = (0.02, 0.02);

      $setuphold (posedge CLK, posedge E &&& c_SH_E_v, 0.02, 0.02,
                   NOTIFY_REG);
      $setuphold (posedge CLK, negedge E &&& c_SH_E, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge CLK, posedge SE &&& c_SH_SE_v, 0.02, 0.02,
                   NOTIFY_REG);
      $setuphold (posedge CLK, negedge SE &&& c_SH_SE, 0.02, 0.02,
                   NOTIFY_REG);

      $width (posedge CLK, 0.02, 0, NOTIFY_REG);
      $width (negedge CLK, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : LSOGCNLJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : negedge clock gating cell, high latch Enable, scan
//                      postcontrol, obs_output
//   last modified by : XLICDD generated
//****************************************************************************

module LSOGCNLJI5VX1 (CGOBS, CLK, E, GCLK, SE);

   input     CLK, E, SE;
   output    CGOBS, GCLK;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_CLK, delay_E;

   u_ld1     i0  (IQ, delay_E, delay_CLK, NOTIFY_REG);
   buf       i1  (CGOBS, IQ);
   nor       i2  (n_1, IQ, SE);
   or        i4  (GCLK, delay_CLK, n_1);


// timing section:
   specify

      (E +=> CGOBS) = (0.02, 0.02);
      (posedge CLK => (CGOBS +: E)) = (0.02, 0.02);

      (CLK +=> GCLK) = (0.02, 0.02);
      (SE -=> GCLK) = (0.02, 0.02);

      $setuphold (negedge CLK, posedge E, 0.02, 0.02, NOTIFY_REG,,, delay_CLK,
                   delay_E);
      $setuphold (negedge CLK, negedge E, 0.02, 0.02, NOTIFY_REG,,, delay_CLK,
                   delay_E);

      $width (posedge CLK, 0.02, 0, NOTIFY_REG);
      $width (negedge CLK, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ;

   u_ld1     i0  (IQ, E, CLK, NOTIFY_REG);
   buf       i1  (CGOBS, IQ);
   nor       i2  (n_1, IQ, SE);
   or        i4  (GCLK, CLK, n_1);


// timing section:
   specify

      (E +=> CGOBS) = (0.02, 0.02);
      (posedge CLK => (CGOBS +: E)) = (0.02, 0.02);

      (CLK +=> GCLK) = (0.02, 0.02);
      (SE -=> GCLK) = (0.02, 0.02);

      $setuphold (negedge CLK, posedge E, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CLK, negedge E, 0.02, 0.02, NOTIFY_REG);

      $width (posedge CLK, 0.02, 0, NOTIFY_REG);
      $width (negedge CLK, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : LSOGCNLJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : negedge clock gating cell, high latch Enable, scan
//                      postcontrol, obs_output
//   last modified by : XLICDD generated
//****************************************************************************

module LSOGCNLJI5VX2 (CGOBS, CLK, E, GCLK, SE);

   input     CLK, E, SE;
   output    CGOBS, GCLK;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_CLK, delay_E;

   u_ld1     i0  (IQ, delay_E, delay_CLK, NOTIFY_REG);
   buf       i1  (CGOBS, IQ);
   nor       i2  (n_1, IQ, SE);
   or        i4  (GCLK, delay_CLK, n_1);


// timing section:
   specify

      (E +=> CGOBS) = (0.02, 0.02);
      (posedge CLK => (CGOBS +: E)) = (0.02, 0.02);

      (CLK +=> GCLK) = (0.02, 0.02);
      (SE -=> GCLK) = (0.02, 0.02);

      $setuphold (negedge CLK, posedge E, 0.02, 0.02, NOTIFY_REG,,, delay_CLK,
                   delay_E);
      $setuphold (negedge CLK, negedge E, 0.02, 0.02, NOTIFY_REG,,, delay_CLK,
                   delay_E);

      $width (posedge CLK, 0.02, 0, NOTIFY_REG);
      $width (negedge CLK, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ;

   u_ld1     i0  (IQ, E, CLK, NOTIFY_REG);
   buf       i1  (CGOBS, IQ);
   nor       i2  (n_1, IQ, SE);
   or        i4  (GCLK, CLK, n_1);


// timing section:
   specify

      (E +=> CGOBS) = (0.02, 0.02);
      (posedge CLK => (CGOBS +: E)) = (0.02, 0.02);

      (CLK +=> GCLK) = (0.02, 0.02);
      (SE -=> GCLK) = (0.02, 0.02);

      $setuphold (negedge CLK, posedge E, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CLK, negedge E, 0.02, 0.02, NOTIFY_REG);

      $width (posedge CLK, 0.02, 0, NOTIFY_REG);
      $width (negedge CLK, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : LSOGCPLJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : posedge clock gating cell, low latch Enable, scan
//                      postcontrol, obs_output
//   last modified by : XLICDD generated
//****************************************************************************

module LSOGCPLJI5VX1 (CGOBS, CLK, E, GCLK, SE);

   input     CLK, E, SE;
   output    CGOBS, GCLK;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_CLK, delay_E, d_clock_i;

   not       i0  (d_clock_i, delay_CLK);
   u_ld1     i1  (IQ, delay_E, d_clock_i, NOTIFY_REG);
   buf       i2  (CGOBS, IQ);
   or        i3  (n_1, IQ, SE);
   and       i4  (GCLK, delay_CLK, n_1);


// timing section:
   specify

      (negedge CLK => (CGOBS +: E)) = (0.02, 0.02);
      (E +=> CGOBS) = (0.02, 0.02);

      (CLK +=> GCLK) = (0.02, 0.02);
      (SE +=> GCLK) = (0.02, 0.02);

      $setuphold (posedge CLK, posedge E, 0.02, 0.02, NOTIFY_REG,,, delay_CLK,
                   delay_E);
      $setuphold (posedge CLK, negedge E, 0.02, 0.02, NOTIFY_REG,,, delay_CLK,
                   delay_E);

      $width (posedge CLK, 0.02, 0, NOTIFY_REG);
      $width (negedge CLK, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, clock_i;

   not       i0  (clock_i, CLK);
   u_ld1     i1  (IQ, E, clock_i, NOTIFY_REG);
   buf       i2  (CGOBS, IQ);
   or        i3  (n_1, IQ, SE);
   and       i4  (GCLK, CLK, n_1);


// timing section:
   specify

      (negedge CLK => (CGOBS +: E)) = (0.02, 0.02);
      (E +=> CGOBS) = (0.02, 0.02);

      (CLK +=> GCLK) = (0.02, 0.02);
      (SE +=> GCLK) = (0.02, 0.02);

      $setuphold (posedge CLK, posedge E, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge CLK, negedge E, 0.02, 0.02, NOTIFY_REG);

      $width (posedge CLK, 0.02, 0, NOTIFY_REG);
      $width (negedge CLK, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : LSOGCPLJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : posedge clock gating cell, low latch Enable, scan
//                      postcontrol, obs_output
//   last modified by : XLICDD generated
//****************************************************************************

module LSOGCPLJI5VX2 (CGOBS, CLK, E, GCLK, SE);

   input     CLK, E, SE;
   output    CGOBS, GCLK;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_CLK, delay_E, d_clock_i;

   not       i0  (d_clock_i, delay_CLK);
   u_ld1     i1  (IQ, delay_E, d_clock_i, NOTIFY_REG);
   buf       i2  (CGOBS, IQ);
   or        i3  (n_1, IQ, SE);
   and       i4  (GCLK, delay_CLK, n_1);


// timing section:
   specify

      (negedge CLK => (CGOBS +: E)) = (0.02, 0.02);
      (E +=> CGOBS) = (0.02, 0.02);

      (CLK +=> GCLK) = (0.02, 0.02);
      (SE +=> GCLK) = (0.02, 0.02);

      $setuphold (posedge CLK, posedge E, 0.02, 0.02, NOTIFY_REG,,, delay_CLK,
                   delay_E);
      $setuphold (posedge CLK, negedge E, 0.02, 0.02, NOTIFY_REG,,, delay_CLK,
                   delay_E);

      $width (posedge CLK, 0.02, 0, NOTIFY_REG);
      $width (negedge CLK, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, clock_i;

   not       i0  (clock_i, CLK);
   u_ld1     i1  (IQ, E, clock_i, NOTIFY_REG);
   buf       i2  (CGOBS, IQ);
   or        i3  (n_1, IQ, SE);
   and       i4  (GCLK, CLK, n_1);


// timing section:
   specify

      (negedge CLK => (CGOBS +: E)) = (0.02, 0.02);
      (E +=> CGOBS) = (0.02, 0.02);

      (CLK +=> GCLK) = (0.02, 0.02);
      (SE +=> GCLK) = (0.02, 0.02);

      $setuphold (posedge CLK, posedge E, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge CLK, negedge E, 0.02, 0.02, NOTIFY_REG);

      $width (posedge CLK, 0.02, 0, NOTIFY_REG);
      $width (negedge CLK, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : MU2ILJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 2:1 inverting Multiplexer
//   last modified by : XLICDD generated
//****************************************************************************

module MU2ILJI5VX1 (IN0, IN1, Q, S);

   input     IN0, IN1, S;
   output    Q;

// Function Q: !((!S*IN0)+(S*IN1))
   u_mx2     i5  (n_3, IN0, IN1, S);
   not       i4  (Q, n_3);

// timing section:
   specify

      (posedge S => (Q +: Q)) = (0.02, 0.02);
      (negedge S => (Q +: Q)) = (0.02, 0.02);
         if ((IN0 == 1'b0 && IN1 == 1'b1)) (S -=> Q) = (0.02, 0.02);
      (IN0 -=> Q) = (0.02, 0.02);
      (IN1 -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : MU2ILJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 2:1 inverting Multiplexer
//   last modified by : XLICDD generated
//****************************************************************************

module MU2ILJI5VX2 (IN0, IN1, Q, S);

   input     IN0, IN1, S;
   output    Q;

// Function Q: !((!S*IN0)+(S*IN1))
   u_mx2     i5  (n_3, IN0, IN1, S);
   not       i4  (Q, n_3);

// timing section:
   specify

      (posedge S => (Q +: Q)) = (0.02, 0.02);
      (negedge S => (Q +: Q)) = (0.02, 0.02);
         if ((IN0 == 1'b0 && IN1 == 1'b1)) (S -=> Q) = (0.02, 0.02);
      (IN0 -=> Q) = (0.02, 0.02);
      (IN1 -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : MU2LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 2:1 Multiplexer
//   last modified by : XLICDD generated
//****************************************************************************

module MU2LJI5VX1 (IN0, IN1, Q, S);

   input     IN0, IN1, S;
   output    Q;

// Function Q: (!S*IN0)+(S*IN1)
   u_mx2     i4  (Q, IN0, IN1, S);

// timing section:
   specify

      (posedge S => (Q +: Q)) = (0.02, 0.02);
      (negedge S => (Q +: Q)) = (0.02, 0.02);
         if ((IN0 == 1'b0 && IN1 == 1'b1)) (S +=> Q) = (0.02, 0.02);
      (IN0 +=> Q) = (0.02, 0.02);
      (IN1 +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : MU2LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 2:1 Multiplexer
//   last modified by : XLICDD generated
//****************************************************************************

module MU2LJI5VX2 (IN0, IN1, Q, S);

   input     IN0, IN1, S;
   output    Q;

// Function Q: (!S*IN0)+(S*IN1)
   u_mx2     i4  (Q, IN0, IN1, S);

// timing section:
   specify

      (posedge S => (Q +: Q)) = (0.02, 0.02);
      (negedge S => (Q +: Q)) = (0.02, 0.02);
         if ((IN0 == 1'b0 && IN1 == 1'b1)) (S +=> Q) = (0.02, 0.02);
      (IN0 +=> Q) = (0.02, 0.02);
      (IN1 +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
//*****************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : MU4ILJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 4:1 inverting Multiplexer
//   last modified by : XLICDD generated
//*****************************************************************

module MU4ILJI5VX1 (IN0, IN1, IN2, IN3, Q, S0, S1);

   input   IN0, IN1, IN2, IN3, S0, S1;
   output  Q;

// logic section  
   u_mx2   i1 (n_0, IN0, IN1, S0);
   u_mx2   i2 (n_1, IN2, IN3, S0);
   u_mx2   i3 (n_2, n_0, n_1, S1);
   not     i4 (Q, n_2);
    

// timing section:
   specify

      (IN0 -=> Q) = (0.02, 0.02);
      (IN1 -=> Q) = (0.02, 0.02);
      (posedge S0 => (Q +: Q)) = (0.02, 0.02);
      (negedge S0 => (Q +: Q)) = (0.02, 0.02);
      (IN2 -=> Q) = (0.02, 0.02);
      (posedge S1 => (Q +: Q)) = (0.02, 0.02);
      (negedge S1 => (Q +: Q)) = (0.02, 0.02);
      (IN3 -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
//*****************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : MU4ILJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 4:1 inverting Multiplexer
//   last modified by : XLICDD generated
//*****************************************************************

module MU4ILJI5VX2 (IN0, IN1, IN2, IN3, Q, S0, S1);

   input   IN0, IN1, IN2, IN3, S0, S1;
   output  Q;

// logic section  
   u_mx2   i1 (n_0, IN0, IN1, S0);
   u_mx2   i2 (n_1, IN2, IN3, S0);
   u_mx2   i3 (n_2, n_0, n_1, S1);
   not     i4 (Q, n_2);
    

// timing section:
   specify

      (IN0 -=> Q) = (0.02, 0.02);
      (IN1 -=> Q) = (0.02, 0.02);
      (posedge S0 => (Q +: Q)) = (0.02, 0.02);
      (negedge S0 => (Q +: Q)) = (0.02, 0.02);
      (IN2 -=> Q) = (0.02, 0.02);
      (posedge S1 => (Q +: Q)) = (0.02, 0.02);
      (negedge S1 => (Q +: Q)) = (0.02, 0.02);
      (IN3 -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
//*****************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : MU4LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 4:1 Multiplexer
//   last modified by : XLICDD generated
//*****************************************************************

module MU4LJI5VX1 (IN0, IN1, IN2, IN3, Q, S0, S1);

   input   IN0, IN1, IN2, IN3, S0, S1;
   output  Q;

// logic section  
   u_mx2   i1 (n_0, IN0, IN1, S0);
   u_mx2   i2 (n_1, IN2, IN3, S0);
   u_mx2   i3 (n_2, n_0, n_1, S1);
   buf     i4 (Q, n_2);
    

// timing section:
   specify

      (IN0 +=> Q) = (0.02, 0.02);
      (IN1 +=> Q) = (0.02, 0.02);
      (posedge S0 => (Q +: Q)) = (0.02, 0.02);
      (negedge S0 => (Q +: Q)) = (0.02, 0.02);
      (IN2 +=> Q) = (0.02, 0.02);
      (posedge S1 => (Q +: Q)) = (0.02, 0.02);
      (negedge S1 => (Q +: Q)) = (0.02, 0.02);
      (IN3 +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
//*****************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : MU4LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 4:1 Multiplexer
//   last modified by : XLICDD generated
//*****************************************************************

module MU4LJI5VX2 (IN0, IN1, IN2, IN3, Q, S0, S1);

   input   IN0, IN1, IN2, IN3, S0, S1;
   output  Q;

// logic section  
   u_mx2   i1 (n_0, IN0, IN1, S0);
   u_mx2   i2 (n_1, IN2, IN3, S0);
   u_mx2   i3 (n_2, n_0, n_1, S1);
   buf     i4 (Q, n_2);
    

// timing section:
   specify

      (IN0 +=> Q) = (0.02, 0.02);
      (IN1 +=> Q) = (0.02, 0.02);
      (posedge S0 => (Q +: Q)) = (0.02, 0.02);
      (negedge S0 => (Q +: Q)) = (0.02, 0.02);
      (IN2 +=> Q) = (0.02, 0.02);
      (posedge S1 => (Q +: Q)) = (0.02, 0.02);
      (negedge S1 => (Q +: Q)) = (0.02, 0.02);
      (IN3 +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : NA2I1LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 2-Input NAND with 1 inverted input
//   last modified by : XLICDD generated
//****************************************************************************

module NA2I1LJI5VX1 (AN, B, Q);

   input     AN, B;
   output    Q;

// Function Q: !(!AN*B)
   not       i0  (n_0, AN);
   nand      i1  (Q, n_0, B);

// timing section:
   specify

      (B -=> Q) = (0.02, 0.02);
      (AN +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : NA2I1LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 2-Input NAND with 1 inverted input
//   last modified by : XLICDD generated
//****************************************************************************

module NA2I1LJI5VX2 (AN, B, Q);

   input     AN, B;
   output    Q;

// Function Q: !(!AN*B)
   not       i0  (n_0, AN);
   nand      i1  (Q, n_0, B);

// timing section:
   specify

      (B -=> Q) = (0.02, 0.02);
      (AN +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : NA2LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 2-Input NAND
//   last modified by : XLICDD generated
//****************************************************************************

module NA2LJI5VX1 (A, B, Q);

   input     A, B;
   output    Q;

// Function Q: !(A*B)
   nand      i0  (Q, A, B);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : NA2LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 2-Input NAND
//   last modified by : XLICDD generated
//****************************************************************************

module NA2LJI5VX2 (A, B, Q);

   input     A, B;
   output    Q;

// Function Q: !(A*B)
   nand      i0  (Q, A, B);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : NA3I1LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 3-Input NAND with 1 inverted input
//   last modified by : XLICDD generated
//****************************************************************************

module NA3I1LJI5VX1 (AN, B, C, Q);

   input     AN, B, C;
   output    Q;

// Function Q: !(!AN*B*C)
   not       i0  (n_0, AN);
   nand      i1  (Q, n_0, B, C);

// timing section:
   specify

      (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
      (AN +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : NA3I1LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 3-Input NAND with 1 inverted input
//   last modified by : XLICDD generated
//****************************************************************************

module NA3I1LJI5VX2 (AN, B, C, Q);

   input     AN, B, C;
   output    Q;

// Function Q: !(!AN*B*C)
   not       i0  (n_0, AN);
   nand      i1  (Q, n_0, B, C);

// timing section:
   specify

      (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
      (AN +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : NA3I2LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 3-Input NAND with 2 inverted input
//   last modified by : XLICDD generated
//****************************************************************************

module NA3I2LJI5VX1 (AN, BN, C, Q);

   input     AN, BN, C;
   output    Q;

// Function Q: !(!AN*!BN*C)
   not       i0  (n_0, AN);
   not       i1  (n_1, BN);
   nand      i2  (Q, n_0, n_1, C);

// timing section:
   specify

      (C -=> Q) = (0.02, 0.02);
      (AN +=> Q) = (0.02, 0.02);
      (BN +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : NA3I2LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 3-Input NAND with 2 inverted input
//   last modified by : XLICDD generated
//****************************************************************************

module NA3I2LJI5VX2 (AN, BN, C, Q);

   input     AN, BN, C;
   output    Q;

// Function Q: !(!AN*!BN*C)
   not       i0  (n_0, AN);
   not       i1  (n_1, BN);
   nand      i2  (Q, n_0, n_1, C);

// timing section:
   specify

      (C -=> Q) = (0.02, 0.02);
      (AN +=> Q) = (0.02, 0.02);
      (BN +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : NA3LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 3-Input NAND
//   last modified by : XLICDD generated
//****************************************************************************

module NA3LJI5VX1 (A, B, C, Q);

   input     A, B, C;
   output    Q;

// Function Q: !(A*B*C)
   nand      i0  (Q, A, B, C);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : NA3LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 3-Input NAND
//   last modified by : XLICDD generated
//****************************************************************************

module NA3LJI5VX2 (A, B, C, Q);

   input     A, B, C;
   output    Q;

// Function Q: !(A*B*C)
   nand      i0  (Q, A, B, C);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : NA4I1LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 4-Input NAND with 1 inverted input
//   last modified by : XLICDD generated
//****************************************************************************

module NA4I1LJI5VX1 (AN, B, C, D, Q);

   input     AN, B, C, D;
   output    Q;

// Function Q: !(!AN*B*C*D)
   not       i0  (n_0, AN);
   nand      i1  (Q, n_0, B, C, D);

// timing section:
   specify

      (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
      (D -=> Q) = (0.02, 0.02);
      (AN +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : NA4I1LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 4-Input NAND with 1 inverted input
//   last modified by : XLICDD generated
//****************************************************************************

module NA4I1LJI5VX2 (AN, B, C, D, Q);

   input     AN, B, C, D;
   output    Q;

// Function Q: !(!AN*B*C*D)
   not       i0  (n_0, AN);
   nand      i1  (Q, n_0, B, C, D);

// timing section:
   specify

      (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
      (D -=> Q) = (0.02, 0.02);
      (AN +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : NA4I2LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 4-Input NAND with 2 inverted inputs
//   last modified by : XLICDD generated
//****************************************************************************

module NA4I2LJI5VX1 (AN, BN, C, D, Q);

   input     AN, BN, C, D;
   output    Q;

// Function Q: !(!AN*!BN*C*D)
   not       i0  (n_0, AN);
   not       i1  (n_1, BN);
   nand      i2  (Q, n_0, n_1, C, D);

// timing section:
   specify

      (C -=> Q) = (0.02, 0.02);
      (D -=> Q) = (0.02, 0.02);
      (AN +=> Q) = (0.02, 0.02);
      (BN +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : NA4I2LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 4-Input NAND with 2 inverted inputs
//   last modified by : XLICDD generated
//****************************************************************************

module NA4I2LJI5VX2 (AN, BN, C, D, Q);

   input     AN, BN, C, D;
   output    Q;

// Function Q: !(!AN*!BN*C*D)
   not       i0  (n_0, AN);
   not       i1  (n_1, BN);
   nand      i2  (Q, n_0, n_1, C, D);

// timing section:
   specify

      (C -=> Q) = (0.02, 0.02);
      (D -=> Q) = (0.02, 0.02);
      (AN +=> Q) = (0.02, 0.02);
      (BN +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : NA4I3LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 4-Input NAND with 3 inverted inputs
//   last modified by : XLICDD generated
//****************************************************************************

module NA4I3LJI5VX1 (AN, BN, CN, D, Q);

   input     AN, BN, CN, D;
   output    Q;

// Function Q: !(!AN*!BN*!CN*D)
   not       i0  (n_0, AN);
   not       i1  (n_1, BN);
   not       i2  (n_2, CN);
   nand      i3  (Q, n_0, n_1, n_2, D);

// timing section:
   specify

      (D -=> Q) = (0.02, 0.02);
      (AN +=> Q) = (0.02, 0.02);
      (BN +=> Q) = (0.02, 0.02);
      (CN +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : NA4I3LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 4-Input NAND with 3 inverted inputs
//   last modified by : XLICDD generated
//****************************************************************************

module NA4I3LJI5VX2 (AN, BN, CN, D, Q);

   input     AN, BN, CN, D;
   output    Q;

// Function Q: !(!AN*!BN*!CN*D)
   not       i0  (n_0, AN);
   not       i1  (n_1, BN);
   not       i2  (n_2, CN);
   nand      i3  (Q, n_0, n_1, n_2, D);

// timing section:
   specify

      (D -=> Q) = (0.02, 0.02);
      (AN +=> Q) = (0.02, 0.02);
      (BN +=> Q) = (0.02, 0.02);
      (CN +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : NA4LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 4-Input NAND
//   last modified by : XLICDD generated
//****************************************************************************

module NA4LJI5VX1 (A, B, C, D, Q);

   input     A, B, C, D;
   output    Q;

// Function Q: !(A*B*C*D)
   nand      i0  (Q, A, B, C, D);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
      (D -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : NA4LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 4-Input NAND
//   last modified by : XLICDD generated
//****************************************************************************

module NA4LJI5VX2 (A, B, C, D, Q);

   input     A, B, C, D;
   output    Q;

// Function Q: !(A*B*C*D)
   nand      i0  (Q, A, B, C, D);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
      (D -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : NA4SLJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 4-Input NAND 4-stocked n-channal transistor
//   last modified by : XLICDD generated
//****************************************************************************

module NA4SLJI5VX1 (A, B, C, D, Q);

   input     A, B, C, D;
   output    Q;

// Function Q: !(A*B*C*D)
   nand      i0  (Q, A, B, C, D);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
      (D -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : NA4SLJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 4-Input NAND 4-stocked n-channal transistor
//   last modified by : XLICDD generated
//****************************************************************************

module NA4SLJI5VX2 (A, B, C, D, Q);

   input     A, B, C, D;
   output    Q;

// Function Q: !(A*B*C*D)
   nand      i0  (Q, A, B, C, D);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
      (D -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : NA5I1LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 5-Input NAND with 1 inverted input
//   last modified by : XLICDD generated
//****************************************************************************

module NA5I1LJI5VX1 (AN, B, C, D, E, Q);

   input     AN, B, C, D, E;
   output    Q;

// Function Q: !(!AN*B*C*D*E)
   not       i0  (n_0, AN);
   nand      i1  (Q, n_0, B, C, D, E);

// timing section:
   specify

      (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
      (D -=> Q) = (0.02, 0.02);
      (E -=> Q) = (0.02, 0.02);
      (AN +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : NA5I1LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 5-Input NAND with 1 inverted input
//   last modified by : XLICDD generated
//****************************************************************************

module NA5I1LJI5VX2 (AN, B, C, D, E, Q);

   input     AN, B, C, D, E;
   output    Q;

// Function Q: !(!AN*B*C*D*E)
   not       i0  (n_0, AN);
   nand      i1  (Q, n_0, B, C, D, E);

// timing section:
   specify

      (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
      (D -=> Q) = (0.02, 0.02);
      (E -=> Q) = (0.02, 0.02);
      (AN +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : NA5I2LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 5-Input NAND with 2 inverted inputs
//   last modified by : XLICDD generated
//****************************************************************************

module NA5I2LJI5VX1 (AN, BN, C, D, E, Q);

   input     AN, BN, C, D, E;
   output    Q;

// Function Q: !(!AN*!BN*C*D*E)
   not       i0  (n_0, AN);
   not       i1  (n_1, BN);
   nand      i2  (Q, n_0, n_1, C, D, E);

// timing section:
   specify

      (C -=> Q) = (0.02, 0.02);
      (D -=> Q) = (0.02, 0.02);
      (E -=> Q) = (0.02, 0.02);
      (AN +=> Q) = (0.02, 0.02);
      (BN +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : NA5I2LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 5-Input NAND with 2 inverted inputs
//   last modified by : XLICDD generated
//****************************************************************************

module NA5I2LJI5VX2 (AN, BN, C, D, E, Q);

   input     AN, BN, C, D, E;
   output    Q;

// Function Q: !(!AN*!BN*C*D*E)
   not       i0  (n_0, AN);
   not       i1  (n_1, BN);
   nand      i2  (Q, n_0, n_1, C, D, E);

// timing section:
   specify

      (C -=> Q) = (0.02, 0.02);
      (D -=> Q) = (0.02, 0.02);
      (E -=> Q) = (0.02, 0.02);
      (AN +=> Q) = (0.02, 0.02);
      (BN +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : NA5I3LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 5-Input NAND with 3 inverted inputs
//   last modified by : XLICDD generated
//****************************************************************************

module NA5I3LJI5VX1 (AN, BN, CN, D, E, Q);

   input     AN, BN, CN, D, E;
   output    Q;

// Function Q: !(!AN*!BN*!CN*D*E)
   not       i0  (n_0, AN);
   not       i1  (n_1, BN);
   not       i2  (n_2, CN);
   nand      i3  (Q, n_0, n_1, n_2, D, E);

// timing section:
   specify

      (D -=> Q) = (0.02, 0.02);
      (E -=> Q) = (0.02, 0.02);
      (AN +=> Q) = (0.02, 0.02);
      (BN +=> Q) = (0.02, 0.02);
      (CN +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : NA5I3LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 5-Input NAND with 3 inverted inputs
//   last modified by : XLICDD generated
//****************************************************************************

module NA5I3LJI5VX2 (AN, BN, CN, D, E, Q);

   input     AN, BN, CN, D, E;
   output    Q;

// Function Q: !(!AN*!BN*!CN*D*E)
   not       i0  (n_0, AN);
   not       i1  (n_1, BN);
   not       i2  (n_2, CN);
   nand      i3  (Q, n_0, n_1, n_2, D, E);

// timing section:
   specify

      (D -=> Q) = (0.02, 0.02);
      (E -=> Q) = (0.02, 0.02);
      (AN +=> Q) = (0.02, 0.02);
      (BN +=> Q) = (0.02, 0.02);
      (CN +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : NA5I4LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 5-Input NAND with 4 inverted inputs
//   last modified by : XLICDD generated
//****************************************************************************

module NA5I4LJI5VX1 (AN, BN, CN, DN, E, Q);

   input     AN, BN, CN, DN, E;
   output    Q;

// Function Q: !(!AN*!BN*!CN*!DN*E)
   not       i0  (n_0, AN);
   not       i1  (n_1, BN);
   not       i2  (n_2, CN);
   not       i3  (n_3, DN);
   nand      i4  (Q, n_0, n_1, n_2, n_3, E);

// timing section:
   specify

      (E -=> Q) = (0.02, 0.02);
      (AN +=> Q) = (0.02, 0.02);
      (BN +=> Q) = (0.02, 0.02);
      (CN +=> Q) = (0.02, 0.02);
      (DN +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : NA5I4LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 5-Input NAND with 4 inverted inputs
//   last modified by : XLICDD generated
//****************************************************************************

module NA5I4LJI5VX2 (AN, BN, CN, DN, E, Q);

   input     AN, BN, CN, DN, E;
   output    Q;

// Function Q: !(!AN*!BN*!CN*!DN*E)
   not       i0  (n_0, AN);
   not       i1  (n_1, BN);
   not       i2  (n_2, CN);
   not       i3  (n_3, DN);
   nand      i4  (Q, n_0, n_1, n_2, n_3, E);

// timing section:
   specify

      (E -=> Q) = (0.02, 0.02);
      (AN +=> Q) = (0.02, 0.02);
      (BN +=> Q) = (0.02, 0.02);
      (CN +=> Q) = (0.02, 0.02);
      (DN +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : NA5LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 5-Input NAN
//   last modified by : XLICDD generated
//****************************************************************************

module NA5LJI5VX1 (A, B, C, D, E, Q);

   input     A, B, C, D, E;
   output    Q;

// Function Q: !(A*B*C*D*E)
   nand      i0  (Q, A, B, C, D, E);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
      (D -=> Q) = (0.02, 0.02);
      (E -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : NA5LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 5-Input NAN
//   last modified by : XLICDD generated
//****************************************************************************

module NA5LJI5VX2 (A, B, C, D, E, Q);

   input     A, B, C, D, E;
   output    Q;

// Function Q: !(A*B*C*D*E)
   nand      i0  (Q, A, B, C, D, E);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
      (D -=> Q) = (0.02, 0.02);
      (E -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : NA6I1LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 6-Input NAND with 1 inverted input
//   last modified by : XLICDD generated
//****************************************************************************

module NA6I1LJI5VX1 (AN, B, C, D, E, F, Q);

   input     AN, B, C, D, E, F;
   output    Q;

// Function Q: !(!AN*B*C*D*E*F)
   not       i0  (n_0, AN);
   nand      i1  (Q, n_0, B, C, D, E, F);

// timing section:
   specify

      (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
      (D -=> Q) = (0.02, 0.02);
      (E -=> Q) = (0.02, 0.02);
      (F -=> Q) = (0.02, 0.02);
      (AN +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : NA6I1LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 6-Input NAND with 1 inverted input
//   last modified by : XLICDD generated
//****************************************************************************

module NA6I1LJI5VX2 (AN, B, C, D, E, F, Q);

   input     AN, B, C, D, E, F;
   output    Q;

// Function Q: !(!AN*B*C*D*E*F)
   not       i0  (n_0, AN);
   nand      i1  (Q, n_0, B, C, D, E, F);

// timing section:
   specify

      (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
      (D -=> Q) = (0.02, 0.02);
      (E -=> Q) = (0.02, 0.02);
      (F -=> Q) = (0.02, 0.02);
      (AN +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : NA6I2LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 6-Input NAND with 2 inverted inputs
//   last modified by : XLICDD generated
//****************************************************************************

module NA6I2LJI5VX1 (AN, BN, C, D, E, F, Q);

   input     AN, BN, C, D, E, F;
   output    Q;

// Function Q: !(!AN*!BN*C*D*E*F)
   not       i0  (n_0, AN);
   not       i1  (n_1, BN);
   nand      i2  (Q, n_0, n_1, C, D, E, F);

// timing section:
   specify

      (C -=> Q) = (0.02, 0.02);
      (D -=> Q) = (0.02, 0.02);
      (E -=> Q) = (0.02, 0.02);
      (F -=> Q) = (0.02, 0.02);
      (AN +=> Q) = (0.02, 0.02);
      (BN +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : NA6I2LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 6-Input NAND with 2 inverted inputs
//   last modified by : XLICDD generated
//****************************************************************************

module NA6I2LJI5VX2 (AN, BN, C, D, E, F, Q);

   input     AN, BN, C, D, E, F;
   output    Q;

// Function Q: !(!AN*!BN*C*D*E*F)
   not       i0  (n_0, AN);
   not       i1  (n_1, BN);
   nand      i2  (Q, n_0, n_1, C, D, E, F);

// timing section:
   specify

      (C -=> Q) = (0.02, 0.02);
      (D -=> Q) = (0.02, 0.02);
      (E -=> Q) = (0.02, 0.02);
      (F -=> Q) = (0.02, 0.02);
      (AN +=> Q) = (0.02, 0.02);
      (BN +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : NA6I3LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 6-Input NAND with 3 inverted inputs
//   last modified by : XLICDD generated
//****************************************************************************

module NA6I3LJI5VX1 (AN, BN, CN, D, E, F, Q);

   input     AN, BN, CN, D, E, F;
   output    Q;

// Function Q: !(!AN*!BN*!CN*D*E*F)
   not       i0  (n_0, AN);
   not       i1  (n_1, BN);
   not       i2  (n_2, CN);
   nand      i3  (Q, n_0, n_1, n_2, D, E, F);

// timing section:
   specify

      (D -=> Q) = (0.02, 0.02);
      (E -=> Q) = (0.02, 0.02);
      (F -=> Q) = (0.02, 0.02);
      (AN +=> Q) = (0.02, 0.02);
      (BN +=> Q) = (0.02, 0.02);
      (CN +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : NA6I3LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 6-Input NAND with 3 inverted inputs
//   last modified by : XLICDD generated
//****************************************************************************

module NA6I3LJI5VX2 (AN, BN, CN, D, E, F, Q);

   input     AN, BN, CN, D, E, F;
   output    Q;

// Function Q: !(!AN*!BN*!CN*D*E*F)
   not       i0  (n_0, AN);
   not       i1  (n_1, BN);
   not       i2  (n_2, CN);
   nand      i3  (Q, n_0, n_1, n_2, D, E, F);

// timing section:
   specify

      (D -=> Q) = (0.02, 0.02);
      (E -=> Q) = (0.02, 0.02);
      (F -=> Q) = (0.02, 0.02);
      (AN +=> Q) = (0.02, 0.02);
      (BN +=> Q) = (0.02, 0.02);
      (CN +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : NA6I4LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 6-Input NAND with 4 inverted inputs
//   last modified by : XLICDD generated
//****************************************************************************

module NA6I4LJI5VX1 (AN, BN, CN, DN, E, F, Q);

   input     AN, BN, CN, DN, E, F;
   output    Q;

// Function Q: !(!AN*!BN*!CN*!DN*E*F)
   not       i0  (n_0, AN);
   not       i1  (n_1, BN);
   not       i2  (n_2, CN);
   not       i3  (n_3, DN);
   nand      i4  (Q, n_0, n_1, n_2, n_3, E, F);

// timing section:
   specify

      (E -=> Q) = (0.02, 0.02);
      (F -=> Q) = (0.02, 0.02);
      (AN +=> Q) = (0.02, 0.02);
      (BN +=> Q) = (0.02, 0.02);
      (CN +=> Q) = (0.02, 0.02);
      (DN +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : NA6I4LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 6-Input NAND with 4 inverted inputs
//   last modified by : XLICDD generated
//****************************************************************************

module NA6I4LJI5VX2 (AN, BN, CN, DN, E, F, Q);

   input     AN, BN, CN, DN, E, F;
   output    Q;

// Function Q: !(!AN*!BN*!CN*!DN*E*F)
   not       i0  (n_0, AN);
   not       i1  (n_1, BN);
   not       i2  (n_2, CN);
   not       i3  (n_3, DN);
   nand      i4  (Q, n_0, n_1, n_2, n_3, E, F);

// timing section:
   specify

      (E -=> Q) = (0.02, 0.02);
      (F -=> Q) = (0.02, 0.02);
      (AN +=> Q) = (0.02, 0.02);
      (BN +=> Q) = (0.02, 0.02);
      (CN +=> Q) = (0.02, 0.02);
      (DN +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : NA6I5LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 6-Input NAND with 5 inverted inputs
//   last modified by : XLICDD generated
//****************************************************************************

module NA6I5LJI5VX1 (AN, BN, CN, DN, EN, F, Q);

   input     AN, BN, CN, DN, EN, F;
   output    Q;

// Function Q: !(!AN*!BN*!CN*!DN*!EN*F)
   not       i0  (n_0, AN);
   not       i1  (n_1, BN);
   not       i2  (n_2, CN);
   not       i3  (n_3, DN);
   not       i4  (n_4, EN);
   nand      i5  (Q, n_0, n_1, n_2, n_3, n_4, F);

// timing section:
   specify

      (F -=> Q) = (0.02, 0.02);
      (AN +=> Q) = (0.02, 0.02);
      (BN +=> Q) = (0.02, 0.02);
      (CN +=> Q) = (0.02, 0.02);
      (DN +=> Q) = (0.02, 0.02);
      (EN +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : NA6I5LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 6-Input NAND with 5 inverted inputs
//   last modified by : XLICDD generated
//****************************************************************************

module NA6I5LJI5VX2 (AN, BN, CN, DN, EN, F, Q);

   input     AN, BN, CN, DN, EN, F;
   output    Q;

// Function Q: !(!AN*!BN*!CN*!DN*!EN*F)
   not       i0  (n_0, AN);
   not       i1  (n_1, BN);
   not       i2  (n_2, CN);
   not       i3  (n_3, DN);
   not       i4  (n_4, EN);
   nand      i5  (Q, n_0, n_1, n_2, n_3, n_4, F);

// timing section:
   specify

      (F -=> Q) = (0.02, 0.02);
      (AN +=> Q) = (0.02, 0.02);
      (BN +=> Q) = (0.02, 0.02);
      (CN +=> Q) = (0.02, 0.02);
      (DN +=> Q) = (0.02, 0.02);
      (EN +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : NA6LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 6-Input NAND
//   last modified by : XLICDD generated
//****************************************************************************

module NA6LJI5VX1 (A, B, C, D, E, F, Q);

   input     A, B, C, D, E, F;
   output    Q;

// Function Q: !(A*B*C*D*E*F)
   nand      i0  (Q, A, B, C, D, E, F);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
      (D -=> Q) = (0.02, 0.02);
      (E -=> Q) = (0.02, 0.02);
      (F -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : NA6LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 6-Input NAND
//   last modified by : XLICDD generated
//****************************************************************************

module NA6LJI5VX2 (A, B, C, D, E, F, Q);

   input     A, B, C, D, E, F;
   output    Q;

// Function Q: !(A*B*C*D*E*F)
   nand      i0  (Q, A, B, C, D, E, F);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
      (D -=> Q) = (0.02, 0.02);
      (E -=> Q) = (0.02, 0.02);
      (F -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : NO2I1LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 2-Input NOR with 1 inverted input
//   last modified by : XLICDD generated
//****************************************************************************

module NO2I1LJI5VX1 (AN, B, Q);

   input     AN, B;
   output    Q;

// Function Q: !(!AN+B)
   not       i0  (n_0, AN);
   nor       i1  (Q, n_0, B);

// timing section:
   specify

      (B -=> Q) = (0.02, 0.02);
      (AN +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : NO2I1LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 2-Input NOR with 1 inverted input
//   last modified by : XLICDD generated
//****************************************************************************

module NO2I1LJI5VX2 (AN, B, Q);

   input     AN, B;
   output    Q;

// Function Q: !(!AN+B)
   not       i0  (n_0, AN);
   nor       i1  (Q, n_0, B);

// timing section:
   specify

      (B -=> Q) = (0.02, 0.02);
      (AN +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : NO2LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 2-Input NOR
//   last modified by : XLICDD generated
//****************************************************************************

module NO2LJI5VX1 (A, B, Q);

   input     A, B;
   output    Q;

// Function Q: !(A+B)
   nor       i0  (Q, A, B);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : NO2LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 2-Input NOR
//   last modified by : XLICDD generated
//****************************************************************************

module NO2LJI5VX2 (A, B, Q);

   input     A, B;
   output    Q;

// Function Q: !(A+B)
   nor       i0  (Q, A, B);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : NO3I1LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 3-Input NOR with 1 inverted input
//   last modified by : XLICDD generated
//****************************************************************************

module NO3I1LJI5VX1 (AN, B, C, Q);

   input     AN, B, C;
   output    Q;

// Function Q: !(!AN+B+C)
   not       i0  (n_0, AN);
   nor       i1  (Q, n_0, B, C);

// timing section:
   specify

      (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
      (AN +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : NO3I1LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 3-Input NOR with 1 inverted input
//   last modified by : XLICDD generated
//****************************************************************************

module NO3I1LJI5VX2 (AN, B, C, Q);

   input     AN, B, C;
   output    Q;

// Function Q: !(!AN+B+C)
   not       i0  (n_0, AN);
   nor       i1  (Q, n_0, B, C);

// timing section:
   specify

      (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
      (AN +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : NO3I2LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 3-Input NOR with 2 inverted input
//   last modified by : XLICDD generated
//****************************************************************************

module NO3I2LJI5VX1 (AN, BN, C, Q);

   input     AN, BN, C;
   output    Q;

// Function Q: !(!AN+!BN+C)
   not       i0  (n_0, AN);
   not       i1  (n_1, BN);
   nor       i2  (Q, n_0, n_1, C);

// timing section:
   specify

      (C -=> Q) = (0.02, 0.02);
      (AN +=> Q) = (0.02, 0.02);
      (BN +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : NO3I2LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 3-Input NOR with 2 inverted input
//   last modified by : XLICDD generated
//****************************************************************************

module NO3I2LJI5VX2 (AN, BN, C, Q);

   input     AN, BN, C;
   output    Q;

// Function Q: !(!AN+!BN+C)
   not       i0  (n_0, AN);
   not       i1  (n_1, BN);
   nor       i2  (Q, n_0, n_1, C);

// timing section:
   specify

      (C -=> Q) = (0.02, 0.02);
      (AN +=> Q) = (0.02, 0.02);
      (BN +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : NO3LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 3-Input NOR
//   last modified by : XLICDD generated
//****************************************************************************

module NO3LJI5VX1 (A, B, C, Q);

   input     A, B, C;
   output    Q;

// Function Q: !(A+B+C)
   nor       i0  (Q, A, B, C);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : NO3LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 3-Input NOR
//   last modified by : XLICDD generated
//****************************************************************************

module NO3LJI5VX2 (A, B, C, Q);

   input     A, B, C;
   output    Q;

// Function Q: !(A+B+C)
   nor       i0  (Q, A, B, C);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : NO4I1LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 4-Input NOR with 1 inverted input
//   last modified by : XLICDD generated
//****************************************************************************

module NO4I1LJI5VX1 (AN, B, C, D, Q);

   input     AN, B, C, D;
   output    Q;

// Function Q: !(!AN+B+C+D)
   not       i0  (n_0, AN);
   nor       i1  (Q, n_0, B, C, D);

// timing section:
   specify

      (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
      (D -=> Q) = (0.02, 0.02);
      (AN +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : NO4I1LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 4-Input NOR with 1 inverted input
//   last modified by : XLICDD generated
//****************************************************************************

module NO4I1LJI5VX2 (AN, B, C, D, Q);

   input     AN, B, C, D;
   output    Q;

// Function Q: !(!AN+B+C+D)
   not       i0  (n_0, AN);
   nor       i1  (Q, n_0, B, C, D);

// timing section:
   specify

      (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
      (D -=> Q) = (0.02, 0.02);
      (AN +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : NO4I2LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 4-Input NOR with 2 inverted inputs
//   last modified by : XLICDD generated
//****************************************************************************

module NO4I2LJI5VX1 (AN, BN, C, D, Q);

   input     AN, BN, C, D;
   output    Q;

// Function Q: !(!AN+!BN+C+D)
   not       i0  (n_0, AN);
   not       i1  (n_1, BN);
   nor       i2  (Q, n_0, n_1, C, D);

// timing section:
   specify

      (C -=> Q) = (0.02, 0.02);
      (D -=> Q) = (0.02, 0.02);
      (AN +=> Q) = (0.02, 0.02);
      (BN +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : NO4I2LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 4-Input NOR with 2 inverted inputs
//   last modified by : XLICDD generated
//****************************************************************************

module NO4I2LJI5VX2 (AN, BN, C, D, Q);

   input     AN, BN, C, D;
   output    Q;

// Function Q: !(!AN+!BN+C+D)
   not       i0  (n_0, AN);
   not       i1  (n_1, BN);
   nor       i2  (Q, n_0, n_1, C, D);

// timing section:
   specify

      (C -=> Q) = (0.02, 0.02);
      (D -=> Q) = (0.02, 0.02);
      (AN +=> Q) = (0.02, 0.02);
      (BN +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : NO4I3LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 4-Input NOR with 3 inverted inputs
//   last modified by : XLICDD generated
//****************************************************************************

module NO4I3LJI5VX1 (AN, BN, CN, D, Q);

   input     AN, BN, CN, D;
   output    Q;

// Function Q: !(!AN+!BN+!CN+D)
   not       i0  (n_0, AN);
   not       i1  (n_1, BN);
   not       i2  (n_2, CN);
   nor       i3  (Q, n_0, n_1, n_2, D);

// timing section:
   specify

      (D -=> Q) = (0.02, 0.02);
      (AN +=> Q) = (0.02, 0.02);
      (BN +=> Q) = (0.02, 0.02);
      (CN +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : NO4I3LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 4-Input NOR with 3 inverted inputs
//   last modified by : XLICDD generated
//****************************************************************************

module NO4I3LJI5VX2 (AN, BN, CN, D, Q);

   input     AN, BN, CN, D;
   output    Q;

// Function Q: !(!AN+!BN+!CN+D)
   not       i0  (n_0, AN);
   not       i1  (n_1, BN);
   not       i2  (n_2, CN);
   nor       i3  (Q, n_0, n_1, n_2, D);

// timing section:
   specify

      (D -=> Q) = (0.02, 0.02);
      (AN +=> Q) = (0.02, 0.02);
      (BN +=> Q) = (0.02, 0.02);
      (CN +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : NO4LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 4-Input NOR
//   last modified by : XLICDD generated
//****************************************************************************

module NO4LJI5VX1 (A, B, C, D, Q);

   input     A, B, C, D;
   output    Q;

// Function Q: !(A+B+C+D)
   nor       i0  (Q, A, B, C, D);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
      (D -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : NO4LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 4-Input NOR
//   last modified by : XLICDD generated
//****************************************************************************

module NO4LJI5VX2 (A, B, C, D, Q);

   input     A, B, C, D;
   output    Q;

// Function Q: !(A+B+C+D)
   nor       i0  (Q, A, B, C, D);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
      (D -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : NO5I1LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 5-Input NOR with 1 inverted input
//   last modified by : XLICDD generated
//****************************************************************************

module NO5I1LJI5VX1 (AN, B, C, D, E, Q);

   input     AN, B, C, D, E;
   output    Q;

// Function Q: !(!AN+B+C+D+E)
   not       i0  (n_0, AN);
   nor       i1  (Q, n_0, B, C, D, E);

// timing section:
   specify

      (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
      (D -=> Q) = (0.02, 0.02);
      (E -=> Q) = (0.02, 0.02);
      (AN +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : NO5I1LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 5-Input NOR with 1 inverted input
//   last modified by : XLICDD generated
//****************************************************************************

module NO5I1LJI5VX2 (AN, B, C, D, E, Q);

   input     AN, B, C, D, E;
   output    Q;

// Function Q: !(!AN+B+C+D+E)
   not       i0  (n_0, AN);
   nor       i1  (Q, n_0, B, C, D, E);

// timing section:
   specify

      (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
      (D -=> Q) = (0.02, 0.02);
      (E -=> Q) = (0.02, 0.02);
      (AN +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : NO5I2LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 5-Input NOR with 2 inverted inputs
//   last modified by : XLICDD generated
//****************************************************************************

module NO5I2LJI5VX1 (AN, BN, C, D, E, Q);

   input     AN, BN, C, D, E;
   output    Q;

// Function Q: !(!AN+!BN+C+D+E)
   not       i0  (n_0, AN);
   not       i1  (n_1, BN);
   nor       i2  (Q, n_0, n_1, C, D, E);

// timing section:
   specify

      (C -=> Q) = (0.02, 0.02);
      (D -=> Q) = (0.02, 0.02);
      (E -=> Q) = (0.02, 0.02);
      (AN +=> Q) = (0.02, 0.02);
      (BN +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : NO5I2LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 5-Input NOR with 2 inverted inputs
//   last modified by : XLICDD generated
//****************************************************************************

module NO5I2LJI5VX2 (AN, BN, C, D, E, Q);

   input     AN, BN, C, D, E;
   output    Q;

// Function Q: !(!AN+!BN+C+D+E)
   not       i0  (n_0, AN);
   not       i1  (n_1, BN);
   nor       i2  (Q, n_0, n_1, C, D, E);

// timing section:
   specify

      (C -=> Q) = (0.02, 0.02);
      (D -=> Q) = (0.02, 0.02);
      (E -=> Q) = (0.02, 0.02);
      (AN +=> Q) = (0.02, 0.02);
      (BN +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : NO5I3LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 5-Input NAND with 3 inverted inputs
//   last modified by : XLICDD generated
//****************************************************************************

module NO5I3LJI5VX1 (AN, BN, CN, D, E, Q);

   input     AN, BN, CN, D, E;
   output    Q;

// Function Q: !(!AN+!BN+!CN+D+E)
   not       i0  (n_0, AN);
   not       i1  (n_1, BN);
   not       i2  (n_2, CN);
   nor       i3  (Q, n_0, n_1, n_2, D, E);

// timing section:
   specify

      (D -=> Q) = (0.02, 0.02);
      (E -=> Q) = (0.02, 0.02);
      (AN +=> Q) = (0.02, 0.02);
      (BN +=> Q) = (0.02, 0.02);
      (CN +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : NO5I3LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 5-Input NAND with 3 inverted inputs
//   last modified by : XLICDD generated
//****************************************************************************

module NO5I3LJI5VX2 (AN, BN, CN, D, E, Q);

   input     AN, BN, CN, D, E;
   output    Q;

// Function Q: !(!AN+!BN+!CN+D+E)
   not       i0  (n_0, AN);
   not       i1  (n_1, BN);
   not       i2  (n_2, CN);
   nor       i3  (Q, n_0, n_1, n_2, D, E);

// timing section:
   specify

      (D -=> Q) = (0.02, 0.02);
      (E -=> Q) = (0.02, 0.02);
      (AN +=> Q) = (0.02, 0.02);
      (BN +=> Q) = (0.02, 0.02);
      (CN +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : NO5I4LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 5-Input NOR with 4 inverted inputs
//   last modified by : XLICDD generated
//****************************************************************************

module NO5I4LJI5VX1 (AN, BN, CN, DN, E, Q);

   input     AN, BN, CN, DN, E;
   output    Q;

// Function Q: !(!AN+!BN+!CN+!DN+E)
   not       i0  (n_0, AN);
   not       i1  (n_1, BN);
   not       i2  (n_2, CN);
   not       i3  (n_3, DN);
   nor       i4  (Q, n_0, n_1, n_2, n_3, E);

// timing section:
   specify

      (E -=> Q) = (0.02, 0.02);
      (AN +=> Q) = (0.02, 0.02);
      (BN +=> Q) = (0.02, 0.02);
      (CN +=> Q) = (0.02, 0.02);
      (DN +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : NO5I4LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 5-Input NOR with 4 inverted inputs
//   last modified by : XLICDD generated
//****************************************************************************

module NO5I4LJI5VX2 (AN, BN, CN, DN, E, Q);

   input     AN, BN, CN, DN, E;
   output    Q;

// Function Q: !(!AN+!BN+!CN+!DN+E)
   not       i0  (n_0, AN);
   not       i1  (n_1, BN);
   not       i2  (n_2, CN);
   not       i3  (n_3, DN);
   nor       i4  (Q, n_0, n_1, n_2, n_3, E);

// timing section:
   specify

      (E -=> Q) = (0.02, 0.02);
      (AN +=> Q) = (0.02, 0.02);
      (BN +=> Q) = (0.02, 0.02);
      (CN +=> Q) = (0.02, 0.02);
      (DN +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : NO5LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 5-Input NOR
//   last modified by : XLICDD generated
//****************************************************************************

module NO5LJI5VX1 (A, B, C, D, E, Q);

   input     A, B, C, D, E;
   output    Q;

// Function Q: !(A+B+C+D+E)
   nor       i0  (Q, A, B, C, D, E);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
      (D -=> Q) = (0.02, 0.02);
      (E -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : NO5LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 5-Input NOR
//   last modified by : XLICDD generated
//****************************************************************************

module NO5LJI5VX2 (A, B, C, D, E, Q);

   input     A, B, C, D, E;
   output    Q;

// Function Q: !(A+B+C+D+E)
   nor       i0  (Q, A, B, C, D, E);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
      (D -=> Q) = (0.02, 0.02);
      (E -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : NO6I1LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 6-Input NOR with 1 inverted input
//   last modified by : XLICDD generated
//****************************************************************************

module NO6I1LJI5VX1 (AN, B, C, D, E, F, Q);

   input     AN, B, C, D, E, F;
   output    Q;

// Function Q: !(!AN+B+C+D+E+F)
   not       i0  (n_0, AN);
   nor       i1  (Q, n_0, B, C, D, E, F);

// timing section:
   specify

      (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
      (D -=> Q) = (0.02, 0.02);
      (E -=> Q) = (0.02, 0.02);
      (F -=> Q) = (0.02, 0.02);
      (AN +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : NO6I1LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 6-Input NOR with 1 inverted input
//   last modified by : XLICDD generated
//****************************************************************************

module NO6I1LJI5VX2 (AN, B, C, D, E, F, Q);

   input     AN, B, C, D, E, F;
   output    Q;

// Function Q: !(!AN+B+C+D+E+F)
   not       i0  (n_0, AN);
   nor       i1  (Q, n_0, B, C, D, E, F);

// timing section:
   specify

      (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
      (D -=> Q) = (0.02, 0.02);
      (E -=> Q) = (0.02, 0.02);
      (F -=> Q) = (0.02, 0.02);
      (AN +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : NO6I2LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 6-Input NOR with 2 inverted input
//   last modified by : XLICDD generated
//****************************************************************************

module NO6I2LJI5VX1 (AN, BN, C, D, E, F, Q);

   input     AN, BN, C, D, E, F;
   output    Q;

// Function Q: !(!AN+!BN+C+D+E+F)
   not       i0  (n_0, AN);
   not       i1  (n_1, BN);
   nor       i2  (Q, n_0, n_1, C, D, E, F);

// timing section:
   specify

      (C -=> Q) = (0.02, 0.02);
      (D -=> Q) = (0.02, 0.02);
      (E -=> Q) = (0.02, 0.02);
      (F -=> Q) = (0.02, 0.02);
      (AN +=> Q) = (0.02, 0.02);
      (BN +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : NO6I2LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 6-Input NOR with 2 inverted input
//   last modified by : XLICDD generated
//****************************************************************************

module NO6I2LJI5VX2 (AN, BN, C, D, E, F, Q);

   input     AN, BN, C, D, E, F;
   output    Q;

// Function Q: !(!AN+!BN+C+D+E+F)
   not       i0  (n_0, AN);
   not       i1  (n_1, BN);
   nor       i2  (Q, n_0, n_1, C, D, E, F);

// timing section:
   specify

      (C -=> Q) = (0.02, 0.02);
      (D -=> Q) = (0.02, 0.02);
      (E -=> Q) = (0.02, 0.02);
      (F -=> Q) = (0.02, 0.02);
      (AN +=> Q) = (0.02, 0.02);
      (BN +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : NO6I3LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 6-Input NOR with 3 inverted input
//   last modified by : XLICDD generated
//****************************************************************************

module NO6I3LJI5VX1 (AN, BN, CN, D, E, F, Q);

   input     AN, BN, CN, D, E, F;
   output    Q;

// Function Q: !(!AN+!BN+!CN+D+E+F)
   not       i0  (n_0, AN);
   not       i1  (n_1, BN);
   not       i2  (n_2, CN);
   nor       i3  (Q, n_0, n_1, n_2, D, E, F);

// timing section:
   specify

      (D -=> Q) = (0.02, 0.02);
      (E -=> Q) = (0.02, 0.02);
      (F -=> Q) = (0.02, 0.02);
      (AN +=> Q) = (0.02, 0.02);
      (BN +=> Q) = (0.02, 0.02);
      (CN +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : NO6I3LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 6-Input NOR with 3 inverted input
//   last modified by : XLICDD generated
//****************************************************************************

module NO6I3LJI5VX2 (AN, BN, CN, D, E, F, Q);

   input     AN, BN, CN, D, E, F;
   output    Q;

// Function Q: !(!AN+!BN+!CN+D+E+F)
   not       i0  (n_0, AN);
   not       i1  (n_1, BN);
   not       i2  (n_2, CN);
   nor       i3  (Q, n_0, n_1, n_2, D, E, F);

// timing section:
   specify

      (D -=> Q) = (0.02, 0.02);
      (E -=> Q) = (0.02, 0.02);
      (F -=> Q) = (0.02, 0.02);
      (AN +=> Q) = (0.02, 0.02);
      (BN +=> Q) = (0.02, 0.02);
      (CN +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : NO6I4LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 6-Input NOR with 4 inverted input
//   last modified by : XLICDD generated
//****************************************************************************

module NO6I4LJI5VX1 (AN, BN, CN, DN, E, F, Q);

   input     AN, BN, CN, DN, E, F;
   output    Q;

// Function Q: !(!AN+!BN+!CN+!DN+E+F)
   not       i0  (n_0, AN);
   not       i1  (n_1, BN);
   not       i2  (n_2, CN);
   not       i3  (n_3, DN);
   nor       i4  (Q, n_0, n_1, n_2, n_3, E, F);

// timing section:
   specify

      (E -=> Q) = (0.02, 0.02);
      (F -=> Q) = (0.02, 0.02);
      (AN +=> Q) = (0.02, 0.02);
      (BN +=> Q) = (0.02, 0.02);
      (CN +=> Q) = (0.02, 0.02);
      (DN +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : NO6I4LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 6-Input NOR with 4 inverted input
//   last modified by : XLICDD generated
//****************************************************************************

module NO6I4LJI5VX2 (AN, BN, CN, DN, E, F, Q);

   input     AN, BN, CN, DN, E, F;
   output    Q;

// Function Q: !(!AN+!BN+!CN+!DN+E+F)
   not       i0  (n_0, AN);
   not       i1  (n_1, BN);
   not       i2  (n_2, CN);
   not       i3  (n_3, DN);
   nor       i4  (Q, n_0, n_1, n_2, n_3, E, F);

// timing section:
   specify

      (E -=> Q) = (0.02, 0.02);
      (F -=> Q) = (0.02, 0.02);
      (AN +=> Q) = (0.02, 0.02);
      (BN +=> Q) = (0.02, 0.02);
      (CN +=> Q) = (0.02, 0.02);
      (DN +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : NO6I5LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 6-Input NOR with 5 inverted input
//   last modified by : XLICDD generated
//****************************************************************************

module NO6I5LJI5VX1 (AN, BN, CN, DN, EN, F, Q);

   input     AN, BN, CN, DN, EN, F;
   output    Q;

// Function Q: !(!AN+!BN+!CN+!DN+!EN+F)
   not       i0  (n_0, AN);
   not       i1  (n_1, BN);
   not       i2  (n_2, CN);
   not       i3  (n_3, DN);
   not       i4  (n_4, EN);
   nor       i5  (Q, n_0, n_1, n_2, n_3, n_4, F);

// timing section:
   specify

      (F -=> Q) = (0.02, 0.02);
      (AN +=> Q) = (0.02, 0.02);
      (BN +=> Q) = (0.02, 0.02);
      (CN +=> Q) = (0.02, 0.02);
      (DN +=> Q) = (0.02, 0.02);
      (EN +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : NO6I5LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 6-Input NOR with 5 inverted input
//   last modified by : XLICDD generated
//****************************************************************************

module NO6I5LJI5VX2 (AN, BN, CN, DN, EN, F, Q);

   input     AN, BN, CN, DN, EN, F;
   output    Q;

// Function Q: !(!AN+!BN+!CN+!DN+!EN+F)
   not       i0  (n_0, AN);
   not       i1  (n_1, BN);
   not       i2  (n_2, CN);
   not       i3  (n_3, DN);
   not       i4  (n_4, EN);
   nor       i5  (Q, n_0, n_1, n_2, n_3, n_4, F);

// timing section:
   specify

      (F -=> Q) = (0.02, 0.02);
      (AN +=> Q) = (0.02, 0.02);
      (BN +=> Q) = (0.02, 0.02);
      (CN +=> Q) = (0.02, 0.02);
      (DN +=> Q) = (0.02, 0.02);
      (EN +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : NO6LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 6-Input NOR
//   last modified by : XLICDD generated
//****************************************************************************

module NO6LJI5VX1 (A, B, C, D, E, F, Q);

   input     A, B, C, D, E, F;
   output    Q;

// Function Q: !(A+B+C+D+E+F)
   nor       i0  (Q, A, B, C, D, E, F);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
      (D -=> Q) = (0.02, 0.02);
      (E -=> Q) = (0.02, 0.02);
      (F -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : NO6LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 6-Input NOR
//   last modified by : XLICDD generated
//****************************************************************************

module NO6LJI5VX2 (A, B, C, D, E, F, Q);

   input     A, B, C, D, E, F;
   output    Q;

// Function Q: !(A+B+C+D+E+F)
   nor       i0  (Q, A, B, C, D, E, F);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
      (D -=> Q) = (0.02, 0.02);
      (E -=> Q) = (0.02, 0.02);
      (F -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : OA211LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 2-Input OR into 3-Input AND
//   last modified by : XLICDD generated
//****************************************************************************

module OA211LJI5VX1 (A, B, C, D, Q);

   input     A, B, C, D;
   output    Q;

// Function Q: ((A+B)*C*D)
   or        i0  (n_0, A, B);
   and       i1  (Q, n_0, C, D);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1)) (C +=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1)) (D +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : OA211LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 2-Input OR into 3-Input AND
//   last modified by : XLICDD generated
//****************************************************************************

module OA211LJI5VX2 (A, B, C, D, Q);

   input     A, B, C, D;
   output    Q;

// Function Q: ((A+B)*C*D)
   or        i0  (n_0, A, B);
   and       i1  (Q, n_0, C, D);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1)) (C +=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1)) (D +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : OA21LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 2-Input OR into 2-Input AND
//   last modified by : XLICDD generated
//****************************************************************************

module OA21LJI5VX1 (A, B, C, Q);

   input     A, B, C;
   output    Q;

// Function Q: ((A+B)*C)
   or        i0  (n_0, A, B);
   and       i1  (Q, n_0, C);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1)) (C +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : OA21LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 2-Input OR into 2-Input AND
//   last modified by : XLICDD generated
//****************************************************************************

module OA21LJI5VX2 (A, B, C, Q);

   input     A, B, C;
   output    Q;

// Function Q: ((A+B)*C)
   or        i0  (n_0, A, B);
   and       i1  (Q, n_0, C);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1)) (C +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : OA221LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 2x2-Input OR into 3-Input AND
//   last modified by : XLICDD generated
//****************************************************************************

module OA221LJI5VX1 (A, B, C, D, E, Q);

   input     A, B, C, D, E;
   output    Q;

// Function Q: ((A+B)*(C+D)*E)
   or        i0  (n_0, A, B);
   or        i1  (n_1, C, D);
   and       i2  (Q, n_0, n_1, E);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
         if ((B == 1'b0 && C == 1'b1 && D == 1'b0 && E == 1'b1)) (A +=> Q) =
                   (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && C == 1'b1 && D == 1'b0 && E == 1'b1)) (B +=> Q) =
                   (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0 && D == 1'b0 && E == 1'b1)) (C +=> Q) =
                   (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0 && C == 1'b0 && E == 1'b1)) (D +=> Q) =
                   (0.02, 0.02);
      (E +=> Q) = (0.02, 0.02);
         if ((B == 1'b0 && D == 1'b1) || (A == 1'b1 && B == 1'b1 && C == 1'b1
                   && D == 1'b0)) (E +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0 && C == 1'b1 && D == 1'b0)) (E +=> Q) =
                   (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : OA221LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 2x2-Input OR into 3-Input AND
//   last modified by : XLICDD generated
//****************************************************************************

module OA221LJI5VX2 (A, B, C, D, E, Q);

   input     A, B, C, D, E;
   output    Q;

// Function Q: ((A+B)*(C+D)*E)
   or        i0  (n_0, A, B);
   or        i1  (n_1, C, D);
   and       i2  (Q, n_0, n_1, E);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
         if ((B == 1'b0 && C == 1'b1 && D == 1'b0 && E == 1'b1)) (A +=> Q) =
                   (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && C == 1'b1 && D == 1'b0 && E == 1'b1)) (B +=> Q) =
                   (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0 && D == 1'b0 && E == 1'b1)) (C +=> Q) =
                   (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0 && C == 1'b0 && E == 1'b1)) (D +=> Q) =
                   (0.02, 0.02);
      (E +=> Q) = (0.02, 0.02);
         if ((B == 1'b0 && D == 1'b1) || (A == 1'b1 && B == 1'b1 && C == 1'b1
                   && D == 1'b0)) (E +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0 && C == 1'b1 && D == 1'b0)) (E +=> Q) =
                   (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : OA222LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 3x2 Input OR into 3-Input AND
//   last modified by : XLICDD generated
//****************************************************************************

module OA222LJI5VX1 (A, B, C, D, E, F, Q);

   input     A, B, C, D, E, F;
   output    Q;

// Function Q: ((A+B)*(C+D)*(E+F))
   or        i0  (n_0, A, B);
   or        i1  (n_1, C, D);
   or        i2  (n_2, E, F);
   and       i3  (Q, n_0, n_1, n_2);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
         if ((B == 1'b0 && C == 1'b1 && D == 1'b0 && E == 1'b0 && F == 1'b1))
                   (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && C == 1'b1 && D == 1'b0 && E == 1'b0 && F == 1'b1))
                   (B +=> Q) = (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0 && D == 1'b0)) (C +=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0 && C == 1'b0)) (D +=> Q) = (0.02, 0.02);
      (E +=> Q) = (0.02, 0.02);
         if ((C == 1'b1 && D == 1'b0 && F == 1'b0)) (E +=> Q) = (0.02, 0.02);
      (F +=> Q) = (0.02, 0.02);
         if ((C == 1'b1 && D == 1'b0 && E == 1'b0)) (F +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : OA222LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 3x2 Input OR into 3-Input AND
//   last modified by : XLICDD generated
//****************************************************************************

module OA222LJI5VX2 (A, B, C, D, E, F, Q);

   input     A, B, C, D, E, F;
   output    Q;

// Function Q: ((A+B)*(C+D)*(E+F))
   or        i0  (n_0, A, B);
   or        i1  (n_1, C, D);
   or        i2  (n_2, E, F);
   and       i3  (Q, n_0, n_1, n_2);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
         if ((B == 1'b0 && C == 1'b1 && D == 1'b0 && E == 1'b0 && F == 1'b1))
                   (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && C == 1'b1 && D == 1'b0 && E == 1'b0 && F == 1'b1))
                   (B +=> Q) = (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0 && D == 1'b0)) (C +=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0 && C == 1'b0)) (D +=> Q) = (0.02, 0.02);
      (E +=> Q) = (0.02, 0.02);
         if ((C == 1'b1 && D == 1'b0 && F == 1'b0)) (E +=> Q) = (0.02, 0.02);
      (F +=> Q) = (0.02, 0.02);
         if ((C == 1'b1 && D == 1'b0 && E == 1'b0)) (F +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : OA22LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 2x2-Input OR into 2-Input AND
//   last modified by : XLICDD generated
//****************************************************************************

module OA22LJI5VX1 (A, B, C, D, Q);

   input     A, B, C, D;
   output    Q;

// Function Q: ((A+B)*(C+D))
   or        i0  (n_0, A, B);
   or        i1  (n_1, C, D);
   and       i2  (Q, n_0, n_1);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
         if ((C == 1'b0 && D == 1'b1)) (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
         if ((C == 1'b0 && D == 1'b1)) (B +=> Q) = (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1)) (C +=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1)) (D +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : OA22LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 2x2-Input OR into 2-Input AND
//   last modified by : XLICDD generated
//****************************************************************************

module OA22LJI5VX2 (A, B, C, D, Q);

   input     A, B, C, D;
   output    Q;

// Function Q: ((A+B)*(C+D))
   or        i0  (n_0, A, B);
   or        i1  (n_1, C, D);
   and       i2  (Q, n_0, n_1);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
         if ((C == 1'b0 && D == 1'b1)) (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
         if ((C == 1'b0 && D == 1'b1)) (B +=> Q) = (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1)) (C +=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1)) (D +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : OA311LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 3-Input OR into 3-Input AND
//   last modified by : XLICDD generated
//****************************************************************************

module OA311LJI5VX1 (A, B, C, D, E, Q);

   input     A, B, C, D, E;
   output    Q;

// Function Q: ((A+B+C)*D*E)
   or        i0  (n_0, A, B, C);
   and       i1  (Q, n_0, D, E);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
         if ((C == 1'b0 && E == 1'b1)) (D +=> Q) = (0.02, 0.02);
      (E +=> Q) = (0.02, 0.02);
         if ((C == 1'b0 && D == 1'b1)) (E +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : OA311LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 3-Input OR into 3-Input AND
//   last modified by : XLICDD generated
//****************************************************************************

module OA311LJI5VX2 (A, B, C, D, E, Q);

   input     A, B, C, D, E;
   output    Q;

// Function Q: ((A+B+C)*D*E)
   or        i0  (n_0, A, B, C);
   and       i1  (Q, n_0, D, E);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
         if ((C == 1'b0 && E == 1'b1)) (D +=> Q) = (0.02, 0.02);
      (E +=> Q) = (0.02, 0.02);
         if ((C == 1'b0 && D == 1'b1)) (E +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : OA31LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 3-Input OR into 2-Input AND
//   last modified by : XLICDD generated
//****************************************************************************

module OA31LJI5VX1 (A, B, C, D, Q);

   input     A, B, C, D;
   output    Q;

// Function Q: ((A+B+C)*D)
   or        i0  (n_0, A, B, C);
   and       i1  (Q, n_0, D);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
         if ((B == 1'b1 && C == 1'b0)) (D +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0 && C == 1'b0)) (D +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : OA31LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 3-Input OR into 2-Input AND
//   last modified by : XLICDD generated
//****************************************************************************

module OA31LJI5VX2 (A, B, C, D, Q);

   input     A, B, C, D;
   output    Q;

// Function Q: ((A+B+C)*D)
   or        i0  (n_0, A, B, C);
   and       i1  (Q, n_0, D);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
         if ((B == 1'b1 && C == 1'b0)) (D +=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0 && C == 1'b0)) (D +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : OA321LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 3-Input OR, 2-Input OR into 3-Input AND
//   last modified by : XLICDD generated
//****************************************************************************

module OA321LJI5VX1 (A, B, C, D, E, F, Q);

   input     A, B, C, D, E, F;
   output    Q;

// Function Q: ((A+B+C)*(D+E)*F)
   or        i0  (n_0, A, B, C);
   or        i1  (n_1, D, E);
   and       i2  (Q, n_0, n_1, F);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
         if ((B == 1'b0 && C == 1'b0 && D == 1'b1 && E == 1'b0 && F == 1'b1))
                   (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && C == 1'b0 && D == 1'b1 && E == 1'b0 && F == 1'b1))
                   (B +=> Q) = (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b0 && D == 1'b1 && E == 1'b0 && F == 1'b1))
                   (C +=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
         if ((C == 1'b0 && E == 1'b0 && F == 1'b1)) (D +=> Q) = (0.02, 0.02);
      (E +=> Q) = (0.02, 0.02);
         if ((C == 1'b0 && D == 1'b0 && F == 1'b1)) (E +=> Q) = (0.02, 0.02);
      (F +=> Q) = (0.02, 0.02);
         if ((B == 1'b1 && C == 1'b0 && D == 1'b1 && E == 1'b1) || (A == 1'b0
                   && B == 1'b1 && C == 1'b0 && E == 1'b1) || (A == 1'b0 && B
                   == 1'b0 && C == 1'b1 && E == 1'b0) || (C == 1'b1 && D ==
                   1'b1 && E == 1'b0)) (F +=> Q) = (0.02, 0.02);
         if ((B == 1'b1 && C == 1'b0 && D == 1'b1 && E == 1'b0) || (B == 1'b0
                   && C == 1'b0 && D == 1'b0 && E == 1'b1)) (F +=> Q) = (0.02,
                   0.02);
         if ((A == 1'b1 && B == 1'b0 && C == 1'b0 && D == 1'b1 && E == 1'b0))
                   (F +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : OA321LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 3-Input OR, 2-Input OR into 3-Input AND
//   last modified by : XLICDD generated
//****************************************************************************

module OA321LJI5VX2 (A, B, C, D, E, F, Q);

   input     A, B, C, D, E, F;
   output    Q;

// Function Q: ((A+B+C)*(D+E)*F)
   or        i0  (n_0, A, B, C);
   or        i1  (n_1, D, E);
   and       i2  (Q, n_0, n_1, F);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
         if ((B == 1'b0 && C == 1'b0 && D == 1'b1 && E == 1'b0 && F == 1'b1))
                   (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && C == 1'b0 && D == 1'b1 && E == 1'b0 && F == 1'b1))
                   (B +=> Q) = (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b0 && D == 1'b1 && E == 1'b0 && F == 1'b1))
                   (C +=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
         if ((C == 1'b0 && E == 1'b0 && F == 1'b1)) (D +=> Q) = (0.02, 0.02);
      (E +=> Q) = (0.02, 0.02);
         if ((C == 1'b0 && D == 1'b0 && F == 1'b1)) (E +=> Q) = (0.02, 0.02);
      (F +=> Q) = (0.02, 0.02);
         if ((B == 1'b1 && C == 1'b0 && D == 1'b1 && E == 1'b1) || (A == 1'b0
                   && B == 1'b1 && C == 1'b0 && E == 1'b1) || (A == 1'b0 && B
                   == 1'b0 && C == 1'b1 && E == 1'b0) || (C == 1'b1 && D ==
                   1'b1 && E == 1'b0)) (F +=> Q) = (0.02, 0.02);
         if ((B == 1'b1 && C == 1'b0 && D == 1'b1 && E == 1'b0) || (B == 1'b0
                   && C == 1'b0 && D == 1'b0 && E == 1'b1)) (F +=> Q) = (0.02,
                   0.02);
         if ((A == 1'b1 && B == 1'b0 && C == 1'b0 && D == 1'b1 && E == 1'b0))
                   (F +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : OA32LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 3-Input OR, 2-Input OR into 2-Input AND
//   last modified by : XLICDD generated
//****************************************************************************

module OA32LJI5VX1 (A, B, C, D, E, Q);

   input     A, B, C, D, E;
   output    Q;

// Function Q: ((A+B+C)*(D+E))
   or        i0  (n_0, A, B, C);
   or        i1  (n_1, D, E);
   and       i2  (Q, n_0, n_1);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
         if ((C == 1'b0 && E == 1'b0)) (D +=> Q) = (0.02, 0.02);
      (E +=> Q) = (0.02, 0.02);
         if ((C == 1'b0 && D == 1'b0)) (E +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : OA32LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 3-Input OR, 2-Input OR into 2-Input AND
//   last modified by : XLICDD generated
//****************************************************************************

module OA32LJI5VX2 (A, B, C, D, E, Q);

   input     A, B, C, D, E;
   output    Q;

// Function Q: ((A+B+C)*(D+E))
   or        i0  (n_0, A, B, C);
   or        i1  (n_1, D, E);
   and       i2  (Q, n_0, n_1);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
         if ((C == 1'b0 && E == 1'b0)) (D +=> Q) = (0.02, 0.02);
      (E +=> Q) = (0.02, 0.02);
         if ((C == 1'b0 && D == 1'b0)) (E +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : OA33LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 2x3-Input OR into 2-Input AND
//   last modified by : XLICDD generated
//****************************************************************************

module OA33LJI5VX1 (A, B, C, D, E, F, Q);

   input     A, B, C, D, E, F;
   output    Q;

// Function Q: ((A+B+C)*(D+E+F))
   or        i0  (n_0, A, B, C);
   or        i1  (n_1, D, E, F);
   and       i2  (Q, n_0, n_1);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
         if ((B == 1'b0 && C == 1'b0 && F == 1'b0)) (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && C == 1'b0 && F == 1'b0)) (B +=> Q) = (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b0 && F == 1'b0)) (C +=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
         if ((C == 1'b0 && E == 1'b0 && F == 1'b0)) (D +=> Q) = (0.02, 0.02);
      (E +=> Q) = (0.02, 0.02);
         if ((C == 1'b0 && D == 1'b0 && F == 1'b0)) (E +=> Q) = (0.02, 0.02);
      (F +=> Q) = (0.02, 0.02);
         if ((C == 1'b0 && D == 1'b0 && E == 1'b0)) (F +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : OA33LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 2x3-Input OR into 2-Input AND
//   last modified by : XLICDD generated
//****************************************************************************

module OA33LJI5VX2 (A, B, C, D, E, F, Q);

   input     A, B, C, D, E, F;
   output    Q;

// Function Q: ((A+B+C)*(D+E+F))
   or        i0  (n_0, A, B, C);
   or        i1  (n_1, D, E, F);
   and       i2  (Q, n_0, n_1);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
         if ((B == 1'b0 && C == 1'b0 && F == 1'b0)) (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && C == 1'b0 && F == 1'b0)) (B +=> Q) = (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b0 && F == 1'b0)) (C +=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
         if ((C == 1'b0 && E == 1'b0 && F == 1'b0)) (D +=> Q) = (0.02, 0.02);
      (E +=> Q) = (0.02, 0.02);
         if ((C == 1'b0 && D == 1'b0 && F == 1'b0)) (E +=> Q) = (0.02, 0.02);
      (F +=> Q) = (0.02, 0.02);
         if ((C == 1'b0 && D == 1'b0 && E == 1'b0)) (F +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : ON211LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 2-Input OR into 3-Input NAND
//   last modified by : XLICDD generated
//****************************************************************************

module ON211LJI5VX1 (A, B, C, D, Q);

   input     A, B, C, D;
   output    Q;

// Function Q: !((A+B)*C*D)
   or        i0  (n_0, A, B);
   nand      i1  (Q, n_0, C, D);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1)) (C -=> Q) = (0.02, 0.02);
      (D -=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1)) (D -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : ON211LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 2-Input OR into 3-Input NAND
//   last modified by : XLICDD generated
//****************************************************************************

module ON211LJI5VX2 (A, B, C, D, Q);

   input     A, B, C, D;
   output    Q;

// Function Q: !((A+B)*C*D)
   or        i0  (n_0, A, B);
   nand      i1  (Q, n_0, C, D);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1)) (C -=> Q) = (0.02, 0.02);
      (D -=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1)) (D -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : ON21LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 2-Input OR into 2-Input NAND
//   last modified by : XLICDD generated
//****************************************************************************

module ON21LJI5VX1 (A, B, C, Q);

   input     A, B, C;
   output    Q;

// Function Q: !((A+B)*C)
   or        i0  (n_0, A, B);
   nand      i1  (Q, n_0, C);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1)) (C -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : ON21LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 2-Input OR into 2-Input NAND
//   last modified by : XLICDD generated
//****************************************************************************

module ON21LJI5VX2 (A, B, C, Q);

   input     A, B, C;
   output    Q;

// Function Q: !((A+B)*C)
   or        i0  (n_0, A, B);
   nand      i1  (Q, n_0, C);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1)) (C -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : ON221LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 2x2-Input OR into 3-Input NAND
//   last modified by : XLICDD generated
//****************************************************************************

module ON221LJI5VX1 (A, B, C, D, E, Q);

   input     A, B, C, D, E;
   output    Q;

// Function Q: !((A+B)*(C+D)*E)
   or        i0  (n_0, A, B);
   or        i1  (n_1, C, D);
   nand      i2  (Q, n_0, n_1, E);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
         if ((B == 1'b0 && C == 1'b1 && D == 1'b0 && E == 1'b1)) (A -=> Q) =
                   (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && C == 1'b1 && D == 1'b0 && E == 1'b1)) (B -=> Q) =
                   (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0 && D == 1'b0 && E == 1'b1)) (C -=> Q) =
                   (0.02, 0.02);
      (D -=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0 && C == 1'b0 && E == 1'b1)) (D -=> Q) =
                   (0.02, 0.02);
      (E -=> Q) = (0.02, 0.02);
         if ((B == 1'b0 && D == 1'b1) || (A == 1'b1 && B == 1'b1 && C == 1'b1
                   && D == 1'b0)) (E -=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0 && C == 1'b1 && D == 1'b0)) (E -=> Q) =
                   (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : ON221LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 2x2-Input OR into 3-Input NAND
//   last modified by : XLICDD generated
//****************************************************************************

module ON221LJI5VX2 (A, B, C, D, E, Q);

   input     A, B, C, D, E;
   output    Q;

// Function Q: !((A+B)*(C+D)*E)
   or        i0  (n_0, A, B);
   or        i1  (n_1, C, D);
   nand      i2  (Q, n_0, n_1, E);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
         if ((B == 1'b0 && C == 1'b1 && D == 1'b0 && E == 1'b1)) (A -=> Q) =
                   (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && C == 1'b1 && D == 1'b0 && E == 1'b1)) (B -=> Q) =
                   (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0 && D == 1'b0 && E == 1'b1)) (C -=> Q) =
                   (0.02, 0.02);
      (D -=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0 && C == 1'b0 && E == 1'b1)) (D -=> Q) =
                   (0.02, 0.02);
      (E -=> Q) = (0.02, 0.02);
         if ((B == 1'b0 && D == 1'b1) || (A == 1'b1 && B == 1'b1 && C == 1'b1
                   && D == 1'b0)) (E -=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0 && C == 1'b1 && D == 1'b0)) (E -=> Q) =
                   (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : ON222LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 3x2 Input OR into 3-Input NAND
//   last modified by : XLICDD generated
//****************************************************************************

module ON222LJI5VX1 (A, B, C, D, E, F, Q);

   input     A, B, C, D, E, F;
   output    Q;

// Function Q: !((A+B)*(C+D)*(E+F))
   or        i0  (n_0, A, B);
   or        i1  (n_1, C, D);
   or        i2  (n_2, E, F);
   nand      i3  (Q, n_0, n_1, n_2);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
         if ((B == 1'b0 && C == 1'b1 && D == 1'b0 && E == 1'b0 && F == 1'b1))
                   (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && C == 1'b1 && D == 1'b0 && E == 1'b0 && F == 1'b1))
                   (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0 && D == 1'b0)) (C -=> Q) = (0.02, 0.02);
      (D -=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0 && C == 1'b0)) (D -=> Q) = (0.02, 0.02);
      (E -=> Q) = (0.02, 0.02);
         if ((C == 1'b1 && D == 1'b0 && F == 1'b0)) (E -=> Q) = (0.02, 0.02);
      (F -=> Q) = (0.02, 0.02);
         if ((C == 1'b1 && D == 1'b0 && E == 1'b0)) (F -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : ON222LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 3x2 Input OR into 3-Input NAND
//   last modified by : XLICDD generated
//****************************************************************************

module ON222LJI5VX2 (A, B, C, D, E, F, Q);

   input     A, B, C, D, E, F;
   output    Q;

// Function Q: !((A+B)*(C+D)*(E+F))
   or        i0  (n_0, A, B);
   or        i1  (n_1, C, D);
   or        i2  (n_2, E, F);
   nand      i3  (Q, n_0, n_1, n_2);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
         if ((B == 1'b0 && C == 1'b1 && D == 1'b0 && E == 1'b0 && F == 1'b1))
                   (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && C == 1'b1 && D == 1'b0 && E == 1'b0 && F == 1'b1))
                   (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0 && D == 1'b0)) (C -=> Q) = (0.02, 0.02);
      (D -=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0 && C == 1'b0)) (D -=> Q) = (0.02, 0.02);
      (E -=> Q) = (0.02, 0.02);
         if ((C == 1'b1 && D == 1'b0 && F == 1'b0)) (E -=> Q) = (0.02, 0.02);
      (F -=> Q) = (0.02, 0.02);
         if ((C == 1'b1 && D == 1'b0 && E == 1'b0)) (F -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : ON22LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 2x2-Input OR into 2-Input NAND
//   last modified by : XLICDD generated
//****************************************************************************

module ON22LJI5VX1 (A, B, C, D, Q);

   input     A, B, C, D;
   output    Q;

// Function Q: !((A+B)*(C+D))
   or        i0  (n_0, A, B);
   or        i1  (n_1, C, D);
   nand      i2  (Q, n_0, n_1);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
         if ((C == 1'b0 && D == 1'b1)) (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);
         if ((C == 1'b0 && D == 1'b1)) (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1)) (C -=> Q) = (0.02, 0.02);
      (D -=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1)) (D -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : ON22LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 2x2-Input OR into 2-Input NAND
//   last modified by : XLICDD generated
//****************************************************************************

module ON22LJI5VX2 (A, B, C, D, Q);

   input     A, B, C, D;
   output    Q;

// Function Q: !((A+B)*(C+D))
   or        i0  (n_0, A, B);
   or        i1  (n_1, C, D);
   nand      i2  (Q, n_0, n_1);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
         if ((C == 1'b0 && D == 1'b1)) (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);
         if ((C == 1'b0 && D == 1'b1)) (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1)) (C -=> Q) = (0.02, 0.02);
      (D -=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b1)) (D -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : ON311LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 3-Input OR into 3-Input NAND
//   last modified by : XLICDD generated
//****************************************************************************

module ON311LJI5VX1 (A, B, C, D, E, Q);

   input     A, B, C, D, E;
   output    Q;

// Function Q: !((A+B+C)*D*E)
   or        i0  (n_0, A, B, C);
   nand      i1  (Q, n_0, D, E);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
      (D -=> Q) = (0.02, 0.02);
         if ((C == 1'b0 && E == 1'b1)) (D -=> Q) = (0.02, 0.02);
      (E -=> Q) = (0.02, 0.02);
         if ((C == 1'b0 && D == 1'b1)) (E -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : ON31LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 3-Input OR into 2-Input NAN
//   last modified by : XLICDD generated
//****************************************************************************

module ON31LJI5VX1 (A, B, C, D, Q);

   input     A, B, C, D;
   output    Q;

// Function Q: !((A+B+C)*D)
   or        i0  (n_0, A, B, C);
   nand      i1  (Q, n_0, D);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
      (D -=> Q) = (0.02, 0.02);
         if ((B == 1'b1 && C == 1'b0)) (D -=> Q) = (0.02, 0.02);
         if ((A == 1'b1 && B == 1'b0 && C == 1'b0)) (D -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : ON321LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 3-Input OR, 2-Input OR into 3-Input NAND
//   last modified by : XLICDD generated
//****************************************************************************

module ON321LJI5VX1 (A, B, C, D, E, F, Q);

   input     A, B, C, D, E, F;
   output    Q;

// Function Q: !((A+B+C)*(D+E)*F)
   or        i0  (n_0, A, B, C);
   or        i1  (n_1, D, E);
   nand      i2  (Q, n_0, n_1, F);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
         if ((B == 1'b0 && C == 1'b0 && D == 1'b1 && E == 1'b0 && F == 1'b1))
                   (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && C == 1'b0 && D == 1'b1 && E == 1'b0 && F == 1'b1))
                   (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b0 && D == 1'b1 && E == 1'b0 && F == 1'b1))
                   (C -=> Q) = (0.02, 0.02);
      (D -=> Q) = (0.02, 0.02);
         if ((C == 1'b0 && E == 1'b0 && F == 1'b1)) (D -=> Q) = (0.02, 0.02);
      (E -=> Q) = (0.02, 0.02);
         if ((C == 1'b0 && D == 1'b0 && F == 1'b1)) (E -=> Q) = (0.02, 0.02);
      (F -=> Q) = (0.02, 0.02);
         if ((B == 1'b1 && C == 1'b0 && D == 1'b1 && E == 1'b1) || (A == 1'b0
                   && B == 1'b1 && C == 1'b0 && E == 1'b1) || (A == 1'b0 && B
                   == 1'b0 && C == 1'b1 && E == 1'b0) || (C == 1'b1 && D ==
                   1'b1 && E == 1'b0)) (F -=> Q) = (0.02, 0.02);
         if ((B == 1'b1 && C == 1'b0 && D == 1'b1 && E == 1'b0) || (B == 1'b0
                   && C == 1'b0 && D == 1'b0 && E == 1'b1)) (F -=> Q) = (0.02,
                   0.02);
         if ((A == 1'b1 && B == 1'b0 && C == 1'b0 && D == 1'b1 && E == 1'b0))
                   (F -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : ON32LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 3-Input OR, 2-Input OR into 2-Input NAND
//   last modified by : XLICDD generated
//****************************************************************************

module ON32LJI5VX1 (A, B, C, D, E, Q);

   input     A, B, C, D, E;
   output    Q;

// Function Q: !((A+B+C)*(D+E))
   or        i0  (n_0, A, B, C);
   or        i1  (n_1, D, E);
   nand      i2  (Q, n_0, n_1);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
      (D -=> Q) = (0.02, 0.02);
         if ((C == 1'b0 && E == 1'b0)) (D -=> Q) = (0.02, 0.02);
      (E -=> Q) = (0.02, 0.02);
         if ((C == 1'b0 && D == 1'b0)) (E -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : ON33LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 2x3-Input OR into 2-Input NAND
//   last modified by : XLICDD generated
//****************************************************************************

module ON33LJI5VX1 (A, B, C, D, E, F, Q);

   input     A, B, C, D, E, F;
   output    Q;

// Function Q: !((A+B+C)*(D+E+F))
   or        i0  (n_0, A, B, C);
   or        i1  (n_1, D, E, F);
   nand      i2  (Q, n_0, n_1);

// timing section:
   specify

      (A -=> Q) = (0.02, 0.02);
         if ((B == 1'b0 && C == 1'b0 && F == 1'b0)) (A -=> Q) = (0.02, 0.02);
      (B -=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && C == 1'b0 && F == 1'b0)) (B -=> Q) = (0.02, 0.02);
      (C -=> Q) = (0.02, 0.02);
         if ((A == 1'b0 && B == 1'b0 && F == 1'b0)) (C -=> Q) = (0.02, 0.02);
      (D -=> Q) = (0.02, 0.02);
         if ((C == 1'b0 && E == 1'b0 && F == 1'b0)) (D -=> Q) = (0.02, 0.02);
      (E -=> Q) = (0.02, 0.02);
         if ((C == 1'b0 && D == 1'b0 && F == 1'b0)) (E -=> Q) = (0.02, 0.02);
      (F -=> Q) = (0.02, 0.02);
         if ((C == 1'b0 && D == 1'b0 && E == 1'b0)) (F -=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : OR2LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 2-Input OR
//   last modified by : XLICDD generated
//****************************************************************************

module OR2LJI5VX1 (A, B, Q);

   input     A, B;
   output    Q;

// Function Q: (A+B)
   or        i0  (Q, A, B);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : OR2LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 2-Input OR
//   last modified by : XLICDD generated
//****************************************************************************

module OR2LJI5VX2 (A, B, Q);

   input     A, B;
   output    Q;

// Function Q: (A+B)
   or        i0  (Q, A, B);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : OR3LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 3-Input OR
//   last modified by : XLICDD generated
//****************************************************************************

module OR3LJI5VX1 (A, B, C, Q);

   input     A, B, C;
   output    Q;

// Function Q: (A+B+C)
   or        i0  (Q, A, B, C);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : OR3LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 3-Input OR
//   last modified by : XLICDD generated
//****************************************************************************

module OR3LJI5VX2 (A, B, C, Q);

   input     A, B, C;
   output    Q;

// Function Q: (A+B+C)
   or        i0  (Q, A, B, C);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : OR4LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 4-Input OR
//   last modified by : XLICDD generated
//****************************************************************************

module OR4LJI5VX1 (A, B, C, D, Q);

   input     A, B, C, D;
   output    Q;

// Function Q: (A+B+C+D)
   or        i0  (Q, A, B, C, D);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : OR4LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 4-Input OR
//   last modified by : XLICDD generated
//****************************************************************************

module OR4LJI5VX2 (A, B, C, D, Q);

   input     A, B, C, D;
   output    Q;

// Function Q: (A+B+C+D)
   or        i0  (Q, A, B, C, D);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : OR5LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 5-Input OR
//   last modified by : XLICDD generated
//****************************************************************************

module OR5LJI5VX1 (A, B, C, D, E, Q);

   input     A, B, C, D, E;
   output    Q;

// Function Q: (A+B+C+D+E)
   or        i0  (Q, A, B, C, D, E);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
      (E +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : OR5LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 5-Input OR
//   last modified by : XLICDD generated
//****************************************************************************

module OR5LJI5VX2 (A, B, C, D, E, Q);

   input     A, B, C, D, E;
   output    Q;

// Function Q: (A+B+C+D+E)
   or        i0  (Q, A, B, C, D, E);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
      (E +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : OR6LJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 6-Input O
//   last modified by : XLICDD generated
//****************************************************************************

module OR6LJI5VX1 (A, B, C, D, E, F, Q);

   input     A, B, C, D, E, F;
   output    Q;

// Function Q: (A+B+C+D+E+F)
   or        i0  (Q, A, B, C, D, E, F);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
      (E +=> Q) = (0.02, 0.02);
      (F +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : OR6LJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : 6-Input O
//   last modified by : XLICDD generated
//****************************************************************************

module OR6LJI5VX2 (A, B, C, D, E, F, Q);

   input     A, B, C, D, E, F;
   output    Q;

// Function Q: (A+B+C+D+E+F)
   or        i0  (Q, A, B, C, D, E, F);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);
      (B +=> Q) = (0.02, 0.02);
      (C +=> Q) = (0.02, 0.02);
      (D +=> Q) = (0.02, 0.02);
      (E +=> Q) = (0.02, 0.02);
      (F +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : SDFFLJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : negedge D-Flip-Flop with Scan
//   last modified by : XLICDD generated
//****************************************************************************

module SDFFLJI5VX1 (CN, D, Q, QN, SD, SE);

   input     CN, D, SD, SE;
   output    Q, QN;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_CN, delay_D, delay_SD, delay_SE, d_clock_i, d_dat_i,
                   IQN, c_SH_D, c_SH_SD;

   not       i0  (d_clock_i, delay_CN);
   u_mx2     i5  (d_dat_i, delay_D, delay_SD, delay_SE);
   u1_fd5    i6  (IQ, d_dat_i, d_clock_i, 1'b1, 1'b1, NOTIFY_REG);
   not       i7  (IQN, IQ);
   buf       i8  (Q, IQ);
   buf       i9  (QN, IQN);

   not       i10 (c_SH_D, delay_SE);
   buf       i11 (c_SH_SD, delay_SE);

// timing section:
   specify

      (negedge CN => (Q -: Q)) = (0.02, 0.02);

      (negedge CN => (QN -: QN)) = (0.02, 0.02);

      $setuphold (negedge CN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_CN, delay_D);
      $setuphold (negedge CN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_CN, delay_D);

      $setuphold (negedge CN &&& c_SH_SD, posedge SD, 0.02, 0.02,
                   NOTIFY_REG,,, delay_CN, delay_SD);
      $setuphold (negedge CN &&& c_SH_SD, negedge SD, 0.02, 0.02,
                   NOTIFY_REG,,, delay_CN, delay_SD);

      $setuphold (negedge CN, posedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_CN,
                   delay_SE);
      $setuphold (negedge CN, negedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_CN,
                   delay_SE);

      $width (posedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge CN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, clock_i, dat_i, IQN, c_SH_D, c_SH_SD;

   not       i0  (clock_i, CN);
   u_mx2     i5  (dat_i, D, SD, SE);
   u1_fd5    i6  (IQ, dat_i, clock_i, 1'b1, 1'b1, NOTIFY_REG);
   not       i7  (IQN, IQ);
   buf       i8  (Q, IQ);
   buf       i9  (QN, IQN);

   not       i10 (c_SH_D, SE);
   buf       i11 (c_SH_SD, SE);

// timing section:
   specify

      (negedge CN => (Q -: Q)) = (0.02, 0.02);

      (negedge CN => (QN -: QN)) = (0.02, 0.02);

      $setuphold (negedge CN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $setuphold (negedge CN &&& c_SH_SD, posedge SD, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN &&& c_SH_SD, negedge SD, 0.02, 0.02, NOTIFY_REG);

      $setuphold (negedge CN, posedge SE, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN, negedge SE, 0.02, 0.02, NOTIFY_REG);

      $width (posedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge CN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : SDFFLJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : negedge D-Flip-Flop with Scan
//   last modified by : XLICDD generated
//****************************************************************************

module SDFFLJI5VX2 (CN, D, Q, QN, SD, SE);

   input     CN, D, SD, SE;
   output    Q, QN;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_CN, delay_D, delay_SD, delay_SE, d_clock_i, d_dat_i,
                   IQN, c_SH_D, c_SH_SD;

   not       i0  (d_clock_i, delay_CN);
   u_mx2     i5  (d_dat_i, delay_D, delay_SD, delay_SE);
   u1_fd5    i6  (IQ, d_dat_i, d_clock_i, 1'b1, 1'b1, NOTIFY_REG);
   not       i7  (IQN, IQ);
   buf       i8  (Q, IQ);
   buf       i9  (QN, IQN);

   not       i10 (c_SH_D, delay_SE);
   buf       i11 (c_SH_SD, delay_SE);

// timing section:
   specify

      (negedge CN => (Q -: Q)) = (0.02, 0.02);

      (negedge CN => (QN -: QN)) = (0.02, 0.02);

      $setuphold (negedge CN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_CN, delay_D);
      $setuphold (negedge CN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_CN, delay_D);

      $setuphold (negedge CN &&& c_SH_SD, posedge SD, 0.02, 0.02,
                   NOTIFY_REG,,, delay_CN, delay_SD);
      $setuphold (negedge CN &&& c_SH_SD, negedge SD, 0.02, 0.02,
                   NOTIFY_REG,,, delay_CN, delay_SD);

      $setuphold (negedge CN, posedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_CN,
                   delay_SE);
      $setuphold (negedge CN, negedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_CN,
                   delay_SE);

      $width (posedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge CN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, clock_i, dat_i, IQN, c_SH_D, c_SH_SD;

   not       i0  (clock_i, CN);
   u_mx2     i5  (dat_i, D, SD, SE);
   u1_fd5    i6  (IQ, dat_i, clock_i, 1'b1, 1'b1, NOTIFY_REG);
   not       i7  (IQN, IQ);
   buf       i8  (Q, IQ);
   buf       i9  (QN, IQN);

   not       i10 (c_SH_D, SE);
   buf       i11 (c_SH_SD, SE);

// timing section:
   specify

      (negedge CN => (Q -: Q)) = (0.02, 0.02);

      (negedge CN => (QN -: QN)) = (0.02, 0.02);

      $setuphold (negedge CN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $setuphold (negedge CN &&& c_SH_SD, posedge SD, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN &&& c_SH_SD, negedge SD, 0.02, 0.02, NOTIFY_REG);

      $setuphold (negedge CN, posedge SE, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN, negedge SE, 0.02, 0.02, NOTIFY_REG);

      $width (posedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge CN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : SDFFQLJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : negedge single Q D-Flip-Flop with Scan
//   last modified by : XLICDD generated
//****************************************************************************

module SDFFQLJI5VX1 (CN, D, Q, SD, SE);

   input     CN, D, SD, SE;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_CN, delay_D, delay_SD, delay_SE, d_clock_i, d_dat_i,
                   c_SH_D, c_SH_SD;

   not       i0  (d_clock_i, delay_CN);
   u_mx2     i5  (d_dat_i, delay_D, delay_SD, delay_SE);
   u1_fd5    i6  (IQ, d_dat_i, d_clock_i, 1'b1, 1'b1, NOTIFY_REG);
   buf       i7  (Q, IQ);

   not       i8  (c_SH_D, delay_SE);
   buf       i9  (c_SH_SD, delay_SE);

// timing section:
   specify

      (negedge CN => (Q -: Q)) = (0.02, 0.02);

      $setuphold (negedge CN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_CN, delay_D);
      $setuphold (negedge CN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_CN, delay_D);

      $setuphold (negedge CN &&& c_SH_SD, posedge SD, 0.02, 0.02,
                   NOTIFY_REG,,, delay_CN, delay_SD);
      $setuphold (negedge CN &&& c_SH_SD, negedge SD, 0.02, 0.02,
                   NOTIFY_REG,,, delay_CN, delay_SD);

      $setuphold (negedge CN, posedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_CN,
                   delay_SE);
      $setuphold (negedge CN, negedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_CN,
                   delay_SE);

      $width (posedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge CN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, clock_i, dat_i, c_SH_D, c_SH_SD;

   not       i0  (clock_i, CN);
   u_mx2     i5  (dat_i, D, SD, SE);
   u1_fd5    i6  (IQ, dat_i, clock_i, 1'b1, 1'b1, NOTIFY_REG);
   buf       i7  (Q, IQ);

   not       i8  (c_SH_D, SE);
   buf       i9  (c_SH_SD, SE);

// timing section:
   specify

      (negedge CN => (Q -: Q)) = (0.02, 0.02);

      $setuphold (negedge CN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $setuphold (negedge CN &&& c_SH_SD, posedge SD, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN &&& c_SH_SD, negedge SD, 0.02, 0.02, NOTIFY_REG);

      $setuphold (negedge CN, posedge SE, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN, negedge SE, 0.02, 0.02, NOTIFY_REG);

      $width (posedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge CN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : SDFFQLJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : negedge single Q D-Flip-Flop with Scan
//   last modified by : XLICDD generated
//****************************************************************************

module SDFFQLJI5VX2 (CN, D, Q, SD, SE);

   input     CN, D, SD, SE;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_CN, delay_D, delay_SD, delay_SE, d_clock_i, d_dat_i,
                   c_SH_D, c_SH_SD;

   not       i0  (d_clock_i, delay_CN);
   u_mx2     i5  (d_dat_i, delay_D, delay_SD, delay_SE);
   u1_fd5    i6  (IQ, d_dat_i, d_clock_i, 1'b1, 1'b1, NOTIFY_REG);
   buf       i7  (Q, IQ);

   not       i8  (c_SH_D, delay_SE);
   buf       i9  (c_SH_SD, delay_SE);

// timing section:
   specify

      (negedge CN => (Q -: Q)) = (0.02, 0.02);

      $setuphold (negedge CN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_CN, delay_D);
      $setuphold (negedge CN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_CN, delay_D);

      $setuphold (negedge CN &&& c_SH_SD, posedge SD, 0.02, 0.02,
                   NOTIFY_REG,,, delay_CN, delay_SD);
      $setuphold (negedge CN &&& c_SH_SD, negedge SD, 0.02, 0.02,
                   NOTIFY_REG,,, delay_CN, delay_SD);

      $setuphold (negedge CN, posedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_CN,
                   delay_SE);
      $setuphold (negedge CN, negedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_CN,
                   delay_SE);

      $width (posedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge CN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, clock_i, dat_i, c_SH_D, c_SH_SD;

   not       i0  (clock_i, CN);
   u_mx2     i5  (dat_i, D, SD, SE);
   u1_fd5    i6  (IQ, dat_i, clock_i, 1'b1, 1'b1, NOTIFY_REG);
   buf       i7  (Q, IQ);

   not       i8  (c_SH_D, SE);
   buf       i9  (c_SH_SD, SE);

// timing section:
   specify

      (negedge CN => (Q -: Q)) = (0.02, 0.02);

      $setuphold (negedge CN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $setuphold (negedge CN &&& c_SH_SD, posedge SD, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN &&& c_SH_SD, negedge SD, 0.02, 0.02, NOTIFY_REG);

      $setuphold (negedge CN, posedge SE, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN, negedge SE, 0.02, 0.02, NOTIFY_REG);

      $width (posedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge CN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : SDFFRLJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : negedge D-Flip-Flop with Reset and Scan
//   last modified by : XLICDD generated
//****************************************************************************

module SDFFRLJI5VX1 (CN, D, Q, QN, RN, SD, SE);

   input     CN, D, RN, SD, SE;
   output    Q, QN;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_CN, delay_D, delay_SD, delay_SE, delay_RN, d_clock_i,
                   d_dat_i, IQN, c_SH_d_dat_i, SE_not, c_SH_D, c_SH_SD;

   not       i1  (d_clock_i, delay_CN);
   u_mx2     i6  (d_dat_i, delay_D, delay_SD, delay_SE);
   u1_fd5    i7  (IQ, d_dat_i, d_clock_i, delay_RN, 1'b1, NOTIFY_REG);
   not       i8  (IQN, IQ);
   buf       i9  (Q, IQ);
   buf       i10 (QN, IQN);

   checkrs   i11 (c_SH_d_dat_i, delay_RN, 1'b1);
   not       i12 (SE_not, delay_SE);
   and       i13 (c_SH_D, c_SH_d_dat_i, SE_not);
   and       i14 (c_SH_SD, c_SH_d_dat_i, delay_SE);

// timing section:
   specify

      (negedge CN => (Q -: Q)) = (0.02, 0.02);
      (negedge RN => (Q +: RN)) = (0.02, 0.02);

      (negedge CN => (QN -: QN)) = (0.02, 0.02);
      (negedge RN => (QN -: RN)) = (0.02, 0.02);

      $setuphold (negedge CN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_CN, delay_D);
      $setuphold (negedge CN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_CN, delay_D);

      $setuphold (negedge CN &&& c_SH_SD, posedge SD, 0.02, 0.02,
                   NOTIFY_REG,,, delay_CN, delay_SD);
      $setuphold (negedge CN &&& c_SH_SD, negedge SD, 0.02, 0.02,
                   NOTIFY_REG,,, delay_CN, delay_SD);

      $setuphold (negedge CN, posedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_CN,
                   delay_SE);
      $setuphold (negedge CN, negedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_CN,
                   delay_SE);

      $recrem (posedge RN, negedge CN, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_CN);

      $width (posedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, clock_i, dat_i, IQN, c_SH_dat_i, SE_not, c_SH_D, c_SH_SD;

   not       i1  (clock_i, CN);
   u_mx2     i6  (dat_i, D, SD, SE);
   u1_fd5    i7  (IQ, dat_i, clock_i, RN, 1'b1, NOTIFY_REG);
   not       i8  (IQN, IQ);
   buf       i9  (Q, IQ);
   buf       i10 (QN, IQN);

   checkrs   i11 (c_SH_dat_i, RN, 1'b1);
   not       i12 (SE_not, SE);
   and       i13 (c_SH_D, c_SH_dat_i, SE_not);
   and       i14 (c_SH_SD, c_SH_dat_i, SE);

// timing section:
   specify

      (negedge CN => (Q -: Q)) = (0.02, 0.02);
      (negedge RN => (Q +: RN)) = (0.02, 0.02);

      (negedge CN => (QN -: QN)) = (0.02, 0.02);
      (negedge RN => (QN -: RN)) = (0.02, 0.02);

      $setuphold (negedge CN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $setuphold (negedge CN &&& c_SH_SD, posedge SD, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN &&& c_SH_SD, negedge SD, 0.02, 0.02, NOTIFY_REG);

      $setuphold (negedge CN, posedge SE, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN, negedge SE, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge RN, negedge CN, 0.02, 0.02, NOTIFY_REG);

      $width (posedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : SDFFRLJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : negedge D-Flip-Flop with Reset and Scan
//   last modified by : XLICDD generated
//****************************************************************************

module SDFFRLJI5VX2 (CN, D, Q, QN, RN, SD, SE);

   input     CN, D, RN, SD, SE;
   output    Q, QN;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_CN, delay_D, delay_SD, delay_SE, delay_RN, d_clock_i,
                   d_dat_i, IQN, c_SH_d_dat_i, SE_not, c_SH_D, c_SH_SD;

   not       i1  (d_clock_i, delay_CN);
   u_mx2     i6  (d_dat_i, delay_D, delay_SD, delay_SE);
   u1_fd5    i7  (IQ, d_dat_i, d_clock_i, delay_RN, 1'b1, NOTIFY_REG);
   not       i8  (IQN, IQ);
   buf       i9  (Q, IQ);
   buf       i10 (QN, IQN);

   checkrs   i11 (c_SH_d_dat_i, delay_RN, 1'b1);
   not       i12 (SE_not, delay_SE);
   and       i13 (c_SH_D, c_SH_d_dat_i, SE_not);
   and       i14 (c_SH_SD, c_SH_d_dat_i, delay_SE);

// timing section:
   specify

      (negedge CN => (Q -: Q)) = (0.02, 0.02);
      (negedge RN => (Q +: RN)) = (0.02, 0.02);

      (negedge CN => (QN -: QN)) = (0.02, 0.02);
      (negedge RN => (QN -: RN)) = (0.02, 0.02);

      $setuphold (negedge CN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_CN, delay_D);
      $setuphold (negedge CN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_CN, delay_D);

      $setuphold (negedge CN &&& c_SH_SD, posedge SD, 0.02, 0.02,
                   NOTIFY_REG,,, delay_CN, delay_SD);
      $setuphold (negedge CN &&& c_SH_SD, negedge SD, 0.02, 0.02,
                   NOTIFY_REG,,, delay_CN, delay_SD);

      $setuphold (negedge CN, posedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_CN,
                   delay_SE);
      $setuphold (negedge CN, negedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_CN,
                   delay_SE);

      $recrem (posedge RN, negedge CN, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_CN);

      $width (posedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, clock_i, dat_i, IQN, c_SH_dat_i, SE_not, c_SH_D, c_SH_SD;

   not       i1  (clock_i, CN);
   u_mx2     i6  (dat_i, D, SD, SE);
   u1_fd5    i7  (IQ, dat_i, clock_i, RN, 1'b1, NOTIFY_REG);
   not       i8  (IQN, IQ);
   buf       i9  (Q, IQ);
   buf       i10 (QN, IQN);

   checkrs   i11 (c_SH_dat_i, RN, 1'b1);
   not       i12 (SE_not, SE);
   and       i13 (c_SH_D, c_SH_dat_i, SE_not);
   and       i14 (c_SH_SD, c_SH_dat_i, SE);

// timing section:
   specify

      (negedge CN => (Q -: Q)) = (0.02, 0.02);
      (negedge RN => (Q +: RN)) = (0.02, 0.02);

      (negedge CN => (QN -: QN)) = (0.02, 0.02);
      (negedge RN => (QN -: RN)) = (0.02, 0.02);

      $setuphold (negedge CN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $setuphold (negedge CN &&& c_SH_SD, posedge SD, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN &&& c_SH_SD, negedge SD, 0.02, 0.02, NOTIFY_REG);

      $setuphold (negedge CN, posedge SE, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN, negedge SE, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge RN, negedge CN, 0.02, 0.02, NOTIFY_REG);

      $width (posedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : SDFFRQLJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : negedge single Q D-Flip-Flop with Reset and Scan
//   last modified by : XLICDD generated
//****************************************************************************

module SDFFRQLJI5VX1 (CN, D, Q, RN, SD, SE);

   input     CN, D, RN, SD, SE;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_CN, delay_D, delay_SD, delay_SE, delay_RN, d_clock_i,
                   d_dat_i, c_SH_d_dat_i, SE_not, c_SH_D, c_SH_SD;

   not       i1  (d_clock_i, delay_CN);
   u_mx2     i6  (d_dat_i, delay_D, delay_SD, delay_SE);
   u1_fd5    i7  (IQ, d_dat_i, d_clock_i, delay_RN, 1'b1, NOTIFY_REG);
   buf       i8  (Q, IQ);

   checkrs   i9  (c_SH_d_dat_i, delay_RN, 1'b1);
   not       i10 (SE_not, delay_SE);
   and       i11 (c_SH_D, c_SH_d_dat_i, SE_not);
   and       i12 (c_SH_SD, c_SH_d_dat_i, delay_SE);

// timing section:
   specify

      (negedge CN => (Q -: Q)) = (0.02, 0.02);
      (negedge RN => (Q +: RN)) = (0.02, 0.02);

      $setuphold (negedge CN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_CN, delay_D);
      $setuphold (negedge CN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_CN, delay_D);

      $setuphold (negedge CN &&& c_SH_SD, posedge SD, 0.02, 0.02,
                   NOTIFY_REG,,, delay_CN, delay_SD);
      $setuphold (negedge CN &&& c_SH_SD, negedge SD, 0.02, 0.02,
                   NOTIFY_REG,,, delay_CN, delay_SD);

      $setuphold (negedge CN, posedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_CN,
                   delay_SE);
      $setuphold (negedge CN, negedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_CN,
                   delay_SE);

      $recrem (posedge RN, negedge CN, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_CN);

      $width (posedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, clock_i, dat_i, c_SH_dat_i, SE_not, c_SH_D, c_SH_SD;

   not       i1  (clock_i, CN);
   u_mx2     i6  (dat_i, D, SD, SE);
   u1_fd5    i7  (IQ, dat_i, clock_i, RN, 1'b1, NOTIFY_REG);
   buf       i8  (Q, IQ);

   checkrs   i9  (c_SH_dat_i, RN, 1'b1);
   not       i10 (SE_not, SE);
   and       i11 (c_SH_D, c_SH_dat_i, SE_not);
   and       i12 (c_SH_SD, c_SH_dat_i, SE);

// timing section:
   specify

      (negedge CN => (Q -: Q)) = (0.02, 0.02);
      (negedge RN => (Q +: RN)) = (0.02, 0.02);

      $setuphold (negedge CN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $setuphold (negedge CN &&& c_SH_SD, posedge SD, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN &&& c_SH_SD, negedge SD, 0.02, 0.02, NOTIFY_REG);

      $setuphold (negedge CN, posedge SE, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN, negedge SE, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge RN, negedge CN, 0.02, 0.02, NOTIFY_REG);

      $width (posedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : SDFFRQLJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : negedge single Q D-Flip-Flop with Reset and Scan
//   last modified by : XLICDD generated
//****************************************************************************

module SDFFRQLJI5VX2 (CN, D, Q, RN, SD, SE);

   input     CN, D, RN, SD, SE;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_CN, delay_D, delay_SD, delay_SE, delay_RN, d_clock_i,
                   d_dat_i, c_SH_d_dat_i, SE_not, c_SH_D, c_SH_SD;

   not       i1  (d_clock_i, delay_CN);
   u_mx2     i6  (d_dat_i, delay_D, delay_SD, delay_SE);
   u1_fd5    i7  (IQ, d_dat_i, d_clock_i, delay_RN, 1'b1, NOTIFY_REG);
   buf       i8  (Q, IQ);

   checkrs   i9  (c_SH_d_dat_i, delay_RN, 1'b1);
   not       i10 (SE_not, delay_SE);
   and       i11 (c_SH_D, c_SH_d_dat_i, SE_not);
   and       i12 (c_SH_SD, c_SH_d_dat_i, delay_SE);

// timing section:
   specify

      (negedge CN => (Q -: Q)) = (0.02, 0.02);
      (negedge RN => (Q +: RN)) = (0.02, 0.02);

      $setuphold (negedge CN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_CN, delay_D);
      $setuphold (negedge CN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_CN, delay_D);

      $setuphold (negedge CN &&& c_SH_SD, posedge SD, 0.02, 0.02,
                   NOTIFY_REG,,, delay_CN, delay_SD);
      $setuphold (negedge CN &&& c_SH_SD, negedge SD, 0.02, 0.02,
                   NOTIFY_REG,,, delay_CN, delay_SD);

      $setuphold (negedge CN, posedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_CN,
                   delay_SE);
      $setuphold (negedge CN, negedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_CN,
                   delay_SE);

      $recrem (posedge RN, negedge CN, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_CN);

      $width (posedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, clock_i, dat_i, c_SH_dat_i, SE_not, c_SH_D, c_SH_SD;

   not       i1  (clock_i, CN);
   u_mx2     i6  (dat_i, D, SD, SE);
   u1_fd5    i7  (IQ, dat_i, clock_i, RN, 1'b1, NOTIFY_REG);
   buf       i8  (Q, IQ);

   checkrs   i9  (c_SH_dat_i, RN, 1'b1);
   not       i10 (SE_not, SE);
   and       i11 (c_SH_D, c_SH_dat_i, SE_not);
   and       i12 (c_SH_SD, c_SH_dat_i, SE);

// timing section:
   specify

      (negedge CN => (Q -: Q)) = (0.02, 0.02);
      (negedge RN => (Q +: RN)) = (0.02, 0.02);

      $setuphold (negedge CN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $setuphold (negedge CN &&& c_SH_SD, posedge SD, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN &&& c_SH_SD, negedge SD, 0.02, 0.02, NOTIFY_REG);

      $setuphold (negedge CN, posedge SE, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN, negedge SE, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge RN, negedge CN, 0.02, 0.02, NOTIFY_REG);

      $width (posedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : SDFFRSLJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : negedge D-Flip-Flop with Reset, Set and Scan
//   last modified by : XLICDD generated
//****************************************************************************

module SDFFRSLJI5VX1 (CN, D, Q, QN, RN, SD, SE, SN);

   input     CN, D, RN, SD, SE, SN;
   output    Q, QN;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_CN, delay_D, delay_SD, delay_SE, delay_RN, delay_SN,
                   d_clock_i, d_dat_i, IQN, qin_and_set, c_SH_d_dat_i, SE_not,
                   c_SH_D, c_SH_SD;

   not       i1  (d_clock_i, delay_CN);
   u_mx2     i7  (d_dat_i, delay_D, delay_SD, delay_SE);
   u1_fd5    i8  (IQ, d_dat_i, d_clock_i, delay_RN, delay_SN, NOTIFY_REG);
   not       i9  (IQN, IQ);
   and       i10 (qin_and_set, IQN, delay_SN);
   buf       i11 (Q, IQ);
   buf       i12 (QN, qin_and_set);

   checkrs   i13 (c_SH_d_dat_i, delay_RN, delay_SN);
   not       i14 (SE_not, delay_SE);
   and       i15 (c_SH_D, c_SH_d_dat_i, SE_not);
   and       i16 (c_SH_SD, c_SH_d_dat_i, delay_SE);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);
      (negedge CN => (Q -: Q)) = (0.02, 0.02);

      (SN +=> QN) = (0.02, 0.02);
      (negedge RN => (QN -: RN)) = (0.02, 0.02);
      (negedge CN => (QN -: QN)) = (0.02, 0.02);

      $setuphold (negedge CN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_CN, delay_D);
      $setuphold (negedge CN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_CN, delay_D);

      $setuphold (negedge CN &&& c_SH_SD, posedge SD, 0.02, 0.02,
                   NOTIFY_REG,,, delay_CN, delay_SD);
      $setuphold (negedge CN &&& c_SH_SD, negedge SD, 0.02, 0.02,
                   NOTIFY_REG,,, delay_CN, delay_SD);

      $setuphold (negedge CN, posedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_CN,
                   delay_SE);
      $setuphold (negedge CN, negedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_CN,
                   delay_SE);

      $setuphold (posedge RN, posedge SN, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_SN);

      $recrem (posedge RN, negedge CN, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_CN);

      $recrem (posedge SN, negedge CN, 0.02, 0.02, NOTIFY_REG,,, delay_SN,
                   delay_CN);

      $width (posedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, clock_i, dat_i, IQN, qin_and_set, c_SH_dat_i, SE_not, c_SH_D,
                   c_SH_SD;

   not       i1  (clock_i, CN);
   u_mx2     i7  (dat_i, D, SD, SE);
   u1_fd5    i8  (IQ, dat_i, clock_i, RN, SN, NOTIFY_REG);
   not       i9  (IQN, IQ);
   and       i10 (qin_and_set, IQN, SN);
   buf       i11 (Q, IQ);
   buf       i12 (QN, qin_and_set);

   checkrs   i13 (c_SH_dat_i, RN, SN);
   not       i14 (SE_not, SE);
   and       i15 (c_SH_D, c_SH_dat_i, SE_not);
   and       i16 (c_SH_SD, c_SH_dat_i, SE);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);
      (negedge CN => (Q -: Q)) = (0.02, 0.02);

      (SN +=> QN) = (0.02, 0.02);
      (negedge RN => (QN -: RN)) = (0.02, 0.02);
      (negedge CN => (QN -: QN)) = (0.02, 0.02);

      $setuphold (negedge CN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $setuphold (negedge CN &&& c_SH_SD, posedge SD, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN &&& c_SH_SD, negedge SD, 0.02, 0.02, NOTIFY_REG);

      $setuphold (negedge CN, posedge SE, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN, negedge SE, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge RN, posedge SN, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge RN, negedge CN, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge SN, negedge CN, 0.02, 0.02, NOTIFY_REG);

      $width (posedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : SDFFRSLJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : negedge D-Flip-Flop with Reset, Set and Scan
//   last modified by : XLICDD generated
//****************************************************************************

module SDFFRSLJI5VX2 (CN, D, Q, QN, RN, SD, SE, SN);

   input     CN, D, RN, SD, SE, SN;
   output    Q, QN;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_CN, delay_D, delay_SD, delay_SE, delay_RN, delay_SN,
                   d_clock_i, d_dat_i, IQN, qin_and_set, c_SH_d_dat_i, SE_not,
                   c_SH_D, c_SH_SD;

   not       i1  (d_clock_i, delay_CN);
   u_mx2     i7  (d_dat_i, delay_D, delay_SD, delay_SE);
   u1_fd5    i8  (IQ, d_dat_i, d_clock_i, delay_RN, delay_SN, NOTIFY_REG);
   not       i9  (IQN, IQ);
   and       i10 (qin_and_set, IQN, delay_SN);
   buf       i11 (Q, IQ);
   buf       i12 (QN, qin_and_set);

   checkrs   i13 (c_SH_d_dat_i, delay_RN, delay_SN);
   not       i14 (SE_not, delay_SE);
   and       i15 (c_SH_D, c_SH_d_dat_i, SE_not);
   and       i16 (c_SH_SD, c_SH_d_dat_i, delay_SE);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);
      (negedge CN => (Q -: Q)) = (0.02, 0.02);

      (SN +=> QN) = (0.02, 0.02);
      (negedge RN => (QN -: RN)) = (0.02, 0.02);
      (negedge CN => (QN -: QN)) = (0.02, 0.02);

      $setuphold (negedge CN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_CN, delay_D);
      $setuphold (negedge CN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_CN, delay_D);

      $setuphold (negedge CN &&& c_SH_SD, posedge SD, 0.02, 0.02,
                   NOTIFY_REG,,, delay_CN, delay_SD);
      $setuphold (negedge CN &&& c_SH_SD, negedge SD, 0.02, 0.02,
                   NOTIFY_REG,,, delay_CN, delay_SD);

      $setuphold (negedge CN, posedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_CN,
                   delay_SE);
      $setuphold (negedge CN, negedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_CN,
                   delay_SE);

      $setuphold (posedge RN, posedge SN, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_SN);

      $recrem (posedge RN, negedge CN, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_CN);

      $recrem (posedge SN, negedge CN, 0.02, 0.02, NOTIFY_REG,,, delay_SN,
                   delay_CN);

      $width (posedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, clock_i, dat_i, IQN, qin_and_set, c_SH_dat_i, SE_not, c_SH_D,
                   c_SH_SD;

   not       i1  (clock_i, CN);
   u_mx2     i7  (dat_i, D, SD, SE);
   u1_fd5    i8  (IQ, dat_i, clock_i, RN, SN, NOTIFY_REG);
   not       i9  (IQN, IQ);
   and       i10 (qin_and_set, IQN, SN);
   buf       i11 (Q, IQ);
   buf       i12 (QN, qin_and_set);

   checkrs   i13 (c_SH_dat_i, RN, SN);
   not       i14 (SE_not, SE);
   and       i15 (c_SH_D, c_SH_dat_i, SE_not);
   and       i16 (c_SH_SD, c_SH_dat_i, SE);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);
      (negedge CN => (Q -: Q)) = (0.02, 0.02);

      (SN +=> QN) = (0.02, 0.02);
      (negedge RN => (QN -: RN)) = (0.02, 0.02);
      (negedge CN => (QN -: QN)) = (0.02, 0.02);

      $setuphold (negedge CN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $setuphold (negedge CN &&& c_SH_SD, posedge SD, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN &&& c_SH_SD, negedge SD, 0.02, 0.02, NOTIFY_REG);

      $setuphold (negedge CN, posedge SE, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN, negedge SE, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge RN, posedge SN, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge RN, negedge CN, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge SN, negedge CN, 0.02, 0.02, NOTIFY_REG);

      $width (posedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : SDFFRSQLJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : negedge single Q D-Flip-Flop with Reset, Set and
//                      Scan
//   last modified by : XLICDD generated
//****************************************************************************

module SDFFRSQLJI5VX1 (CN, D, Q, RN, SD, SE, SN);

   input     CN, D, RN, SD, SE, SN;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_CN, delay_D, delay_SD, delay_SE, delay_RN, delay_SN,
                   d_clock_i, d_dat_i, c_SH_d_dat_i, SE_not, c_SH_D, c_SH_SD;

   not       i1  (d_clock_i, delay_CN);
   u_mx2     i7  (d_dat_i, delay_D, delay_SD, delay_SE);
   u1_fd5    i8  (IQ, d_dat_i, d_clock_i, delay_RN, delay_SN, NOTIFY_REG);
   buf       i9  (Q, IQ);

   checkrs   i10 (c_SH_d_dat_i, delay_RN, delay_SN);
   not       i11 (SE_not, delay_SE);
   and       i12 (c_SH_D, c_SH_d_dat_i, SE_not);
   and       i13 (c_SH_SD, c_SH_d_dat_i, delay_SE);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);
      (negedge CN => (Q -: Q)) = (0.02, 0.02);

      $setuphold (negedge CN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_CN, delay_D);
      $setuphold (negedge CN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_CN, delay_D);

      $setuphold (negedge CN &&& c_SH_SD, posedge SD, 0.02, 0.02,
                   NOTIFY_REG,,, delay_CN, delay_SD);
      $setuphold (negedge CN &&& c_SH_SD, negedge SD, 0.02, 0.02,
                   NOTIFY_REG,,, delay_CN, delay_SD);

      $setuphold (negedge CN, posedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_CN,
                   delay_SE);
      $setuphold (negedge CN, negedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_CN,
                   delay_SE);

      $setuphold (posedge RN, posedge SN, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_SN);

      $recrem (posedge RN, negedge CN, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_CN);

      $recrem (posedge SN, negedge CN, 0.02, 0.02, NOTIFY_REG,,, delay_SN,
                   delay_CN);

      $width (posedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, clock_i, dat_i, c_SH_dat_i, SE_not, c_SH_D, c_SH_SD;

   not       i1  (clock_i, CN);
   u_mx2     i7  (dat_i, D, SD, SE);
   u1_fd5    i8  (IQ, dat_i, clock_i, RN, SN, NOTIFY_REG);
   buf       i9  (Q, IQ);

   checkrs   i10 (c_SH_dat_i, RN, SN);
   not       i11 (SE_not, SE);
   and       i12 (c_SH_D, c_SH_dat_i, SE_not);
   and       i13 (c_SH_SD, c_SH_dat_i, SE);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);
      (negedge CN => (Q -: Q)) = (0.02, 0.02);

      $setuphold (negedge CN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $setuphold (negedge CN &&& c_SH_SD, posedge SD, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN &&& c_SH_SD, negedge SD, 0.02, 0.02, NOTIFY_REG);

      $setuphold (negedge CN, posedge SE, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN, negedge SE, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge RN, posedge SN, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge RN, negedge CN, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge SN, negedge CN, 0.02, 0.02, NOTIFY_REG);

      $width (posedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : SDFFRSQLJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : negedge single Q D-Flip-Flop with Reset, Set and
//                      Scan
//   last modified by : XLICDD generated
//****************************************************************************

module SDFFRSQLJI5VX2 (CN, D, Q, RN, SD, SE, SN);

   input     CN, D, RN, SD, SE, SN;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_CN, delay_D, delay_SD, delay_SE, delay_RN, delay_SN,
                   d_clock_i, d_dat_i, c_SH_d_dat_i, SE_not, c_SH_D, c_SH_SD;

   not       i1  (d_clock_i, delay_CN);
   u_mx2     i7  (d_dat_i, delay_D, delay_SD, delay_SE);
   u1_fd5    i8  (IQ, d_dat_i, d_clock_i, delay_RN, delay_SN, NOTIFY_REG);
   buf       i9  (Q, IQ);

   checkrs   i10 (c_SH_d_dat_i, delay_RN, delay_SN);
   not       i11 (SE_not, delay_SE);
   and       i12 (c_SH_D, c_SH_d_dat_i, SE_not);
   and       i13 (c_SH_SD, c_SH_d_dat_i, delay_SE);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);
      (negedge CN => (Q -: Q)) = (0.02, 0.02);

      $setuphold (negedge CN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_CN, delay_D);
      $setuphold (negedge CN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_CN, delay_D);

      $setuphold (negedge CN &&& c_SH_SD, posedge SD, 0.02, 0.02,
                   NOTIFY_REG,,, delay_CN, delay_SD);
      $setuphold (negedge CN &&& c_SH_SD, negedge SD, 0.02, 0.02,
                   NOTIFY_REG,,, delay_CN, delay_SD);

      $setuphold (negedge CN, posedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_CN,
                   delay_SE);
      $setuphold (negedge CN, negedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_CN,
                   delay_SE);

      $setuphold (posedge RN, posedge SN, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_SN);

      $recrem (posedge RN, negedge CN, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_CN);

      $recrem (posedge SN, negedge CN, 0.02, 0.02, NOTIFY_REG,,, delay_SN,
                   delay_CN);

      $width (posedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, clock_i, dat_i, c_SH_dat_i, SE_not, c_SH_D, c_SH_SD;

   not       i1  (clock_i, CN);
   u_mx2     i7  (dat_i, D, SD, SE);
   u1_fd5    i8  (IQ, dat_i, clock_i, RN, SN, NOTIFY_REG);
   buf       i9  (Q, IQ);

   checkrs   i10 (c_SH_dat_i, RN, SN);
   not       i11 (SE_not, SE);
   and       i12 (c_SH_D, c_SH_dat_i, SE_not);
   and       i13 (c_SH_SD, c_SH_dat_i, SE);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);
      (negedge CN => (Q -: Q)) = (0.02, 0.02);

      $setuphold (negedge CN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $setuphold (negedge CN &&& c_SH_SD, posedge SD, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN &&& c_SH_SD, negedge SD, 0.02, 0.02, NOTIFY_REG);

      $setuphold (negedge CN, posedge SE, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN, negedge SE, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge RN, posedge SN, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge RN, negedge CN, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge SN, negedge CN, 0.02, 0.02, NOTIFY_REG);

      $width (posedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : SDFFSLJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : negedge D-Flip-Flop with Set and Scan
//   last modified by : XLICDD generated
//****************************************************************************

module SDFFSLJI5VX1 (CN, D, Q, QN, SD, SE, SN);

   input     CN, D, SD, SE, SN;
   output    Q, QN;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_CN, delay_D, delay_SD, delay_SE, delay_SN, d_clock_i,
                   d_dat_i, IQN, c_SH_d_dat_i, SE_not, c_SH_D, c_SH_SD;

   not       i0  (d_clock_i, delay_CN);
   u_mx2     i6  (d_dat_i, delay_D, delay_SD, delay_SE);
   u1_fd5    i7  (IQ, d_dat_i, d_clock_i, 1'b1, delay_SN, NOTIFY_REG);
   not       i8  (IQN, IQ);
   buf       i9  (Q, IQ);
   buf       i10 (QN, IQN);

   checkrs   i11 (c_SH_d_dat_i, 1'b1, delay_SN);
   not       i12 (SE_not, delay_SE);
   and       i13 (c_SH_D, c_SH_d_dat_i, SE_not);
   and       i14 (c_SH_SD, c_SH_d_dat_i, delay_SE);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (negedge CN => (Q -: Q)) = (0.02, 0.02);

      (negedge SN => (QN +: SN)) = (0.02, 0.02);
      (negedge CN => (QN -: QN)) = (0.02, 0.02);

      $setuphold (negedge CN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_CN, delay_D);
      $setuphold (negedge CN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_CN, delay_D);

      $setuphold (negedge CN &&& c_SH_SD, posedge SD, 0.02, 0.02,
                   NOTIFY_REG,,, delay_CN, delay_SD);
      $setuphold (negedge CN &&& c_SH_SD, negedge SD, 0.02, 0.02,
                   NOTIFY_REG,,, delay_CN, delay_SD);

      $setuphold (negedge CN, posedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_CN,
                   delay_SE);
      $setuphold (negedge CN, negedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_CN,
                   delay_SE);

      $recrem (posedge SN, negedge CN, 0.02, 0.02, NOTIFY_REG,,, delay_SN,
                   delay_CN);

      $width (posedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, clock_i, dat_i, IQN, c_SH_dat_i, SE_not, c_SH_D, c_SH_SD;

   not       i0  (clock_i, CN);
   u_mx2     i6  (dat_i, D, SD, SE);
   u1_fd5    i7  (IQ, dat_i, clock_i, 1'b1, SN, NOTIFY_REG);
   not       i8  (IQN, IQ);
   buf       i9  (Q, IQ);
   buf       i10 (QN, IQN);

   checkrs   i11 (c_SH_dat_i, 1'b1, SN);
   not       i12 (SE_not, SE);
   and       i13 (c_SH_D, c_SH_dat_i, SE_not);
   and       i14 (c_SH_SD, c_SH_dat_i, SE);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (negedge CN => (Q -: Q)) = (0.02, 0.02);

      (negedge SN => (QN +: SN)) = (0.02, 0.02);
      (negedge CN => (QN -: QN)) = (0.02, 0.02);

      $setuphold (negedge CN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $setuphold (negedge CN &&& c_SH_SD, posedge SD, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN &&& c_SH_SD, negedge SD, 0.02, 0.02, NOTIFY_REG);

      $setuphold (negedge CN, posedge SE, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN, negedge SE, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge SN, negedge CN, 0.02, 0.02, NOTIFY_REG);

      $width (posedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : SDFFSLJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : negedge D-Flip-Flop with Set and Scan
//   last modified by : XLICDD generated
//****************************************************************************

module SDFFSLJI5VX2 (CN, D, Q, QN, SD, SE, SN);

   input     CN, D, SD, SE, SN;
   output    Q, QN;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_CN, delay_D, delay_SD, delay_SE, delay_SN, d_clock_i,
                   d_dat_i, IQN, c_SH_d_dat_i, SE_not, c_SH_D, c_SH_SD;

   not       i0  (d_clock_i, delay_CN);
   u_mx2     i6  (d_dat_i, delay_D, delay_SD, delay_SE);
   u1_fd5    i7  (IQ, d_dat_i, d_clock_i, 1'b1, delay_SN, NOTIFY_REG);
   not       i8  (IQN, IQ);
   buf       i9  (Q, IQ);
   buf       i10 (QN, IQN);

   checkrs   i11 (c_SH_d_dat_i, 1'b1, delay_SN);
   not       i12 (SE_not, delay_SE);
   and       i13 (c_SH_D, c_SH_d_dat_i, SE_not);
   and       i14 (c_SH_SD, c_SH_d_dat_i, delay_SE);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (negedge CN => (Q -: Q)) = (0.02, 0.02);

      (negedge SN => (QN +: SN)) = (0.02, 0.02);
      (negedge CN => (QN -: QN)) = (0.02, 0.02);

      $setuphold (negedge CN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_CN, delay_D);
      $setuphold (negedge CN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_CN, delay_D);

      $setuphold (negedge CN &&& c_SH_SD, posedge SD, 0.02, 0.02,
                   NOTIFY_REG,,, delay_CN, delay_SD);
      $setuphold (negedge CN &&& c_SH_SD, negedge SD, 0.02, 0.02,
                   NOTIFY_REG,,, delay_CN, delay_SD);

      $setuphold (negedge CN, posedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_CN,
                   delay_SE);
      $setuphold (negedge CN, negedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_CN,
                   delay_SE);

      $recrem (posedge SN, negedge CN, 0.02, 0.02, NOTIFY_REG,,, delay_SN,
                   delay_CN);

      $width (posedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, clock_i, dat_i, IQN, c_SH_dat_i, SE_not, c_SH_D, c_SH_SD;

   not       i0  (clock_i, CN);
   u_mx2     i6  (dat_i, D, SD, SE);
   u1_fd5    i7  (IQ, dat_i, clock_i, 1'b1, SN, NOTIFY_REG);
   not       i8  (IQN, IQ);
   buf       i9  (Q, IQ);
   buf       i10 (QN, IQN);

   checkrs   i11 (c_SH_dat_i, 1'b1, SN);
   not       i12 (SE_not, SE);
   and       i13 (c_SH_D, c_SH_dat_i, SE_not);
   and       i14 (c_SH_SD, c_SH_dat_i, SE);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (negedge CN => (Q -: Q)) = (0.02, 0.02);

      (negedge SN => (QN +: SN)) = (0.02, 0.02);
      (negedge CN => (QN -: QN)) = (0.02, 0.02);

      $setuphold (negedge CN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $setuphold (negedge CN &&& c_SH_SD, posedge SD, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN &&& c_SH_SD, negedge SD, 0.02, 0.02, NOTIFY_REG);

      $setuphold (negedge CN, posedge SE, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN, negedge SE, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge SN, negedge CN, 0.02, 0.02, NOTIFY_REG);

      $width (posedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : SDFFSQLJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : negedge single Q D-Flip-Flop with Set and Scan
//   last modified by : XLICDD generated
//****************************************************************************

module SDFFSQLJI5VX1 (CN, D, Q, SD, SE, SN);

   input     CN, D, SD, SE, SN;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_CN, delay_D, delay_SD, delay_SE, delay_SN, d_clock_i,
                   d_dat_i, c_SH_d_dat_i, SE_not, c_SH_D, c_SH_SD;

   not       i0  (d_clock_i, delay_CN);
   u_mx2     i6  (d_dat_i, delay_D, delay_SD, delay_SE);
   u1_fd5    i7  (IQ, d_dat_i, d_clock_i, 1'b1, delay_SN, NOTIFY_REG);
   buf       i8  (Q, IQ);

   checkrs   i9  (c_SH_d_dat_i, 1'b1, delay_SN);
   not       i10 (SE_not, delay_SE);
   and       i11 (c_SH_D, c_SH_d_dat_i, SE_not);
   and       i12 (c_SH_SD, c_SH_d_dat_i, delay_SE);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (negedge CN => (Q -: Q)) = (0.02, 0.02);

      $setuphold (negedge CN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_CN, delay_D);
      $setuphold (negedge CN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_CN, delay_D);

      $setuphold (negedge CN &&& c_SH_SD, posedge SD, 0.02, 0.02,
                   NOTIFY_REG,,, delay_CN, delay_SD);
      $setuphold (negedge CN &&& c_SH_SD, negedge SD, 0.02, 0.02,
                   NOTIFY_REG,,, delay_CN, delay_SD);

      $setuphold (negedge CN, posedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_CN,
                   delay_SE);
      $setuphold (negedge CN, negedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_CN,
                   delay_SE);

      $recrem (posedge SN, negedge CN, 0.02, 0.02, NOTIFY_REG,,, delay_SN,
                   delay_CN);

      $width (posedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, clock_i, dat_i, c_SH_dat_i, SE_not, c_SH_D, c_SH_SD;

   not       i0  (clock_i, CN);
   u_mx2     i6  (dat_i, D, SD, SE);
   u1_fd5    i7  (IQ, dat_i, clock_i, 1'b1, SN, NOTIFY_REG);
   buf       i8  (Q, IQ);

   checkrs   i9  (c_SH_dat_i, 1'b1, SN);
   not       i10 (SE_not, SE);
   and       i11 (c_SH_D, c_SH_dat_i, SE_not);
   and       i12 (c_SH_SD, c_SH_dat_i, SE);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (negedge CN => (Q -: Q)) = (0.02, 0.02);

      $setuphold (negedge CN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $setuphold (negedge CN &&& c_SH_SD, posedge SD, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN &&& c_SH_SD, negedge SD, 0.02, 0.02, NOTIFY_REG);

      $setuphold (negedge CN, posedge SE, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN, negedge SE, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge SN, negedge CN, 0.02, 0.02, NOTIFY_REG);

      $width (posedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : SDFFSQLJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : negedge single Q D-Flip-Flop with Set and Scan
//   last modified by : XLICDD generated
//****************************************************************************

module SDFFSQLJI5VX2 (CN, D, Q, SD, SE, SN);

   input     CN, D, SD, SE, SN;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_CN, delay_D, delay_SD, delay_SE, delay_SN, d_clock_i,
                   d_dat_i, c_SH_d_dat_i, SE_not, c_SH_D, c_SH_SD;

   not       i0  (d_clock_i, delay_CN);
   u_mx2     i6  (d_dat_i, delay_D, delay_SD, delay_SE);
   u1_fd5    i7  (IQ, d_dat_i, d_clock_i, 1'b1, delay_SN, NOTIFY_REG);
   buf       i8  (Q, IQ);

   checkrs   i9  (c_SH_d_dat_i, 1'b1, delay_SN);
   not       i10 (SE_not, delay_SE);
   and       i11 (c_SH_D, c_SH_d_dat_i, SE_not);
   and       i12 (c_SH_SD, c_SH_d_dat_i, delay_SE);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (negedge CN => (Q -: Q)) = (0.02, 0.02);

      $setuphold (negedge CN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_CN, delay_D);
      $setuphold (negedge CN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_CN, delay_D);

      $setuphold (negedge CN &&& c_SH_SD, posedge SD, 0.02, 0.02,
                   NOTIFY_REG,,, delay_CN, delay_SD);
      $setuphold (negedge CN &&& c_SH_SD, negedge SD, 0.02, 0.02,
                   NOTIFY_REG,,, delay_CN, delay_SD);

      $setuphold (negedge CN, posedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_CN,
                   delay_SE);
      $setuphold (negedge CN, negedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_CN,
                   delay_SE);

      $recrem (posedge SN, negedge CN, 0.02, 0.02, NOTIFY_REG,,, delay_SN,
                   delay_CN);

      $width (posedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, clock_i, dat_i, c_SH_dat_i, SE_not, c_SH_D, c_SH_SD;

   not       i0  (clock_i, CN);
   u_mx2     i6  (dat_i, D, SD, SE);
   u1_fd5    i7  (IQ, dat_i, clock_i, 1'b1, SN, NOTIFY_REG);
   buf       i8  (Q, IQ);

   checkrs   i9  (c_SH_dat_i, 1'b1, SN);
   not       i10 (SE_not, SE);
   and       i11 (c_SH_D, c_SH_dat_i, SE_not);
   and       i12 (c_SH_SD, c_SH_dat_i, SE);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (negedge CN => (Q -: Q)) = (0.02, 0.02);

      $setuphold (negedge CN &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $setuphold (negedge CN &&& c_SH_SD, posedge SD, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN &&& c_SH_SD, negedge SD, 0.02, 0.02, NOTIFY_REG);

      $setuphold (negedge CN, posedge SE, 0.02, 0.02, NOTIFY_REG);
      $setuphold (negedge CN, negedge SE, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge SN, negedge CN, 0.02, 0.02, NOTIFY_REG);

      $width (posedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge CN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : SDFRLJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : posedge D-Flip-Flop with Scan
//   last modified by : XLICDD generated
//****************************************************************************

module SDFRLJI5VX1 (C, D, Q, QN, SD, SE);

   input     C, D, SD, SE;
   output    Q, QN;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_C, delay_D, delay_SD, delay_SE, d_dat_i, IQN, c_SH_D,
                   c_SH_SD;

   u_mx2     i4  (d_dat_i, delay_D, delay_SD, delay_SE);
   u1_fd5    i5  (IQ, d_dat_i, delay_C, 1'b1, 1'b1, NOTIFY_REG);
   not       i6  (IQN, IQ);
   buf       i7  (Q, IQ);
   buf       i8  (QN, IQN);

   not       i9  (c_SH_D, delay_SE);
   buf       i10 (c_SH_SD, delay_SE);

// timing section:
   specify

      (posedge C => (Q -: Q)) = (0.02, 0.02);

      (posedge C => (QN -: QN)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);

      $setuphold (posedge C &&& c_SH_SD, posedge SD, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_SD);
      $setuphold (posedge C &&& c_SH_SD, negedge SD, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_SD);

      $setuphold (posedge C, posedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_C,
                   delay_SE);
      $setuphold (posedge C, negedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_C,
                   delay_SE);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, dat_i, IQN, c_SH_D, c_SH_SD;

   u_mx2     i4  (dat_i, D, SD, SE);
   u1_fd5    i5  (IQ, dat_i, C, 1'b1, 1'b1, NOTIFY_REG);
   not       i6  (IQN, IQ);
   buf       i7  (Q, IQ);
   buf       i8  (QN, IQN);

   not       i9  (c_SH_D, SE);
   buf       i10 (c_SH_SD, SE);

// timing section:
   specify

      (posedge C => (Q -: Q)) = (0.02, 0.02);

      (posedge C => (QN -: QN)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge C &&& c_SH_SD, posedge SD, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C &&& c_SH_SD, negedge SD, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge C, posedge SE, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C, negedge SE, 0.02, 0.02, NOTIFY_REG);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : SDFRLJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : posedge D-Flip-Flop with Scan
//   last modified by : XLICDD generated
//****************************************************************************

module SDFRLJI5VX2 (C, D, Q, QN, SD, SE);

   input     C, D, SD, SE;
   output    Q, QN;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_C, delay_D, delay_SD, delay_SE, d_dat_i, IQN, c_SH_D,
                   c_SH_SD;

   u_mx2     i4  (d_dat_i, delay_D, delay_SD, delay_SE);
   u1_fd5    i5  (IQ, d_dat_i, delay_C, 1'b1, 1'b1, NOTIFY_REG);
   not       i6  (IQN, IQ);
   buf       i7  (Q, IQ);
   buf       i8  (QN, IQN);

   not       i9  (c_SH_D, delay_SE);
   buf       i10 (c_SH_SD, delay_SE);

// timing section:
   specify

      (posedge C => (Q -: Q)) = (0.02, 0.02);

      (posedge C => (QN -: QN)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);

      $setuphold (posedge C &&& c_SH_SD, posedge SD, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_SD);
      $setuphold (posedge C &&& c_SH_SD, negedge SD, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_SD);

      $setuphold (posedge C, posedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_C,
                   delay_SE);
      $setuphold (posedge C, negedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_C,
                   delay_SE);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, dat_i, IQN, c_SH_D, c_SH_SD;

   u_mx2     i4  (dat_i, D, SD, SE);
   u1_fd5    i5  (IQ, dat_i, C, 1'b1, 1'b1, NOTIFY_REG);
   not       i6  (IQN, IQ);
   buf       i7  (Q, IQ);
   buf       i8  (QN, IQN);

   not       i9  (c_SH_D, SE);
   buf       i10 (c_SH_SD, SE);

// timing section:
   specify

      (posedge C => (Q -: Q)) = (0.02, 0.02);

      (posedge C => (QN -: QN)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge C &&& c_SH_SD, posedge SD, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C &&& c_SH_SD, negedge SD, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge C, posedge SE, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C, negedge SE, 0.02, 0.02, NOTIFY_REG);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : SDFRQLJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : posedge single Q D-Flip-Flop with Scan
//   last modified by : XLICDD generated
//****************************************************************************

module SDFRQLJI5VX1 (C, D, Q, SD, SE);

   input     C, D, SD, SE;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_C, delay_D, delay_SD, delay_SE, d_dat_i, c_SH_D,
                   c_SH_SD;

   u_mx2     i4  (d_dat_i, delay_D, delay_SD, delay_SE);
   u1_fd5    i5  (IQ, d_dat_i, delay_C, 1'b1, 1'b1, NOTIFY_REG);
   buf       i6  (Q, IQ);

   not       i7  (c_SH_D, delay_SE);
   buf       i8  (c_SH_SD, delay_SE);

// timing section:
   specify

      (posedge C => (Q -: Q)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);

      $setuphold (posedge C &&& c_SH_SD, posedge SD, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_SD);
      $setuphold (posedge C &&& c_SH_SD, negedge SD, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_SD);

      $setuphold (posedge C, posedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_C,
                   delay_SE);
      $setuphold (posedge C, negedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_C,
                   delay_SE);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, dat_i, c_SH_D, c_SH_SD;

   u_mx2     i4  (dat_i, D, SD, SE);
   u1_fd5    i5  (IQ, dat_i, C, 1'b1, 1'b1, NOTIFY_REG);
   buf       i6  (Q, IQ);

   not       i7  (c_SH_D, SE);
   buf       i8  (c_SH_SD, SE);

// timing section:
   specify

      (posedge C => (Q -: Q)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge C &&& c_SH_SD, posedge SD, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C &&& c_SH_SD, negedge SD, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge C, posedge SE, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C, negedge SE, 0.02, 0.02, NOTIFY_REG);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : SDFRQLJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : posedge single Q D-Flip-Flop with Scan
//   last modified by : XLICDD generated
//****************************************************************************

module SDFRQLJI5VX2 (C, D, Q, SD, SE);

   input     C, D, SD, SE;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_C, delay_D, delay_SD, delay_SE, d_dat_i, c_SH_D,
                   c_SH_SD;

   u_mx2     i4  (d_dat_i, delay_D, delay_SD, delay_SE);
   u1_fd5    i5  (IQ, d_dat_i, delay_C, 1'b1, 1'b1, NOTIFY_REG);
   buf       i6  (Q, IQ);

   not       i7  (c_SH_D, delay_SE);
   buf       i8  (c_SH_SD, delay_SE);

// timing section:
   specify

      (posedge C => (Q -: Q)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);

      $setuphold (posedge C &&& c_SH_SD, posedge SD, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_SD);
      $setuphold (posedge C &&& c_SH_SD, negedge SD, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_SD);

      $setuphold (posedge C, posedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_C,
                   delay_SE);
      $setuphold (posedge C, negedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_C,
                   delay_SE);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, dat_i, c_SH_D, c_SH_SD;

   u_mx2     i4  (dat_i, D, SD, SE);
   u1_fd5    i5  (IQ, dat_i, C, 1'b1, 1'b1, NOTIFY_REG);
   buf       i6  (Q, IQ);

   not       i7  (c_SH_D, SE);
   buf       i8  (c_SH_SD, SE);

// timing section:
   specify

      (posedge C => (Q -: Q)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge C &&& c_SH_SD, posedge SD, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C &&& c_SH_SD, negedge SD, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge C, posedge SE, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C, negedge SE, 0.02, 0.02, NOTIFY_REG);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : SDFRRLJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : posedge D-Flip-Flop with Reset and Scan
//   last modified by : XLICDD generated
//****************************************************************************

module SDFRRLJI5VX1 (C, D, Q, QN, RN, SD, SE);

   input     C, D, RN, SD, SE;
   output    Q, QN;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_C, delay_D, delay_SD, delay_SE, delay_RN, d_dat_i, IQN,
                   c_SH_d_dat_i, SE_not, c_SH_D, c_SH_SD;

   u_mx2     i5  (d_dat_i, delay_D, delay_SD, delay_SE);
   u1_fd5    i6  (IQ, d_dat_i, delay_C, delay_RN, 1'b1, NOTIFY_REG);
   not       i7  (IQN, IQ);
   buf       i8  (Q, IQ);
   buf       i9  (QN, IQN);

   checkrs   i10 (c_SH_d_dat_i, delay_RN, 1'b1);
   not       i11 (SE_not, delay_SE);
   and       i12 (c_SH_D, c_SH_d_dat_i, SE_not);
   and       i13 (c_SH_SD, c_SH_d_dat_i, delay_SE);

// timing section:
   specify

      (posedge C => (Q -: Q)) = (0.02, 0.02);
      (negedge RN => (Q +: RN)) = (0.02, 0.02);

      (posedge C => (QN -: QN)) = (0.02, 0.02);
      (negedge RN => (QN -: RN)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);

      $setuphold (posedge C &&& c_SH_SD, posedge SD, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_SD);
      $setuphold (posedge C &&& c_SH_SD, negedge SD, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_SD);

      $setuphold (posedge C, posedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_C,
                   delay_SE);
      $setuphold (posedge C, negedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_C,
                   delay_SE);

      $recrem (posedge RN, posedge C, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_C);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, dat_i, IQN, c_SH_dat_i, SE_not, c_SH_D, c_SH_SD;

   u_mx2     i5  (dat_i, D, SD, SE);
   u1_fd5    i6  (IQ, dat_i, C, RN, 1'b1, NOTIFY_REG);
   not       i7  (IQN, IQ);
   buf       i8  (Q, IQ);
   buf       i9  (QN, IQN);

   checkrs   i10 (c_SH_dat_i, RN, 1'b1);
   not       i11 (SE_not, SE);
   and       i12 (c_SH_D, c_SH_dat_i, SE_not);
   and       i13 (c_SH_SD, c_SH_dat_i, SE);

// timing section:
   specify

      (posedge C => (Q -: Q)) = (0.02, 0.02);
      (negedge RN => (Q +: RN)) = (0.02, 0.02);

      (posedge C => (QN -: QN)) = (0.02, 0.02);
      (negedge RN => (QN -: RN)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge C &&& c_SH_SD, posedge SD, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C &&& c_SH_SD, negedge SD, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge C, posedge SE, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C, negedge SE, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge RN, posedge C, 0.02, 0.02, NOTIFY_REG);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : SDFRRLJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : posedge D-Flip-Flop with Reset and Scan
//   last modified by : XLICDD generated
//****************************************************************************

module SDFRRLJI5VX2 (C, D, Q, QN, RN, SD, SE);

   input     C, D, RN, SD, SE;
   output    Q, QN;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_C, delay_D, delay_SD, delay_SE, delay_RN, d_dat_i, IQN,
                   c_SH_d_dat_i, SE_not, c_SH_D, c_SH_SD;

   u_mx2     i5  (d_dat_i, delay_D, delay_SD, delay_SE);
   u1_fd5    i6  (IQ, d_dat_i, delay_C, delay_RN, 1'b1, NOTIFY_REG);
   not       i7  (IQN, IQ);
   buf       i8  (Q, IQ);
   buf       i9  (QN, IQN);

   checkrs   i10 (c_SH_d_dat_i, delay_RN, 1'b1);
   not       i11 (SE_not, delay_SE);
   and       i12 (c_SH_D, c_SH_d_dat_i, SE_not);
   and       i13 (c_SH_SD, c_SH_d_dat_i, delay_SE);

// timing section:
   specify

      (posedge C => (Q -: Q)) = (0.02, 0.02);
      (negedge RN => (Q +: RN)) = (0.02, 0.02);

      (posedge C => (QN -: QN)) = (0.02, 0.02);
      (negedge RN => (QN -: RN)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);

      $setuphold (posedge C &&& c_SH_SD, posedge SD, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_SD);
      $setuphold (posedge C &&& c_SH_SD, negedge SD, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_SD);

      $setuphold (posedge C, posedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_C,
                   delay_SE);
      $setuphold (posedge C, negedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_C,
                   delay_SE);

      $recrem (posedge RN, posedge C, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_C);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, dat_i, IQN, c_SH_dat_i, SE_not, c_SH_D, c_SH_SD;

   u_mx2     i5  (dat_i, D, SD, SE);
   u1_fd5    i6  (IQ, dat_i, C, RN, 1'b1, NOTIFY_REG);
   not       i7  (IQN, IQ);
   buf       i8  (Q, IQ);
   buf       i9  (QN, IQN);

   checkrs   i10 (c_SH_dat_i, RN, 1'b1);
   not       i11 (SE_not, SE);
   and       i12 (c_SH_D, c_SH_dat_i, SE_not);
   and       i13 (c_SH_SD, c_SH_dat_i, SE);

// timing section:
   specify

      (posedge C => (Q -: Q)) = (0.02, 0.02);
      (negedge RN => (Q +: RN)) = (0.02, 0.02);

      (posedge C => (QN -: QN)) = (0.02, 0.02);
      (negedge RN => (QN -: RN)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge C &&& c_SH_SD, posedge SD, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C &&& c_SH_SD, negedge SD, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge C, posedge SE, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C, negedge SE, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge RN, posedge C, 0.02, 0.02, NOTIFY_REG);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : SDFRRQLJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : posedge single Q D-Flip-Flop with Reset and Scan
//   last modified by : XLICDD generated
//****************************************************************************

module SDFRRQLJI5VX1 (C, D, Q, RN, SD, SE);

   input     C, D, RN, SD, SE;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_C, delay_D, delay_SD, delay_SE, delay_RN, d_dat_i,
                   c_SH_d_dat_i, SE_not, c_SH_D, c_SH_SD;

   u_mx2     i5  (d_dat_i, delay_D, delay_SD, delay_SE);
   u1_fd5    i6  (IQ, d_dat_i, delay_C, delay_RN, 1'b1, NOTIFY_REG);
   buf       i7  (Q, IQ);

   checkrs   i8  (c_SH_d_dat_i, delay_RN, 1'b1);
   not       i9  (SE_not, delay_SE);
   and       i10 (c_SH_D, c_SH_d_dat_i, SE_not);
   and       i11 (c_SH_SD, c_SH_d_dat_i, delay_SE);

// timing section:
   specify

      (posedge C => (Q -: Q)) = (0.02, 0.02);
      (negedge RN => (Q +: RN)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);

      $setuphold (posedge C &&& c_SH_SD, posedge SD, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_SD);
      $setuphold (posedge C &&& c_SH_SD, negedge SD, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_SD);

      $setuphold (posedge C, posedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_C,
                   delay_SE);
      $setuphold (posedge C, negedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_C,
                   delay_SE);

      $recrem (posedge RN, posedge C, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_C);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, dat_i, c_SH_dat_i, SE_not, c_SH_D, c_SH_SD;

   u_mx2     i5  (dat_i, D, SD, SE);
   u1_fd5    i6  (IQ, dat_i, C, RN, 1'b1, NOTIFY_REG);
   buf       i7  (Q, IQ);

   checkrs   i8  (c_SH_dat_i, RN, 1'b1);
   not       i9  (SE_not, SE);
   and       i10 (c_SH_D, c_SH_dat_i, SE_not);
   and       i11 (c_SH_SD, c_SH_dat_i, SE);

// timing section:
   specify

      (posedge C => (Q -: Q)) = (0.02, 0.02);
      (negedge RN => (Q +: RN)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge C &&& c_SH_SD, posedge SD, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C &&& c_SH_SD, negedge SD, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge C, posedge SE, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C, negedge SE, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge RN, posedge C, 0.02, 0.02, NOTIFY_REG);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : SDFRRQLJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : posedge single Q D-Flip-Flop with Reset and Scan
//   last modified by : XLICDD generated
//****************************************************************************

module SDFRRQLJI5VX2 (C, D, Q, RN, SD, SE);

   input     C, D, RN, SD, SE;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_C, delay_D, delay_SD, delay_SE, delay_RN, d_dat_i,
                   c_SH_d_dat_i, SE_not, c_SH_D, c_SH_SD;

   u_mx2     i5  (d_dat_i, delay_D, delay_SD, delay_SE);
   u1_fd5    i6  (IQ, d_dat_i, delay_C, delay_RN, 1'b1, NOTIFY_REG);
   buf       i7  (Q, IQ);

   checkrs   i8  (c_SH_d_dat_i, delay_RN, 1'b1);
   not       i9  (SE_not, delay_SE);
   and       i10 (c_SH_D, c_SH_d_dat_i, SE_not);
   and       i11 (c_SH_SD, c_SH_d_dat_i, delay_SE);

// timing section:
   specify

      (posedge C => (Q -: Q)) = (0.02, 0.02);
      (negedge RN => (Q +: RN)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);

      $setuphold (posedge C &&& c_SH_SD, posedge SD, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_SD);
      $setuphold (posedge C &&& c_SH_SD, negedge SD, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_SD);

      $setuphold (posedge C, posedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_C,
                   delay_SE);
      $setuphold (posedge C, negedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_C,
                   delay_SE);

      $recrem (posedge RN, posedge C, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_C);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, dat_i, c_SH_dat_i, SE_not, c_SH_D, c_SH_SD;

   u_mx2     i5  (dat_i, D, SD, SE);
   u1_fd5    i6  (IQ, dat_i, C, RN, 1'b1, NOTIFY_REG);
   buf       i7  (Q, IQ);

   checkrs   i8  (c_SH_dat_i, RN, 1'b1);
   not       i9  (SE_not, SE);
   and       i10 (c_SH_D, c_SH_dat_i, SE_not);
   and       i11 (c_SH_SD, c_SH_dat_i, SE);

// timing section:
   specify

      (posedge C => (Q -: Q)) = (0.02, 0.02);
      (negedge RN => (Q +: RN)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge C &&& c_SH_SD, posedge SD, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C &&& c_SH_SD, negedge SD, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge C, posedge SE, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C, negedge SE, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge RN, posedge C, 0.02, 0.02, NOTIFY_REG);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : SDFRRSLJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : posedge D-Flip-Flop with Reset, Set and Scan
//   last modified by : XLICDD generated
//****************************************************************************

module SDFRRSLJI5VX1 (C, D, Q, QN, RN, SD, SE, SN);

   input     C, D, RN, SD, SE, SN;
   output    Q, QN;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_C, delay_D, delay_SD, delay_SE, delay_RN, delay_SN,
                   d_dat_i, IQN, qin_and_set, c_SH_d_dat_i, SE_not, c_SH_D,
                   c_SH_SD;

   u_mx2     i6  (d_dat_i, delay_D, delay_SD, delay_SE);
   u1_fd5    i7  (IQ, d_dat_i, delay_C, delay_RN, delay_SN, NOTIFY_REG);
   not       i8  (IQN, IQ);
   and       i9  (qin_and_set, IQN, delay_SN);
   buf       i10 (Q, IQ);
   buf       i11 (QN, qin_and_set);

   checkrs   i12 (c_SH_d_dat_i, delay_RN, delay_SN);
   not       i13 (SE_not, delay_SE);
   and       i14 (c_SH_D, c_SH_d_dat_i, SE_not);
   and       i15 (c_SH_SD, c_SH_d_dat_i, delay_SE);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);
      (posedge C => (Q -: Q)) = (0.02, 0.02);

      (SN +=> QN) = (0.02, 0.02);
      (negedge RN => (QN -: RN)) = (0.02, 0.02);
      (posedge C => (QN -: QN)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);

      $setuphold (posedge C &&& c_SH_SD, posedge SD, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_SD);
      $setuphold (posedge C &&& c_SH_SD, negedge SD, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_SD);

      $setuphold (posedge C, posedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_C,
                   delay_SE);
      $setuphold (posedge C, negedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_C,
                   delay_SE);

      $setuphold (posedge RN, posedge SN, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_SN);

      $recrem (posedge RN, posedge C, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_C);

      $recrem (posedge SN, posedge C, 0.02, 0.02, NOTIFY_REG,,, delay_SN,
                   delay_C);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, dat_i, IQN, qin_and_set, c_SH_dat_i, SE_not, c_SH_D, c_SH_SD;

   u_mx2     i6  (dat_i, D, SD, SE);
   u1_fd5    i7  (IQ, dat_i, C, RN, SN, NOTIFY_REG);
   not       i8  (IQN, IQ);
   and       i9  (qin_and_set, IQN, SN);
   buf       i10 (Q, IQ);
   buf       i11 (QN, qin_and_set);

   checkrs   i12 (c_SH_dat_i, RN, SN);
   not       i13 (SE_not, SE);
   and       i14 (c_SH_D, c_SH_dat_i, SE_not);
   and       i15 (c_SH_SD, c_SH_dat_i, SE);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);
      (posedge C => (Q -: Q)) = (0.02, 0.02);

      (SN +=> QN) = (0.02, 0.02);
      (negedge RN => (QN -: RN)) = (0.02, 0.02);
      (posedge C => (QN -: QN)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge C &&& c_SH_SD, posedge SD, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C &&& c_SH_SD, negedge SD, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge C, posedge SE, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C, negedge SE, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge RN, posedge SN, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge RN, posedge C, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge SN, posedge C, 0.02, 0.02, NOTIFY_REG);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : SDFRRSLJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : posedge D-Flip-Flop with Reset, Set and Scan
//   last modified by : XLICDD generated
//****************************************************************************

module SDFRRSLJI5VX2 (C, D, Q, QN, RN, SD, SE, SN);

   input     C, D, RN, SD, SE, SN;
   output    Q, QN;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_C, delay_D, delay_SD, delay_SE, delay_RN, delay_SN,
                   d_dat_i, IQN, qin_and_set, c_SH_d_dat_i, SE_not, c_SH_D,
                   c_SH_SD;

   u_mx2     i6  (d_dat_i, delay_D, delay_SD, delay_SE);
   u1_fd5    i7  (IQ, d_dat_i, delay_C, delay_RN, delay_SN, NOTIFY_REG);
   not       i8  (IQN, IQ);
   and       i9  (qin_and_set, IQN, delay_SN);
   buf       i10 (Q, IQ);
   buf       i11 (QN, qin_and_set);

   checkrs   i12 (c_SH_d_dat_i, delay_RN, delay_SN);
   not       i13 (SE_not, delay_SE);
   and       i14 (c_SH_D, c_SH_d_dat_i, SE_not);
   and       i15 (c_SH_SD, c_SH_d_dat_i, delay_SE);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);
      (posedge C => (Q -: Q)) = (0.02, 0.02);

      (SN +=> QN) = (0.02, 0.02);
      (negedge RN => (QN -: RN)) = (0.02, 0.02);
      (posedge C => (QN -: QN)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);

      $setuphold (posedge C &&& c_SH_SD, posedge SD, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_SD);
      $setuphold (posedge C &&& c_SH_SD, negedge SD, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_SD);

      $setuphold (posedge C, posedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_C,
                   delay_SE);
      $setuphold (posedge C, negedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_C,
                   delay_SE);

      $setuphold (posedge RN, posedge SN, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_SN);

      $recrem (posedge RN, posedge C, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_C);

      $recrem (posedge SN, posedge C, 0.02, 0.02, NOTIFY_REG,,, delay_SN,
                   delay_C);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, dat_i, IQN, qin_and_set, c_SH_dat_i, SE_not, c_SH_D, c_SH_SD;

   u_mx2     i6  (dat_i, D, SD, SE);
   u1_fd5    i7  (IQ, dat_i, C, RN, SN, NOTIFY_REG);
   not       i8  (IQN, IQ);
   and       i9  (qin_and_set, IQN, SN);
   buf       i10 (Q, IQ);
   buf       i11 (QN, qin_and_set);

   checkrs   i12 (c_SH_dat_i, RN, SN);
   not       i13 (SE_not, SE);
   and       i14 (c_SH_D, c_SH_dat_i, SE_not);
   and       i15 (c_SH_SD, c_SH_dat_i, SE);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);
      (posedge C => (Q -: Q)) = (0.02, 0.02);

      (SN +=> QN) = (0.02, 0.02);
      (negedge RN => (QN -: RN)) = (0.02, 0.02);
      (posedge C => (QN -: QN)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge C &&& c_SH_SD, posedge SD, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C &&& c_SH_SD, negedge SD, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge C, posedge SE, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C, negedge SE, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge RN, posedge SN, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge RN, posedge C, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge SN, posedge C, 0.02, 0.02, NOTIFY_REG);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : SDFRRSQLJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : posedge single Q D-Flip-Flop with Reset, Set and
//                      Scan
//   last modified by : XLICDD generated
//****************************************************************************

module SDFRRSQLJI5VX1 (C, D, Q, RN, SD, SE, SN);

   input     C, D, RN, SD, SE, SN;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_C, delay_D, delay_SD, delay_SE, delay_RN, delay_SN,
                   d_dat_i, c_SH_d_dat_i, SE_not, c_SH_D, c_SH_SD;

   u_mx2     i6  (d_dat_i, delay_D, delay_SD, delay_SE);
   u1_fd5    i7  (IQ, d_dat_i, delay_C, delay_RN, delay_SN, NOTIFY_REG);
   buf       i8  (Q, IQ);

   checkrs   i9  (c_SH_d_dat_i, delay_RN, delay_SN);
   not       i10 (SE_not, delay_SE);
   and       i11 (c_SH_D, c_SH_d_dat_i, SE_not);
   and       i12 (c_SH_SD, c_SH_d_dat_i, delay_SE);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);
      (posedge C => (Q -: Q)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);

      $setuphold (posedge C &&& c_SH_SD, posedge SD, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_SD);
      $setuphold (posedge C &&& c_SH_SD, negedge SD, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_SD);

      $setuphold (posedge C, posedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_C,
                   delay_SE);
      $setuphold (posedge C, negedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_C,
                   delay_SE);

      $setuphold (posedge RN, posedge SN, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_SN);

      $recrem (posedge RN, posedge C, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_C);

      $recrem (posedge SN, posedge C, 0.02, 0.02, NOTIFY_REG,,, delay_SN,
                   delay_C);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, dat_i, c_SH_dat_i, SE_not, c_SH_D, c_SH_SD;

   u_mx2     i6  (dat_i, D, SD, SE);
   u1_fd5    i7  (IQ, dat_i, C, RN, SN, NOTIFY_REG);
   buf       i8  (Q, IQ);

   checkrs   i9  (c_SH_dat_i, RN, SN);
   not       i10 (SE_not, SE);
   and       i11 (c_SH_D, c_SH_dat_i, SE_not);
   and       i12 (c_SH_SD, c_SH_dat_i, SE);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);
      (posedge C => (Q -: Q)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge C &&& c_SH_SD, posedge SD, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C &&& c_SH_SD, negedge SD, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge C, posedge SE, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C, negedge SE, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge RN, posedge SN, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge RN, posedge C, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge SN, posedge C, 0.02, 0.02, NOTIFY_REG);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : SDFRRSQLJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : posedge single Q D-Flip-Flop with Reset, Set and
//                      Scan
//   last modified by : XLICDD generated
//****************************************************************************

module SDFRRSQLJI5VX2 (C, D, Q, RN, SD, SE, SN);

   input     C, D, RN, SD, SE, SN;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_C, delay_D, delay_SD, delay_SE, delay_RN, delay_SN,
                   d_dat_i, c_SH_d_dat_i, SE_not, c_SH_D, c_SH_SD;

   u_mx2     i6  (d_dat_i, delay_D, delay_SD, delay_SE);
   u1_fd5    i7  (IQ, d_dat_i, delay_C, delay_RN, delay_SN, NOTIFY_REG);
   buf       i8  (Q, IQ);

   checkrs   i9  (c_SH_d_dat_i, delay_RN, delay_SN);
   not       i10 (SE_not, delay_SE);
   and       i11 (c_SH_D, c_SH_d_dat_i, SE_not);
   and       i12 (c_SH_SD, c_SH_d_dat_i, delay_SE);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);
      (posedge C => (Q -: Q)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);

      $setuphold (posedge C &&& c_SH_SD, posedge SD, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_SD);
      $setuphold (posedge C &&& c_SH_SD, negedge SD, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_SD);

      $setuphold (posedge C, posedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_C,
                   delay_SE);
      $setuphold (posedge C, negedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_C,
                   delay_SE);

      $setuphold (posedge RN, posedge SN, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_SN);

      $recrem (posedge RN, posedge C, 0.02, 0.02, NOTIFY_REG,,, delay_RN,
                   delay_C);

      $recrem (posedge SN, posedge C, 0.02, 0.02, NOTIFY_REG,,, delay_SN,
                   delay_C);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, dat_i, c_SH_dat_i, SE_not, c_SH_D, c_SH_SD;

   u_mx2     i6  (dat_i, D, SD, SE);
   u1_fd5    i7  (IQ, dat_i, C, RN, SN, NOTIFY_REG);
   buf       i8  (Q, IQ);

   checkrs   i9  (c_SH_dat_i, RN, SN);
   not       i10 (SE_not, SE);
   and       i11 (c_SH_D, c_SH_dat_i, SE_not);
   and       i12 (c_SH_SD, c_SH_dat_i, SE);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (RN +=> Q) = (0.02, 0.02);
      (posedge C => (Q -: Q)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge C &&& c_SH_SD, posedge SD, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C &&& c_SH_SD, negedge SD, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge C, posedge SE, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C, negedge SE, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge RN, posedge SN, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge RN, posedge C, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge SN, posedge C, 0.02, 0.02, NOTIFY_REG);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge RN, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : SDFRSLJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : posedge D-Flip-Flop with Set and Scan
//   last modified by : XLICDD generated
//****************************************************************************

module SDFRSLJI5VX1 (C, D, Q, QN, SD, SE, SN);

   input     C, D, SD, SE, SN;
   output    Q, QN;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_C, delay_D, delay_SD, delay_SE, delay_SN, d_dat_i, IQN,
                   c_SH_d_dat_i, SE_not, c_SH_D, c_SH_SD;

   u_mx2     i5  (d_dat_i, delay_D, delay_SD, delay_SE);
   u1_fd5    i6  (IQ, d_dat_i, delay_C, 1'b1, delay_SN, NOTIFY_REG);
   not       i7  (IQN, IQ);
   buf       i8  (Q, IQ);
   buf       i9  (QN, IQN);

   checkrs   i10 (c_SH_d_dat_i, 1'b1, delay_SN);
   not       i11 (SE_not, delay_SE);
   and       i12 (c_SH_D, c_SH_d_dat_i, SE_not);
   and       i13 (c_SH_SD, c_SH_d_dat_i, delay_SE);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (posedge C => (Q -: Q)) = (0.02, 0.02);

      (negedge SN => (QN +: SN)) = (0.02, 0.02);
      (posedge C => (QN -: QN)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);

      $setuphold (posedge C &&& c_SH_SD, posedge SD, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_SD);
      $setuphold (posedge C &&& c_SH_SD, negedge SD, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_SD);

      $setuphold (posedge C, posedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_C,
                   delay_SE);
      $setuphold (posedge C, negedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_C,
                   delay_SE);

      $recrem (posedge SN, posedge C, 0.02, 0.02, NOTIFY_REG,,, delay_SN,
                   delay_C);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, dat_i, IQN, c_SH_dat_i, SE_not, c_SH_D, c_SH_SD;

   u_mx2     i5  (dat_i, D, SD, SE);
   u1_fd5    i6  (IQ, dat_i, C, 1'b1, SN, NOTIFY_REG);
   not       i7  (IQN, IQ);
   buf       i8  (Q, IQ);
   buf       i9  (QN, IQN);

   checkrs   i10 (c_SH_dat_i, 1'b1, SN);
   not       i11 (SE_not, SE);
   and       i12 (c_SH_D, c_SH_dat_i, SE_not);
   and       i13 (c_SH_SD, c_SH_dat_i, SE);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (posedge C => (Q -: Q)) = (0.02, 0.02);

      (negedge SN => (QN +: SN)) = (0.02, 0.02);
      (posedge C => (QN -: QN)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge C &&& c_SH_SD, posedge SD, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C &&& c_SH_SD, negedge SD, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge C, posedge SE, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C, negedge SE, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge SN, posedge C, 0.02, 0.02, NOTIFY_REG);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : SDFRSLJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : posedge D-Flip-Flop with Set and Scan
//   last modified by : XLICDD generated
//****************************************************************************

module SDFRSLJI5VX2 (C, D, Q, QN, SD, SE, SN);

   input     C, D, SD, SE, SN;
   output    Q, QN;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_C, delay_D, delay_SD, delay_SE, delay_SN, d_dat_i, IQN,
                   c_SH_d_dat_i, SE_not, c_SH_D, c_SH_SD;

   u_mx2     i5  (d_dat_i, delay_D, delay_SD, delay_SE);
   u1_fd5    i6  (IQ, d_dat_i, delay_C, 1'b1, delay_SN, NOTIFY_REG);
   not       i7  (IQN, IQ);
   buf       i8  (Q, IQ);
   buf       i9  (QN, IQN);

   checkrs   i10 (c_SH_d_dat_i, 1'b1, delay_SN);
   not       i11 (SE_not, delay_SE);
   and       i12 (c_SH_D, c_SH_d_dat_i, SE_not);
   and       i13 (c_SH_SD, c_SH_d_dat_i, delay_SE);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (posedge C => (Q -: Q)) = (0.02, 0.02);

      (negedge SN => (QN +: SN)) = (0.02, 0.02);
      (posedge C => (QN -: QN)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);

      $setuphold (posedge C &&& c_SH_SD, posedge SD, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_SD);
      $setuphold (posedge C &&& c_SH_SD, negedge SD, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_SD);

      $setuphold (posedge C, posedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_C,
                   delay_SE);
      $setuphold (posedge C, negedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_C,
                   delay_SE);

      $recrem (posedge SN, posedge C, 0.02, 0.02, NOTIFY_REG,,, delay_SN,
                   delay_C);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, dat_i, IQN, c_SH_dat_i, SE_not, c_SH_D, c_SH_SD;

   u_mx2     i5  (dat_i, D, SD, SE);
   u1_fd5    i6  (IQ, dat_i, C, 1'b1, SN, NOTIFY_REG);
   not       i7  (IQN, IQ);
   buf       i8  (Q, IQ);
   buf       i9  (QN, IQN);

   checkrs   i10 (c_SH_dat_i, 1'b1, SN);
   not       i11 (SE_not, SE);
   and       i12 (c_SH_D, c_SH_dat_i, SE_not);
   and       i13 (c_SH_SD, c_SH_dat_i, SE);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (posedge C => (Q -: Q)) = (0.02, 0.02);

      (negedge SN => (QN +: SN)) = (0.02, 0.02);
      (posedge C => (QN -: QN)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge C &&& c_SH_SD, posedge SD, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C &&& c_SH_SD, negedge SD, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge C, posedge SE, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C, negedge SE, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge SN, posedge C, 0.02, 0.02, NOTIFY_REG);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : SDFRSQLJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : posedge single Q D-Flip-Flop with Set and Scan
//   last modified by : XLICDD generated
//****************************************************************************

module SDFRSQLJI5VX1 (C, D, Q, SD, SE, SN);

   input     C, D, SD, SE, SN;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_C, delay_D, delay_SD, delay_SE, delay_SN, d_dat_i,
                   c_SH_d_dat_i, SE_not, c_SH_D, c_SH_SD;

   u_mx2     i5  (d_dat_i, delay_D, delay_SD, delay_SE);
   u1_fd5    i6  (IQ, d_dat_i, delay_C, 1'b1, delay_SN, NOTIFY_REG);
   buf       i7  (Q, IQ);

   checkrs   i8  (c_SH_d_dat_i, 1'b1, delay_SN);
   not       i9  (SE_not, delay_SE);
   and       i10 (c_SH_D, c_SH_d_dat_i, SE_not);
   and       i11 (c_SH_SD, c_SH_d_dat_i, delay_SE);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (posedge C => (Q -: Q)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);

      $setuphold (posedge C &&& c_SH_SD, posedge SD, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_SD);
      $setuphold (posedge C &&& c_SH_SD, negedge SD, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_SD);

      $setuphold (posedge C, posedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_C,
                   delay_SE);
      $setuphold (posedge C, negedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_C,
                   delay_SE);

      $recrem (posedge SN, posedge C, 0.02, 0.02, NOTIFY_REG,,, delay_SN,
                   delay_C);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, dat_i, c_SH_dat_i, SE_not, c_SH_D, c_SH_SD;

   u_mx2     i5  (dat_i, D, SD, SE);
   u1_fd5    i6  (IQ, dat_i, C, 1'b1, SN, NOTIFY_REG);
   buf       i7  (Q, IQ);

   checkrs   i8  (c_SH_dat_i, 1'b1, SN);
   not       i9  (SE_not, SE);
   and       i10 (c_SH_D, c_SH_dat_i, SE_not);
   and       i11 (c_SH_SD, c_SH_dat_i, SE);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (posedge C => (Q -: Q)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge C &&& c_SH_SD, posedge SD, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C &&& c_SH_SD, negedge SD, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge C, posedge SE, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C, negedge SE, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge SN, posedge C, 0.02, 0.02, NOTIFY_REG);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : SDFRSQLJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : posedge single Q D-Flip-Flop with Set and Scan
//   last modified by : XLICDD generated
//****************************************************************************

module SDFRSQLJI5VX2 (C, D, Q, SD, SE, SN);

   input     C, D, SD, SE, SN;
   output    Q;

`ifdef NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, delay_C, delay_D, delay_SD, delay_SE, delay_SN, d_dat_i,
                   c_SH_d_dat_i, SE_not, c_SH_D, c_SH_SD;

   u_mx2     i5  (d_dat_i, delay_D, delay_SD, delay_SE);
   u1_fd5    i6  (IQ, d_dat_i, delay_C, 1'b1, delay_SN, NOTIFY_REG);
   buf       i7  (Q, IQ);

   checkrs   i8  (c_SH_d_dat_i, 1'b1, delay_SN);
   not       i9  (SE_not, delay_SE);
   and       i10 (c_SH_D, c_SH_d_dat_i, SE_not);
   and       i11 (c_SH_SD, c_SH_d_dat_i, delay_SE);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (posedge C => (Q -: Q)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_D);

      $setuphold (posedge C &&& c_SH_SD, posedge SD, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_SD);
      $setuphold (posedge C &&& c_SH_SD, negedge SD, 0.02, 0.02, NOTIFY_REG,,,
                   delay_C, delay_SD);

      $setuphold (posedge C, posedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_C,
                   delay_SE);
      $setuphold (posedge C, negedge SE, 0.02, 0.02, NOTIFY_REG,,, delay_C,
                   delay_SE);

      $recrem (posedge SN, posedge C, 0.02, 0.02, NOTIFY_REG,,, delay_SN,
                   delay_C);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`else   // NEG_TCHK

   reg       NOTIFY_REG;
   wire	     IQ, dat_i, c_SH_dat_i, SE_not, c_SH_D, c_SH_SD;

   u_mx2     i5  (dat_i, D, SD, SE);
   u1_fd5    i6  (IQ, dat_i, C, 1'b1, SN, NOTIFY_REG);
   buf       i7  (Q, IQ);

   checkrs   i8  (c_SH_dat_i, 1'b1, SN);
   not       i9  (SE_not, SE);
   and       i10 (c_SH_D, c_SH_dat_i, SE_not);
   and       i11 (c_SH_SD, c_SH_dat_i, SE);

// timing section:
   specify

      (negedge SN => (Q -: SN)) = (0.02, 0.02);
      (posedge C => (Q -: Q)) = (0.02, 0.02);

      $setuphold (posedge C &&& c_SH_D, posedge D, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C &&& c_SH_D, negedge D, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge C &&& c_SH_SD, posedge SD, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C &&& c_SH_SD, negedge SD, 0.02, 0.02, NOTIFY_REG);

      $setuphold (posedge C, posedge SE, 0.02, 0.02, NOTIFY_REG);
      $setuphold (posedge C, negedge SE, 0.02, 0.02, NOTIFY_REG);

      $recrem (posedge SN, posedge C, 0.02, 0.02, NOTIFY_REG);

      $width (posedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge C, 0.02, 0, NOTIFY_REG);
      $width (negedge SN, 0.02, 0, NOTIFY_REG);

   endspecify

`endif   // NEG_TCHK
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : STLJI5VX1
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : Buffer with CMOS Schmitt Trigger input
//   last modified by : XLICDD generated
//****************************************************************************

module STLJI5VX1 (A, Q);

   input     A;
   output    Q;

// Function Q: A
   buf       i0  (Q, A);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : STLJI5VX2
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : Buffer with CMOS Schmitt Trigger input
//   last modified by : XLICDD generated
//****************************************************************************

module STLJI5VX2 (A, Q);

   input     A;
   output    Q;

// Function Q: A
   buf       i0  (Q, A);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : STLJI5VX3
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : Buffer with CMOS Schmitt Trigger input
//   last modified by : XLICDD generated
//****************************************************************************

module STLJI5VX3 (A, Q);

   input     A;
   output    Q;

// Function Q: A
   buf       i0  (Q, A);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : STLJI5VX4
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : Buffer with CMOS Schmitt Trigger input
//   last modified by : XLICDD generated
//****************************************************************************

module STLJI5VX4 (A, Q);

   input     A;
   output    Q;

// Function Q: A
   buf       i0  (Q, A);

// timing section:
   specify

      (A +=> Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
//*****************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : SIGNALHOLDLJI5V
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : Leakage current compensator
//   last modified by : XLICDD generated
//*****************************************************************

module SIGNALHOLDLJI5V (SIG);

   inout SIG;

// logic section  
  `ifdef DISPLAY_HOLD 
  
        buf i1 (n1, SIG);
        buf (pull1, pull0) i2 (SIG, n1);

     initial
     begin
      #0 $display("  > Warning: compiler directive DISPLAY_HOLD is set in cell"
                               );
         $display("  > %m");
         $display("  > SIGNALHOLD cell model is switched to provide logic levels"
                  );
         $display("  >  - danger of reading not really driven values ");   
                   
         $display("  >  - undriven bus states are not detectable now ");   
                   
         $display("  >");    
     end

  `else
// - no logic behaviour modelled for the electrical function of 
//   signalhold cell 
// - signalhold cell compensates leackage current only in case of
//   undriven node/bus and system stop
// - signalhold cell holds the bus bit on "0" or "1", but does not 
//   drive it, this is not in every case the same as the last valid 
//   logic value considering the desired application meaning
// - undriven bus bit should not be used as sequential element
// - reading from undriven bus_bit ("Z") has to provide ("X") in the
//   related block to detect such cases in simulation
//
// Use the compiler directive command
//   `define  DISPLAY_HOLD yes
// to enable the logic pullup/down behaviour of the Leakage current 
// compensator cell SIGNALHOLD*
//
     buf i3 (n1, SIG);
     bufif1 i4 (SIG, n1, 1'b0); /* always inactive */
  `endif
 
// no timing modelled for signalhold cell
// no backannotation possible for signalhold cell 
    

// timing section:
   specify

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : LOGIC0LJI5V
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : Constant logic 0
//   last modified by : XLICDD generated
//****************************************************************************

module LOGIC0LJI5V (Q);

   output    Q;

// Function Q: 0
   buf       i0   (Q, 1'b0);

// timing section:
   specify

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : LOGIC1LJI5V
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : Constant logic 1
//   last modified by : XLICDD generated
//****************************************************************************

module LOGIC1LJI5V (Q);

   output    Q;

// Function Q: 1
   buf       i0   (Q, 1'b1);

// timing section:
   specify

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : MPROBEBULJI5VX8
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : Micro probe with Buffer
//   last modified by : XLICDD generated
//****************************************************************************

module MPROBEBULJI5VX8 (A);

   input     A;

// timing section:
   specify

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : MPROBELJI5V
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : Micro probe
//   last modified by : XLICDD generated
//****************************************************************************

module MPROBELJI5V (A);

   input     A;

// timing section:
   specify

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : R_FEED4LJI5V
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : Repair FEED cell
//   last modified by : XLICDD generated
//****************************************************************************

module R_FEED4LJI5V ();


// timing section:
   specify

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : R_FEED25LJI5V
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : Repair FEED cell
//   last modified by : XLICDD generated
//****************************************************************************

module R_FEED25LJI5V ();


// timing section:
   specify

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : FEED1LJI5V
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : FEED cell
//   last modified by : XLICDD generated
//****************************************************************************

module FEED1LJI5V ();


// timing section:
   specify

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : FEED2LJI5V
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : FEED cell
//   last modified by : XLICDD generated
//****************************************************************************

module FEED2LJI5V ();


// timing section:
   specify

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : FEED3LJI5V
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : FEED cell
//   last modified by : XLICDD generated
//****************************************************************************

module FEED3LJI5V ();


// timing section:
   specify

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : FEED5LJI5V
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : FEED cell
//   last modified by : XLICDD generated
//****************************************************************************

module FEED5LJI5V ();


// timing section:
   specify

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : FEED10LJI5V
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : FEED cell
//   last modified by : XLICDD generated
//****************************************************************************

module FEED10LJI5V ();


// timing section:
   specify

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : FEED25LJI5V
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : FEED cell
//   last modified by : XLICDD generated
//****************************************************************************

module FEED25LJI5V ();


// timing section:
   specify

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : DECAP2LJI5V
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : DECAP cell
//   last modified by : XLICDD generated
//****************************************************************************

module DECAP2LJI5V ();


// timing section:
   specify

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : DECAP3LJI5V
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : DECAP cell
//   last modified by : XLICDD generated
//****************************************************************************

module DECAP3LJI5V ();


// timing section:
   specify

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : DECAP5LJI5V
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : DECAP cell
//   last modified by : XLICDD generated
//****************************************************************************

module DECAP5LJI5V ();


// timing section:
   specify

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : DECAP10LJI5V
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : DECAP cell
//   last modified by : XLICDD generated
//****************************************************************************

module DECAP10LJI5V ();


// timing section:
   specify

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : DECAP25LJI5V
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : DECAP cell
//   last modified by : XLICDD generated
//****************************************************************************

module DECAP25LJI5V ();


// timing section:
   specify

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : ANTENNACELL2LJI5V
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : protection cell against antenna effects (net
//                      charge) at manufacture, PIMP diode in NWELL
//   last modified by : XLICDD generated
//****************************************************************************

module ANTENNACELL2LJI5V (A);

   input     A;

// timing section:
   specify

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : ANTENNACELLN2LJI5V
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : protection cell against antenna effects (net
//                      charge) at manufacture, NIMP diode in substrate
//   last modified by : XLICDD generated
//****************************************************************************

module ANTENNACELLN2LJI5V (A);

   input     A;

// timing section:
   specify

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : ANTENNACELLNP2LJI5V
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : protection cell against antenna effects (net
//                      charge) at manufacture, PIMP diode in NWELL, NIMP
//                 diode in substrate
//   last modified by : XLICDD generated
//****************************************************************************

module ANTENNACELLNP2LJI5V (A);

   input     A;

// timing section:
   specify

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine

`timescale 1ns/10ps
`celldefine
`suppress_faults
`enable_portfaults
//****************************************************************************
//   technology       : 0.35um junction isolated CMOS 5V
//   module name      : CLKVBUFLJI5V
//   version          : 1.0.2, Wed Aug 27 10:12:29 2014
//   cell_description : Virtual Clock Tree Buffer
//   last modified by : XLICDD generated
//****************************************************************************

module CLKVBUFLJI5V (A, Q);

   input     A;
   output    Q;

// Function Q: A
   buf       i0  (Q, A);

// timing section:
   specify

      (A => Q) = (0.02, 0.02);

   endspecify
endmodule
//****************************************************************************
`nosuppress_faults
`disable_portfaults
`endcelldefine
