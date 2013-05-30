remark   file parallhdg.param  version 5.4  date 07-JUL-10
remark   for file protein-allhdg-ucl.top  version UCL  date 14-MAR-00
remark   for file protein-allhdg-dih-ucl.top  version UCL  date 07-JUL-01
remark   Geometric energy function parameters for distance geometry and
remark   simulated annealing.
remark   Original author: Michael Nilges, EMBL Heidelberg
remark   Modifications: Mark A. Williams, UCL London
remark   Several modifications for HADDOCK: Alexandre Bonvin, Utrecht Uni

set echo on message on end

!***********************************************************************!
! Copyright (C) 1995,1996 by Michael Nilges. All rights reserved.       !
! Copying and redistribution of this files is authorized only if etiher !
! (1) you make absolutely no changes to your copy, including name, or   !
! (2) if you do make changes, you name it something other than          !
! topallhdg.pro and topallhdg.x.xx.pro, and clearly mark the changes.   ! 
! The information in this software is subject to change without notice  !
! and should not be construed as a commitment by the EMBL, UCL, Yale    !
! University, UCL or by the authors. Neither the EMBL, Yale University, !
! UCL, nor the authors assume responsibility for the use or reliability !
! of this software. We do hope, however, to get responses from users,   !
! especially when errors have been found.                               !               !
!***********************************************************************!
! Description:                                                          !
! This parameter file was originally derived from the parameter files   !
! PARMALLH6 and PARHCSDX. It was designed specifically for the initial  !
! stages of calculating structures from NMR restraints.                 !
!***********************************************************************!
! PARHCSDX includes bond and angle parameters for non-hydrogen atoms    ! 
! derived from Cambridge Data Base model structures (R. A. Engh and R.  !
! Huber, Acta Cryst. Sect. A., 1991). Hydrogens were added with X-PLOR  !
! scripts for minimization and the PARAmeter LEARn statement. Dihedral, !
! improper and non-bonded values are from previous PARALLHDG versions,  !
! and assigned to new atom types where appropriate. Due to the          !
! minimization procedure used in the derivation, there are very small   !
! deviations from the parameter values in PARHCSDX.                     !
! Heavy atom types are exactly as in PARHCSDX, hydrogen types as in     !
! PARALLHDG.                                                            !
!***********************************************************************!
! History:
! version UCL   (07-Jul-01) : modified backbone & disulphide paprameters 
! version UCL   (05-Jul-01) : put dihedrals to maximum of 2 kcal/mol 
! version UCL   (03-Jul-01) : added new backbone dihedral parameters
! version UCL   (27-Jun-01) : restored original PROLSQ 1-4 parameters except larger aliphatic H radius
! version UCL   (02-Apr-00) : modified 1-4 PROLSQ parameters
! version UCL   (02-Apr-00) : modified aliphatic H radii
! version UCL   (14-Mar-00) : modified peptide bond and disulphide impropers/dihedrals
! version UCL   (12-Mar-00) : added or modified N and C terminus, CH3 & NH3 parameters
! version UCL   (10-Mar-00) : added CONTACT non-bond parameters
! version UCL   (09-Mar-00) : added or modified planar chi2 or chi3
! version 5.10  (24-Feb-99) : larger aliphatic hydrogens (test - not now active?)
! version 5.03  (13-Nov-98) : corrected aromatic chi2
! version 5.02  (19-Aug-98) : corrected cis peptide bond
! version 5.01  (20-Mar-98) : put side-chain dihedrals to 5 kcal/mol
! version 5.00  (16-Feb-98) : allow different nonbonded parameter options
! version 4.04  (28-Jan-98) : added missing dihedral parameters
! version 4.03  (27-Mar-97) : added missing dihedral parameters
! version 4.02  (25-Sep-96) : added missing parameters
! version 4.01  (29-Jul-96) : added missing covalent parameters
! version 4.00  (19-Jul-96) : all atom types from CSDX implemented
! version 3.00  (24-Oct-95) : mapped CSDX parmameters on parallhdg, 
!                             no changes in topallhdg
!
! previous modifications:
! proline residue modified (MN)
! added hbond acceptor and donor definitions for analysis (MN)
! all references to internal coordinates (IC's) removed (MN) 
! added stereospecific impropers for all pro-chiral centers (ATB, JK)
! modification of PARMALLH6 parameters to improve geometric consistency (JK)
! all dihedrals defining planarity converted to impropers (MN, PK)
! additional impropers at planar centers (MN)
!***********************************************************************!


!***********************************************************************!
!                             IA - PROXYL                               !
!***********************************************************************!

evaluate ($pd_x = 1.0)

eval ($pd_v=$pd_x* 24009.7) BOND CP_Y OP_Y $pd_v   1.230
eval ($pd_v=$pd_x* 13971.0) BOND CP_Y HP_Y $pd_v   1.090
eval ($pd_v=$pd_x* 16001.4) BOND CPA  CP_Y $pd_v   1.530
eval ($pd_v=$pd_x* 13971.0) BOND CPA  HPA  $pd_v   1.090
eval ($pd_v=$pd_x* 17993.7) BOND CPA  NP_Y $pd_v   1.470
eval ($pd_v=$pd_x* 16001.4) BOND CPA  CPB  $pd_v   1.530
eval ($pd_v=$pd_x* 17877.6) BOND NP_Y HP4  $pd_v   1.000
eval ($pd_v=$pd_x* 17877.6) BOND NP_Y HP5  $pd_v   1.000
eval ($pd_v=$pd_x* 17877.6) BOND NP_Y HP2  $pd_v   1.000
eval ($pd_v=$pd_x* 13971.0) BOND CPB  HPB1 $pd_v   1.090
eval ($pd_v=$pd_x* 13971.0) BOND CPB  HPB2 $pd_v   1.090
eval ($pd_v=$pd_x* 17993.1) BOND CPB  SPG  $pd_v   1.830
eval ($pd_v=$pd_x* 17993.1) BOND CPD  SPG  $pd_v   1.830
eval ($pd_v=$pd_x* 13971.0) BOND CPD  HPD1 $pd_v   1.090
eval ($pd_v=$pd_x* 13971.0) BOND CPD  HPD2 $pd_v   1.090
eval ($pd_v=$pd_x* 16001.4) BOND CPE  CPD  $pd_v   1.530
eval ($pd_v=$pd_x* 24009.7) BOND CPE  OPE  $pd_v   1.230
eval ($pd_v=$pd_x* 18024.7) BOND CPE  NPZ  $pd_v   1.340
eval ($pd_v=$pd_x* 17877.6) BOND NPZ  HPZ  $pd_v   1.000
eval ($pd_v=$pd_x* 17993.7) BOND CP3  NPZ  $pd_v   1.470
eval ($pd_v=$pd_x* 13971.0) BOND CP3  HP3  $pd_v   1.090
eval ($pd_v=$pd_x* 11993.8) BOND CP3  CP4  $pd_v   1.520
eval ($pd_v=$pd_x* 11993.8) BOND CP2  CP3  $pd_v   1.520
eval ($pd_v=$pd_x* 13971.0) BOND CP4  HP41 $pd_v   1.090
eval ($pd_v=$pd_x* 13971.0) BOND CP4  HP42 $pd_v   1.090
eval ($pd_v=$pd_x* 11993.8) BOND CP5  CP4  $pd_v   1.520
eval ($pd_v=$pd_x* 16001.4) BOND CP5  CP7  $pd_v   1.530
eval ($pd_v=$pd_x* 16001.4) BOND CP5  CP6  $pd_v   1.530
eval ($pd_v=$pd_x* 17993.7) BOND CP5  NP1  $pd_v   1.470
eval ($pd_v=$pd_x* 13971.0) BOND CP7  HP72 $pd_v   1.090
eval ($pd_v=$pd_x* 13971.0) BOND CP7  HP73 $pd_v   1.090
eval ($pd_v=$pd_x* 13971.0) BOND CP7  HP71 $pd_v   1.090
eval ($pd_v=$pd_x* 13971.0) BOND CP6  HP62 $pd_v   1.090
eval ($pd_v=$pd_x* 13971.0) BOND CP6  HP63 $pd_v   1.090
eval ($pd_v=$pd_x* 13971.0) BOND CP6  HP61 $pd_v   1.090
eval ($pd_v=$pd_x*  5115.8) BOND NP1  OP1  $pd_v   1.460
eval ($pd_v=$pd_x* 17993.7) BOND CP2  NP1  $pd_v   1.470
eval ($pd_v=$pd_x* 15009.6) BOND OP1  HP1  $pd_v   1.000
eval ($pd_v=$pd_x* 16001.4) BOND CP2  CP8  $pd_v   1.530
eval ($pd_v=$pd_x* 16001.4) BOND CP2  CP9  $pd_v   1.530
eval ($pd_v=$pd_x* 13971.0) BOND CP8  HP82 $pd_v   1.090
eval ($pd_v=$pd_x* 13971.0) BOND CP8  HP83 $pd_v   1.090
eval ($pd_v=$pd_x* 13971.0) BOND CP8  HP81 $pd_v   1.090
eval ($pd_v=$pd_x* 13971.0) BOND CP9  HP92 $pd_v   1.090
eval ($pd_v=$pd_x* 13971.0) BOND CP9  HP93 $pd_v   1.090
eval ($pd_v=$pd_x* 13971.0) BOND CP9  HP91 $pd_v   1.090

eval ($pd_v=$pd_x*   959.3) ANGLE OP_Y CP_Y HP_Y $pd_v 124.000
eval ($pd_v=$pd_x*   962.3) ANGLE OP_Y CP_Y CPA  $pd_v 121.000
eval ($pd_v=$pd_x*   958.0) ANGLE HP_Y CP_Y CPA  $pd_v 115.000
eval ($pd_v=$pd_x*   720.0) ANGLE CP_Y CPA  HPA  $pd_v 109.500
eval ($pd_v=$pd_x*   883.5) ANGLE CP_Y CPA  NP_Y $pd_v 109.500
eval ($pd_v=$pd_x*   883.5) ANGLE CP_Y CPA  CPB  $pd_v 109.500
eval ($pd_v=$pd_x*   720.0) ANGLE HPA  CPA  NP_Y $pd_v 109.500
eval ($pd_v=$pd_x*   720.0) ANGLE HPA  CPA  CPB  $pd_v 109.500
eval ($pd_v=$pd_x*   883.2) ANGLE NP_Y CPA  CPB  $pd_v 111.000
eval ($pd_v=$pd_x*   722.1) ANGLE CPA  NP_Y HP4  $pd_v 109.500
eval ($pd_v=$pd_x*   722.1) ANGLE CPA  NP_Y HP5  $pd_v 109.500
eval ($pd_v=$pd_x*   722.1) ANGLE CPA  NP_Y HP2  $pd_v 109.500
eval ($pd_v=$pd_x*   645.6) ANGLE HP4  NP_Y HP5  $pd_v 109.500
eval ($pd_v=$pd_x*   645.6) ANGLE HP4  NP_Y HP2  $pd_v 109.500
eval ($pd_v=$pd_x*   645.6) ANGLE HP5  NP_Y HP2  $pd_v 109.500
eval ($pd_v=$pd_x*   720.0) ANGLE CPA  CPB  HPB1 $pd_v 109.500
eval ($pd_v=$pd_x*   720.0) ANGLE CPA  CPB  HPB2 $pd_v 109.500
eval ($pd_v=$pd_x*   883.0) ANGLE CPA  CPB  SPG  $pd_v 113.000
eval ($pd_v=$pd_x*   720.0) ANGLE HPB1 CPB  HPB2 $pd_v 109.500
eval ($pd_v=$pd_x*   720.0) ANGLE HPB1 CPB  SPG  $pd_v 109.500
eval ($pd_v=$pd_x*   720.0) ANGLE HPB2 CPB  SPG  $pd_v 109.500
eval ($pd_v=$pd_x*   880.8) ANGLE CPB  SPG  CPD  $pd_v 100.000
eval ($pd_v=$pd_x*   720.0) ANGLE SPG  CPD  HPD1 $pd_v 109.500
eval ($pd_v=$pd_x*   720.0) ANGLE SPG  CPD  HPD2 $pd_v 109.500
eval ($pd_v=$pd_x*   883.5) ANGLE SPG  CPD  CPE  $pd_v 109.500
eval ($pd_v=$pd_x*   720.0) ANGLE HPD1 CPD  HPD2 $pd_v 109.500
eval ($pd_v=$pd_x*   720.0) ANGLE HPD1 CPD  CPE  $pd_v 109.500
eval ($pd_v=$pd_x*   720.0) ANGLE HPD2 CPD  CPE  $pd_v 109.500
eval ($pd_v=$pd_x*   962.3) ANGLE CPD  CPE  OPE  $pd_v 121.000
eval ($pd_v=$pd_x*   958.0) ANGLE CPD  CPE  NPZ  $pd_v 115.000
eval ($pd_v=$pd_x*   959.3) ANGLE OPE  CPE  NPZ  $pd_v 124.000
eval ($pd_v=$pd_x*   558.1) ANGLE CPE  NPZ  HPZ  $pd_v 123.000
eval ($pd_v=$pd_x*   962.6) ANGLE CPE  NPZ  CP3  $pd_v 122.000
eval ($pd_v=$pd_x*   724.2) ANGLE HPZ  NPZ  CP3  $pd_v 120.000
eval ($pd_v=$pd_x*   484.2) ANGLE NPZ  CP3  HP3  $pd_v 109.500
eval ($pd_v=$pd_x*   883.5) ANGLE NPZ  CP3  CP4  $pd_v 109.500
eval ($pd_v=$pd_x*   883.5) ANGLE NPZ  CP3  CP2  $pd_v 109.500
eval ($pd_v=$pd_x*   720.0) ANGLE HP3  CP3  CP4  $pd_v 109.500
eval ($pd_v=$pd_x*   720.0) ANGLE HP3  CP3  CP2  $pd_v 109.500
eval ($pd_v=$pd_x*   800.0) ANGLE CP4  CP3  CP2  $pd_v 104.000
eval ($pd_v=$pd_x*   720.0) ANGLE CP3  CP4  HP41 $pd_v 109.500
eval ($pd_v=$pd_x*   720.0) ANGLE CP3  CP4  HP42 $pd_v 109.500
eval ($pd_v=$pd_x*   800.0) ANGLE CP3  CP4  CP5  $pd_v 104.000
eval ($pd_v=$pd_x*   760.0) ANGLE HP41 CP4  HP42 $pd_v 109.500
eval ($pd_v=$pd_x*   720.0) ANGLE HP41 CP4  CP5  $pd_v 109.500
eval ($pd_v=$pd_x*   720.0) ANGLE HP42 CP4  CP5  $pd_v 109.500
eval ($pd_v=$pd_x*   883.5) ANGLE CP4  CP5  CP7  $pd_v 109.500
eval ($pd_v=$pd_x*   883.5) ANGLE CP4  CP5  CP6  $pd_v 109.500
eval ($pd_v=$pd_x*   800.0) ANGLE CP4  CP5  NP1  $pd_v 104.000
eval ($pd_v=$pd_x*   883.5) ANGLE CP7  CP5  CP6  $pd_v 109.500
eval ($pd_v=$pd_x*   883.2) ANGLE CP7  CP5  NP1  $pd_v 111.000
eval ($pd_v=$pd_x*   883.2) ANGLE CP6  CP5  NP1  $pd_v 111.000
eval ($pd_v=$pd_x*   720.0) ANGLE CP5  CP7  HP72 $pd_v 109.500
eval ($pd_v=$pd_x*   720.0) ANGLE CP5  CP7  HP73 $pd_v 109.500
eval ($pd_v=$pd_x*   720.0) ANGLE CP5  CP7  HP71 $pd_v 109.500
eval ($pd_v=$pd_x*   720.0) ANGLE HP72 CP7  HP73 $pd_v 109.500
eval ($pd_v=$pd_x*   720.0) ANGLE HP72 CP7  HP71 $pd_v 109.500
eval ($pd_v=$pd_x*   720.0) ANGLE HP73 CP7  HP71 $pd_v 109.500
eval ($pd_v=$pd_x*   720.0) ANGLE CP5  CP6  HP62 $pd_v 109.500
eval ($pd_v=$pd_x*   720.0) ANGLE CP5  CP6  HP63 $pd_v 109.500
eval ($pd_v=$pd_x*   720.0) ANGLE CP5  CP6  HP61 $pd_v 109.500
eval ($pd_v=$pd_x*   720.0) ANGLE HP62 CP6  HP63 $pd_v 109.500
eval ($pd_v=$pd_x*   720.0) ANGLE HP62 CP6  HP61 $pd_v 109.500
eval ($pd_v=$pd_x*   720.0) ANGLE HP63 CP6  HP61 $pd_v 109.500
eval ($pd_v=$pd_x*   722.1) ANGLE CP5  NP1  OP1  $pd_v 109.500
eval ($pd_v=$pd_x*   800.0) ANGLE CP5  NP1  CP2  $pd_v 104.000
eval ($pd_v=$pd_x*   722.1) ANGLE OP1  NP1  CP2  $pd_v 109.500
eval ($pd_v=$pd_x*   764.5) ANGLE NP1  OP1  HP1  $pd_v 109.500
eval ($pd_v=$pd_x*   800.0) ANGLE CP3  CP2  NP1  $pd_v 104.000
eval ($pd_v=$pd_x*   883.5) ANGLE CP3  CP2  CP8  $pd_v 109.500
eval ($pd_v=$pd_x*   883.5) ANGLE CP3  CP2  CP9  $pd_v 109.500
eval ($pd_v=$pd_x*   883.2) ANGLE NP1  CP2  CP8  $pd_v 111.000
eval ($pd_v=$pd_x*   883.2) ANGLE NP1  CP2  CP9  $pd_v 111.000
eval ($pd_v=$pd_x*   883.5) ANGLE CP8  CP2  CP9  $pd_v 109.500
eval ($pd_v=$pd_x*   720.0) ANGLE CP2  CP8  HP82 $pd_v 109.500
eval ($pd_v=$pd_x*   720.0) ANGLE CP2  CP8  HP83 $pd_v 109.500
eval ($pd_v=$pd_x*   720.0) ANGLE CP2  CP8  HP81 $pd_v 109.500
eval ($pd_v=$pd_x*   720.0) ANGLE HP82 CP8  HP83 $pd_v 109.500
eval ($pd_v=$pd_x*   720.0) ANGLE HP82 CP8  HP81 $pd_v 109.500
eval ($pd_v=$pd_x*   720.0) ANGLE HP83 CP8  HP81 $pd_v 109.500
eval ($pd_v=$pd_x*   720.0) ANGLE CP2  CP9  HP92 $pd_v 109.500
eval ($pd_v=$pd_x*   720.0) ANGLE CP2  CP9  HP93 $pd_v 109.500
eval ($pd_v=$pd_x*   720.0) ANGLE CP2  CP9  HP91 $pd_v 109.500
eval ($pd_v=$pd_x*   720.0) ANGLE HP92 CP9  HP93 $pd_v 109.500
eval ($pd_v=$pd_x*   720.0) ANGLE HP92 CP9  HP91 $pd_v 109.500
eval ($pd_v=$pd_x*   720.0) ANGLE HP93 CP9  HP91 $pd_v 109.500

eval ($pd_v=$pd_x*    80.0) IMPR CP_Y OP_Y HP_Y CPA  $pd_v 0   0.000
eval ($pd_v=$pd_x*   160.1) IMPR CPA  CP_Y CPB  NP_Y $pd_v 0  35.264
eval ($pd_v=$pd_x*   160.1) IMPR NP_Y CPA  HP4  HP5  $pd_v 0  35.264
eval ($pd_v=$pd_x*   160.1) IMPR CPB  CPA  HPB1 HPB2 $pd_v 0  35.264
eval ($pd_v=$pd_x*   160.1) IMPR CPD  SPG  HPD1 HPD2 $pd_v 0  35.264
eval ($pd_v=$pd_x*    80.0) IMPR CPE  CPD  OPE  NPZ  $pd_v 0   0.000
eval ($pd_v=$pd_x*    80.0) IMPR NPZ  CPE  HPZ  CP3  $pd_v 0   0.000
eval ($pd_v=$pd_x*   160.1) IMPR CP3  NPZ  CP2  CP4  $pd_v 0  35.264
eval ($pd_v=$pd_x*   160.1) IMPR CP4  CP3  HP41 HP42 $pd_v 0  35.264
eval ($pd_v=$pd_x*   160.1) IMPR CP5  CP4  CP7  CP6  $pd_v 0  35.264
eval ($pd_v=$pd_x*   160.1) IMPR CP7  CP5  HP72 HP73 $pd_v 0  35.264
eval ($pd_v=$pd_x*   160.1) IMPR CP6  CP5  HP62 HP63 $pd_v 0  35.264
eval ($pd_v=$pd_x*   160.1) IMPR NP1  CP5  CP2  OP1  $pd_v 0  35.264
eval ($pd_v=$pd_x*   160.1) IMPR CP2  CP3  CP8  NP1  $pd_v 0  35.264
eval ($pd_v=$pd_x*   160.1) IMPR CP8  CP2  HP82 HP83 $pd_v 0  35.264
eval ($pd_v=$pd_x*   160.1) IMPR CP9  CP2  HP92 HP93 $pd_v 0  35.264

eval ($pd_v=$pd_x*     0.6) DIHE CPB  CPA  CP_Y OP_Y $pd_v 6   0.000
eval ($pd_v=$pd_x*     8.1) DIHE CP_Y CPA  NP_Y HP2  $pd_v 3   0.000
eval ($pd_v=$pd_x*    19.6) DIHE SPG  CPB  CPA  CP_Y $pd_v 3   0.000
eval ($pd_v=$pd_x*     4.9) DIHE CPA  CPB  SPG  CPD  $pd_v 3   0.000
eval ($pd_v=$pd_x*     4.9) DIHE CPE  CPD  SPG  CPB  $pd_v 3   0.000
eval ($pd_v=$pd_x*     0.6) DIHE SPG  CPD  CPE  NPZ  $pd_v 6   0.000
eval ($pd_v=$pd_x*   641.1) DIHE CPD  CPE  NPZ  CP3  $pd_v 2 180.000
eval ($pd_v=$pd_x*     8.1) DIHE CP2  CP3  NPZ  CPE  $pd_v 3   0.000
eval ($pd_v=$pd_x*    19.6) DIHE CP5  CP4  CP3  NPZ  $pd_v 3   0.000
eval ($pd_v=$pd_x*    19.6) DIHE CP9  CP2  CP3  NPZ  $pd_v 3   0.000
eval ($pd_v=$pd_x*    19.6) DIHE NP1  CP5  CP4  CP3  $pd_v 3   0.000
eval ($pd_v=$pd_x*    19.6) DIHE HP71 CP7  CP5  CP4  $pd_v 3   0.000
eval ($pd_v=$pd_x*    19.6) DIHE HP61 CP6  CP5  CP4  $pd_v 3   0.000
eval ($pd_v=$pd_x*     8.1) DIHE CP4  CP5  NP1  CP2  $pd_v 3   0.000
eval ($pd_v=$pd_x*     0.9) DIHE CP5  NP1  OP1  HP1  $pd_v 3   0.000
eval ($pd_v=$pd_x*     8.1) DIHE CP9  CP2  NP1  CP5  $pd_v 3   0.000
eval ($pd_v=$pd_x*    19.6) DIHE HP81 CP8  CP2  CP3  $pd_v 3   0.000
eval ($pd_v=$pd_x*    19.6) DIHE HP91 CP9  CP2  CP3  $pd_v 3   0.000

NBONds
  TOLERANCE=0.5 NBXMOD=5 WMIN=1.5
  REPEL=1.0 REXPONENT=4 IREXPONENT=1 RCONST=16.0
  CTONNB=5.5 CTOFNB=6.0 CUTNB=7.0
END

NONBONDED OP_Y  0.10000 2.58361 0.10000 2.31634
NONBONDED CP_Y  0.10000 3.29633 0.10000 3.02906
NONBONDED HP_Y  0.10000 2.13816 0.10000 1.87089
NONBONDED CPA   0.10000 3.29633 0.10000 3.02906
NONBONDED HPA   0.10000 2.13816 0.10000 1.87089
NONBONDED NP_Y  0.10000 2.67270 0.10000 2.40543
NONBONDED HP4   0.10000 1.42544 0.10000 1.15817
NONBONDED HP5   0.10000 1.42544 0.10000 1.15817
NONBONDED HP2   0.10000 1.42544 0.10000 1.15817
NONBONDED CPB   0.10000 3.29633 0.10000 3.02906
NONBONDED HPB1  0.10000 2.13816 0.10000 1.87089
NONBONDED HPB2  0.10000 2.13816 0.10000 1.87089
NONBONDED SPG   0.10000 3.20724 0.10000 2.93997
NONBONDED CPD   0.10000 3.29633 0.10000 3.02906
NONBONDED HPD1  0.10000 2.13816 0.10000 1.87089
NONBONDED HPD2  0.10000 2.13816 0.10000 1.87089
NONBONDED CPE   0.10000 3.29633 0.10000 3.02906
NONBONDED OPE   0.10000 2.58361 0.10000 2.31634
NONBONDED NPZ   0.10000 2.67270 0.10000 2.40543
NONBONDED HPZ   0.10000 1.42544 0.10000 1.15817
NONBONDED CP3   0.10000 3.29633 0.10000 3.02906
NONBONDED HP3   0.10000 2.13816 0.10000 1.87089
NONBONDED CP4   0.10000 3.29633 0.10000 3.02906
NONBONDED HP41  0.10000 2.13816 0.10000 1.87089
NONBONDED HP42  0.10000 2.13816 0.10000 1.87089
NONBONDED CP5   0.10000 3.29633 0.10000 3.02906
NONBONDED CP7   0.10000 3.29633 0.10000 3.02906
NONBONDED HP72  0.10000 2.13816 0.10000 1.87089
NONBONDED HP73  0.10000 2.13816 0.10000 1.87089
NONBONDED HP71  0.10000 2.13816 0.10000 1.87089
NONBONDED CP6   0.10000 3.29633 0.10000 3.02906
NONBONDED HP62  0.10000 2.13816 0.10000 1.87089
NONBONDED HP63  0.10000 2.13816 0.10000 1.87089
NONBONDED HP61  0.10000 2.13816 0.10000 1.87089
NONBONDED NP1   0.10000 2.67270 0.10000 2.40543
NONBONDED OP1   0.10000 2.58361 0.10000 2.31634
NONBONDED HP1   0.10000 1.42544 0.10000 1.15817
NONBONDED CP2   0.10000 3.29633 0.10000 3.02906
NONBONDED CP8   0.10000 3.29633 0.10000 3.02906
NONBONDED HP82  0.10000 2.13816 0.10000 1.87089
NONBONDED HP83  0.10000 2.13816 0.10000 1.87089
NONBONDED HP81  0.10000 2.13816 0.10000 1.87089
NONBONDED CP9   0.10000 3.29633 0.10000 3.02906
NONBONDED HP92  0.10000 2.13816 0.10000 1.87089
NONBONDED HP93  0.10000 2.13816 0.10000 1.87089
NONBONDED HP91  0.10000 2.13816 0.10000 1.87089



!added by nocky
 BOND  S     C      1000.000 {sd=     0.001}      1.822
 ANGLe  CH2E S     C        500.00 {sd=     0.031}    100.00   
 ANGLe  S    C     CH1E     500.00 {sd=     0.031}    113.00
 ANGLe  S    C     O        500.00 {sd=     0.031}    120.00
 IMPRoper  HA   CH1E CH2E HA        500.00 {sd=     0.031}    0    180.0000 
 DIHEdral  O       C     CH1E    HA    5.00     3  0.0000
 DIHEdral  CH2E    S     C      CH1E   5.00     3  0.0000
 DIHEdral  CH2E    S     C      O      5.00     3  0.0000


!added by hans for trimethyl-lysine (220307)
 BOND     CH3E NC4           1000.000 {sd=     0.001}      1.4700
 BOND     CH2E NC4           1000.000 {sd=     0.001}      1.4700
 ANGLe    CH2E NC4  CH3E      500.000 {sd=     0.031}    109.5000
 ANGLe    CH3E NC4  CH3E      500.000 {sd=     0.031}    109.5000
 ANGLe    NC4  CH3E HA        500.000 {sd=     0.031}    109.5000
 ANGLe    CH2E CH2E NC4       500.000 {sd=     0.031}    109.5000
 ANGLe    HA   CH2E NC4       500.000 {sd=     0.031}    109.5000
 IMPRoper HA   HA   CH2E NC4  500.000 {sd=     0.031}  0  35.2640
 IMPRoper CH3E CH3E CH2E CH3E 500.000 {sd=     0.031}  0  35.2640
 DIHEdral NC4  CH2E CH2E CH2E   1.000                  3   0.0000
 DIHEdral CH3E NC4  CH2E CH2E   1.000                  3 180.0000

!added by A. Bonvin for dimethyl-lysine (30-04-2009)
 BOND     HC   NC3           1000.000 {sd=     0.001}      1.040
 BOND     CH3E NC3           1000.000 {sd=     0.001}      1.4700
 BOND     CH2E NC3           1000.000 {sd=     0.001}      1.4700
 ANGLe    CH2E NC3  HC        500.000 {sd=     0.031}    109.5000
 ANGLe    CH2E NC3  CH3E      500.000 {sd=     0.031}    109.5000
 ANGLe    HC   NC3  CH3E      500.000 {sd=     0.031}    109.5000
 ANGLe    CH3E NC3  CH3E      500.000 {sd=     0.031}    109.5000
 ANGLe    NC3  CH3E HA        500.000 {sd=     0.031}    109.5000
 ANGLe    NC3  HC   HC        500.000 {sd=     0.031}    109.5000
 ANGLe    CH2E CH2E NC3       500.000 {sd=     0.031}    109.5000
 ANGLe    HA   CH2E NC3       500.000 {sd=     0.031}    109.5000
 IMPRoper HA   HA   CH2E NC3  500.000 {sd=     0.031}  0  35.2640
 IMPRoper CH3E CH3E CH2E HC   500.000 {sd=     0.031}  0  35.2640
 DIHEdral NC3  CH2E CH2E CH2E   1.000                  3   0.0000
 DIHEdral CH3E NC3  CH2E CH2E   1.000                  3 180.0000

!added by A. Bonvin for monomethyl-lysine (30-04-2009)
 BOND     CH3E NC2           1000.000 {sd=     0.001}      1.4700
 BOND     CH2E NC2           1000.000 {sd=     0.001}      1.4700
 ANGLe    CH2E NC2  HC        500.000 {sd=     0.031}    109.5000
 ANGLe    CH2E NC2  CH3E      500.000 {sd=     0.031}    109.5000
 ANGLe    CH3E NC2  HC        500.000 {sd=     0.031}    109.5000
 ANGLe    NC2  CH3E HA        500.000 {sd=     0.031}    109.5000
 ANGLe    NC2  HC   HC        500.000 {sd=     0.031}    109.5000
 ANGLe    CH2E CH2E NC2       500.000 {sd=     0.031}    109.5000
 ANGLe    HA   CH2E NC2       500.000 {sd=     0.031}    109.5000
 IMPRoper HA   HA   CH2E NC2  500.000 {sd=     0.031}  0  35.2640
 IMPRoper HC   CH3E CH2E HC   500.000 {sd=     0.031}  0  35.2640
 DIHEdral NC2  CH2E CH2E CH2E   1.000                  3   0.0000
 DIHEdral CH3E NC2  CH2E CH2E   1.000                  3 180.0000


 BOND  C    CH1E    1000.000 {sd=     0.001}      1.525
 BOND  C    CH2E    1000.000 {sd=     0.001}      1.516
 BOND  C    CH3E    1000.000 {sd=     0.001}      1.507   ! added EAB
 BOND  C    CH2G    1000.000 {sd=     0.001}      1.516
 BOND  C    N       1000.000 {sd=     0.001}      1.341
 BOND  C    NC2     1000.000 {sd=     0.001}      1.326
 BOND  C    NH1     1000.000 {sd=     0.001}      1.329
 BOND  C    NH2     1000.000 {sd=     0.001}      1.328
 BOND  C    O       1000.000 {sd=     0.001}      1.231
 BOND  C    OC      1000.000 {sd=     0.001}      1.249
 BOND  C5   CH2E    1000.000 {sd=     0.001}      1.497
 BOND  C5   CR1E    1000.000 {sd=     0.001}      1.357
 BOND  C5   CR1H    1000.000 {sd=     0.001}      1.354
 BOND  C5   NH1     1000.000 {sd=     0.001}      1.378
 BOND  C5   NR      1000.000 {sd=     0.001}      1.373
 BOND  C5W  CH2E    1000.000 {sd=     0.001}      1.498
 BOND  C5W  CR1E    1000.000 {sd=     0.001}      1.365
 BOND  C5W  CW      1000.000 {sd=     0.001}      1.433
 BOND  CF   CH2E    1000.000 {sd=     0.001}      1.502
 BOND  CF   CR1E    1000.000 {sd=     0.001}      1.385
 BOND  CH1E CH1E    1000.000 {sd=     0.001}      1.540
 BOND  CH1E CH2E    1000.000 {sd=     0.001}      1.530
 BOND  CH1E CH3E    1000.000 {sd=     0.001}      1.521
 BOND  CH1E HA      1000.000 {sd=     0.001}      1.080
 BOND  CH1E N       1000.000 {sd=     0.001}      1.466
 BOND  CH1E NH1     1000.000 {sd=     0.001}      1.458
 BOND  CH1E NH3     1000.000 {sd=     0.001}      1.486
 BOND  CH1E OH1     1000.000 {sd=     0.001}      1.433 !included 14-apr-99
 BOND  CH1E OHP     1000.000 {sd=     0.001}      1.433 
 BOND  CH2E CH2E    1000.000 {sd=     0.001}      1.520
 BOND  CH2E CH2P    1000.000 {sd=     0.001}      1.490
 BOND  CH2E CH3E    1000.000 {sd=     0.001}      1.513
 BOND  CH2E CY      1000.000 {sd=     0.001}      1.512
 BOND  CH2E HA      1000.000 {sd=     0.001}      1.080
 BOND  CH2E NH1     1000.000 {sd=     0.001}      1.460
 BOND  CH2E NH3     1000.000 {sd=     0.001}      1.489
 BOND  CH2E OH1     1000.000 {sd=     0.001}      1.417
 BOND  CH2E OHP     1000.000 {sd=     0.001}      1.417
 BOND  CH2E S       1000.000 {sd=     0.001}      1.822
 BOND  CH2E SH1E    1000.000 {sd=     0.001}      1.808
 BOND  CH2E SM      1000.000 {sd=     0.001}      1.803
 BOND  CH2G HA      1000.000 {sd=     0.001}      1.080
 BOND  CH2G NH1     1000.000 {sd=     0.001}      1.451
 BOND  CH2G NH3     1000.000 {sd=     0.001}      1.489
 BOND  CH2P CH2P    1000.000 {sd=     0.001}      1.504
 BOND  CH2E CH1P    1000.000 {sd=     0.001}      1.504
 BOND  CH2P CH1P    1000.000 {sd=     0.001}      1.504
 BOND  CH1P HA      1000.000 {sd=     0.001}      1.080
 BOND  CH2P HA      1000.000 {sd=     0.001}      1.080
 BOND  CH1P OH1     1000.000 {sd=     0.001}      1.433
 BOND  CH2P N       1000.000 {sd=     0.001}      1.473
 BOND  CH1P N       1000.000 {sd=     0.001}      1.473
 BOND  CH2P NH3     1000.000 {sd=     0.001}      1.474
 BOND  CH1P NH3     1000.000 {sd=     0.001}      1.474
 BOND  CH3E HA      1000.000 {sd=     0.001}      1.080
 BOND  CH3E SM      1000.000 {sd=     0.001}      1.791
 BOND  CR1E CR1E    1000.000 {sd=     0.001}      1.382
 BOND  CR1E CR1W    1000.000 {sd=     0.001}      1.400
 BOND  CR1E CW      1000.000 {sd=     0.001}      1.398
 BOND  CR1E CY      1000.000 {sd=     0.001}      1.389
 BOND  CR1E CY2     1000.000 {sd=     0.001}      1.379
 BOND  CR1E HA      1000.000 {sd=     0.001}      1.080
 BOND  CR1E NH1     1000.000 {sd=     0.001}      1.373
 BOND  CR1E NR      1000.000 {sd=     0.001}      1.391
 BOND  CR1H HA      1000.000 {sd=     0.001}      1.081
 BOND  CR1H NH1     1000.000 {sd=     0.001}      1.374
 BOND  CR1H NR      1000.000 {sd=     0.001}      1.374
 BOND  CR1W CR1W    1000.000 {sd=     0.001}      1.368
 BOND  CR1W CW      1000.000 {sd=     0.001}      1.393
 BOND  CR1W HA      1000.000 {sd=     0.001}      1.080
 BOND  CRH  HA      1000.000 {sd=     0.001}      1.080
 BOND  CRH  NH1     1000.000 {sd=     0.001}      1.341
 BOND  CRH  NR      1000.000 {sd=     0.001}      1.319
 BOND  CRHH HA      1000.000 {sd=     0.001}      1.080
 BOND  CRHH NH1     1000.000 {sd=     0.001}      1.321
 BOND  CRHH NR     1000.000 {sd=     0.001}      1.321
 BOND  CW   CW      1000.000 {sd=     0.001}      1.409
 BOND  CW   NH1     1000.000 {sd=     0.001}      1.370
 BOND  CY2  OH1     1000.000 {sd=     0.001}      1.376
 BOND  CY2  OHP     1000.000 {sd=     0.001}      1.376
 BOND  CY2  OUF     1000.000 {sd=     0.001}      1.376
 BOND  H    NH1     1000.000 {sd=     0.001}      0.980
 BOND  H    NH2     1000.000 {sd=     0.001}      0.980
 BOND  H    OH1     1000.000 {sd=     0.001}      0.960
 BOND  H    SH1E    1000.000 {sd=     0.001}      1.325 ! from CHARMM22
 BOND  HC   NC2     1000.000 {sd=     0.001}      1.000
 BOND  HC   NH3     1000.000 {sd=     0.001}      1.040
 BOND  S    S       1000.000 {sd=     0.001}      2.030
 BOND  CCIS  CH1E    1000.000 {sd=     0.001}      1.525 ! CCIS is for cis peptide bond
 BOND  CCIS  CH2E    1000.000 {sd=     0.001}      1.516
 BOND  CCIS  CH2G    1000.000 {sd=     0.001}      1.516
 BOND  CCIS  N       1000.000 {sd=     0.001}      1.341
 BOND  CCIS  NC2     1000.000 {sd=     0.001}      1.326
 BOND  CCIS  NH1     1000.000 {sd=     0.001}      1.329
 BOND  CCIS  NH2     1000.000 {sd=     0.001}      1.328
 BOND  CCIS  O       1000.000 {sd=     0.001}      1.231
 BOND  CCIS  OC      1000.000 {sd=     0.001}      1.249
 BOND  NR    PP      1000.0  1.610
 BOND  SM    PP      1000.0  2.094
 BOND  PP    OR3     1000.0  1.610
 BOND  PP    OHP     1000.0  1.610
 BOND  PP    OP1     1000.0  1.485
 BOND  SUF   OUF     1000.0  1.475
 BOND  OC    CA+2    1000.0  2.500

! Residue DRG
evaluate ($pd_x = 1.0)

eval ($pd_v=$pd_x* 16000.0) BOND  CHAC  CHAS $pd_v   1.530
eval ($pd_v=$pd_x* 16000.0) BOND  CHAS  CHAD $pd_v   1.530
eval ($pd_v=$pd_x* 18000.0) BOND  CHAS  NHAQ $pd_v   1.470
eval ($pd_v=$pd_x* 16000.0) BOND  CHAS  CHAO $pd_v   1.530
eval ($pd_v=$pd_x* 12000.0) BOND  NHAQ  OHAH $pd_v   1.460
eval ($pd_v=$pd_x* 18000.0) BOND  NHAQ  CHAR $pd_v   1.470
eval ($pd_v=$pd_x* 15000.0) BOND  OHAH  HHAA $pd_v   1.000
eval ($pd_v=$pd_x* 16000.0) BOND  CHAR  CHAA $pd_v   1.530
eval ($pd_v=$pd_x* 16000.0) BOND  CHAR  CHAB $pd_v   1.530
eval ($pd_v=$pd_x* 16000.0) BOND  CHAR  CHAI $pd_v   1.530
eval ($pd_v=$pd_x* 20000.0) BOND  CHAI  CHAO $pd_v   1.330
eval ($pd_v=$pd_x* 16000.0) BOND  CHAO  CHAJ $pd_v   1.530
eval ($pd_v=$pd_x* 18000.0) BOND  CHAJ  SHAL $pd_v   1.830
eval ($pd_v=$pd_x* 20000.0) BOND  SHAL  S    $pd_v   2.040
eval ($pd_v=$pd_x* 18000.0) BOND  S     CHB  $pd_v   1.830
eval ($pd_v=$pd_x* 16000.0) BOND  CHB   CHA  $pd_v   1.530
eval ($pd_v=$pd_x* 16000.0) BOND  CHA   CH_Y $pd_v   1.530
eval ($pd_v=$pd_x* 18000.0) BOND  CHA   NH_Y $pd_v   1.470
eval ($pd_v=$pd_x* 20000.0) BOND  CH_Y  OHXT $pd_v   1.250
eval ($pd_v=$pd_x* 20000.0) BOND  CH_Y  OH_Y $pd_v   1.250
eval ($pd_v=$pd_x* 17900.0) BOND  NH_Y  HHAC $pd_v   1.000
eval ($pd_v=$pd_x* 17900.0) BOND  NH_Y  HHAD $pd_v   1.000
eval ($pd_v=$pd_x* 17900.0) BOND  NH_Y  HHAB $pd_v   1.000


 ANGLe  C    CH1E CH1E     500.00 {sd=     0.031}    109.0754
 ANGLe  C    CH1E CH2E     500.00 {sd=     0.031}    110.1094
 ANGLe  C    CH1E CH3E     500.00 {sd=     0.031}    110.4838
 ANGLe  C    CH1E HA       500.00 {sd=     0.031}    108.9914
 ANGLe  C    CH1E N        500.00 {sd=     0.031}    111.9082
 ANGLe  C    CH1E NH1      500.00 {sd=     0.031}    111.1396
 ANGLe  C    CH1E NH3      500.00 {sd=     0.031}    111.1703
 ANGLe  C    CH2E CH1E     500.00 {sd=     0.031}    112.5947
 ANGLe  C    CH2E CH2E     500.00 {sd=     0.031}    112.5943
 ANGLe  C    CH2E HA       500.00 {sd=     0.031}    108.5877
 ANGLe  C    CH3E HA       500.00 {sd=     0.031}    108.5877
 ANGLe  C    CH2G HA       500.00 {sd=     0.031}    108.8528
 ANGLe  C    CH2G NH1      500.00 {sd=     0.031}    112.4999
 ANGLe  C    CH2G NH3      500.00 {sd=     0.031}    112.4990
 ANGLe  C    N    CH1E     500.00 {sd=     0.031}    122.7632
 ANGLe  C    N    CH2P     500.00 {sd=     0.031}    125.1134
 ANGLe  C    N    CH1P     500.00 {sd=     0.031}    125.1134
 ANGLe  C    NC2  HC       500.00 {sd=     0.031}    119.9992
 ANGLe  C    NH1  CH1E     500.00 {sd=     0.031}    121.6541
 ANGLe  C    NH1  CH2E     500.00 {sd=     0.031}    124.1226
 ANGLe  C    NH1  CH2G     500.00 {sd=     0.031}    120.5859
 ANGLe  C    NH1  H        500.00 {sd=     0.031}    119.2489
 ANGLe  C    NH2  H        500.00 {sd=     0.031}    118.1853
 ANGLe  C5   CH2E CH1E     500.00 {sd=     0.031}    113.7931
 ANGLe  C5   CH2E HA       500.00 {sd=     0.031}    108.1195
 ANGLe  C5   CR1E HA       500.00 {sd=     0.031}    126.2616
 ANGLe  C5   CR1E NH1      500.00 {sd=     0.031}    106.5015
 ANGLe  C5   CR1E NR       500.00 {sd=     0.031}    109.4272
 ANGLe  C5   CR1H HA       500.00 {sd=     0.031}    126.4031
 ANGLe  C5   CR1H NH1      500.00 {sd=     0.031}    107.1610
 ANGLe  C5   CR1H NR       500.00 {sd=     0.031}    107.1610
 ANGLe  C5   NH1  CRH      500.00 {sd=     0.031}    108.0959
 ANGLe  C5   NH1  CRHH     500.00 {sd=     0.031}    109.4352
 ANGLe  C5   NR   CRHH     500.00 {sd=     0.031}    109.4352
 ANGLe  C5   NH1  H        500.00 {sd=     0.031}    126.0497
 ANGLe  C5   NR   CRH      500.00 {sd=     0.031}    105.7163
 ANGLe  C5W  CH2E CH1E     500.00 {sd=     0.031}    113.5788
 ANGLe  C5W  CH2E HA       500.00 {sd=     0.031}    108.1831
 ANGLe  C5W  CR1E HA       500.00 {sd=     0.031}    124.5037
 ANGLe  C5W  CR1E NH1      500.00 {sd=     0.031}    110.0962
 ANGLe  C5W  CW   CR1E     500.00 {sd=     0.031}    133.9320
 ANGLe  C5W  CW   CW       500.00 {sd=     0.031}    107.2333
 ANGLe  CF   CH2E CH1E     500.00 {sd=     0.031}    113.7937
 ANGLe  CF   CH2E HA       500.00 {sd=     0.031}    108.1268
 ANGLe  CF   CR1E CR1E     500.00 {sd=     0.031}    120.7850
 ANGLe  CF   CR1E HA       500.00 {sd=     0.031}    119.4540
 ANGLe  CH1E C    N        500.00 {sd=     0.031}    116.9940
 ANGLe  CH3E C    N        500.00 {sd=     0.031}    116.9940
 ANGLe  CH1E C    NH1      500.00 {sd=     0.031}    116.1998
 ANGLe  CH3E C    NH1      500.00 {sd=     0.031}    116.1998
 ANGLe  CH1E C    O        500.00 {sd=     0.031}    120.8258
 ANGLe  CH1E C    OC       500.00 {sd=     0.031}    118.0611
 ANGLe  CH1E CH1E CH2E     500.00 {sd=     0.031}    110.3824
 ANGLe  CH1E CH1E CH3E     500.00 {sd=     0.031}    110.4882
 ANGLe  CH1E CH1E HA       500.00 {sd=     0.031}    108.2775
 ANGLe  CH1E CH1E NH1      500.00 {sd=     0.031}    111.4875
 ANGLe  CH1E CH1E NH3      500.00 {sd=     0.031}    111.4875 
 ANGLe  CH1E CH1E OH1      500.00 {sd=     0.031}    109.600  ! included 14-APR-99
 ANGLe  CH1E CH1E OHP      500.00 {sd=     0.031}    109.600  
 ANGLe  CH1E CH2E CH1E     500.00 {sd=     0.031}    116.0385
 ANGLe  CH1E CH2E CH2E     500.00 {sd=     0.031}    114.0589
 ANGLe  CH1E CH2E CH2P     500.00 {sd=     0.031}    104.3952
 ANGLe  CH1E CH2E CH1P     500.00 {sd=     0.031}    104.3952
 ANGLe  CH1E CH2E CH3E     500.00 {sd=     0.031}    113.7404
 ANGLe  CH1E CH2E CY       500.00 {sd=     0.031}    113.8748
 ANGLe  CH1E CH2E HA       500.00 {sd=     0.031}    109.2833
 ANGLe  CH1E CH2E OH1      500.00 {sd=     0.031}    111.0593
 ANGLe  CH1E CH2E OHP      500.00 {sd=     0.031}    111.0593
 ANGLe  CH1E CH2E S        500.00 {sd=     0.031}    114.3551
 ANGLe  CH1E CH2E SH1E     500.00 {sd=     0.031}    114.3558
 ANGLe  CH1E CH2E SM       500.00 {sd=     0.031}    114.3558
 ANGLe  CH1E CH3E HA       500.00 {sd=     0.031}    109.4726
 ANGLe  CH1E N    CH2P     500.00 {sd=     0.031}    112.1234
 ANGLe  CH1E N    CH1P     500.00 {sd=     0.031}    112.1234
 ANGLe  CH1E NH1  H        500.00 {sd=     0.031}    119.2367
 ANGLe  CH1E NH3  CH2P     500.00 {sd=     0.031}    110.6738
 ANGLe  CH1E NH3  CH1P     500.00 {sd=     0.031}    110.6738
!!! ANGLe  CH1E NH3  HC       500.00 {sd=     0.031}    104.9708
 ANGLe  CH1E NH3  HC       500.00 {sd=     0.031}    109.4688 !estimated (from Gly) 14-APR-99
 ANGLe  CH1E OH1  H        500.00 {sd=     0.031}    109.5    ! included 14-APR-99
 ANGLe  CH1P OH1  H        500.00 {sd=     0.031}    109.5    ! included 14-APR-99
 ANGLe  CH1  OHP  PP       500.00 {sd=     0.031}    120.0000
 ANGLe  CH2  OHP  PP       500.00 {sd=     0.031}    120.0000
 ANGLe  CH1E OHP  PP       500.00 {sd=     0.031}    120.0000
 ANGLe  CH2E OHP  PP       500.00 {sd=     0.031}    120.0000
 ANGLe  CH2E C    NH2      500.00 {sd=     0.031}    116.4617
 ANGLe  CH2E C    O        500.00 {sd=     0.031}    120.9106
 ANGLe  CH3E C    O        500.00 {sd=     0.031}    120.9106 ! added EAB
 ANGLe  CH2E C    OC       500.00 {sd=     0.031}    118.4969
 ANGLe  CH2E C5   CR1E     500.00 {sd=     0.031}    129.6325
 ANGLe  CH2E C5   CR1H     500.00 {sd=     0.031}    131.2043
 ANGLe  CH2E C5   NH1      500.00 {sd=     0.031}    123.4237
 ANGLe  CH2E C5   NR       500.00 {sd=     0.031}    121.5772
 ANGLe  CH2E C5W  CR1E     500.00 {sd=     0.031}    126.9191
 ANGLe  CH2E C5W  CW       500.00 {sd=     0.031}    126.8167
 ANGLe  CH2E CF   CR1E     500.00 {sd=     0.031}    120.6527
 ANGLe  CH2E CH1E CH3E     500.00 {sd=     0.031}    110.6376
 ANGLe  CH2E CH1E HA       500.00 {sd=     0.031}    109.2487
 ANGLe  CH2E CH1E N        500.00 {sd=     0.031}    103.0552
 ANGLe  CH2E CH1E NH1      500.00 {sd=     0.031}    110.4763
 ANGLe  CH2E CH1E NH3      500.00 {sd=     0.031}    110.4763  ! N term from 108.4924 14-MAR-00
 ANGLe  CH2E CH2E CH2E     500.00 {sd=     0.031}    111.3121
 ANGLe  CH2E CH2E HA       500.00 {sd=     0.031}    108.7236
 ANGLe  CH2E CH2E NH1      500.00 {sd=     0.031}    111.9978
 ANGLe  CH2E CH2E NH3      500.00 {sd=     0.031}    111.8939
 ANGLe  CH2E CH2E SM       500.00 {sd=     0.031}    112.6822
 ANGLe  CH2E CH2P CH2P     500.00 {sd=     0.031}    106.1000
 ANGLe  CH2E CH1P CH2P     500.00 {sd=     0.031}    106.1000
 ANGLe  CH2E CH2P CH1P     500.00 {sd=     0.031}    106.1000
 ANGLe  CH1P CH2P HA       500.00 {sd=     0.031}    109.9548
 ANGLe  CH2P CH1P HA       500.00 {sd=     0.031}    109.9548
 ANGLe  CH1P CH1E HA       500.00 {sd=     0.031}    109.9548
 ANGLe  CH2P CH1E HA       500.00 {sd=     0.031}    109.9548
 ANGLe  CH1P CH2E HA       500.00 {sd=     0.031}    109.9548
 ANGLe  CH2P CH2E HA       500.00 {sd=     0.031}    109.9548
 ANGLe  CH2E CH2P HA       500.00 {sd=     0.031}    109.9548
 ANGLe  CH1E CH1P HA       500.00 {sd=     0.031}    109.9548
 ANGLe  CH1E CH2P HA       500.00 {sd=     0.031}    109.9548
 ANGLe  CH2E CH1P HA       500.00 {sd=     0.031}    109.9548
 ANGLe  CH2E CH1P OH1      500.00 {sd=     0.031}    109.9548
 ANGLe  CH2E CH3E HA       500.00 {sd=     0.031}    109.4694
 ANGLe  CH2E CY   CR1E     500.00 {sd=     0.031}    120.9304
 ANGLe  CH2E NH1  H        500.00 {sd=     0.031}    118.0987
 ANGLe  CH2E NH3  HC       500.00 {sd=     0.031}    109.4693
 ANGLe  CH2E OH1  H        500.00 {sd=     0.031}    109.4969
 ANGLe  CH2E S    S        500.00 {sd=     0.031}    103.7998
 ANGLe  CH2E SH1E H        500.00 {sd=     0.031}    107.9769
 ANGLe  CH2E SM   CH3E     500.00 {sd=     0.031}    100.8987
 ANGLe  CH2E SM   PP       500.00 {sd=     0.031}     96.53
 ANGLe  CH2G C    N        500.00 {sd=     0.031}    117.7918
 ANGLe  CH2G C    NH1      500.00 {sd=     0.031}    116.3225
 ANGLe  CH2G C    O        500.00 {sd=     0.031}    120.6203
 ANGLe  CH2G C    OC       500.00 {sd=     0.031}    118.4971
 ANGLe  CH2G NH1  H        500.00 {sd=     0.031}    119.7297
 ANGLe  CH2G NH3  HC       500.00 {sd=     0.031}    109.4688
 ANGLe  CH2P CH2P HA       500.00 {sd=     0.031}    110.3818
 ANGLe  CH2P CH1P OH1      500.00 {sd=     0.031}    110.3818
 ANGLe  CH2P CH2P N        500.00 {sd=     0.031}    103.2695
 ANGLe  CH2P CH2P NH3      500.00 {sd=     0.031}    103.6880
 ANGLe  CH2P CH1P N        500.00 {sd=     0.031}    103.2695
 ANGLe  CH1P CH2P N        500.00 {sd=     0.031}    103.2695
 ANGLe  CH1P CH2P NH3      500.00 {sd=     0.031}    103.6880
 ANGLe  CH2P CH1P NH3      500.00 {sd=     0.031}    103.6880
 ANGLe  CH2P NH3  HC       500.00 {sd=     0.031}    123.8148
 ANGLe  CH1P NH3  HC       500.00 {sd=     0.031}    123.8148
 ANGLe  CH3E CH1E CH3E     500.00 {sd=     0.031}    110.7707
 ANGLe  CH3E CH1E HA       500.00 {sd=     0.031}    108.1279
 ANGLe  CH3E CH1E NH1      500.00 {sd=     0.031}    110.3844
 ANGLe  CH3E CH1E NH3      500.00 {sd=     0.031}    110.4751
 ANGLe  CH3E CH1E OH1      500.00 {sd=     0.031}    109.300 !included 14-APR-99
 ANGLe  CH3E CH1E OHP      500.00 {sd=     0.031}    109.300 
 ANGLe  CH3E CH2E HA       500.00 {sd=     0.031}    108.0408
 ANGLe  CH3E CH2E OH1      500.00 {sd=     0.031}    108.0961
 ANGLe  CR1E C5   NH1      500.00 {sd=     0.031}    105.6758
 ANGLe  CR1E C5   NR       500.00 {sd=     0.031}    109.3402
 ANGLe  CR1E C5W  CW       500.00 {sd=     0.031}    106.2641
 ANGLe  CR1E CF   CR1E     500.00 {sd=     0.031}    118.6946
 ANGLe  CR1E CR1E CR1E     500.00 {sd=     0.031}    119.9118
 ANGLe  CR1E CR1E CR1W     500.00 {sd=     0.031}    121.1513
 ANGLe  CR1E CR1E CW       500.00 {sd=     0.031}    118.6734
 ANGLe  CR1E CR1E CY       500.00 {sd=     0.031}    121.1348
 ANGLe  CR1E CR1E CY2      500.00 {sd=     0.031}    119.6224
 ANGLe  CR1E CR1E HA       500.00 {sd=     0.031}    119.9433
 ANGLe  CR1E CR1W CR1W     500.00 {sd=     0.031}    121.4832
 ANGLe  CR1E CR1W HA       500.00 {sd=     0.031}    118.7598
 ANGLe  CR1E CW   CW       500.00 {sd=     0.031}    118.8347
 ANGLe  CR1E CY   CR1E     500.00 {sd=     0.031}    118.1392
 ANGLe  CR1E CY2  CR1E     500.00 {sd=     0.031}    120.3463
 ANGLe  CR1E CY2  OH1      500.00 {sd=     0.031}    119.8269
 ANGLe  CR1E CY2  OHP      500.00 {sd=     0.031}    119.8269
 ANGLe  CR1E CY2  OUF      500.00 {sd=     0.031}    119.8269
 ANGLe  CR1E NH1  CRH      500.00 {sd=     0.031}    106.8630
 ANGLe  CR1E NH1  CW       500.00 {sd=     0.031}    108.9983
 ANGLe  CR1E NH1  H        500.00 {sd=     0.031}    125.8235
 ANGLe  CR1E NR   CRH      500.00 {sd=     0.031}    105.7678
 ANGLe  CR1H C5   NH1      500.00 {sd=     0.031}    106.0900
 ANGLe  CR1H NH1  CRHH     500.00 {sd=     0.031}    108.9901
 ANGLe  CR1H NR   CRHH     500.00 {sd=     0.031}    108.9901
 ANGLe  CR1H NH1  H        500.00 {sd=     0.031}    125.5054
 ANGLe  CR1W CR1E HA       500.00 {sd=     0.031}    119.1706
 ANGLe  CR1W CR1W CW       500.00 {sd=     0.031}    117.4515
 ANGLe  CR1W CR1W HA       500.00 {sd=     0.031}    120.2616
 ANGLe  CR1W CW   CW       500.00 {sd=     0.031}    122.4059
 ANGLe  CR1W CW   NH1      500.00 {sd=     0.031}    130.1860
 ANGLe  CRH  NH1  H        500.00 {sd=     0.031}    126.0322
 ANGLe  CRHH NH1  H        500.00 {sd=     0.031}    125.1896
 ANGLe  CRHH NR   H        500.00 {sd=     0.031}    125.1896
 ANGLe  CW   CR1E HA       500.00 {sd=     0.031}    121.0317
 ANGLe  CW   CR1W HA       500.00 {sd=     0.031}    121.7822
 ANGLe  CW   CW   NH1      500.00 {sd=     0.031}    107.4081
 ANGLe  CW   NH1  H        500.00 {sd=     0.031}    125.9221
 ANGLe  CY   CH2E HA       500.00 {sd=     0.031}    108.0910
 ANGLe  CY   CR1E HA       500.00 {sd=     0.031}    119.1931
 ANGLe  CY2  CR1E HA       500.00 {sd=     0.031}    120.3261
 ANGLe  CY2  OH1  H        500.00 {sd=     0.031}    109.4984
 ANGLe  CY2  OHP  PP       500.00 {sd=     0.031}    120.0000
 ANGLe  CY2  OUF  SUF      500.00 {sd=     0.031}    120.0000
 ANGLe  H    NH2  H        500.00 {sd=     0.031}    123.6294
 ANGLe  HA   CH1E N        500.00 {sd=     0.031}    111.0977
 ANGLe  HA   CH1E NH1      500.00 {sd=     0.031}    108.0508
 ANGLe  HA   CH1E NH3      500.00 {sd=     0.031}    108.5074
 ANGLe  HA   CH1E OH1      500.00 {sd=     0.031}    108.6930 !assume like CH2E
 ANGLe  HA   CH1P OH1      500.00 {sd=     0.031}    108.6930 !assume like CH2E
 ANGLe  HA   CH2E HA       500.00 {sd=     0.031}    109.4074
 ANGLe  HA   CH2E NH1      500.00 {sd=     0.031}    108.9030
 ANGLe  HA   CH2E NH3      500.00 {sd=     0.031}    108.9390
 ANGLe  HA   CH2E OH1      500.00 {sd=     0.031}    108.6930
 ANGLe  HA   CH2E S        500.00 {sd=     0.031}    107.9228
 ANGLe  HA   CH2E SH1E     500.00 {sd=     0.031}    107.9185
 ANGLe  HA   CH2E SM       500.00 {sd=     0.031}    108.6768
 ANGLe  HA   CH2G HA       500.00 {sd=     0.031}    108.8718
 ANGLe  HA   CH2G NH1      500.00 {sd=     0.031}    108.8510
 ANGLe  HA   CH2G NH3      500.00 {sd=     0.031}    108.8586
 ANGLe  HA   CH2P HA       500.00 {sd=     0.031}    110.4563
 ANGLe  HA   CH2P N        500.00 {sd=     0.031}    110.8278
 ANGLe  HA   CH2P NH3      500.00 {sd=     0.031}    110.7246
 ANGLe  OH1  CH1P N        500.00 {sd=     0.031}    110.8278
 ANGLe  OH1  CH1P NH3      500.00 {sd=     0.031}    110.7246
 ANGLe  HA   CH3E HA       500.00 {sd=     0.031}    109.4703
 ANGLe  HA   CH3E SM       500.00 {sd=     0.031}    109.4700
 ANGLe  HA   CR1E NH1      500.00 {sd=     0.031}    125.8803
 ANGLe  HA   CR1E NR       500.00 {sd=     0.031}    125.1878
 ANGLe  HA   CR1H NH1      500.00 {sd=     0.031}    126.4359
 ANGLe  HA   CR1H NR       500.00 {sd=     0.031}    126.4359
 ANGLe  HA   CRH  NH1      500.00 {sd=     0.031}    124.3534
 ANGLe  HA   CRH  NR       500.00 {sd=     0.031}    124.3404
 ANGLe  HA   CRHH NH1      500.00 {sd=     0.031}    125.8381
 ANGLe  HA   CRHH NR       500.00 {sd=     0.031}    125.8381
 ANGLe  HC   NC2  HC       500.00 {sd=     0.031}    120.0016
 ANGLe  HC   NH3  HC       500.00 {sd=     0.031}    108.1992
 ANGLe  N    C    O        500.00 {sd=     0.031}    122.1842  ! 14-MAR-00
 ANGLe  NC2  C    NC2      500.00 {sd=     0.031}    119.7933
 ANGLe  NC2  C    NH1      500.00 {sd=     0.031}    120.1034
 ANGLe  NH1  C    O        500.00 {sd=     0.031}    122.9907
 ANGLe  NH1  CRH  NR       500.00 {sd=     0.031}    111.3061
 ANGLe  NH1  CRHH NH1      500.00 {sd=     0.031}    108.3237
 ANGLe  NH1  CRHH NR       500.00 {sd=     0.031}    108.3237
 ANGLe  NH2  C    O        500.00 {sd=     0.031}    122.6277
 ANGLe  OC   C    OC       500.00 {sd=     0.031}    123.3548
 ANGLe  CCIS  CH1E CH1E     500.00 {sd=     0.031}    109.0754
 ANGLe  CCIS  CH1E CH2E     500.00 {sd=     0.031}    110.1094
 ANGLe  CCIS  CH1E CH3E     500.00 {sd=     0.031}    110.4838
 ANGLe  CCIS  CH1E HA       500.00 {sd=     0.031}    108.9914
 ANGLe  CCIS  CH1E N        500.00 {sd=     0.031}    111.9082
 ANGLe  CCIS  CH1E NH1      500.00 {sd=     0.031}    111.1396
 ANGLe  CCIS  CH1E NH3      500.00 {sd=     0.031}    111.1703
 ANGLe  CCIS  CH2E CH1E     500.00 {sd=     0.031}    112.5947
 ANGLe  CCIS  CH2E CH2E     500.00 {sd=     0.031}    112.5943
 ANGLe  CCIS  CH2E HA       500.00 {sd=     0.031}    108.5877
 ANGLe  CCIS  CH2G HA       500.00 {sd=     0.031}    108.8528
 ANGLe  CCIS  CH2G NH1      500.00 {sd=     0.031}    112.4999
 ANGLe  CCIS  CH2G NH3      500.00 {sd=     0.031}    112.4990
 ANGLe  CCIS  N    CH1E     500.00 {sd=     0.031}    122.7632
 ANGLe  CCIS  N    CH2P     500.00 {sd=     0.031}    125.1134
 ANGLe  CCIS  N    CH1P     500.00 {sd=     0.031}    125.1134
 ANGLe  CCIS  NC2  HC       500.00 {sd=     0.031}    119.9992
 ANGLe  CCIS  NH1  CH1E     500.00 {sd=     0.031}    121.6541
 ANGLe  CCIS  NH1  CH2E     500.00 {sd=     0.031}    124.1226
 ANGLe  CCIS  NH1  CH2G     500.00 {sd=     0.031}    120.5859
 ANGLe  CCIS  NH1  H        500.00 {sd=     0.031}    119.2489
 ANGLe  CCIS  NH2  H        500.00 {sd=     0.031}    118.1853
 ANGLe  CH1E CCIS  N        500.00 {sd=     0.031}    116.9940 ! CCIS for cis peptide
 ANGLe  CH1E CCIS  NH1      500.00 {sd=     0.031}    116.1998
 ANGLe  CH1E CCIS  O        500.00 {sd=     0.031}    120.8258
 ANGLe  CH1E CCIS  OC       500.00 {sd=     0.031}    118.0611
 ANGLe  CH2E CCIS  NH2      500.00 {sd=     0.031}    116.4617
 ANGLe  CH2E CCIS  O        500.00 {sd=     0.031}    120.9106
 ANGLe  CH2E CCIS  OC       500.00 {sd=     0.031}    118.4969
 ANGLe  CH2G CCIS  N        500.00 {sd=     0.031}    117.7918
 ANGLe  CH2G CCIS  NH1      500.00 {sd=     0.031}    116.3225
 ANGLe  CH2G CCIS  O        500.00 {sd=     0.031}    120.6203
 ANGLe  CH2G CCIS  OC       500.00 {sd=     0.031}    118.4971
 ANGLe  N    CCIS  O        500.00 {sd=     0.031}    122.0016
 ANGLe  NC2  CCIS  NC2      500.00 {sd=     0.031}    119.7933
 ANGLe  NC2  CCIS  NH1      500.00 {sd=     0.031}    120.1034
 ANGLe  NH1  CCIS  O        500.00 {sd=     0.031}    122.9907
 ANGLe  NH2  CCIS  O        500.00 {sd=     0.031}    122.6277
 ANGLe  OC   CCIS  OC       500.00 {sd=     0.031}    123.3548

 ANGLE  OR3  PP    OP1      500.00  109.600
 ANGLE  OP1  PP    OP1      500.00  120.000
 ANGLE  OR3  PP    NR       500.00  109.600
 ANGLE  OP1  PP    NR       500.00  120.000
 ANGLE  OR3  PP    SM       500.00  109.600
 ANGLE  OP1  PP    SM       500.00  120.000
 ANGLE  OR3  PP    OHP      500.00  109.600
 ANGLE  OP1  PP    OHP      500.00  120.000
 ANGLE  PP   NR    CRHH     500.00  120.000
 ANGLE  PP   NR    CR1H     500.00  120.000
 ANGLE  OUF  SUF   OUF      500.00  109.600

! Residue DRG
eval ($pd_v=$pd_x*   880.0) ANGLE  CHAC  CHAS  CHAD $pd_v 111.000
eval ($pd_v=$pd_x*   880.0) ANGLE  CHAC  CHAS  NHAQ $pd_v 109.500
eval ($pd_v=$pd_x*   760.0) ANGLE  CHAC  CHAS  CHAO $pd_v 109.500
eval ($pd_v=$pd_x*   880.0) ANGLE  CHAD  CHAS  NHAQ $pd_v 109.500
eval ($pd_v=$pd_x*   760.0) ANGLE  CHAD  CHAS  CHAO $pd_v 109.500
eval ($pd_v=$pd_x*   880.0) ANGLE  NHAQ  CHAS  CHAO $pd_v 104.000
eval ($pd_v=$pd_x*   720.0) ANGLE  CHAS  NHAQ  OHAH $pd_v 109.500
eval ($pd_v=$pd_x*   880.0) ANGLE  CHAS  NHAQ  CHAR $pd_v 104.000
eval ($pd_v=$pd_x*   720.0) ANGLE  OHAH  NHAQ  CHAR $pd_v 109.500
eval ($pd_v=$pd_x*   760.0) ANGLE  NHAQ  OHAH  HHAA $pd_v 109.500
eval ($pd_v=$pd_x*   880.0) ANGLE  NHAQ  CHAR  CHAA $pd_v 109.500
eval ($pd_v=$pd_x*   880.0) ANGLE  NHAQ  CHAR  CHAB $pd_v 109.500
eval ($pd_v=$pd_x*   880.0) ANGLE  NHAQ  CHAR  CHAI $pd_v 104.000
eval ($pd_v=$pd_x*   880.0) ANGLE  CHAA  CHAR  CHAB $pd_v 111.000
eval ($pd_v=$pd_x*   760.0) ANGLE  CHAA  CHAR  CHAI $pd_v 109.500
eval ($pd_v=$pd_x*   760.0) ANGLE  CHAB  CHAR  CHAI $pd_v 109.500
eval ($pd_v=$pd_x*   800.0) ANGLE  CHAR  CHAI  CHAO $pd_v 108.000
eval ($pd_v=$pd_x*   800.0) ANGLE  CHAS  CHAO  CHAI $pd_v 108.000
eval ($pd_v=$pd_x*   800.0) ANGLE  CHAS  CHAO  CHAJ $pd_v 120.000
eval ($pd_v=$pd_x*   800.0) ANGLE  CHAI  CHAO  CHAJ $pd_v 126.000
eval ($pd_v=$pd_x*   880.0) ANGLE  CHAO  CHAJ  SHAL $pd_v 111.000
eval ($pd_v=$pd_x*   880.0) ANGLE  CHAJ  SHAL  S    $pd_v 104.000
eval ($pd_v=$pd_x*   880.0) ANGLE  SHAL  S     CH2E $pd_v 104.000
eval ($pd_v=$pd_x*   880.0) ANGLE  S     CHB   CHA  $pd_v 113.000
eval ($pd_v=$pd_x*   880.0) ANGLE  CHB   CHA   CH_Y $pd_v 109.500
eval ($pd_v=$pd_x*   880.0) ANGLE  CHB   CHA   NH_Y $pd_v 109.500
eval ($pd_v=$pd_x*   880.0) ANGLE  CH_Y  CHA   NH_Y $pd_v 109.500
eval ($pd_v=$pd_x*   960.0) ANGLE  CHA   CH_Y  OHXT $pd_v 117.000
eval ($pd_v=$pd_x*   960.0) ANGLE  CHA   CH_Y  OH_Y $pd_v 117.000
eval ($pd_v=$pd_x*   960.0) ANGLE  OHXT  CH_Y  OH_Y $pd_v 126.000
eval ($pd_v=$pd_x*   720.0) ANGLE  CHA   NH_Y  HHAC $pd_v 109.500
eval ($pd_v=$pd_x*   720.0) ANGLE  CHA   NH_Y  HHAD $pd_v 109.500
eval ($pd_v=$pd_x*   720.0) ANGLE  CHA   NH_Y  HHAB $pd_v 109.500
eval ($pd_v=$pd_x*   640.0) ANGLE  HHAC  NH_Y  HHAD $pd_v 109.500
eval ($pd_v=$pd_x*   640.0) ANGLE  HHAC  NH_Y  HHAB $pd_v 109.500
eval ($pd_v=$pd_x*   640.0) ANGLE  HHAD  NH_Y  HHAB $pd_v 109.500  
 
 IMPRoper  C    CH1E HA   HA        500.00 {sd=     0.031}    0    -70.4072
 IMPRoper  C    CH1E OC   OC        500.00 {sd=     0.031}    0      0.0210
 IMPRoper  C    CH2E HA   HA        500.00 {sd=     0.031}    0    -70.4459
 IMPRoper  HA   HA   C    HA        500.00 {sd=     0.031}    0    -70.4459 !EAB
 IMPRoper  C    CH2E O    NH2       500.00 {sd=     0.031}    0      0.0124
 IMPRoper  C    CH2E OC   OC        500.00 {sd=     0.031}    0     -0.0137
 IMPRoper  C    CH2G OC   OC        500.00 {sd=     0.031}    0      0.0223
 IMPRoper  C    NC2  H    NH1       500.00 {sd=     0.031}    0     -0.0121
 IMPRoper  C    NH1  HA   HA        500.00 {sd=     0.031}    0    -70.8745
 IMPRoper  C    NH1  NC2  NC2       500.00 {sd=     0.031}    0     -0.0088
 IMPRoper  C    NH3  HA   HA        500.00 {sd=     0.031}    0     70.6479
 IMPRoper  C5   CH1E HA   HA        500.00 {sd=     0.031}    0    -69.9815
 IMPRoper  C5   CH2E NH1  CR1E      500.00 {sd=     0.031}    0     -0.0386
 IMPRoper  C5   CH2E NH1  CR1H      500.00 {sd=     0.031}    0     -0.0237
 IMPRoper  C5   CH2E NR   CR1E      500.00 {sd=     0.031}    0      0.0178
 IMPRoper  C5   CR1E NH1  CRH       500.00 {sd=     0.031}    0      0.0072
 IMPRoper  C5   CR1E NR   CRH       500.00 {sd=     0.031}    0     -0.0138
 IMPRoper  C5   CR1H NH1  CRHH      500.00 {sd=     0.031}    0     -0.0209
 IMPRoper  C5   CR1H NR   CRHH      500.00 {sd=     0.031}    0     -0.0209
 IMPRoper  C5   NH1  CRH  NR        500.00 {sd=     0.031}    0     -0.0652
 IMPRoper  C5   NH1  CRHH NH1       500.00 {sd=     0.031}    0     -0.0660
 IMPRoper  C5   NH1  CRHH NR        500.00 {sd=     0.031}    0     -0.0660
 IMPRoper  C5   NR   CRH  NH1       500.00 {sd=     0.031}    0      0.0250
 IMPRoper  C5W  CH1E HA   HA        500.00 {sd=     0.031}    0    -70.0142
 IMPRoper  C5W  CW   CR1E CR1E      500.00 {sd=     0.031}    0   -179.9506
 IMPRoper  C5W  CW   CW   CR1W      500.00 {sd=     0.031}    0    179.9618
 IMPRoper  CF   CH1E HA   HA        500.00 {sd=     0.031}    0    -70.0169
 IMPRoper  CF   CR1E CR1E CR1E      500.00 {sd=     0.031}    0      0.0069
 IMPRoper  CF   CR1E CR1E HA        500.00 {sd=     0.031}    0    179.9729
 IMPRoper  CH1E C    CH2P N         500.00 {sd=     0.031}    0      0.0332
 IMPRoper  CH1E C    CH1P N         500.00 {sd=     0.031}    0      0.0332
 IMPRoper  CH1E C    H    NH1       500.00 {sd=     0.031}    0      0.0000 !c
 IMPRoper  CH3E C    H    NH1       500.00 {sd=     0.031}    0      0.0000 
 IMPRoper  CH1E C    N    CH1E      500.00 {sd=     0.031}    0    179.9873
 IMPRoper  CH3E C    N    CH1E      500.00 {sd=     0.031}    0    179.9873
 IMPRoper  CH1E C    N    CH2P      500.00 {sd=     0.031}    0      0.0025
 IMPRoper  CH1E C    N    CH1P      500.00 {sd=     0.031}    0      0.0025
 IMPRoper  CH1E N    C    CH2G      500.00 {sd=     0.031}    0    179.9856
 IMPRoper  CH1E NH1  C    CH2G      500.00 {sd=     0.031}    0   -179.9916
 IMPRoper  CH1E C    NH1  CH1E      500.00 {sd=     0.031}    0   -180.0067
 IMPRoper  CH1E C    NH1  CH2G      500.00 {sd=     0.031}    0   -180.0018
 IMPRoper  CH1E C    NH1  H         500.00 {sd=     0.031}    0      0.0000 !c
 IMPRoper  CH3E C    NH1  H         500.00 {sd=     0.031}    0      0.0000 
 IMPRoper  CH1E C    NH1  HA        500.00 {sd=     0.031}    0     66.2535 
 IMPRoper  CH1E CCIS NH1  HA        500.00 {sd=     0.031}    0     66.2535 
 IMPRoper  CH1E C    NH3  HA        500.00 {sd=     0.031}    0     66.3265
 IMPRoper  CH1E CH1E HA   HA        500.00 {sd=     0.031}    0    -69.6639
 IMPRoper  CH1P CH1E HA   HA        500.00 {sd=     0.031}    0    -69.6639
 IMPRoper  CH2E C    N    HA        500.00 {sd=     0.031}    0     67.7957
 IMPRoper  CH2E CCIS N    HA        500.00 {sd=     0.031}    0     67.7957 ! cis pept
 IMPRoper  CH2E C    NH1  HA        500.00 {sd=     0.031}    0     66.1640
 IMPRoper  CH2E CCIS NH1  HA        500.00 {sd=     0.031}    0     66.1640
 IMPRoper  CH2E C    NH2  H         500.00 {sd=     0.031}    0      0.0000
 IMPRoper  CH2E C    NH3  HA        500.00 {sd=     0.031}    0     66.3265
 IMPRoper  CH2E C5W  CW   CW        500.00 {sd=     0.031}    0    179.9679
 IMPRoper  CH2E CF   CR1E CR1E      500.00 {sd=     0.031}    0   -179.9993
 IMPRoper  CH2E CH1E HA   HA        500.00 {sd=     0.031}    0    -70.0781
 IMPRoper  CH2P CH1E HA   HA        500.00 {sd=     0.031}    0    -70.0781
 IMPRoper  CH2P CH2E HA   OH1       500.00 {sd=     0.031}    0    -65.9907
 IMPRoper  CH2E CH2E HA   HA        500.00 {sd=     0.031}    0    -70.7825
 IMPRoper  CH2P CH2E HA   HA        500.00 {sd=     0.031}    0    -70.7825
 IMPRoper  CH2E CH1P HA   HA        500.00 {sd=     0.031}    0    -70.0781
 IMPRoper  CH2E CH2P HA   HA        500.00 {sd=     0.031}    0    -70.7825
 IMPRoper  CH2E CH3E CH1E HA        500.00 {sd=     0.031}    0    -65.2137
 IMPRoper  CH2E CY   CR1E CR1E      500.00 {sd=     0.031}    0   -179.9903
 IMPRoper  CH2G C    N    CH2P      500.00 {sd=     0.031}    0     -0.0116
 IMPRoper  CH2G C    NH1  CH2G      500.00 {sd=     0.031}    0    179.9899
 IMPRoper  CH2G C    NH1  H         500.00 {sd=     0.031}    0      0.0000 !c
 IMPRoper  CH2P CH1E HA   HA        500.00 {sd=     0.031}    0    -71.9385
 IMPRoper  CH2P CH1E HC   HC        500.00 {sd=     0.031}    0    -70.7727
 IMPRoper  CH2P CH2E HA   HA        500.00 {sd=     0.031}    0    -71.8986
 IMPRoper  CH3E C    NH1  H         500.00 {sd=     0.031}    0     65.9907
 IMPRoper  CH3E C    NH1  HA        500.00 {sd=     0.031}    0     65.9907
 IMPRoper  CH3E CCIS NH1  HA        500.00 {sd=     0.031}    0     65.9907
 IMPRoper  CH3E C    NH3  HA        500.00 {sd=     0.031}    0     65.6779
 IMPRoper  CH3E CCIS NH3  HA        500.00 {sd=     0.031}    0     65.6779
 IMPRoper  CH3E CH1E HA   HA        500.00 {sd=     0.031}    0    -70.1069
 IMPRoper  CH3E CH3E CH1E HA        500.00 {sd=     0.031}    0    -65.0462
 IMPRoper  CH3E CH3E CH2E HA        500.00 {sd=     0.031}    0    -65.1424
 IMPRoper  CH3E OH1  CH1E HA        500.00 {sd=     0.031}    0     66.1521
 IMPRoper  CH2P OH1  CH1P HA        500.00 {sd=     0.031}    0     66.1521  ! To change sign if stereochemistry is wrong
 IMPRoper  CR1E C5   NH1  CRH       500.00 {sd=     0.031}    0      0.0557
 IMPRoper  CR1E C5   NR   CRH       500.00 {sd=     0.031}    0     -0.0198
 IMPRoper  CR1E C5W  CW   CR1E      500.00 {sd=     0.031}    0    179.9645
 IMPRoper  CR1E CF   CR1E CR1E      500.00 {sd=     0.031}    0     -0.0034
 IMPRoper  CR1E CF   CR1E HA        500.00 {sd=     0.031}    0   -179.9624
 IMPRoper  CR1E CR1E CR1E CR1E      500.00 {sd=     0.031}    0     -0.0034
 IMPRoper  CR1E CR1E CR1E HA        500.00 {sd=     0.031}    0    179.9935
 IMPRoper  CR1E CR1E CR1W CR1W      500.00 {sd=     0.031}    0     -0.0413
 IMPRoper  CR1E CR1E CR1W HA        500.00 {sd=     0.031}    0   -179.9535
 IMPRoper  CR1E CR1E CW   CW        500.00 {sd=     0.031}    0     -0.0109
 IMPRoper  CR1E CR1E CY   CR1E      500.00 {sd=     0.031}    0      0.0135
 IMPRoper  CR1E CR1E CY2  CR1E      500.00 {sd=     0.031}    0      0.0133
 IMPRoper  CR1E CR1E CY2  OH1       500.00 {sd=     0.031}    0   -179.9788
 IMPRoper  CR1E CR1E CY2  OHP       500.00 {sd=     0.031}    0   -179.9788
 IMPRoper  CR1E CR1E CY2  OUF       500.00 {sd=     0.031}    0   -179.9788
 IMPRoper  CR1E CR1W CR1W CW        500.00 {sd=     0.031}    0      0.0360
 IMPRoper  CR1E CR1W CR1W HA        500.00 {sd=     0.031}    0    179.9725
 IMPRoper  CR1E CW   CW   CR1W      500.00 {sd=     0.031}    0      0.0072
 IMPRoper  CR1E CW   CW   NH1       500.00 {sd=     0.031}    0   -179.9720
 IMPRoper  CR1E CY   CR1E HA        500.00 {sd=     0.031}    0   -179.9985
 IMPRoper  CR1E CY2  CR1E HA        500.00 {sd=     0.031}    0    179.9891
 IMPRoper  CR1E NH1  C5   HA        500.00 {sd=     0.031}    0     -0.0175
 IMPRoper  CR1E NH1  CRH  NR        500.00 {sd=     0.031}    0     -0.0206
 IMPRoper  CR1E NH1  CW   CR1W      500.00 {sd=     0.031}    0   -179.9685
 IMPRoper  CR1E NR   C5   HA        500.00 {sd=     0.031}    0     -0.0096
 IMPRoper  CR1E NR   CRH  NH1       500.00 {sd=     0.031}    0      0.0490
 IMPRoper  CR1H C5   NH1  CRHH      500.00 {sd=     0.031}    0      0.0496
 IMPRoper  CR1H C5   NR   CRHH      500.00 {sd=     0.031}    0      0.0496
 IMPRoper  CR1H NH1  C5   HA        500.00 {sd=     0.031}    0      0.0047
 IMPRoper  CR1H NR   C5   HA        500.00 {sd=     0.031}    0      0.0047
 IMPRoper  CR1H NH1  CRHH NH1       500.00 {sd=     0.031}    0      0.0534
 IMPRoper  CR1H NR   CRHH NH1       500.00 {sd=     0.031}    0      0.0534
 IMPRoper  CR1W CR1E CR1E CW        500.00 {sd=     0.031}    0      0.0275
 IMPRoper  CR1W CR1E CR1E HA        500.00 {sd=     0.031}    0   -179.9902
 IMPRoper  CR1W CR1W CR1E HA        500.00 {sd=     0.031}    0    179.9587
 IMPRoper  CR1W CR1W CW   CW        500.00 {sd=     0.031}    0     -0.0194
 IMPRoper  CR1W CR1W CW   NH1       500.00 {sd=     0.031}    0    179.9546
 IMPRoper  CRH  NH1  NR   HA        500.00 {sd=     0.031}    0      0.0429
 IMPRoper  CRH  NR   NH1  HA        500.00 {sd=     0.031}    0     -0.0123
 IMPRoper  CRHH NH1  NH1  HA        500.00 {sd=     0.031}    0      0.0414
 IMPRoper  CRHH NH1  NR   HA        500.00 {sd=     0.031}    0      0.0414
 IMPRoper  CW   CW   NH1  H         500.00 {sd=     0.031}    0    179.9788
 IMPRoper  CW   NH1  CR1E HA        500.00 {sd=     0.031}    0   -179.9528
 IMPRoper  CY   CH1E HA   HA        500.00 {sd=     0.031}    0    -70.0662
 IMPRoper  CY   CR1E CR1E CY2       500.00 {sd=     0.031}    0     -0.0270
 IMPRoper  CY   CR1E CR1E HA        500.00 {sd=     0.031}    0   -179.9841
 IMPRoper  CY2  CR1E CR1E HA        500.00 {sd=     0.031}    0    179.9517
 IMPRoper  H    C    CH2E NH1       500.00 {sd=     0.031}    0      0.0051
 IMPRoper  H    C    CH3E NH1       500.00 {sd=     0.031}    0      0.0051
 IMPRoper  H    C5   CRH  NH1       500.00 {sd=     0.031}    0      0.0263
 IMPRoper  H    C5   CRHH NH1       500.00 {sd=     0.031}    0      0.0282
 IMPRoper  H    H    C    NH2       500.00 {sd=     0.031}    0      0.0032
 IMPRoper  HA   CH1E HA   HA        500.00 {sd=     0.031}    0    -66.5692
 IMPRoper  HA   CH2E HA   HA        500.00 {sd=     0.031}    0    -66.5934
 IMPRoper  HA   HA   CH1E OH1       500.00 {sd=     0.031}    0    -69.8494
 IMPRoper  HA   HA   CH1P OH1       500.00 {sd=     0.031}    0    -69.8494
 IMPRoper  HA   HA   CH1E OHP       500.00 {sd=     0.031}    0    -69.8494
 IMPRoper  HA   HA   CH1E S         500.00 {sd=     0.031}    0    -72.0980
 IMPRoper  HA   HA   CH1E SH1E      500.00 {sd=     0.031}    0    -72.0234
 IMPRoper  HA   HA   CH1E SM        500.00 {sd=     0.031}    0    -72.0234
 IMPRoper  HA   HA   CH2E NH1       500.00 {sd=     0.031}    0    -70.1253
 IMPRoper  HA   HA   CH2E NH3       500.00 {sd=     0.031}    0    -70.4126
 IMPRoper  HA   HA   CH2E SM        500.00 {sd=     0.031}    0    -72.4655
 IMPRoper  HA   HA   CH2P N         500.00 {sd=     0.031}    0    -72.1561
 IMPRoper  HA   HA   CH1P N         500.00 {sd=     0.031}    0    -72.1561
 IMPRoper  OH1  HA   CH2P N         500.00 {sd=     0.031}    0    -66.1521
 IMPRoper  OH1  HA   CH1P N         500.00 {sd=     0.031}    0    -66.1521
 IMPRoper  HA   HA   CH2P NH3       500.00 {sd=     0.031}    0    -71.9018
 IMPRoper  OH1  HA   CH2P NH3       500.00 {sd=     0.031}    0    -66.1521
 IMPRoper  HA   HA   SM   HA        500.00 {sd=     0.031}    0    -65.1411
 IMPRoper  HC   CH1E HC   HC        500.00 {sd=     0.031}    0    -66.4313
 IMPRoper  HC   CH2E HC   HC        500.00 {sd=     0.031}    0    -66.4262
 IMPRoper  HC   CH2G HC   HC        500.00 {sd=     0.031}    0    -66.4073
 IMPRoper  HC   HC   C    NC2       500.00 {sd=     0.031}    0     -0.0094
 IMPRoper  HC   NC2  C    NH1       500.00 {sd=     0.031}    0      0.0000
 IMPRoper  NH1  C5   CR1E NR        500.00 {sd=     0.031}    0     -0.0249
 IMPRoper  NH1  C5   CR1H NH1       500.00 {sd=     0.031}    0     -0.0178
 IMPRoper  NH1  C5   CR1H NR        500.00 {sd=     0.031}    0     -0.0178
 IMPRoper  NH1  CR1E C5   NR        500.00 {sd=     0.031}    0      0.0078
 IMPRoper  NH1  CR1E C5   NR        500.00 {sd=     0.031}    0      0.0078
 IMPRoper  NR   PP   CR1H CRHH      500.00 {sd=     0.031}    0      0.0078
 IMPRoper  NR   PP   OR3  OP1       500.00 {sd=     0.031}    0    -35.0000
 IMPRoper  SM   PP   OR3  OP1       500.00 {sd=     0.031}    0    -35.0000
 IMPRoper  OHP  PP   OR3  OP1       500.00 {sd=     0.031}    0    -35.0000

! peptide group (modified 14-MAR-00)
! omega modified again (MN, 18-MAR-02)

 IMPRoper  C    CH1E NH1  O         500.00   0      0.0000 !
 IMPRoper  C    CH3E NH1  O         500.00   0      0.0000 !
 IMPRoper  C    CH1E N    O         500.00   0      0.0000 ! aaa-pro
 IMPRoper  C    CH2G N    O         500.00   0      0.0000 ! gly-pro
 IMPRoper  C    CH2G NH1  O         500.00   0      0.0000 ! gly-aaa
 IMPRoper  NH1  C    CH1E H         500.00   0      0.0000 !
 IMPRoper  N    C    CH1E CH2P      500.00   0      0.0000 ! aaa-pro
 IMPRoper  N    C    CH1E CH1P      500.00   0      0.0000 ! aaa-pro
 IMPRoper  NH1  C    CH2G H         500.00   0      0.0000 ! aaa-gly
 IMPRoper  NH1  C    CH3E H         500.00   0      0.0000 ! acetylated lysine

 IMPRoper  CCIS CH1E NH1  O         500.00   0      0.0000 !
 IMPRoper  CCIS CH1E N    O         500.00   0      0.0000 ! aaa-pro
 IMPRoper  CCIS CH2G N    O         500.00   0      0.0000 ! gly-pro
 IMPRoper  CCIS CH2G NH1  O         500.00   0      0.0000 ! gly-aaa
 IMPRoper  CCIS NH1  HA   HA        500.00   0    -78.8745
 IMPRoper  CCIS NH1  N    CH1E      500.00   0      0.0000 
 IMPRoper  NH1  CCIS CH1E H         500.00   0      0.0000 !
 IMPRoper  N    CCIS CH1E CH2P      500.00   0      0.0000 ! aaa-pro
 IMPRoper  N    CCIS CH1E CH1P      500.00   0      0.0000 ! aaa-pro
 IMPRoper  NH1  CCIS CH2G H         500.00   0      0.0000 ! aaa-gly

 IMPRoper  CH1E C    NH1  CH1E      500.00   0    180.0000 
 IMPRoper  CH3E C    NH1  CH1E      500.00   0    180.0000 
 IMPRoper  CH3E C    NH1  CH2E      500.00   0    180.0000 
 IMPRoper  CH1E C    NH1  CH2G      500.00   0    180.0000 
 IMPRoper  CH1E C    N    CH2P      500.00   0    180.0000 
 IMPRoper  CH1E C    N    CH1P      500.00   0    180.0000 
 IMPRoper  CH2G C    NH1  CH1E      500.00   0    180.0000 
 IMPRoper  CH2G C    NH1  CH2G      500.00   0    180.0000 
 IMPRoper  CH2G C    N    CH2P      500.00   0    180.0000 
 IMPRoper  CH2P C    NH1  CH1E      500.00   0    180.0000 
 IMPRoper  CH2P C    NH1  CH2G      500.00   0    180.0000 
 IMPRoper  CH2P C    NH1  CH2P      500.00   0    180.0000 

 IMPRoper  CH1E CCIS NH1  CH1E      500.00   0      0.0000 
 IMPRoper  CH1E CCIS NH1  CH2G      500.00   0      0.0000 
 IMPRoper  CH1E CCIS N    CH1E      500.00   0      0.0000 
 IMPRoper  CH1E CCIS N    CH2P      500.00   0      0.0000 
 IMPRoper  CH1E CCIS N    CH1P      500.00   0      0.0000 
 IMPRoper  CH2G CCIS NH1  CH1E      500.00   0      0.0000 
 IMPRoper  CH2G CCIS N    CH1E      500.00   0      0.0000 
 IMPRoper  CH2G CCIS NH1  CH2G      500.00   0      0.0000 
 IMPRoper  CH2G CCIS N    CH2P      500.00   0      0.0000 
 IMPRoper  CH2P CCIS NH1  CH1E      500.00   0      0.0000 
 IMPRoper  CH2P CCIS NH1  CH2G      500.00   0      0.0000 
 IMPRoper  CH2P CCIS NH1  CH2P      500.00   0      0.0000 

! Residue DRG

eval ($pd_v=$pd_x*   800.0) IMPR  CHAO  CHAS  CHAI  CHAJ $pd_v 0   0.000
eval ($pd_v=$pd_x*   800.0) IMPR  CH_Y  CHA   OH_Y  OHXT $pd_v 0   0.000
eval ($pd_v=$pd_x*   400.0) IMPR  CHAS  CHAC  NHAQ  CHAD $pd_v 0  35.264
eval ($pd_v=$pd_x*   400.0) IMPR  NHAQ  CHAS  OHAH  CHAR $pd_v 0  35.264
eval ($pd_v=$pd_x*   400.0) IMPR  CHAR  NHAQ  CHAB  CHAA $pd_v 0  35.264
eval ($pd_v=$pd_x*   400.0) IMPR  CHA   CHB   CH_Y  NH_Y $pd_v 0  35.264
eval ($pd_v=$pd_x*   400.0) IMPR  NH_Y  CHA   HHAD  HHAC $pd_v 0  35.264

! CR3-CR3 sidechain dihedrals

 DIHEdral  C    CH2E CH2E CH1E   2.00     3  0.0000
 DIHEdral  CH1E CH1E CH2E CH3E   2.00     3  0.0000
 DIHEdral  CH1E CH2E CH2E CH2E   2.00     3  0.0000
 DIHEdral  CH1E CH2E CH2E SM     2.00     3  0.0000
 DIHEdral  CH2E CH1E CH1E NH1    2.00     3  0.0000
 DIHEdral  CH2E CH2E CH2E CH2E   2.00     3  0.0000
 DIHEdral  NH1  CH2E CH2E CH2E   2.00     3  0.0000 
 DIHEdral  NH3  CH2E CH2E CH2E   2.00     3  0.0000 
 DIHEdral  CH2E CH2E CH2E NH1    2.00     3  0.0000
 DIHEdral  CH2E CH2E SM   CH3E   2.00     3  0.0000
 DIHEdral  CH3E CH1E CH1E NH1    2.00     3  0.0000
 DIHEdral  CH3E CH1E CH2E CH1E   2.00     3  0.0000
 DIHEdral  NH1  CH1E CH2E C      2.00     3  0.0000
 DIHEdral  NH1  CH1E CH2E C5     2.00     3  0.0000
 DIHEdral  NH1  CH1E CH2E C5W    2.00     3  0.0000
 DIHEdral  NH1  CH1E CH2E CF     2.00     3  0.0000
 DIHEdral  NH1  CH1E CH2E CH1E   2.00     3  0.0000
 DIHEdral  NH1  CH1E CH2E CH2E   2.00     3  0.0000
 DIHEdral  NH1  CH1E CH2E CY     2.00     3  0.0000
 DIHEdral  NH1  CH1E CH2E OH1    2.00     3  0.0000
 DIHEdral  NH1  CH1E CH1E OH1    2.00     3  0.0000 !added 14-APR-99
 DIHEdral  NH1  CH1E CH2E OHP    2.00     3  0.0000
 DIHEdral  NH1  CH1E CH1E OHP    2.00     3  0.0000 
 DIHEdral  NH1  CH1E CH2E S      2.00     3  0.0000
 DIHEdral  NH1  CH1E CH2E SH1E   2.00     3  0.0000
 DIHEdral  NH1  CH1E CH2E SM     2.00     3  0.0000

! chi1 modifications at N-terminus

 DIHEdral  NH3  CH1E CH2E C      2.00     3  0.0000 
 DIHEdral  NH3  CH1E CH2E C5     2.00     3  0.0000
 DIHEdral  NH3  CH1E CH2E C5W    2.00     3  0.0000
 DIHEdral  NH3  CH1E CH2E CF     2.00     3  0.0000
 DIHEdral  NH3  CH1E CH2E CH1E   2.00     3  0.0000
 DIHEdral  NH3  CH1E CH2E CH2E   2.00     3  0.0000
 DIHEdral  NH3  CH1E CH2E CY     2.00     3  0.0000
 DIHEdral  NH3  CH1E CH2E OH1    2.00     3  0.0000
 DIHEdral  NH3  CH1E CH1E OH1    2.00     3  0.0000
 DIHEdral  NH3  CH1E CH2E S      2.00     3  0.0000
 DIHEdral  NH3  CH1E CH2E SH1E   2.00     3  0.0000
 DIHEdral  NH3  CH1E CH1E CH3E   2.00     3  0.0000
 DIHEdral  NH3  CH1E CH1E CH2E   2.00     3  0.0000

! CR3-CR2 (Planar) sidechain dihedrals (modified 09-MAR-00)

 DIHEdral  CR1E C5W  CH2E CH1E   1.00     2  0.0000 !Trp
 DIHEdral  CR1E CF   CH2E CH1E   1.00     2  0.0000 !Phe
 DIHEdral  NH1  C5   CH2E CH1E   0.60     1  0.0000 !His
 DIHEdral  CR1H C5   CH2E CH1E   0.80     2  0.0000 !His
 DIHEdral  NR   C5   CH2E CH1E   0.60     1  0.0000 !His 
 DIHEdral  CR1E C5   CH2E CH1E   0.80     2  0.0000 !His
 DIHEdral  CH1E CH2E CY   CR1E   1.00     2  0.0000 !Tyr
 DIHEDral  CR1E CY2  OH1  H      2.00     2  90.000 !Tyr
 DIHEDral  CR1E CY2  OHP  PP     2.00     2  90.000 !Ptr,Typ
 DIHEDral  CR1E CY2  OUF  SUF    2.00     2  90.000 !Tys
 DIHEdral  CH2E CH2E NH1  C      2.00     1  0.0000 !Arg 
 DIHEdral  O    C    CH2E CH1E   1.00     6  0.0000 !Asn (+ 3 60.000?) 
 DIHEdral  OC   C    CH2E CH1E   MULT 2 1.00     2  0.0000  0.5     6  0.0000 !Asp
 DIHEdral  O    C    CH2E CH2E   2.00     6  0.0000 !Gln (+ 3 60.000?) 
 DIHEdral  OC   C    CH2E CH2E   MULT 2 1.00     2  0.0000  0.5     6  0.0000 !Glu 

! sidechain CH3 and NH3 groups (added 12-MAR-00)

 DIHEdral  HC   NH3  CH2E CH2E   1.00     3  0.0000 !Lys 
 DIHEdral  H    NH1  CH2E CH2E   1.00     3  0.0000 !Lys 
 DIHEdral  HA   CH3E CH1E C      1.00     3  0.0000 !Ala 
 DIHEdral  HA   CH3E CH2E CH1E   1.00     3  0.0000 !Ile 
 DIHEdral  HA   CH3E CH1E CH1E   1.00     3  0.0000 !Ile/Thr/Val  
 DIHEdral  HA   CH3E CH1E CH2E   1.00     3  0.0000 !Leu  
 DIHEdral  HA   CH3E SM   CH2E   1.00     3  0.0000 !Met 

 ! added by Aart Nederveen July 3 2003
 DIHEdral  HA   CH3E CH1E CCIS      1.00     3  0.0000 !Ala

! N and C terminal groups (ace planarity taken care of by peptide bond added 12-MAR-00)

 DIHEdral  HC   NH3  CH1E CCIS   2.00     3  0.0000 !Non-Gly/Pro N-terminus
 DIHEdral  HC   NH3  CH1E C      2.00     3  0.0000 !Non-Gly/Pro N-terminus
 DIHEdral  HC   NH3  CH2G C      2.00     3  0.0000 !Gly N-terminus
 DIHEdral  OC   C    CH1E NH1    2.00     2  0.0000 !Non-Gly/Pro COO-terminus 
 DIHEdral  OC   C    CH1E NH3    2.00     2  0.0000 !Non-Gly/Pro COO-terminus 
 DIHEdral  OC   C    CH2G NH1    1.00     6  0.0000 !Gly COO-terminus 
 DIHEdral  OC   C    CH1E N      2.00     2  0.0000 !Pro COO-terminus
 DIHEdral  NH2  C    CH1E NH1    2.00     2  0.0000 !Non-Gly/Pro CONH2-terminus
 DIHEdral  NH2  C    CH2G NH1    1.00     6  0.0000 !Gly CONH2-terminus (+ 3 60.000?)
 DIHEdral  NH2  C    CH1E N      2.00     2  0.0000 !Pro CONH2-terminus

! backbone psi (not active with usual topology file modified 03-JUL-01)
! DIHEdral NH1    CH1E   C      NH1    MULT 3   0.175  2 0.0000   0.1  4 0.0000   0.03  6 0.0000 !aaa-aaa
! DIHEdral NH1    CH2G   C      NH1    MULT 3   0.175  2 0.0000   0.1  4 0.0000   0.03  6 0.0000 !gly-aaa
! DIHEdral NH3    CH1E   C      NH1    MULT 3   0.175  2 0.0000   0.1  4 0.0000   0.03  6 0.0000 !Nterm-aaa-aaa
! DIHEdral NH3    CH2G   C      NH1    MULT 3   0.175  2 0.0000   0.1  4 0.0000   0.03  6 0.0000 !Nterm-gly-aaa
! DIHEdral N      CH1E   C      NH1    MULT 3   0.175  2 0.0000   0.1  4 0.0000   0.03  6 0.0000 !pro-aaa
 
! DIHEdral NH1    CH1E   C      N      MULT 3   0.175  2 0.0000   0.1  4 0.0000   0.03  6 0.0000 !aaa-pro
! DIHEdral NH1    CH2G   C      N      MULT 3   0.175  2 0.0000   0.1  4 0.0000   0.03  6 0.0000 !gly-pro
! DIHEdral NH3    CH1E   C      N      MULT 3   0.175  2 0.0000   0.1  4 0.0000   0.03  6 0.0000 !Nterm-aaa-pro
! DIHEdral NH3    CH2G   C      N      MULT 3   0.175  2 0.0000   0.1  4 0.0000   0.03  6 0.0000 !Nterm-gly-pro
! DIHEdral N      CH1E   C      N      MULT 3   0.175  2 0.0000   0.1  4 0.0000   0.03  6 0.0000 !pro-pro

! backbone psi related due to O & CB (not active with usual topology file added 07-JUL-01)
 DIHEdral CH2E   CH1E   C      O      MULT 6   0.375  1 0.0000 0.3  2 0.0000  0.225  3 0.0000  0.15  4 0.0000  0.075  5 0.0000  0.0375  6 0.0000 !aaa-aaa
 DIHEdral CH3E   CH1E   C      O      MULT 6   0.375  1 0.0000 0.3  2 0.0000  0.225  3 0.0000  0.15  4 0.0000  0.075  5 0.0000  0.0375  6 0.0000 !ala-aaa
 DIHEdral CH1E   CH1E   C      O      MULT 6   0.375  1 0.0000 0.3  2 0.0000  0.225  3 0.0000  0.15  4 0.0000  0.075  5 0.0000  0.0375  6 0.0000 !(ile,thr,val)-aaa

! backbone psi related due to O & CB (not active with usual topology file added 07-JUL-01)
 DIHEdral CH2E   CH1E   CCIS   O      MULT 6   0.375  1 0.0000 0.3  2 0.0000  0.225  3 0.0000  0.15  4 0.0000  0.075  5 0.0000  0.0375  6 0.0000 !aaa-aaa
 DIHEdral CH3E   CH1E   CCIS   O      MULT 6   0.375  1 0.0000 0.3  2 0.0000  0.225  3 0.0000  0.15  4 0.0000  0.075  5 0.0000  0.0375  6 0.0000 !ala-aaa
 DIHEdral CH1E   CH1E   CCIS   O      MULT 6   0.375  1 0.0000 0.3  2 0.0000  0.225  3 0.0000  0.15  4 0.0000  0.075  5 0.0000  0.0375  6 0.0000 !(ile,thr,val)-aaa

! backbone psi related due to NH & CB (N.B. 2.0x the strength of  above not active with usual topology file added 03-JUL-01 modified 07-JUL-01)
 DIHEdral CH2E   CH1E   C      NH1    MULT 6   0.5   1 0.0000 0.4  2 0.0000  0.3   3 0.0000  0.2  4 0.0000  0.1   5 0.0000  0.05   6 0.0000 !aaa-aaa
 DIHEdral CH2E   CH2E   C      NH1    MULT 6   0.5   1 0.0000 0.4  2 0.0000  0.3   3 0.0000  0.2  4 0.0000  0.1   5 0.0000  0.05   6 0.0000 !aaa-aaa
 DIHEdral CH3E   CH1E   C      NH1    MULT 6   0.5   1 0.0000 0.4  2 0.0000  0.3   3 0.0000  0.2  4 0.0000  0.1   5 0.0000  0.05   6 0.0000 !ala-aaa
 DIHEdral CH1E   CH1E   C      NH1    MULT 6   0.5   1 0.0000 0.4  2 0.0000  0.3   3 0.0000  0.2  4 0.0000  0.1   5 0.0000  0.05   6 0.0000 !(ile,thr,val)-aaa
 DIHEdral CH2E   CH1E   CCIS   NH1    MULT 6   0.5   1 0.0000 0.4  2 0.0000  0.3   3 0.0000  0.2  4 0.0000  0.1   5 0.0000  0.05   6 0.0000 !aaa-aaa
 DIHEdral CH3E   CH1E   CCIS   NH1    MULT 6   0.5   1 0.0000 0.4  2 0.0000  0.3   3 0.0000  0.2  4 0.0000  0.1   5 0.0000  0.05   6 0.0000 !ala-aaa
 DIHEdral CH1E   CH1E   CCIS   NH1    MULT 6   0.5   1 0.0000 0.4  2 0.0000  0.3   3 0.0000  0.2  4 0.0000  0.1   5 0.0000  0.05   6 0.0000 !(ile,thr,val)-aaa

 DIHEdral CH2E   CH1E   C      N      MULT 6   0.5   1 0.0000 0.4  2 0.0000  0.3   3 0.0000  0.2  4 0.0000  0.1   5 0.0000  0.05   6 0.0000 !aaa-pro
 DIHEdral CH3E   CH1E   C      N      MULT 6   0.5   1 0.0000 0.4  2 0.0000  0.3   3 0.0000  0.2  4 0.0000  0.1   5 0.0000  0.05   6 0.0000 !ala-pro
 DIHEdral CH1E   CH1E   C      N      MULT 6   0.5   1 0.0000 0.4  2 0.0000  0.3   3 0.0000  0.2  4 0.0000  0.1   5 0.0000  0.05   6 0.0000 !(ile,thr,val)-pro

 DIHEdral CH2E   CH1E   CCIS   N      MULT 6   0.5   1 0.0000 0.4  2 0.0000  0.3   3 0.0000  0.2  4 0.0000  0.1   5 0.0000  0.05   6 0.0000 !aaa-pro
 DIHEdral CH3E   CH1E   CCIS   N      MULT 6   0.5   1 0.0000 0.4  2 0.0000  0.3   3 0.0000  0.2  4 0.0000  0.1   5 0.0000  0.05   6 0.0000 !ala-pro
 DIHEdral CH1E   CH1E   CCIS   N      MULT 6   0.5   1 0.0000 0.4  2 0.0000  0.3   3 0.0000  0.2  4 0.0000  0.1   5 0.0000  0.05   6 0.0000 !(ile,thr,val)-pro

! backbone phi (not active with usual topology file modified 03-JUL-01)
 DIHEdral C      NH1    CH1E   C      MULT 6   0.375  1 0.0000 0.3  2 0.0000  0.225  3 0.0000  0.15  4 0.0000  0.075  5 0.0000  0.0375  6 0.0000 !aaa-aaa
 DIHEdral C      NH1    CH2G   C      MULT 6   0.375  1 0.0000 0.3  2 0.0000  0.225  3 0.0000  0.15  4 0.0000  0.075  5 0.0000  0.0375  6 0.0000 !aaa-gly
! backbone phi (not active with usual topology file modified 03-JUL-01)
 DIHEdral CCIS      NH1    CH1E   C      MULT 6   0.375  1 0.0000 0.3  2 0.0000  0.225  3 0.0000  0.15  4 0.0000  0.075  5 0.0000  0.0375  6 0.0000 !aaa-aaa
 DIHEdral CCIS      NH1    CH2G   C      MULT 6   0.375  1 0.0000 0.3  2 0.0000  0.225  3 0.0000  0.15  4 0.0000  0.075  5 0.0000  0.0375  6 0.0000 !aaa-gly
! backbone phi (not active with usual topology file modified 03-JUL-01)
 DIHEdral C      NH1    CH1E   CCIS      MULT 6   0.375  1 0.0000 0.3  2 0.0000  0.225  3 0.0000  0.15  4 0.0000  0.075  5 0.0000  0.0375  6 0.0000 !aaa-aaa
 DIHEdral C      NH1    CH2G   CCIS      MULT 6   0.375  1 0.0000 0.3  2 0.0000  0.225  3 0.0000  0.15  4 0.0000  0.075  5 0.0000  0.0375  6 0.0000 !aaa-gly
! backbone phi (not active with usual topology file modified 03-JUL-01)
 DIHEdral CCIS      NH1    CH1E   CCIS      MULT 6   0.375  1 0.0000 0.3  2 0.0000  0.225  3 0.0000  0.15  4 0.0000  0.075  5 0.0000  0.0375  6 0.0000 !aaa-aaa
 DIHEdral CCIS      NH1    CH2G   CCIS      MULT 6   0.375  1 0.0000 0.3  2 0.0000  0.225  3 0.0000  0.15  4 0.0000  0.075  5 0.0000  0.0375  6 0.0000 !aaa-gly

! backbone phi related due to O & CB  N.B. 1.33x the strength of phi above (not active with usual topology file added 03-JUL-01)
 DIHEdral C      NH1    CH1E   CH2E   MULT 6   0.5   1 0.0000 0.4  2 0.0000  0.3   3 0.0000  0.2  4 0.0000  0.1   5 0.0000  0.05   6 0.0000 !aaa-aaa
 DIHEdral C      NH1    CH1E   CH3E   MULT 6   0.5   1 0.0000 0.4  2 0.0000  0.3   3 0.0000  0.2  4 0.0000  0.1   5 0.0000  0.05   6 0.0000 !aaa-ala
 DIHEdral C      NH1    CH1E   CH1E   MULT 6   0.5   1 0.0000 0.4  2 0.0000  0.3   3 0.0000  0.2  4 0.0000  0.1   5 0.0000  0.05   6 0.0000 !aaa-(ile,thr,val)
 DIHEdral CCIS   NH1    CH1E   CH2E   MULT 6   0.5   1 0.0000 0.4  2 0.0000  0.3   3 0.0000  0.2  4 0.0000  0.1   5 0.0000  0.05   6 0.0000 !aaa-aaa
 DIHEdral CCIS   NH1    CH1E   CH3E   MULT 6   0.5   1 0.0000 0.4  2 0.0000  0.3   3 0.0000  0.2  4 0.0000  0.1   5 0.0000  0.05   6 0.0000 !aaa-ala
 DIHEdral CCIS   NH1    CH1E   CH1E   MULT 6   0.5   1 0.0000 0.4  2 0.0000  0.3   3 0.0000  0.2  4 0.0000  0.1   5 0.0000  0.05   6 0.0000 !aaa-(ile,thr,val)

! disulphide (modified 07-JUL-01)
   
 DIHEdral CH2E   S      S      CH2E   MULT 6   0.5   1 0.0000 0.4  2 0.0000  0.4   3 0.0000  0.2  4 0.0000  0.1   5 0.0000  0.075  6 0.0000 !aaa-aaa
! DIHEdral CH2E   S      S    CH2E     0.5       2 0.0000  

! Phosphorylated Histidine (AB 1-05-03)
 DIHEdral OR3    PP     NR     CRHH   2.0  2  0.0

! Phosphorylated Cysteine (AB 7-05-03)
 DIHEdral OR3    PP     SM     CH2E   2.0  2  0.0

! Phosphorylated Tyrosine (AB 8-05-06)
 DIHEdral OR3    PP     OHP     CY2   2.0  2  0.0
 
! Phosphorylated Serine (AB 25-01-10)
 DIHEdral OR3    PP     OHP     CH2E   2.0  2  0.0
 
! Phosphorylated Threonine (AB 25-01-10)
 DIHEdral OR3    PP     OHP     CH1E   2.0  2  0.0
 
! Suflonated Tyrosine (AB 6-08-08)
 DIHEdral OUF    SUF    OUF     CY2   2.0  2  0.0

! Acetylated Lyine (AB 20-03-09)
 DIHEdral CH2E   NH1    C       CH3E  500.0  2 180.0
 DIHEdral CH2E   NH1    C       O     500.0  2   0.0
 DIHEdral H      NH1    C       O     500.0  2 180.0
 DIHEdral H      NH1    C       CH3E  500.0  2   0.0

! Residue DRG
eval ($pd_v=$pd_x*     8.1) DIHE  CHAC  CHAS  NHAQ  CHAR $pd_v 3   0.000
eval ($pd_v=$pd_x*     0.1) DIHE  CHAC  CHAS  CHAO  CHAJ $pd_v 6   0.000
eval ($pd_v=$pd_x*     0.9) DIHE  CHAS  NHAQ  OHAH  HHAA $pd_v 3   0.000
eval ($pd_v=$pd_x*     8.1) DIHE  CHAI  CHAR  NHAQ  CHAS $pd_v 3   0.000
eval ($pd_v=$pd_x*     0.1) DIHE  NHAQ  CHAR  CHAI  CHAO $pd_v 6   0.000
eval ($pd_v=$pd_x*    19.6) DIHE  CHAR  CHAI  CHAO  CHAJ $pd_v 2 180.000
eval ($pd_v=$pd_x*     0.1) DIHE  CHAS  CHAO  CHAJ  SHAL $pd_v 6   0.000
eval ($pd_v=$pd_x*     4.9) DIHE  S     SHAL  CHAJ  CHAO $pd_v 3   0.000
eval ($pd_v=$pd_x*   160.0) DIHE  CH2E  S     SHAL  CHAJ $pd_v 2   0.000
eval ($pd_v=$pd_x*     4.9) DIHE  SHAL  S     CH2E  CH1E  $pd_v 3   0.000
eval ($pd_v=$pd_x*    19.6) DIHE  S     CHB   CHA   NH_Y $pd_v 3   0.000
eval ($pd_v=$pd_x*     0.1) DIHE  CHB   CHA   CH_Y  OH_Y $pd_v 6   0.000
eval ($pd_v=$pd_x*     8.1) DIHE  CHB   CHA   NH_Y  HHAB $pd_v 3   0.000

 
if ( $exist_par_nonbonded = false ) then
  evaluate ($par_nonbonded = "OPLSX")
end if

NONBONDED  CHAC  0.10000 3.29633 0.10000 3.02906
NONBONDED  CHAS  0.10000 3.29633 0.10000 3.02906
NONBONDED  CHAD  0.10000 3.29633 0.10000 3.02906
NONBONDED  NHAQ  0.10000 2.67270 0.10000 2.40543
NONBONDED  OHAH  0.10000 2.58361 0.10000 2.31634
NONBONDED  HHAA  0.10000 1.42544 0.10000 1.15817
NONBONDED  CHAR  0.10000 3.29633 0.10000 3.02906
NONBONDED  CHAA  0.10000 3.29633 0.10000 3.02906
NONBONDED  CHAB  0.10000 3.29633 0.10000 3.02906
NONBONDED  CHAI  0.10000 3.29633 0.10000 3.02906
NONBONDED  CHAO  0.10000 3.29633 0.10000 3.02906
NONBONDED  CHAJ  0.10000 3.29633 0.10000 3.02906
NONBONDED  SHAL  0.10000 3.20724 0.10000 2.93997
NONBONDED  SHAM  0.10000 3.20724 0.10000 2.93997
NONBONDED  CHB   0.10000 3.29633 0.10000 3.02906
NONBONDED  CHA   0.10000 3.29633 0.10000 3.02906
NONBONDED  CH_Y  0.10000 3.29633 0.10000 3.02906
NONBONDED  OHXT  0.10000 2.58361 0.10000 2.31634
NONBONDED  OH_Y  0.10000 2.58361 0.10000 2.31634
NONBONDED  NH_Y  0.10000 2.67270 0.10000 2.40543
NONBONDED  HHAC  0.10000 1.42544 0.10000 1.15817
NONBONDED  HHAD  0.10000 1.42544 0.10000 1.15817
NONBONDED  HHAB  0.10000 1.42544 0.10000 1.15817


{* nonbonding parameter section *}
{* ============================ *}

 if ($par_nonbonded = "CONTACT") then                   { added by 10-MAR-00 }

!  This uses distances consistent with those in a survey of atom-atom contacts 
!  in high resolution crystal structures (Williams et al. (1994) Protein Science 3, 1224-1235)
!  implemented with the PROLSQ form:
!
!    fVDW(R) =  16 * ( Rmin - R ) ^ 4  
!
!  The Rmin is related to the Lennard-Jones (epsilon,sigma) form by epsilon=0.1(not used) 
!  and Rmin = sigma * 2 ^ (1/6).
!
{ mandatory values:
  NBONds
    CUTNB=7.0   WMIN=1.5
    REPEl = 1.0          
    REXPonent = 4
    IREXponent = 1
    RCONst = 16.0
    TOLErance = 0.5      NBXMOD = 5
    ctonnb=5.5 ctofnb=6.0 {* for consistency only, not needed for repel *}
  END
}
 evaluate ($repel_radius = 1.0)
 evaluate ($repel_rcons = 25)
 evaluate ($repel_rexpo  = 4)
 evaluate ($repel_irexp  = 1)

!         type          sigma     
evaluate ($VR_C=        3.15)    
evaluate ($VR_N=        2.6)     {polar value to reflect H-bonding ability} 
evaluate ($VR_O=        2.4)     {polar value to reflect H-bonding ability}                       
evaluate ($VR_S=        3.1)     
evaluate ($VR_FE=       2.15)
evaluate ($VR_H=        1.85)     {large for aliphatics}                                                     
evaluate ($VR_HH=       0.65)     {small for H bonds}                      
evaluate ($VR_P=        3.4)
evaluate ($VR_I=        3.9)

! compute 1-4 sigmas 
evaluate ($VR14_C   = $VR_C    -0.27)
evaluate ($VR14_N   = $VR_N    -0.27)
evaluate ($VR14_O   = $VR_O    -0.27)
evaluate ($VR14_S   = $VR_S    -0.27)
evaluate ($VR14_FE  = $VR_FE   -0.27)
evaluate ($VR14_H   = $VR_H    -0.27)
evaluate ($VR14_HH  = $VR_H    -0.27)  {no 1-4 H bonds are possible}
evaluate ($VR14_P   = $VR_P    -0.27)
evaluate ($VR14_I   = $VR_I    -0.27)

evaluate ($VE=0.1)
!
 !                  eps     sigma              eps(1:4) sigma(1:4)
 !                  (kcal/mol) (A)             (kcal/mol) (A)
 !                   --------------------------------------------------
 NONBonded  H       $VE $VR_HH   $VE $VR14_HH 
 NONBonded  HA      $VE $VR_H    $VE $VR14_H   ! aliphatic hydrogen
 NONBonded  HC      $VE $VR_HH   $VE $VR14_HH  ! h attached to charg.
 !
 NONBonded  C       $VE $VR_C    $VE $VR14_C         ! carbonyl carbon
 NONBonded  CCIS    $VE $VR_C    $VE $VR14_C         ! carbonyl carbon
 NONBonded  C5      $VE $VR_C    $VE $VR14_C         ! carbonyl carbon
 NONBonded  C5W     $VE $VR_C    $VE $VR14_C         ! carbonyl carbon
 NONBonded  CF      $VE $VR_C    $VE $VR14_C         ! carbonyl carbon
 NONBonded  CW      $VE $VR_C    $VE $VR14_C         ! carbonyl carbon
 NONBonded  CY      $VE $VR_C    $VE $VR14_C         ! carbonyl carbon
 NONBonded  CY2     $VE $VR_C    $VE $VR14_C         ! carbonyl carbon
 NONBonded  CH1E    $VE $VR_C    $VE $VR14_C         ! \
 NONBonded  CH2E    $VE $VR_C    $VE $VR14_C         !  extended carbons
 NONBonded  CH2G    $VE $VR_C    $VE $VR14_C         !  extended carbons
 NONBonded  CH2P    $VE $VR_C    $VE $VR14_C         !  extended carbons
 NONBonded  CH1P    $VE $VR_C    $VE $VR14_C         !  extended carbons
 NONBonded  CH3E    $VE $VR_C    $VE $VR14_C         ! /
 NONBonded  CR1E    $VE $VR_C    $VE $VR14_C         !  ring carbons
 NONBonded  CR1H    $VE $VR_C    $VE $VR14_C         !  ring carbons
 NONBonded  CR1W    $VE $VR_C    $VE $VR14_C         !  ring carbons
 NONBonded  CRHH    $VE $VR_C    $VE $VR14_C         !  ring carbons
 NONBonded  CRH     $VE $VR_C    $VE $VR14_C         !  ring carbons
		    
 !
 NONBonded  N       $VE $VR_N    $VE $VR14_N         
 NONBonded  NC2     $VE $VR_N    $VE $VR14_N
 NONBonded  NH1     $VE $VR_N    $VE $VR14_N
 NONBonded  NH2     $VE $VR_N    $VE $VR14_N
 NONBonded  NH3     $VE $VR_N    $VE $VR14_N
 NONBonded  NP      $VE $VR_N    $VE $VR14_N
 NONBonded  NR      $VE $VR_N    $VE $VR14_N
 !
 NONBonded  O       $VE $VR_O    $VE $VR14_O
 NONBonded  OC      $VE $VR_O    $VE $VR14_O
 NONBonded  OH1     $VE $VR_O    $VE $VR14_O
 NONBonded  OHP     $VE $VR_O    $VE $VR14_O
 NONBonded  OUF     $VE $VR_O    $VE $VR14_O
 !
 NONBonded  S       $VE $VR_S    $VE $VR14_S
 NONBonded  SM      $VE $VR_S    $VE $VR14_S
 NONBonded  SH1E    $VE $VR_S    $VE $VR14_S
 NONBonded  SUF     $VE $VR_S    $VE $VR14_S


 elseif ($par_nonbonded eq "PROLSQ") then
{* nonbonding parameter section *}
{* ============================ *}
!!
!  This uses a new form of the REPEL function:
!    fVDW(R) =  RCON *( Rmin ^ IREX - R  ^ IREX ) ^ REXP
!
!  PROLSQ uses a function of the form:
!    fVDW(R) =  (1 / 0.5) ^ 4 * ( Rmin ^ 4 - R  ^ 4 ) 
!
!  The epsilon values are arbitrary since the repel function does not depend
!   on epsilon.  The sigma values come from converting the Van der Waals 
!   radii of the PROLSQ program into sigma values using the formula:
!     Rmin = sigma * 2 ^ (1/6)
!   Note:  Prolsq decrements Van der Waals radii for non-bonded contacts
!           that involve torsion angles (1:4 contacts) by .30 A, and
!           hydrogen bonds (X...Y) by .2 A (X-H...Y) by .9.  The former
!           decrement is accomplished in CNS by using the
!           1-4 nonbonded terms.  The latter decrement is accomplished by
!           decreasing the van der Waals radius of hydrogens by 0.8 
!           and that of O and N by 0.1 A.
!
{ suggested values:
  NBONds
    CUTNB=7.0   WMIN=1.5
    REPEl = 1.0          
    REXPonent = 4
    IREXponent = 1
    RCONst = 16.0
    TOLErance = 0.5      NBXMOD = 5
    ctonnb=5.5 ctofnb=6.0 {* for consistency only, not needed for repel *}
  END
}
 evaluate ($repel_radius = 1.0)
 evaluate ($repel_rcons = 25)
 evaluate ($repel_rexpo  = 4)
 evaluate ($repel_irexp  = 1)
!                  type      van der Waals radius         correction applied for hbond
evaluate ($VR_C=        3.7)   
evaluate ($VR_N=        3.0)                             {-0.1}
evaluate ($VR_O=        2.9)                             {-0.1}
evaluate ($VR_S=        3.6)
evaluate ($VR_FE=       2.4)
evaluate ($VR_H=        2.0) {from 1.6 02-APRIL-00}                             
evaluate ($VR_HH=       1.6)                             {-0.8}
evaluate ($VR_P=        3.8)
evaluate ($VR_I=        4.3)
evaluate ($VR_C_SP2=    3.4)

{ convert radii into sigmas }
!
! sigma= vdw radius / 2 ^ (1/6)
!
evaluate ($VR_C   = $VR_C    / 2^(1/6))
evaluate ($VR_N   = $VR_N    / 2^(1/6))
evaluate ($VR_O   = $VR_O    / 2^(1/6))
evaluate ($VR_S   = $VR_S    / 2^(1/6))
evaluate ($VR_FE  = $VR_FE   / 2^(1/6))
evaluate ($VR_H   = $VR_H    / 2^(1/6))
evaluate ($VR_HH  = $VR_HH   / 2^(1/6))
evaluate ($VR_P   = $VR_P    / 2^(1/6))
evaluate ($VR_I   = $VR_I    / 2^(1/6))
evaluate ($VR_C_SP2=$VR_C_SP2/ 2^(1/6))

{ compute 1-4 sigmas from reduced radii}
evaluate ($VR14_C   = $VR_C    -(0.3/ 2^(1/6)))
evaluate ($VR14_N   = $VR_N    -(0.3/ 2^(1/6)))
evaluate ($VR14_O   = $VR_O    -(0.3/ 2^(1/6)))
evaluate ($VR14_S   = $VR_S    -(0.3/ 2^(1/6)))
evaluate ($VR14_FE  = $VR_FE   -(0.3/ 2^(1/6)))
evaluate ($VR14_H   = $VR_H    -(0.3/ 2^(1/6)))
evaluate ($VR14_HH  = $VR_HH   -(0.3/ 2^(1/6)))
evaluate ($VR14_P   = $VR_P    -(0.3/ 2^(1/6)))
evaluate ($VR14_I   = $VR_I    -(0.3/ 2^(1/6)))
evaluate ($VR14_C_SP2=$VR_C_SP2-(0.3/ 2^(1/6)))

evaluate ($VE=0.1)
!
 !                  eps     sigma              eps(1:4) sigma(1:4)
 !                  (kcal/mol) (A)             (kcal/mol) (A)
 !                   --------------------------------------------------
 NONBonded  H       $VE $VR_HH   $VE $VR14_HH 
 NONBonded  HA      $VE $VR_H    $VE $VR14_H   ! aliphatic hydrogen
 NONBonded  HC      $VE $VR_HH   $VE $VR14_HH  ! h attached to charg.
 !
 NONBonded  C       $VE $VR_C_SP2    $VE $VR14_C_SP2 ! carbonyl carbon
 NONBonded  CCIS    $VE $VR_C_SP2    $VE $VR14_C_SP2 ! carbonyl carbon
 NONBonded  C5      $VE $VR_C    $VE $VR14_C         ! carbonyl carbon
 NONBonded  C5W     $VE $VR_C    $VE $VR14_C         ! carbonyl carbon
 NONBonded  CF      $VE $VR_C    $VE $VR14_C         ! carbonyl carbon
 NONBonded  CW      $VE $VR_C    $VE $VR14_C         ! carbonyl carbon
 NONBonded  CY      $VE $VR_C    $VE $VR14_C         ! carbonyl carbon
 NONBonded  CY2     $VE $VR_C    $VE $VR14_C         ! carbonyl carbon
 NONBonded  CH1E    $VE $VR_C    $VE $VR14_C         ! \
 NONBonded  CH2E    $VE $VR_C    $VE $VR14_C         !  extended carbons
 NONBonded  CH2G    $VE $VR_C    $VE $VR14_C         !  extended carbons
 NONBonded  CH2P    $VE $VR_C    $VE $VR14_C         !  extended carbons
 NONBonded  CH1P    $VE $VR_C    $VE $VR14_C         !  extended carbons
 NONBonded  CH3E    $VE $VR_C    $VE $VR14_C         ! /
 NONBonded  CR1E    $VE $VR_C    $VE $VR14_C         !  ring carbons
 NONBonded  CR1H    $VE $VR_C    $VE $VR14_C         !  ring carbons
 NONBonded  CR1W    $VE $VR_C    $VE $VR14_C         !  ring carbons
 NONBonded  CRHH    $VE $VR_C    $VE $VR14_C         !  ring carbons
 NONBonded  CRH     $VE $VR_C    $VE $VR14_C         !  ring carbons
		    
 !
 NONBonded  N       $VE $VR_N    $VE $VR14_N         
 NONBonded  NC2     $VE $VR_N    $VE $VR14_N
 NONBonded  NC3     $VE $VR_N    $VE $VR14_N
 NONBonded  NC4     $VE $VR_N    $VE $VR14_N
 NONBonded  NH1     $VE $VR_N    $VE $VR14_N
 NONBonded  NH2     $VE $VR_N    $VE $VR14_N
 NONBonded  NH3     $VE $VR_N    $VE $VR14_N
 NONBonded  NP      $VE $VR_N    $VE $VR14_N
 NONBonded  NR      $VE $VR_N    $VE $VR14_N
 !
 NONBonded  O       $VE $VR_O    $VE $VR14_O
 NONBonded  OP1     $VE $VR_O    $VE $VR14_O
 NONBonded  OR3     $VE $VR_O    $VE $VR14_O
 NONBonded  OC      $VE $VR_O    $VE $VR14_O
 NONBonded  OH1     $VE $VR_O    $VE $VR14_O
 NONBonded  OHP     $VE $VR_O    $VE $VR14_O
 NONBonded  OUF     $VE $VR_O    $VE $VR14_O
 !
 NONBonded  S       $VE $VR_S    $VE $VR14_S
 NONBonded  SM      $VE $VR_S    $VE $VR14_S
 NONBonded  SH1E    $VE $VR_S    $VE $VR14_S
 NONBonded  SUF     $VE $VR_S    $VE $VR14_S

 

 elseif ($par_nonbonded eq "PARMALLH6") then
{ suggested values for refinement in vacuo
  NBONds
    CUTNB=10   WMIN=1.5
    REPEl = 0.0     rdie vswitch     
    TOLErance = 0.5      NBXMOD = 5
    ctonnb=5.5 ctofnb=9.0 
  END
  HBOND 
    AEXP=4 REXP=6 HAEX=4 AAEX=2   ACCEPTORS
    CUTHB=4.5 CTOFHB=4.0 CTONHB=3.5  CUTHA=90.0  CTOFHA=70.0  CTONHA=50.0
  end

or

{ suggested values:
  NBONds
  CUTNB=7.0   WMIN=1.5
  REPEl = 0.8          
  REXPonent = 2
  IREXponent = 2
  RCONst = 5.0
  TOLErance = 0.5      NBXMOD = 5
  ctonnb=5.5 ctofnb=6.0 {* for consistency only, not needed for repel *}
END
}
}
 evaluate ($repel_radius = 0.8)
 evaluate ($repel_rcons = 5.0)
 evaluate ($repel_rexpo  = 2)
 evaluate ($repel_irexp  = 2)
 NONBonded  C       0.0903   3.2072      0.0903   3.2072
 NONBonded  CCIS    0.0903   3.2072      0.0903   3.2072
 NONBonded  CR1E    0.0903   3.2072      0.0903   3.2072
 NONBonded  CF      0.0903   3.2072      0.0903   3.2072
 NONBonded  CY      0.0903   3.2072      0.0903   3.2072
 NONBonded  CY2     0.0903   3.2072      0.0903   3.2072
 NONBonded  CR1W    0.0903   3.2072      0.0903   3.2072
 NONBonded  CW      0.0903   3.2072      0.0903   3.2072
 NONBonded  C5W     0.0903   3.2072      0.0903   3.2072
 NONBonded  CN      0.0903   3.2072      0.0903   3.2072
 NONBonded  C5      0.0903   3.2072      0.0903   3.2072
 NONBonded  CH1E    0.0903   3.2072      0.0903   3.2072
 NONBonded  CH2E    0.0903   3.2072      0.0903   3.2072
 NONBonded  CH3E    0.0903   3.2072      0.0903   3.2072
 NONBonded  CH2G    0.0903   3.2072      0.0903   3.2072
 NONBonded  CH2P    0.0903   3.2072      0.0903   3.2072
 NONBonded  CH1P    0.0903   3.2072      0.0903   3.2072
 NONBonded  CRH     0.0903   3.2072      0.0903   3.2072
 NONBonded  CR1H    0.0903   3.2072      0.0903   3.2072
 NONBonded  CRHH    0.0903   3.2072      0.0903   3.2072
 NONBonded  H       0.0498   1.4254      0.0498   1.4254
 NONBonded  HA      0.0045   2.6157      0.0045   2.6157
 NONBonded  HC      0.0498   1.4254      0.0498   1.4254
 NONBonded  N       0.1592   2.7618      0.1592   2.7618
 NONBonded  NR      0.1592   2.7618      0.1592   2.7618
 NONBonded  NH1     0.1592   2.7618      0.1592   2.7618
 NONBonded  NH2     0.1592   2.7618      0.1592   2.7618
 NONBonded  NH3     0.1592   2.7618      0.1592   2.7618
 NONBonded  NC2     0.1592   2.7618      0.1592   2.7618
 NONBonded  NC3     0.1592   2.7618      0.1592   2.7618
 NONBonded  NC4     0.1592   2.7618      0.1592   2.7618
 NONBonded  O       0.2342   2.6406      0.2342   2.6406
 NONBonded  OC      1.0244   2.6406      1.0244   2.6406
 NONBonded  OH1     0.2342   2.6406      0.2342   2.6406
 NONBonded  OHP     0.2342   2.6406      0.2342   2.6406
 NONBonded  OUF     0.2342   2.6406      0.2342   2.6406
 NONBonded  S       0.0239   3.3854      0.0239   3.3854
 NONBonded  SM      0.0239   3.3854      0.0239   3.3854
 NONBonded  SH1E    0.0239   3.3854      0.0239   3.3854
 NONBonded  SUF     0.0239   3.3854      0.0239   3.3854

!! HBOND AEXP=4 REXP=6 HAEX=4 AAEX=2   ACCEPTORS
!!     CUTHB=4.5 CTOFHB=4.0 CTONHB=3.5  CUTHA=90.0  CTOFHA=70.0  CTONHA=50.0
!
 AEXP 4
 REXP 6
 HAEX 4
 AAEX 2
!                   Emin      Rmin
!                (Kcal/mol)   (A)
 hbond N*+* N%      -3.00      3.0!  VALUES FROM VINOGRADOV AND LINELL FOR
 hbond N*+* O*      -3.50      2.9!  TYPICAL LENGTHS AND DEPTHS.
 hbond OH*  N%      -4.00      2.85
 hbond OH*  O*      -4.25      2.75
 hbond SH1E    N%      -3.00      3.0 !! added, ATB
 hbond SH1E    O*      -3.50      2.9 !! added, ATB



 elseif ($par_nonbonded eq "OPLSX") then
! these are close to the original OPLS parameters without introducing
! new atom types. The commented out lines are for atom types that 
! are unique in OPLS but would require additional atom types in 
! allhdg. Michael Nilges.
{ suggested values for refinement in H2O
  NBONds
    CUTNB=12   WMIN=1.5
    REPEl = 0.0     cdie shift     
    TOLErance = 0.5      NBXMOD = 5
    ctonnb=5.5 ctofnb=11.0 
  END
}
 evaluate ($repel_radius = 0.0)
 NONBonded  C       0.105   3.750       0.013    3.750  {OPLS C}!
 NONBonded  CCIS    0.105   3.750       0.013    3.750  {OPLS C}!
! NONBonded  C       0.110   3.750       0.014    3.750  {OPLS CAJ}!
 NONBonded  CY2     0.105   3.750       0.013    3.750  {OPLS C}
 NONBonded  CF      0.110   3.750       0.014    3.750  {OPLS CA}
 NONBonded  CY      0.110   3.750       0.014    3.750  {OPLS CA}
 NONBonded  CW      0.145   3.750       0.018    3.750  {OPLS CB}
! NONBonded  CW      0.130   3.750       0.016    3.750  {OPLS CN}
 NONBonded  CR1E    0.110   3.750       0.014    3.750  {OPLS CD}!
! NONBonded  CR1E    0.130   3.750       0.016    3.750  {OPLS CG}!
 NONBonded  CR1H    0.145   3.750       0.018    3.750  {OPLS CGJ}
 NONBonded  CR1W    0.110   3.750       0.014    3.750  {OPLS CD}!
 NONBonded  CH1E    0.080   3.800       0.010    3.800  {OPLS CH}
! NONBonded  CH1E    0.080   3.850       0.010    3.850  {OPLS CHJ}
 NONBonded  CRHH    0.145   3.750       0.018    3.750  {OPLS CP}
 NONBonded  C5W     0.145   3.750       0.018    3.750  {OPLS CS}
 NONBonded  CH2G    0.118   3.800       0.015    3.800  {OPLS C2} 
 NONBonded  CH2P    0.118   3.905       0.015    3.905  {OPLS C2J}
 NONBonded  CH1P    0.118   3.905       0.015    3.905  {OPLS C2J}
! NONBonded  CH2P    0.118   3.800       0.015    3.800  {OPLS C2} 
 NONBonded  CH2E    0.118   3.905       0.015    3.905  {OPLS C2J}
! NONBonded  CH3E    0.118   3.905       0.015    3.905  {OPLS C3}  
 NONBonded  CH3E    0.160   3.910       0.020    3.910  {OPLS C3J}
! NONBonded  CH3E    0.175   3.905       0.022    3.905  {OPLS C3K}
! NONBonded  CH3E    0.170   3.800       0.021    3.800  {OPLS C3L}
 NONBonded  C5      0.145   3.750       0.145    3.750  {OPLS CC}
 NONBonded  CRH     0.145   3.750       0.145    3.750  {OPLS 43}

 NONBonded  H       0.05     0.50        0.004     0.50
 NONBonded  HA      0.05     0.50        0.004     0.50
 NONBonded  HC      0.05     0.50        0.004     0.50

 NONBonded  N       0.170    3.250       0.021    3.250
 NONBonded  NR      0.170    3.250       0.021    3.250
 NONBonded  NH1     0.170    3.250       0.021    3.250
 NONBonded  NH2     0.170    3.250       0.021    3.250
 NONBonded  NH3     0.170    3.250       0.021    3.250
 NONBonded  NC2     0.170    3.250       0.021    3.250
 NONBonded  NC3     0.170    3.250       0.021    3.250
 NONBonded  NC4     0.170    3.250       0.021    3.250

 NONBonded  O       0.210    2.960       0.021    2.960
 NONBonded  OC      0.210    2.960       0.021    2.960
 NONBonded  OP1     0.210    2.960       0.021    2.960
 NONBonded  OR3     0.210    2.960       0.021    2.960
 NONBonded  OH1     0.170    3.070       0.021    3.070
 NONBonded  OHP     0.170    3.070       0.021    3.070
 NONBonded  OUF     0.170    3.070       0.021    3.070
 NONBonded  PP      0.2000   3.738       0.085    3.738
 NONBonded  S       0.250    3.550       0.031    3.550
 NONBonded  SM      0.250    3.550       0.031    3.550
 NONBonded  SH1E    0.250    3.550       0.031    3.550
 NONBonded  SUF    0.250    3.550       0.031    3.550

 NBFIX      H   H      14.013   1.67074      14.013   1.67074
 NBFIX      H   HA    277.278   4.07473     277.278   4.07473
 NBFIX      H   HC     14.013   1.67074      14.013   1.67074
 NBFIX      HA  HA   1846.41    5.76501    1846.41    5.76501  
 NBFIX      HA  HC    277.278   4.07473     277.278   4.07473
 NBFIX      HC  HC     14.013   1.67074      14.013   1.67074

 elseif ($par_nonbonded eq "PARAM19") then
! these are close to the original OPLS parameters without introducing
! new atom types. The commented out lines are for atom types that 
! are unique in OPLS but would require additional atom types in 
! allhdg. Michael Nilges.
{ suggested values for refinement in H2O
  NBONds
    CUTNB=12   WMIN=1.5
    REPEl = 0.0     cdie shift     
    TOLErance = 0.5      NBXMOD = 5
    ctonnb=5.5 ctofnb=11.0 
  END
}
 evaluate ($repel_radius = 0.89)
 evaluate ($repel_rcons = 25)
 evaluate ($repel_rexpo  = 4)
 evaluate ($repel_irexp  = 1)

 NONBonded  H       0.0498   1.4254      0.0498   1.4254
 NONBonded  HA      0.0498   1.4254      0.0450   2.6157 !- charged group.
 NONBonded  HC      0.0498   1.0691      0.0498   1.0691 !   Reduced vdw radius
 !
 NONBonded  C       0.1200   3.7418      0.1000   3.3854 ! carbonyl carbon
 NONBonded  CCIS    0.1200   3.7418      0.1000   3.3854 ! carbonyl carbon
 NONBonded  C5      0.1200   3.7418      0.1000   3.3854 ! carbonyl carbon
 NONBonded  C5W     0.1200   3.7418      0.1000   3.3854 ! carbonyl carbon
 NONBonded  CF      0.1200   3.7418      0.1000   3.3854 ! carbonyl carbon
 NONBonded  CW      0.1200   3.7418      0.1000   3.3854 ! carbonyl carbon
 NONBonded  CY      0.1200   3.7418      0.1000   3.3854 ! carbonyl carbon
 NONBonded  CY2     0.1200   3.7418      0.1000   3.3854 ! carbonyl carbon
 NONBonded  CH1E    0.0486   4.2140      0.1000   3.3854 ! \
 NONBonded  CH2E    0.1142   3.9823      0.1000   3.3854 !  extended carbons
 NONBonded  CH2G    0.1142   3.9823      0.1000   3.3854 !  extended carbons
 NONBonded  CH2P    0.1142   3.9823      0.1000   3.3854 !  extended carbons
 NONBonded  CH1P    0.1142   3.9823      0.1000   3.3854 !  extended carbons
 NONBonded  CH3E    0.1811   3.8576      0.1000   3.3854 ! /
!! NONBonded  CM      0.0262   4.4367      0.1000   3.3854
 NONBonded  CR1E    0.1200   3.7418      0.1000   3.3854 !  ring carbons
 NONBonded  CR1H    0.1200   3.7418      0.1000   3.3854 !  ring carbons
 NONBonded  CR1W    0.1200   3.7418      0.1000   3.3854 !  ring carbons
 NONBonded  CRHH    0.1200   3.7418      0.1000   3.3854 !  ring carbons
 NONBonded  CRH     0.1200   3.7418      0.1000   3.3854 !  ring carbons
!! NONBonded  CT      0.0262   4.4367      0.1000   3.3854
 !
 NONBonded  N       0.2384   2.8509      0.2384   2.8509
 NONBonded  NC2     0.2384   2.8509      0.2384   2.8509
 NONBonded  NC3     0.2384   2.8509      0.2384   2.8509
 NONBonded  NC4     0.2384   2.8509      0.2384   2.8509
 NONBonded  NH1     0.2384   2.8509      0.2384   2.8509
 NONBonded  NH2     0.2384   2.8509      0.2384   2.8509
 NONBonded  NH3     0.2384   2.8509      0.2384   2.8509
 NONBonded  NP      0.2384   2.8509      0.2384   2.8509
 NONBonded  NR      0.2384   2.8509      0.2384   2.8509
 !
 NONBonded  O       0.1591   2.8509      0.1591   2.8509
 NONBonded  OC      0.6469   2.8509      0.6469   2.8509
 NONBonded  OH1     0.1591   2.8509      0.1591   2.8509
 NONBonded  OHP     0.1591   2.8509      0.1591   2.8509
 NONBonded  OUF     0.1591   2.8509      0.1591   2.8509
!! NONBonded  OM      0.1591   2.8509      0.1591   2.8509
 NONBonded  OS      0.1591   2.8509      0.1591   2.8509
 !
 NONBonded  S       0.0430   3.3676      0.0430   3.3676
 NONBonded  SM      0.0430   3.3676      0.0430   3.3676
 NONBonded  SH1E    0.0430   3.3676      0.0430   3.3676
 NONBonded  SUF    0.0430   3.3676      0.0430   3.3676
 !
!! NONBONDED FE        0.0000    1.1582      0.0000 1.1582




 else {standard PARALLHDG parameters}
{ suggested values:
  NBONds
  CUTNB=7.0   WMIN=1.5
  REPEl = 0.78          
  REXPonent = 2
  IREXponent = 2
  RCONst = 5.0
  TOLErance = 0.5      NBXMOD = 5
  ctonnb=5.5 ctofnb=6.0 {* for consistency only, not needed for repel *}
END
} 
 evaluate ($repel_radius = 0.78)
 evaluate ($repel_rcons = 5.0)
 evaluate ($repel_rexpo  = 2)
 evaluate ($repel_irexp  = 2)
 NONBonded  C       0.0903   3.3409      0.0903   3.3409
 NONBonded  CCIS    0.0903   3.3409      0.0903   3.3409
 NONBonded  CR1E      0.1200   3.3409      0.1200   3.3409
 NONBonded  CF      0.1200   3.3409      0.1200   3.3409
 NONBonded  CY      0.1200   3.3409      0.1200   3.3409
 NONBonded  CY2      0.1200   3.3409      0.1200   3.3409
 NONBonded  CR1W      0.1200   3.3409      0.1200   3.3409
 NONBonded  CW      0.1450   3.3409      0.1450   3.3409
 NONBonded  C5W      0.1450   3.3409      0.1450   3.3409
 NONBonded  CN      0.1450   3.3409      0.1450   3.3409
 NONBonded  C5      0.1200   3.3409      0.1200   3.3409
 NONBonded  CH1E      0.0903   3.3409      0.0903   3.3409
 NONBonded  CH2E      0.0903   3.3409      0.0903   3.3409
 NONBonded  CH3E      0.0903   3.3409      0.0903   3.3409
 NONBonded  CH2G      0.0903   3.3409      0.0903   3.3409
 NONBonded  CH2P      0.1450   3.3409      0.1450   3.3409
 NONBonded  CH1P      0.1450   3.3409      0.1450   3.3409
 NONBonded  CRH      0.1200   3.3409      0.1200   3.3409
 NONBonded  CR1H      0.1200   3.3409      0.1200   3.3409
 NONBonded  CRHH      0.1200   3.3409      0.1200   3.3409
 NONBonded  H       0.0498   2.2272      0.0498   2.2272
 NONBonded  HA      0.0045   2.2272      0.0045   2.2272
 NONBonded  HC      0.0498   2.2272      0.0498   2.2272
 NONBonded  N       0.1592   3.0068      0.1592   3.0068
 NONBonded  NR      0.1592   3.0068      0.1592   3.0068
 NONBonded  NH1      0.1592   3.0068      0.1592   3.0068
 NONBonded  NH2     0.1592   3.0068      0.1592   3.0068
 NONBonded  NH3     0.1592   3.0068      0.1592   3.0068
 NONBonded  NC2     0.1592   3.0068      0.1592   3.0068
 NONBonded  NC3     0.1592   3.0068      0.1592   3.0068
 NONBonded  NC4     0.1592   3.0068      0.1592   3.0068
 NONBonded  O       0.2342   2.7755      0.2342   2.7755
 NONBonded  OC      1.0244   2.7755      1.0244   2.7755
 NONBonded  OH1      0.2342   2.7755      0.2342   2.7755
 NONBonded  OHP      0.2342   2.7755      0.2342   2.7755
 NONBonded  OUF      0.2342   2.7755      0.2342   2.7755
 NONBonded  S        0.0239   3.7458      0.0239   3.7458
 NONBonded  SM       0.0239   3.7458      0.0239   3.7458
 NONBonded  SH1E       0.0239   3.7458      0.0239   3.7458
 NONBonded  SUF       0.0239   3.7458      0.0239   3.7458

 NBFIx  H    NR         44.200        1.000          44.200        1.000
 NBFIx  H    O          44.200        1.000          44.200        1.000
 NBFIx  H    OC         44.200        1.000          44.200        1.000
 NBFIx  H    OH1         44.200        1.000          44.200        1.000
 NBFIx  HC   NR         44.200        1.000          44.200        1.000
 NBFIx  HC   O          44.200        1.000          44.200        1.000
 NBFIx  HC   OC         44.200        1.000          44.200        1.000
 NBFIx  HC   OH1         44.200        1.000          44.200        1.000

 end if

!set echo on message on end

