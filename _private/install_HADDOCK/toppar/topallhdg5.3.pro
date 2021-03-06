remark   file topallhdg.pro  version 5.3  date 23-Sept-02
remark      for file parallhdg.pro version 5.3 date 13-Feb-02 or later
remark   Geometric energy function parameters for distance geometry and
remark      simulated annealing.
remark   Author: Michael Nilges, EMBL Heidelberg; Institut Pasteur, Paris
remark   This file contains modifications from M. Williams, UCL London
remark   and multiple modifications for HADDOCK from A. Bonvin, Utrecht University
remark   Modifications for HADDOCK/MISHAP: M. Bye, UEA, UK, June 2013
remark   Last modification 09-January-13

set message ? end eval ($old_message=$result) set echo ? end eval ($old_echo=$result)
set message=off echo=off end

!checkversion 1.2

!***********************************************************************!
! Copyright (C) 1995,1996 by Michael Nilges. All rights reserved.       !
! Copying and redistribution of this files is authorized only if etiher !
! (1) you make absolutely no changes to your copy, including name, or   !
! (2) if you do make changes, you name it something other than          !
! topallhdg.pro and topallhdg.x.xx.pro, and clearly mark the changes.   ! 
! The information in this software is subject to change without notice  !
! and should not be construed as a commitment by the EMBL or by the     !
! authors. Neither the EMBL, Yale University, nor the authors assume    !
! responsibility for the use or reliability of this software.           !
! We do hope, however, to get responses from users, especially when     !
! errors have been found.                                               !
!***********************************************************************!
! Description:                                                          !
! This parameter file was originally derived from the  CHARMM parameter !
! file PARMALLH6. It was designed specifically for the initial stages   ! 
! of calculating structures from NMR restraints.                        !
!***********************************************************************!
! History:
!              (26-MAR-13) : IA1 and R1A definitions added
! CNS v1.3 (27-Feb-10): changed OT1, OT2 to O, OXT, respectively
! version 5.3  (13-Feb-02) : merged UCL version with EMBL version
! version UCL  (07-JUL-01) : added new MULT disulphide/sidechain COO dihedral parameters
! version UCL  (03-JUL-01) : added new MULT phi/psi dihedral related parameters
! version UCL  (14-MAR-00) : modified peptide bond parameters for flexible omega
! version UCL  (12-MAR-00) : added C and N terminus and disulphide dihedrals
! version UCL  (09-MAR-00) : TYR O-H planarity & LYS NH3 stagger 
!                            & HIS dihedrals modified
! version 5.2  (18-Jun-99) : new cis peptide patch
! version 4.03 (04-APR-99) : THR CB atom type corrected
! version 4.02 (17-DEC-97) : Histidine hbond acceptor/donor corrected
! version 4.01 (29-Jul-96) : all covalent parameters
! version 4.00  (19-Jul-96) : all atom types from CSDX implemented
! version 3.00 (24-Oct-95) : mapped CSDX parmameters on parallhdg, 
!                            no changes in topallhdg
! previous modifications:
! proline residue modified, puckering enforced (MN)
! added hbond acceptor and donor definitions for analysis (MN)
! all references to internal coordinates (IC's) removed (MN) 
! added stereospecific impropers for all pro-chiral centers (ATB, JK)
! all dihedrals defining planarity converted to impropers (MN, PK)
! additional impropers at planar centers (MN)
!***********************************************************************!


set message off echo off end

autogenerate 
  angles=true
  dihedrals=false
end

mass H    1.008
mass HC   1.008
mass HA   1.008
mass C   12.011
mass CCIS  12.011
mass CH1E  12.011
mass CH2E  12.011
mass CH3E  12.011
mass CH2G  12.011
mass CH1P  12.011
mass CH2P  12.011
mass C5W  12.011
mass CW  12.011

mass CR1E  12.011
mass C5  12.011
mass CRH  12.011
mass CR1H  12.011
mass CR1W  12.011
mass CRHH  12.011
mass CF  12.011
mass CY  12.011
mass CY2 12.011
mass N   14.007
mass NR  14.007
mass NH1 14.007
mass NH2 14.007
mass NH3 14.007
mass NC2 14.007
mass NC3 14.007
mass NC4 14.007
mass O   15.999
mass OP1 15.999
mass OR3 15.999
mass OC  15.999
mass OH1 15.999
mass OHP 15.999
mass OUF 15.999
mass PP  30.97400
mass SH1E  32.060
mass SM  32.060
mass S   32.060
mass SUF 32.060

MASS  CHAC  15.0350   ! equivalent to   CH3
MASS  CHAS  12.0110   ! equivalent to   CH0
MASS  CHAD  15.0350   ! equivalent to   CH3
MASS  NHAQ  14.0067   ! equivalent to    NL
MASS  OHAH  15.9994   ! equivalent to    OA
MASS  HHAA   1.0080   ! equivalent to    HO
MASS  CHAR  12.0110   ! equivalent to   CH0
MASS  CHAA  15.0350   ! equivalent to   CH3
MASS  CHAB  15.0350   ! equivalent to   CH3
MASS  CHAI  13.0190   ! equivalent to  CR51
MASS  CHAO  12.0110   ! equivalent to    CB
MASS  CHAJ  14.0270   ! equivalent to   CH2
MASS  SHAL  32.0600   ! equivalent to     S
MASS  SHAM  32.0600   ! equivalent to     S
MASS  CHB   14.0270   ! equivalent to   CH2
MASS  CHA   13.0190   ! equivalent to   CH1
MASS  CH_Y  12.0110   ! equivalent to     C
MASS  OHXT  15.9994   ! equivalent to    OM
MASS  OH_Y  15.9994   ! equivalent to    OM
MASS  NH_Y  14.0067   ! equivalent to    NL
MASS  HHAC   1.0080   ! equivalent to     H
MASS  HHAD   1.0080   ! equivalent to     H
MASS  HHAB   1.0080   ! equivalent to     H


! RESIDUE CYM

residue CYM
GROUP
  ATOM CAC  TYPE= CHAC CHARGE= 0.000 END
  ATOM CAS  TYPE= CHAS CHARGE= 0.000 END
  ATOM CAD  TYPE= CHAD CHARGE= 0.000 END
  ATOM NAQ  TYPE= NHAQ CHARGE= 0.265 END
  ATOM OAH  TYPE= OHAH CHARGE=-0.700 END
  ATOM HAA  TYPE= HHAA CHARGE= 0.435 END
  ATOM CAR  TYPE= CHAR CHARGE= 0.000 END
  ATOM CAA  TYPE= CHAA CHARGE= 0.000 END
  ATOM CAB  TYPE= CHAB CHARGE= 0.000 END
  ATOM CAI  TYPE= CHAI CHARGE= 0.000 END
  ATOM CAO  TYPE= CHAO CHARGE= 0.000 END
  ATOM CAJ  TYPE= CHAJ CHARGE= 0.080 END
  ATOM SAL  TYPE= SHAL CHARGE=-0.080 END
  atom N   type=NH1    charge=-0.570 end
  atom HN  type=H      charge= 0.370 end
  atom CA  type=CH1E   charge= 0.200 end
  atom HA  type=HA     charge= 0.000 end
  atom CB  type=CH2E   charge= 0.080 end
  atom HB1 type=HA     charge= 0.000 end
  atom HB2 type=HA     charge= 0.000 end
  atom SG  type=S      charge=-0.080 end
  atom C   type=C      charge= 0.500 end
  atom O   type=O      charge=-0.500 end

  bond N  HN
  bond N  CA     bond CA HA
  bond CA CB     bond CB HB1     bond CB HB2
  bond CB SG     bond SG HG 
  bond CA C
  bond C  O

  BOND CAC  CAS 
  BOND CAS  CAD 
  BOND CAS  NAQ 
  BOND CAS  CAO 
  BOND NAQ  OAH 
  BOND NAQ  CAR 
  BOND OAH  HAA 
  BOND CAR  CAA 
  BOND CAR  CAB 
  BOND CAR  CAI 
  BOND CAI  CAO 
  BOND CAO  CAJ 
  BOND CAJ  SAL 
  BOND SAL  SG 

  ANGLE CAC  CAS  CAD 
  ANGLE CAC  CAS  NAQ 
  ANGLE CAC  CAS  CAO 
  ANGLE CAD  CAS  NAQ 
  ANGLE CAD  CAS  CAO 
  ANGLE NAQ  CAS  CAO 
  ANGLE CAS  NAQ  OAH 
  ANGLE CAS  NAQ  CAR 
  ANGLE OAH  NAQ  CAR 
  ANGLE NAQ  OAH  HAA 
  ANGLE NAQ  CAR  CAA 
  ANGLE NAQ  CAR  CAB 
  ANGLE NAQ  CAR  CAI 
  ANGLE CAA  CAR  CAB 
  ANGLE CAA  CAR  CAI 
  ANGLE CAB  CAR  CAI 
  ANGLE CAR  CAI  CAO 
  ANGLE CAS  CAO  CAI 
  ANGLE CAS  CAO  CAJ 
  ANGLE CAI  CAO  CAJ 
  ANGLE CAO  CAJ  SAL 
  ANGLE CAJ  SAL  SG 
  ANGLE SAL  SG  CB  


  improper HA N C CB   !chirality CA
  improper HB1 HB2 CA SG  !stereo CB
  IMPROPER CAO  CAS  CAI  CAJ 
  IMPROPER CAS  CAC  NAQ  CAD 
  IMPROPER NAQ  CAS  OAH  CAR 
  IMPROPER CAR  NAQ  CAB  CAA 

  dihedral SG  CB  CA  N
  DIHEDRAL CAC  CAS  NAQ  CAR 
  DIHEDRAL CAC  CAS  CAO  CAJ 
  DIHEDRAL CAS  NAQ  OAH  HAA 
  DIHEDRAL CAI  CAR  NAQ  CAS 
  DIHEDRAL NAQ  CAR  CAI  CAO 
  DIHEDRAL CAR  CAI  CAO  CAJ 
  DIHEDRAL CAS  CAO  CAJ  SAL 
  DIHEDRAL SG  SAL  CAJ  CAO 
  DIHEDRAL CB   SG  SAL  CAJ 
  DIHEDRAL SAL  SG  CB   CA  

  DONO HN   N
  DONO HG  SG
  !!! ACCE SG    !REMOVED, ATB
  ACCE O    C

END

set echo=false end
AUTOGENERATE  ANGLES=FALSE  END
MASS OE_Y  15.9994   ! equivalent to         O
MASS CE_Y  12.0110   ! equivalent to         C
MASS HE_Y   1.0080   ! equivalent to        HC
MASS CEA   12.0110   ! equivalent to       CH1
MASS HEA    1.0080   ! equivalent to        HC
MASS NE_Y  14.0067   ! equivalent to        NL
MASS HE3    1.0080   ! equivalent to         H
MASS HE5    1.0080   ! equivalent to         H
MASS HE2    1.0080   ! equivalent to         H
MASS CEB   12.0110   ! equivalent to       CH2
MASS HEB1   1.0080   ! equivalent to        HC
MASS HEB2   1.0080   ! equivalent to        HC
MASS SEG   32.0600   ! equivalent to         S
MASS SED   32.0600   ! equivalent to         S
MASS CEE   12.0110   ! equivalent to       CH2
MASS HEE1   1.0080   ! equivalent to        HC
MASS HEE2   1.0080   ! equivalent to        HC
MASS CE3   12.0110   ! equivalent to      CR50
MASS CE4   12.0110   ! equivalent to      CR51
MASS HE4    1.0080   ! equivalent to        HC
MASS CE5   12.0110   ! equivalent to       CR2
MASS CE7   12.0110   ! equivalent to       CH3
MASS HE72   1.0080   ! equivalent to        HC
MASS HE73   1.0080   ! equivalent to        HC
MASS HE71   1.0080   ! equivalent to        HC
MASS CE6   12.0110   ! equivalent to       CH3
MASS HE62   1.0080   ! equivalent to        HC
MASS HE63   1.0080   ! equivalent to        HC
MASS HE61   1.0080   ! equivalent to        HC
MASS NE1   14.0067   ! equivalent to        NL
MASS OE1   15.9994   ! equivalent to        OA
MASS HE1    1.0080   ! equivalent to         H
MASS CE2   12.0110   ! equivalent to       CR2
MASS CE8   12.0110   ! equivalent to       CH3
MASS HE82   1.0080   ! equivalent to        HC
MASS HE83   1.0080   ! equivalent to        HC
MASS HE81   1.0080   ! equivalent to        HC
MASS CE9   12.0110   ! equivalent to       CH3
MASS HE92   1.0080   ! equivalent to        HC
MASS HE93   1.0080   ! equivalent to        HC
MASS HE91   1.0080   ! equivalent to        HC

Residue R1A  
GROUP
  ATOM O    TYPE=OE_Y CHARGE=-0.557 END
  ATOM C    TYPE=CE_Y CHARGE= 0.164 END
  ATOM H    TYPE=HE_Y CHARGE=-0.007 END
  ATOM CA   TYPE=CEA  CHARGE= 0.072 END
  ATOM HA   TYPE=HEA  CHARGE=-0.006 END
  ATOM N    TYPE=NE_Y CHARGE= 0.294 END
  ATOM H3   TYPE=HE3  CHARGE=-0.002 END
  ATOM H5   TYPE=HE5  CHARGE=-0.002 END
  ATOM H2   TYPE=HE2  CHARGE=-0.002 END
  ATOM CB   TYPE=CEB  CHARGE= 0.059 END
  ATOM HB1  TYPE=HEB1 CHARGE=-0.007 END
  ATOM HB2  TYPE=HEB2 CHARGE=-0.006 END
  ATOM SG   TYPE=SEG  CHARGE= 0.028 END
  ATOM SD   TYPE=SED  CHARGE= 0.029 END
  ATOM CE   TYPE=CEE  CHARGE= 0.059 END
  ATOM HE1  TYPE=HEE1 CHARGE=-0.006 END
  ATOM HE2  TYPE=HEE2 CHARGE=-0.006 END
  ATOM C3   TYPE=CE3  CHARGE=-0.019 END
  ATOM C4   TYPE=CE4  CHARGE=-0.031 END
  ATOM H4   TYPE=HE4  CHARGE=-0.006 END
  ATOM C5   TYPE=CE5  CHARGE= 0.072 END
  ATOM C7   TYPE=CE7  CHARGE= 0.058 END
  ATOM H72  TYPE=HE72 CHARGE=-0.007 END
  ATOM H73  TYPE=HE73 CHARGE=-0.006 END
  ATOM H71  TYPE=HE71 CHARGE=-0.006 END
  ATOM C6   TYPE=CE6  CHARGE= 0.058 END
  ATOM H62  TYPE=HE62 CHARGE=-0.006 END
  ATOM H63  TYPE=HE63 CHARGE=-0.006 END
  ATOM H61  TYPE=HE61 CHARGE=-0.007 END
  ATOM N1   TYPE=NE1  CHARGE=-0.217 END
  ATOM O1   TYPE=OE1  CHARGE=-0.153 END
  ATOM C2   TYPE=CE2  CHARGE= 0.072 END
  ATOM C8   TYPE=CE8  CHARGE= 0.058 END
  ATOM H82  TYPE=HE82 CHARGE=-0.006 END
  ATOM H83  TYPE=HE83 CHARGE=-0.006 END
  ATOM H81  TYPE=HE81 CHARGE=-0.006 END
  ATOM C9   TYPE=CE9  CHARGE= 0.058 END
  ATOM H92  TYPE=HE92 CHARGE=-0.006 END
  ATOM H93  TYPE=HE93 CHARGE=-0.006 END
  ATOM H91  TYPE=HE91 CHARGE=-0.006 END

  BOND C    O   
  BOND C    H   
  BOND CA   C   
  BOND CA   HA  
  BOND CA   N   
  BOND CA   CB  
  BOND N    H3  
  BOND N    H5  
  BOND N    H2  
  BOND CB   HB1 
  BOND CB   HB2 
  BOND CB   SG  
  BOND SG   SD  
  BOND CE   SD  
  BOND CE   HE1 
  BOND CE   HE2 
  BOND C3   CE  
  BOND C3   C4  
  BOND C2   C3  
  BOND C4   H4  
  BOND C5   C4  
  BOND C5   C7  
  BOND C5   C6  
  BOND C5   N1  
  BOND C7   H72 
  BOND C7   H73 
  BOND C7   H71 
  BOND C6   H62 
  BOND C6   H63 
  BOND C6   H61 
  BOND N1   O1  
  BOND C2   N1  
  BOND C2   C8  
  BOND C2   C9  
  BOND C8   H82 
  BOND C8   H83 
  BOND C8   H81 
  BOND C9   H92 
  BOND C9   H93 
  BOND C9   H91 

  ANGLE O    C    H   
  ANGLE O    C    CA  
  ANGLE H    C    CA  
  ANGLE C    CA   HA  
  ANGLE C    CA   N   
  ANGLE C    CA   CB  
  ANGLE HA   CA   N   
  ANGLE HA   CA   CB  
  ANGLE N    CA   CB  
  ANGLE CA   N    H3  
  ANGLE CA   N    H5  
  ANGLE CA   N    H2  
  ANGLE H3   N    H5  
  ANGLE H3   N    H2  
  ANGLE H5   N    H2  
  ANGLE CA   CB   HB1 
  ANGLE CA   CB   HB2 
  ANGLE CA   CB   SG  
  ANGLE HB1  CB   HB2 
  ANGLE HB1  CB   SG  
  ANGLE HB2  CB   SG  
  ANGLE CB   SG   SD  
  ANGLE SG   SD   CE  
  ANGLE SD   CE   HE1 
  ANGLE SD   CE   HE2 
  ANGLE SD   CE   C3  
  ANGLE HE1  CE   HE2 
  ANGLE HE1  CE   C3  
  ANGLE HE2  CE   C3  
  ANGLE CE   C3   C4  
  ANGLE CE   C3   C2  
  ANGLE C4   C3   C2  
  ANGLE C3   C4   H4  
  ANGLE C3   C4   C5  
  ANGLE H4   C4   C5  
  ANGLE C4   C5   C7  
  ANGLE C4   C5   C6  
  ANGLE C4   C5   N1  
  ANGLE C7   C5   C6  
  ANGLE C7   C5   N1  
  ANGLE C6   C5   N1  
  ANGLE C5   C7   H72 
  ANGLE C5   C7   H73 
  ANGLE C5   C7   H71 
  ANGLE H72  C7   H73 
  ANGLE H72  C7   H71 
  ANGLE H73  C7   H71 
  ANGLE C5   C6   H62 
  ANGLE C5   C6   H63 
  ANGLE C5   C6   H61 
  ANGLE H62  C6   H63 
  ANGLE H62  C6   H61 
  ANGLE H63  C6   H61 
  ANGLE C5   N1   O1  
  ANGLE C5   N1   C2  
  ANGLE O1   N1   C2  
  ANGLE C3   C2   N1  
  ANGLE C3   C2   C8  
  ANGLE C3   C2   C9  
  ANGLE N1   C2   C8  
  ANGLE N1   C2   C9  
  ANGLE C8   C2   C9  
  ANGLE C2   C8   H82 
  ANGLE C2   C8   H83 
  ANGLE C2   C8   H81 
  ANGLE H82  C8   H83 
  ANGLE H82  C8   H81 
  ANGLE H83  C8   H81 
  ANGLE C2   C9   H92 
  ANGLE C2   C9   H93 
  ANGLE C2   C9   H91 
  ANGLE H92  C9   H93 
  ANGLE H92  C9   H91 
  ANGLE H93  C9   H91 

  IMPROPER C    O    H    CA  
  IMPROPER CA   C    CB   N   
  IMPROPER N    CA   H3   H5  
  IMPROPER CB   CA   HB1  HB2 
  IMPROPER CE   SD   HE1  HE2 
  IMPROPER C3   CE   C2   C4  
  IMPROPER C4   C3   C5   H4  
  IMPROPER C5   C4   C7   C6  
  IMPROPER C7   C5   H72  H73 
  IMPROPER C6   C5   H62  H63 
  IMPROPER N1   C5   O1   C2  
  IMPROPER C2   C3   C8   N1  
  IMPROPER C8   C2   H82  H83 
  IMPROPER C9   C2   H92  H93 

  DIHEDRAL CB   CA   C    O   
  DIHEDRAL C    CA   N    H2  
  DIHEDRAL SG   CB   CA   C   
  DIHEDRAL CA   CB   SG   SD  
  DIHEDRAL CE   SD   SG   CB  
  DIHEDRAL C3   CE   SD   SG  
  DIHEDRAL SD   CE   C3   C2  
  DIHEDRAL CE   C3   C4   C5  
  DIHEDRAL C9   C2   C3   CE  
  DIHEDRAL N1   C5   C4   C3  
  DIHEDRAL H71  C7   C5   C4  
  DIHEDRAL H61  C6   C5   C4  
  DIHEDRAL C4   C5   N1   C2    
  DIHEDRAL C9   C2   N1   C5  
  DIHEDRAL H81  C8   C2   C3  
  DIHEDRAL H91  C9   C2   C3  
END
set echo=true end


set echo=false end
AUTOGENERATE  ANGLES=FALSE  END
MASS OP_Y  15.9994   ! equivalent to         O
MASS CP_Y  12.0110   ! equivalent to         C
MASS HP_Y   1.0080   ! equivalent to        HC
MASS CPA   12.0110   ! equivalent to       CH1
MASS HPA    1.0080   ! equivalent to        HC
MASS NP_Y  14.0067   ! equivalent to        NL
MASS HP4    1.0080   ! equivalent to         H
MASS HP5    1.0080   ! equivalent to         H
MASS HP2    1.0080   ! equivalent to         H
MASS CPB   12.0110   ! equivalent to       CH2
MASS HPB1   1.0080   ! equivalent to        HC
MASS HPB2   1.0080   ! equivalent to        HC
MASS SPG   32.0600   ! equivalent to         S
MASS CPD   12.0110   ! equivalent to       CH2
MASS HPD1   1.0080   ! equivalent to        HC
MASS HPD2   1.0080   ! equivalent to        HC
MASS CPE   12.0110   ! equivalent to         C
MASS OPE   15.9994   ! equivalent to         O
MASS NPZ   14.0067   ! equivalent to         N
MASS HPZ    1.0080   ! equivalent to         H
MASS CP3   12.0110   ! equivalent to        CS
MASS HP3    1.0080   ! equivalent to        HC
MASS CP4   12.0110   ! equivalent to        CS
MASS HP41   1.0080   ! equivalent to        HC
MASS HP42   1.0080   ! equivalent to        HC
MASS CP5   12.0110   ! equivalent to        CS
MASS CP7   12.0110   ! equivalent to       CH3
MASS HP72   1.0080   ! equivalent to        HC
MASS HP73   1.0080   ! equivalent to        HC
MASS HP71   1.0080   ! equivalent to        HC
MASS CP6   12.0110   ! equivalent to       CH3
MASS HP62   1.0080   ! equivalent to        HC
MASS HP63   1.0080   ! equivalent to        HC
MASS HP61   1.0080   ! equivalent to        HC
MASS NP1   14.0067   ! equivalent to        NL
MASS OP1   15.9994   ! equivalent to        OA
MASS HP1    1.0080   ! equivalent to         H
MASS CP2   12.0110   ! equivalent to        CS
MASS CP8   12.0110   ! equivalent to       CH3
MASS HP82   1.0080   ! equivalent to        HC
MASS HP83   1.0080   ! equivalent to        HC
MASS HP81   1.0080   ! equivalent to        HC
MASS CP9   12.0110   ! equivalent to       CH3
MASS HP92   1.0080   ! equivalent to        HC
MASS HP93   1.0080   ! equivalent to        HC
MASS HP91   1.0080   ! equivalent to        HC

Residue IA1  
GROUP
  ATOM O    TYPE=OP_Y CHARGE=-0.515 END
  ATOM C    TYPE=CP_Y CHARGE= 0.177 END
  ATOM H    TYPE=HP_Y CHARGE=-0.007 END
  ATOM CA   TYPE=CPA  CHARGE= 0.076 END
  ATOM HA   TYPE=HPA  CHARGE=-0.007 END
  ATOM N    TYPE=NP_Y CHARGE= 0.318 END
  ATOM H4   TYPE=HP4  CHARGE=-0.002 END
  ATOM H5   TYPE=HP5  CHARGE=-0.002 END
  ATOM H2   TYPE=HP2  CHARGE=-0.002 END
  ATOM CB   TYPE=CPB  CHARGE= 0.063 END
  ATOM HB1  TYPE=HPB1 CHARGE=-0.007 END
  ATOM HB2  TYPE=HPB2 CHARGE=-0.007 END
  ATOM SG   TYPE=SPG  CHARGE= 0.031 END
  ATOM CD   TYPE=CPD  CHARGE= 0.063 END
  ATOM HD1  TYPE=HPD1 CHARGE=-0.007 END
  ATOM HD2  TYPE=HPD2 CHARGE=-0.007 END
  ATOM CE   TYPE=CPE  CHARGE= 0.177 END
  ATOM OE   TYPE=OPE  CHARGE=-0.515 END
  ATOM NZ   TYPE=NPZ  CHARGE= 0.063 END
  ATOM HZ   TYPE=HPZ  CHARGE=-0.002 END
  ATOM C3   TYPE=CP3  CHARGE= 0.077 END
  ATOM H3   TYPE=HP3  CHARGE=-0.007 END
  ATOM C4   TYPE=CP4  CHARGE= 0.063 END
  ATOM H41  TYPE=HP41 CHARGE=-0.007 END
  ATOM H42  TYPE=HP42 CHARGE=-0.008 END
  ATOM C5   TYPE=CP5  CHARGE= 0.077 END
  ATOM C7   TYPE=CP7  CHARGE= 0.062 END
  ATOM H72  TYPE=HP72 CHARGE=-0.007 END
  ATOM H73  TYPE=HP73 CHARGE=-0.007 END
  ATOM H71  TYPE=HP71 CHARGE=-0.007 END
  ATOM C6   TYPE=CP6  CHARGE= 0.062 END
  ATOM H62  TYPE=HP62 CHARGE=-0.007 END
  ATOM H63  TYPE=HP63 CHARGE=-0.008 END
  ATOM H61  TYPE=HP61 CHARGE=-0.007 END
  ATOM N1   TYPE=NP1  CHARGE=-0.202 END
  ATOM O1   TYPE=OP1  CHARGE=-0.142 END
  ATOM C2   TYPE=CP2  CHARGE= 0.077 END
  ATOM C8   TYPE=CP8  CHARGE= 0.062 END
  ATOM H82  TYPE=HP82 CHARGE=-0.007 END
  ATOM H83  TYPE=HP83 CHARGE=-0.007 END
  ATOM H81  TYPE=HP81 CHARGE=-0.007 END
  ATOM C9   TYPE=CP9  CHARGE= 0.062 END
  ATOM H92  TYPE=HP92 CHARGE=-0.007 END
  ATOM H93  TYPE=HP93 CHARGE=-0.007 END
  ATOM H91  TYPE=HP91 CHARGE=-0.007 END

  BOND C    O   
  BOND C    H   
  BOND CA   C   
  BOND CA   HA  
  BOND CA   N   
  BOND CA   CB  
  BOND N    H4  
  BOND N    H5  
  BOND N    H2  
  BOND CB   HB1 
  BOND CB   HB2 
  BOND CB   SG  
  BOND CD   SG  
  BOND CD   HD1 
  BOND CD   HD2 
  BOND CE   CD  
  BOND CE   OE  
  BOND CE   NZ  
  BOND NZ   HZ  
  BOND C3   NZ  
  BOND C3   H3  
  BOND C3   C4  
  BOND C2   C3  
  BOND C4   H41 
  BOND C4   H42 
  BOND C5   C4  
  BOND C5   C7  
  BOND C5   C6  
  BOND C5   N1  
  BOND C7   H72 
  BOND C7   H73 
  BOND C7   H71 
  BOND C6   H62 
  BOND C6   H63 
  BOND C6   H61 
  BOND N1   O1  
  BOND C2   N1  
  BOND C2   C8  
  BOND C2   C9  
  BOND C8   H82 
  BOND C8   H83 
  BOND C8   H81 
  BOND C9   H92 
  BOND C9   H93 
  BOND C9   H91 

  ANGLE O    C    H   
  ANGLE O    C    CA  
  ANGLE H    C    CA  
  ANGLE C    CA   HA  
  ANGLE C    CA   N   
  ANGLE C    CA   CB  
  ANGLE HA   CA   N   
  ANGLE HA   CA   CB  
  ANGLE N    CA   CB  
  ANGLE CA   N    H4  
  ANGLE CA   N    H5  
  ANGLE CA   N    H2  
  ANGLE H4   N    H5  
  ANGLE H4   N    H2  
  ANGLE H5   N    H2  
  ANGLE CA   CB   HB1 
  ANGLE CA   CB   HB2 
  ANGLE CA   CB   SG  
  ANGLE HB1  CB   HB2 
  ANGLE HB1  CB   SG  
  ANGLE HB2  CB   SG  
  ANGLE CB   SG   CD  
  ANGLE SG   CD   HD1 
  ANGLE SG   CD   HD2 
  ANGLE SG   CD   CE  
  ANGLE HD1  CD   HD2 
  ANGLE HD1  CD   CE  
  ANGLE HD2  CD   CE  
  ANGLE CD   CE   OE  
  ANGLE CD   CE   NZ  
  ANGLE OE   CE   NZ  
  ANGLE CE   NZ   HZ  
  ANGLE CE   NZ   C3  
  ANGLE HZ   NZ   C3  
  ANGLE NZ   C3   H3  
  ANGLE NZ   C3   C4  
  ANGLE NZ   C3   C2  
  ANGLE H3   C3   C4  
  ANGLE H3   C3   C2  
  ANGLE C4   C3   C2  
  ANGLE C3   C4   H41 
  ANGLE C3   C4   H42 
  ANGLE C3   C4   C5  
  ANGLE H41  C4   H42 
  ANGLE H41  C4   C5  
  ANGLE H42  C4   C5  
  ANGLE C4   C5   C7  
  ANGLE C4   C5   C6  
  ANGLE C4   C5   N1  
  ANGLE C7   C5   C6  
  ANGLE C7   C5   N1  
  ANGLE C6   C5   N1  
  ANGLE C5   C7   H72 
  ANGLE C5   C7   H73 
  ANGLE C5   C7   H71 
  ANGLE H72  C7   H73 
  ANGLE H72  C7   H71 
  ANGLE H73  C7   H71 
  ANGLE C5   C6   H62 
  ANGLE C5   C6   H63 
  ANGLE C5   C6   H61 
  ANGLE H62  C6   H63 
  ANGLE H62  C6   H61 
  ANGLE H63  C6   H61 
  ANGLE C5   N1   O1  
  ANGLE C5   N1   C2  
  ANGLE O1   N1   C2 
  ANGLE C3   C2   N1  
  ANGLE C3   C2   C8  
  ANGLE C3   C2   C9  
  ANGLE N1   C2   C8  
  ANGLE N1   C2   C9  
  ANGLE C8   C2   C9  
  ANGLE C2   C8   H82 
  ANGLE C2   C8   H83 
  ANGLE C2   C8   H81 
  ANGLE H82  C8   H83 
  ANGLE H82  C8   H81 
  ANGLE H83  C8   H81 
  ANGLE C2   C9   H92 
  ANGLE C2   C9   H93 
  ANGLE C2   C9   H91 
  ANGLE H92  C9   H93 
  ANGLE H92  C9   H91 
  ANGLE H93  C9   H91 

  IMPROPER C    O    H    CA  
  IMPROPER CA   C    CB   N   
  IMPROPER N    CA   H4   H5  
  IMPROPER CB   CA   HB1  HB2 
  IMPROPER CD   SG   HD1  HD2 
  IMPROPER CE   CD   OE   NZ  
  IMPROPER NZ   CE   HZ   C3  
  IMPROPER C3   NZ   C2   C4  
  IMPROPER C4   C3   H41  H42 
  IMPROPER C5   C4   C7   C6  
  IMPROPER C7   C5   H72  H73 
  IMPROPER C6   C5   H62  H63 
  IMPROPER N1   C5   C2   O1  
  IMPROPER C2   C3   C8   N1  
  IMPROPER C8   C2   H82  H83 
  IMPROPER C9   C2   H92  H93 

  DIHEDRAL CB   CA   C    O   
  DIHEDRAL C    CA   N    H2  
  DIHEDRAL SG   CB   CA   C   
  DIHEDRAL CA   CB   SG   CD  
  DIHEDRAL CE   CD   SG   CB  
  DIHEDRAL SG   CD   CE   NZ  
  DIHEDRAL CD   CE   NZ   C3  
  DIHEDRAL C2   C3   NZ   CE  
  DIHEDRAL C5   C4   C3   NZ  
  DIHEDRAL C9   C2   C3   NZ  
  DIHEDRAL N1   C5   C4   C3  
  DIHEDRAL H71  C7   C5   C4  
  DIHEDRAL H61  C6   C5   C4  
  DIHEDRAL C4   C5   N1   C2  
  DIHEDRAL C9   C2   N1   C5  
  DIHEDRAL H81  C8   C2   C3  
  DIHEDRAL H91  C9   C2   C3  
END
set echo=true end


residue ALA
  group
    atom N   type=NH1     charge=-0.570 end
    atom HN  type=H       charge= 0.370 end
    atom CA  type=CH1E    charge= 0.200 end
    atom HA  type=HA      charge= 0.000 end
    atom CB  type=CH3E    charge= 0.000 end
    atom HB1 type=HA      charge= 0.000 end
    atom HB2 type=HA      charge= 0.000 end
    atom HB3 type=HA      charge= 0.000 end
    atom C   type=C       charge= 0.500 end
    atom O   type=O       charge=-0.500 end

  bond N  HN       
  bond N  CA    bond CA  HA   
  bond CA  CB   bond CB  HB1   bond CB  HB2     bond CB  HB3
  bond CA  C       
  bond C   O

  improper HA  N   C   CB  ! chirality CA
  improper HB1 HB2 CA HB3  ! methyl CB

  dihedral HB1 CB  CA  C   ! methyl stagger UCL 12-MAR-00 

  DONO HN   N
  ACCE O    C
end
 

residue ARG
  group
    atom N    type=NH1    charge=-0.570 end
    atom HN   type=H      charge= 0.370 end
    atom CA   type=CH1E   charge= 0.200 end
    atom HA   type=HA     charge= 0.000 end
    atom CB   type=CH2E   charge= 0.000 end
    atom HB1  type=HA     charge= 0.000 end
    atom HB2  type=HA     charge= 0.000 end
    atom CG   type=CH2E   charge= 0.070 end
    atom HG1  type=HA     charge= 0.000 end
    atom HG2  type=HA     charge= 0.000 end
    atom CD   type=CH2E   charge= 0.310 end
    atom HD1  type=HA     charge= 0.000 end
    atom HD2  type=HA     charge= 0.000 end
    atom NE   type=NH1    charge=-0.700 end
    atom HE   type=H      charge= 0.440 end
    atom CZ   type=C      charge= 0.640 end
    atom NH1  type=NC2    charge=-0.800 end
    atom HH11 type=HC     charge= 0.460 end
    atom HH12 type=HC     charge= 0.460 end
    atom NH2   type=NC2   charge=-0.800 end
    atom HH21  type=HC    charge= 0.460 end
    atom HH22  type=HC    charge= 0.460 end
    atom C     type=C     charge= 0.500 end
    atom O     type=O     charge=-0.500 end
 
  bond N  HN
  bond N  CA     bond CA  HA
  bond CA CB     bond CB  HB1     bond CB  HB2
  bond CB CG     bond CG  HG1     bond CG  HG2
  bond CG CD     bond CD  HD1     bond CD  HD2
  bond CD NE     bond NE  HE
  bond NE CZ
  bond CZ NH1    bond NH1 HH11    bond NH1 HH12
  bond CZ NH2    bond NH2 HH21    bond NH2 HH22
  bond CA C
  bond C  O

  improper HA  N  C    CB  !chirality CA
  improper NE  CD CZ   HE  
  improper CZ  NE NH1  NH2
  improper NH1 CZ HH11 HH12
  improper NH2 CZ HH21 HH22
  improper NE  CZ NH1  HH11
  improper NE  CZ NH2  HH21
  improper CZ  NH2 HE NE  ! planar HE, CZ
  improper HB1 HB2 CA CG  !stereo CB
  improper HG1 HG2 CB CD  !stereo CG
  improper HD1 HD2 CG NE  !stereo CD
  
  dihedral CG  CB  CA  N
  dihedral CD  CG  CB  CA
  dihedral NE  CD  CG  CB
  dihedral CZ  NE  CD  CG
  
  DONO HN   N
  DONO HE   NE
  DONO HH11 NH1
  DONO HH12 NH1
  DONO HH21 NH2
  DONO HH22 NH2
  ACCE O    C
end

residue ASN
  group
    atom N    type=NH1    charge=-0.570 end
    atom HN   type=H      charge= 0.370 end
    atom CA   type=CH1E   charge= 0.200 end
    atom HA   type=HA     charge= 0.000 end
    atom CB   type=CH2E   charge=-0.000 end
    atom HB1  type=HA     charge= 0.000 end
    atom HB2  type=HA     charge= 0.000 end
    atom CG   type=C      charge= 0.500 end
    atom OD1  type=O      charge=-0.500 end
    atom ND2  type=NH2    charge=-0.850 end
    atom HD21 type=H      charge= 0.425 end
    atom HD22 type=H      charge= 0.425 end
    atom C    type=C      charge= 0.500 end
    atom O    type=O      charge=-0.500 end

  bond N  HN
  bond N  CA     bond CA  HA
  bond CA CB     bond CB  HB1     bond CB  HB2
  bond CB CG
  bond CG OD1
  bond CG ND2    bond ND2 HD21    bond ND2 HD22
  bond CA C
  bond C  O

  improper HA  N  C    CB  ! chirality CA
  improper CG  CB OD1  ND2
  improper ND2 CG HD21 HD22
  improper CB  CG ND2  HD21
  improper HB1 HB2 CA CG  ! stereo CB

  dihedral CG  CB  CA  N
  dihedral OD1 CG  CB  CA ! mult 2 ! UCL

  DONO HN   N
  DONO HD21 ND2
  DONO HD22 ND2
  ACCE OD1  CG
  ACCE O    C
end


residue ASP
  group
    atom N   type=NH1   charge=-0.570 end
    atom HN  type=H     charge= 0.370 end
    atom CA  type=CH1E  charge= 0.200 end
    atom HA  type=HA    charge= 0.000 end
    atom CB  type=CH2E  charge=-0.100 end
    atom HB1 type=HA    charge= 0.000 end
    atom HB2 type=HA    charge= 0.000 end
    atom CG  type=C     charge= 0.700 end
    atom OD1 type=OC    charge=-0.800 end
    atom OD2 type=OC    charge=-0.800 end
    atom C   type=C     charge= 0.500 end
    atom O   type=O     charge=-0.500 end

  bond N  HN
  bond N  CA     bond CA HA
  bond CA CB     bond CB HB1     bond CB HB2
  bond CB CG
  bond CG OD1
  bond CG OD2
  bond CA C
  bond C  O

  improper HA N  C   CB   !chirality CA
  improper CG CB OD1 OD2
  improper HB1 HB2 CA CG  !stereo CB

  dihedral CG  CB  CA  N

  dihedral OD1 CG  CB  CA

  DONO HN   N
  ACCE OD1  CG
  ACCE OD2  CG
  ACCE O    C
end


residue ASH
  group
    atom N   type=NH1   charge=-0.570 end
    atom HN  type=H     charge= 0.370 end
    atom CA  type=CH1E  charge= 0.200 end
    atom HA  type=HA    charge= 0.000 end
    atom CB  type=CH2E  charge= 0.000 end
    atom HB1 type=HA    charge= 0.000 end
    atom HB2 type=HA    charge= 0.000 end
    atom CG  type=C     charge= 0.500 end
    atom OD1 type=OC    charge=-0.500 end
    atom OD2 type=OH1   charge=-0.450 end
    atom HD2 type=H     charge= 0.450 end
    atom C   type=C     charge= 0.500 end
    atom O   type=O     charge=-0.500 end

  bond N  HN
  bond N  CA     bond CA HA
  bond CA CB     bond CB HB1     bond CB HB2
  bond CB CG
  bond CG OD1
  bond CG OD2    bond OD2 HD2
  bond CA C
  bond C  O

  improper HA N  C   CB   !chirality CA
  improper CG CB OD1 OD2
  improper HB1 HB2 CA CG  !stereo CB

  dihedral CG  CB  CA  N

  dihedral OD1 CG  CB  CA

  DONO HN   N
  DONO HD2  OD2
  ACCE OD1  CG
  ACCE OD2  CG
  ACCE O    C
end



residue CSP
  group
    atom N   type=NH1    charge=-0.570 end
    atom HN  type=H      charge= 0.370 end
    atom CA  type=CH1E   charge= 0.200 end
    atom HA  type=HA     charge= 0.000 end
    atom CB  type=CH2E   charge= 0.080 end
    atom HB1 type=HA     charge= 0.000 end
    atom HB2 type=HA     charge= 0.000 end
    atom SG  type=SM     charge=-0.440 end
    atom P   type=PP     charge= 0.520 end
    atom O1P type=OP1    charge=-0.720 end
    atom O2P type=OP1    charge=-0.720 end
    atom O3P type=OR3    charge=-0.720 end
    atom C   type=C      charge= 0.500 end
    atom O   type=O      charge=-0.500 end

  bond N  HN
  bond N  CA     bond CA HA
  bond CA CB     bond CB HB1     bond CB HB2
  bond CB SG     bond SG P 
  bond P   O1P
  bond P   O2P
  bond P   O3P
  bond CA C
  bond C  O

  improper HA N C CB   !chirality CA
  improper HB1 HB2 CA SG  !stereo CB
  improper SG  P O3P O1P 

  dihedral SG  CB  CA  N
  dihedral CB  SG  P   O3P

  DONO HN   N
  ACCE O    C
  ACCE O1P  P
  ACCE O2P  P
  ACCE O3P  P

end


residue CYF
  group
    atom N   type=NH1    charge=-0.570 end
    atom HN  type=H      charge= 0.370 end
    atom CA  type=CH1E   charge= 0.200 end
    atom HA  type=HA     charge= 0.000 end
    atom CB  type=CH2E   charge= 0.000 end
    atom HB1 type=HA     charge= 0.000 end
    atom HB2 type=HA     charge= 0.000 end
    atom SG  type=SH1E   charge=-0.500 end
    atom C   type=C      charge= 0.500 end
    atom O   type=O      charge=-0.500 end

  bond N  HN
  bond N  CA     bond CA HA
  bond CA CB     bond CB HB1     bond CB HB2
  bond CB SG
  bond CA C
  bond C  O

  improper HA N C CB   !chirality CA
  improper HB1 HB2 CA SG  !stereo CB

  dihedral SG  CB  CA  N

  DONO HN   N
  !!! ACCE SG    !REMOVED, ATB
  ACCE O    C
end


residue CYS
  group
    atom N   type=NH1    charge=-0.570 end
    atom HN  type=H      charge= 0.370 end
    atom CA  type=CH1E   charge= 0.200 end
    atom HA  type=HA     charge= 0.000 end
    atom CB  type=CH2E   charge= 0.180 end
    atom HB1 type=HA     charge= 0.000 end
    atom HB2 type=HA     charge= 0.000 end
    atom SG  type=SH1E   charge=-0.450 end
    atom HG  type=H      charge= 0.270 end
    atom C   type=C      charge= 0.500 end
    atom O   type=O      charge=-0.500 end

  bond N  HN
  bond N  CA     bond CA HA
  bond CA CB     bond CB HB1     bond CB HB2
  bond CB SG     bond SG HG 
  bond CA C
  bond C  O

  improper HA N C CB   !chirality CA
  improper HB1 HB2 CA SG  !stereo CB

  dihedral SG  CB  CA  N

  DONO HN   N
  DONO HG  SG
  !!! ACCE SG    !REMOVED, ATB
  ACCE O    C
end


residue GLN
  group
    atom N    type=NH1     charge=-0.570 end
    atom HN   type=H       charge= 0.370 end
    atom CA   type=CH1E    charge= 0.200 end
    atom HA   type=HA      charge= 0.000 end
    atom CB   type=CH2E    charge= 0.000 end
    atom HB1  type=HA      charge= 0.000 end
    atom HB2  type=HA      charge= 0.000 end
    atom CG   type=CH2E    charge= 0.000 end
    atom HG1  type=HA      charge= 0.000 end
    atom HG2  type=HA      charge= 0.000 end
    atom CD   type=C       charge= 0.500 end
    atom OE1  type=O       charge=-0.500 end
    atom NE2  type=NH2     charge=-0.850 end
    atom HE21 type=H       charge= 0.425 end
    atom HE22 type=H       charge= 0.425 end
    atom C    type=C       charge= 0.500 end
    atom O    type=O       charge=-0.500 end

  bond N  HN
  bond N  CA     bond CA  HA
  bond CA CB     bond CB  HB1     bond CB  HB2
  bond CB CG     bond CG  HG1     bond CG  HG2
  bond CG CD
  bond CD OE1
  bond CD NE2    bond NE2 HE21    bond NE2 HE22
  bond CA C
  bond C  O

  improper HA  N  C    CB  !chirality CA
  improper CD  CG OE1  NE2
  improper NE2 CD HE21 HE22
  improper CG  CD NE2  HE21
  improper HB1 HB2 CA CG  !stereo CB
  improper HG1 HG2 CB CD  !stereo CG

  dihedral CG  CB  CA  N
  dihedral CD  CG  CB  CA
  dihedral OE1 CD  CG  CB 

  DONO HN   N
  DONO HE21 NE2
  DONO HE22 NE2
  ACCE OE1  CD
  ACCE O    C
end


residue GLU
  group
    atom N   type=NH1    charge=-0.570 end
    atom HN  type=H      charge= 0.370 end
    atom CA  type=CH1E   charge= 0.200 end
    atom HA  type=HA     charge= 0.000 end
    atom CB  type=CH2E   charge= 0.000 end
    atom HB1 type=HA     charge= 0.000 end
    atom HB2 type=HA     charge= 0.000 end
    atom CG  type=CH2E   charge=-0.100 end
    atom HG1 type=HA     charge= 0.000 end
    atom HG2 type=HA     charge= 0.000 end
    atom CD  type=C      charge= 0.700 end
    atom OE1 type=OC     charge=-0.800 end
    atom OE2 type=OC     charge=-0.800 end
    atom C   type=C      charge= 0.500 end
    atom O   type=O      charge=-0.500 end

  bond N  HN
  bond N  CA     bond CA HA
  bond CA CB     bond CB HB1     bond CB HB2
  bond CB CG     bond CG HG1     bond CG HG2
  bond CG CD
  bond CD OE1
  bond CD OE2
  bond CA C
  bond C  O

  improper HA N  C   CB    !chirality CA
  improper CD CG OE1 OE2
  improper HB1 HB2 CA CG  !stereo CB
  improper HG1 HG2 CB CD  !stereo CG

  dihedral CG  CB  CA  N
  dihedral CD  CG  CB  CA
  dihedral OE1 CD  CG  CB ! mult 2 ! UCL

  DONO HN   N
  ACCE OE1  CD
  ACCE OE2  CD
  ACCE O    C
end


residue GLH
  group
    atom N   type=NH1    charge=-0.570 end
    atom HN  type=H      charge= 0.370 end
    atom CA  type=CH1E   charge= 0.200 end
    atom HA  type=HA     charge= 0.000 end
    atom CB  type=CH2E   charge= 0.000 end
    atom HB1 type=HA     charge= 0.000 end
    atom HB2 type=HA     charge= 0.000 end
    atom CG  type=CH2E   charge= 0.000 end
    atom HG1 type=HA     charge= 0.000 end
    atom HG2 type=HA     charge= 0.000 end
    atom CD  type=C      charge= 0.500 end
    atom OE1 type=OC     charge=-0.500 end
    atom OE2 type=OH1    charge=-0.450 end
    atom HE2 type=H      charge= 0.450 end
    atom C   type=C      charge= 0.500 end
    atom O   type=O      charge=-0.500 end

  bond N  HN
  bond N  CA     bond CA HA
  bond CA CB     bond CB HB1     bond CB HB2
  bond CB CG     bond CG HG1     bond CG HG2
  bond CG CD
  bond CD OE1
  bond CD OE2    bond OE2 HE2
  bond CA C
  bond C  O

  improper HA N  C   CB    !chirality CA
  improper CD CG OE1 OE2
  improper HB1 HB2 CA CG  !stereo CB
  improper HG1 HG2 CB CD  !stereo CG

  dihedral CG  CB  CA  N
  dihedral CD  CG  CB  CA
  dihedral OE1 CD  CG  CB ! mult 2 ! UCL

  DONO HN   N
  DONO HE2  OE2
  ACCE OE1  CD
  ACCE OE2  CD
  ACCE O    C
end




residue GLY
  group
    atom N   type=NH1    charge=-0.570 end
    atom HN  type=H      charge= 0.370 end
    atom CA  type=CH2G   charge= 0.200 end
    atom HA1 type=HA     charge= 0.000 end
    atom HA2 type=HA     charge= 0.000 end
    atom C   type=C      charge= 0.500 end
    atom O   type=O      charge=-0.500 end

  bond N  HN
  bond N  CA     bond CA HA1     bond CA HA2
  bond CA C
  bond C  O

  DONO HN   N
  ACCE O    C

  improper HA1 HA2 N C  !stereo CA
end

residue NEP
  group
    atom N   type=NH1     charge=-0.570 end
    atom HN  type=H       charge= 0.370 end
    atom CA  type=CH1E    charge= 0.200 end
    atom HA  type=HA      charge= 0.000 end
    atom CB  type=CH2E    charge= 0.000 end
    atom HB1 type=HA      charge= 0.000 end
    atom HB2 type=HA      charge= 0.000 end
    atom CG  type=C5      charge= 0.330 end
    atom ND1 type=NH1     charge=-0.540 end
    atom HD1 type=H       charge= 0.460 end
    atom CD2 type=CR1H    charge= 0.330 end
    atom HD2 type=HA      charge= 0.000 end
    atom CE1 type=CRHH    charge= 0.500 end
    atom HE1 type=HA      charge= 0.000 end
    atom NE2 type=NR      charge=-0.440 end
    atom P   type=PP      charge= 0.520 end
    atom O1P type=OP1     charge=-0.720 end
    atom O2P type=OP1     charge=-0.720 end
    atom O3P type=OR3     charge=-0.720 end
    atom C   type=C       charge= 0.500 end
    atom O   type=O       charge=-0.500 end

  bond N   HN
  bond N   CA     bond CA  HA
  bond CA  CB     bond CB  HB1     bond CB  HB2
  bond CB  CG
  bond CG  ND1    bond ND1 HD1
  bond ND1 CE1    bond CE1 HE1
  bond CG  CD2    bond CD2 HD2
  bond CD2 NE2    bond NE2 P  
  bond CE1 NE2
  bond P   O1P  
  bond P   O2P    
  bond P   O3P    
  bond CA  C
  bond C   O

  improper HA  N   C   CB  !chirality CA
  improper CG  CB  ND1 CD2
  improper ND1 CE1 CG  HD1
  improper CD2 NE2 CG  HD2
  improper CE1 ND1 NE2 HE1
  improper CG  ND1 CE1 NE2
  improper ND1 CE1 NE2 CD2
  improper CE1 NE2 CD2 CG
  improper NE2 CD2 CG  ND1
  improper CD2 CG  ND1 CE1
  improper HB1 HB2 CA CG  !stereo CB
  improper NE2   P     CD2   CE1  

  dihedral CG  CB  CA  N
  dihedral ND1 CG  CB  CA
  dihedral CD2 CG  CB  CA
  dihedral O3P P   NE2 CE1  

  DONO HN   N
  DONO HD1  ND1
  DONO HE2  NE2
  ACCE O    C
  ACCE O1P  P
  ACCE O2P  P
  ACCE O3P  P
end

residue HIS  ! doubly protonated HIS
  group
    atom N   type=NH1     charge=-0.570 end
    atom HN  type=H       charge= 0.370 end
    atom CA  type=CH1E    charge= 0.200 end
    atom HA  type=HA      charge= 0.000 end
    atom CB  type=CH2E    charge= 0.000 end
    atom HB1 type=HA      charge= 0.000 end
    atom HB2 type=HA      charge= 0.000 end
    atom CG  type=C5      charge= 0.330 end
    atom ND1 type=NH1     charge=-0.540 end
    atom HD1 type=H       charge= 0.460 end
    atom CD2 type=CR1H    charge= 0.330 end
    atom HD2 type=HA      charge= 0.000 end
    atom CE1 type=CRHH    charge= 0.500 end
    atom HE1 type=HA      charge= 0.000 end
    atom NE2 type=NH1     charge=-0.540 end
    atom HE2 TYPE=H       charge= 0.460 end
    atom C   type=C       charge= 0.500 end
    atom O   type=O       charge=-0.500 end

  bond N   HN
  bond N   CA     bond CA  HA
  bond CA  CB     bond CB  HB1     bond CB  HB2
  bond CB  CG
  bond CG  ND1    bond ND1 HD1
  bond ND1 CE1    bond CE1 HE1
  bond CG  CD2    bond CD2 HD2
  bond CD2 NE2    bond NE2 HE2
  bond CE1 NE2
  bond CA  C
  bond C   O

  improper HA  N   C   CB  !chirality CA
  improper CG  CB  ND1 CD2
  improper ND1 CE1 CG  HD1
  improper CD2 NE2 CG  HD2
  improper CE1 ND1 NE2 HE1
  improper CG  ND1 CE1 NE2
  improper ND1 CE1 NE2 CD2
  improper CE1 NE2 CD2 CG
  improper NE2 CD2 CG  ND1
  improper CD2 CG  ND1 CE1
  improper HB1 HB2 CA CG  !stereo CB

  dihedral CG  CB  CA  N
  dihedral ND1 CG  CB  CA
  dihedral CD2 CG  CB  CA ! UCL added 09-MAR-00

  DONO HN   N
  DONO HD1  ND1
  DONO HE2  NE2
  ACCE O    C
end

residue ILE
  group
    atom N    type=NH1     charge=-0.570 end
    atom HN   type=H       charge= 0.370 end
    atom CA   type=CH1E    charge= 0.200 end
    atom HA   type=HA      charge= 0.000 end
    atom CB   type=CH1E    charge= 0.000 end
    atom HB   type=HA      charge= 0.000 end
    atom CG1  type=CH2E    charge= 0.000 end
    atom HG11 type=HA      charge= 0.000 excl = (HG21 HG22 HG23 HD11 HD12 HD13) end
    atom HG12 type=HA      charge= 0.000 excl = (HG21 HG22 HG23 HD11 HD12 HD13) end
    atom CG2  type=CH3E    charge= 0.000 end
    atom HG21 type=HA      charge= 0.000 excl = (HG11 HG12 HD11 HD12 HD13) end
    atom HG22 type=HA      charge= 0.000 excl = (HG11 HG12 HD11 HD12 HD13) end
    atom HG23 type=HA      charge= 0.000 excl = (HG11 HG12 HD11 HD12 HD13) end
    atom CD1  type=CH3E    charge= 0.000 end
    atom HD11 type=HA      charge= 0.000 excl = (HG21 HG22 HG23 HG11 HG12) end
    atom HD12 type=HA      charge= 0.000 excl = (HG21 HG22 HG23 HG11 HG12) end
    atom HD13 type=HA      charge= 0.000 excl = (HG21 HG22 HG23 HG11 HG12) end
    atom C    type=C       charge= 0.500 end
    atom O    type=O       charge=-0.500 end
  
  bond N   HN
  bond N   CA     bond CA  HA
  bond CA  CB     bond CB  HB
  bond CB  CG1    bond CG1 HG11    bond CG1 HG12
  bond CB  CG2    bond CG2 HG21    bond CG2 HG22    bond CG2 HG23
  bond CG1 CD1    bond CD1 HD11    bond CD1 HD12    bond CD1 HD13
  bond CA  C
  bond C   O

  improper HA N  C   CB   !chirality CA
  improper HB CA CG2 CG1  !chirality CB
  
  improper HG11 HG12 CB CD1  !stereo CG1
  improper HG21 HG22 CB HG23   !methyl CG2
  improper HD11 HD12 CG1 HD13  !methyl CD1

  dihedral CG1 CB  CA  N
  dihedral CD1 CG1 CB  CA
  dihedral HD11 CD1 CG1 CB   ! UCL methyl stagger 12-MAR-00 
  dihedral HG21 CG2 CB  CA   ! UCL methyl stagger 12-MAR-00 

  DONO HN   N
  ACCE O    C
end


residue LEU
  group
    atom N    type=NH1    charge=-0.570 end
    atom HN   type=H      charge= 0.370 end
    atom CA   type=CH1E   charge= 0.200 end
    atom HA   type=HA     charge= 0.000 end
    atom CB   type=CH2E   charge= 0.000 end
    atom HB1  type=HA     charge= 0.000 end
    atom HB2  type=HA     charge= 0.000 end
    atom CG   type=CH1E   charge= 0.000 end
    atom HG   type=HA     charge= 0.000 end
    atom CD1  type=CH3E   charge= 0.000 end
    atom HD11 type=HA     charge= 0.000 excl = (HD21 HD22 HD23 HG) end
    atom HD12 type=HA     charge= 0.000 excl = (HD21 HD22 HD23 HG) end
    atom HD13 type=HA     charge= 0.000 excl = (HD21 HD22 HD23 HG) end
    atom CD2  type=CH3E   charge= 0.000 end
    atom HD21 type=HA     charge= 0.000 excl = (HD11 HD12 HD13 HG) end
    atom HD22 type=HA     charge= 0.000 excl = (HD11 HD12 HD13 HG) end
    atom HD23 type=HA     charge= 0.000 excl = (HD11 HD12 HD13 HG) end
    atom C    type=C      charge= 0.500 end
    atom O    type=O      charge=-0.500 end

  bond N   HN
  bond N   CA     bond CA  HA
  bond CA  CB     bond CB  HB1     bond CB  HB2
  bond CB  CG     bond CG  HG
  bond CG  CD1    bond CD1 HD11    bond CD1 HD12    bond CD1 HD13
  bond CG  CD2    bond CD2 HD21    bond CD2 HD22    bond CD2 HD23
  bond CA  C
  bond C   O

  improper HA   N    C   CB    !chirality CA
  improper HG   CB   CD1 CD2   !stereo CG
  improper HB1 HB2 CA CG       !stereo CB
  improper HD11 HD12 CG HD13   !methyl CD1
  improper HD21 HD22 CG HD23   !methyl CD2
    
  dihedral CG  CB  CA  N
  dihedral CD1 CG  CB  CA
  dihedral HD11 CD1 CG  CB   ! UCL methyl stagger 12-MAR-00 
  dihedral HD21 CD2 CG  CB   ! UCL methyl stagger 12-MAR-00 

  DONO HN   N
  ACCE O    C
end


residue LYS
  group
    atom N   type=NH1    charge=-0.570 end
    atom HN  type=H      charge= 0.370 end
    atom CA  type=CH1E   charge= 0.200 end
    atom HA  type=HA     charge= 0.000 end
    atom CB  type=CH2E   charge= 0.000 end
    atom HB1 type=HA     charge= 0.000 end
    atom HB2 type=HA     charge= 0.000 end
    atom CG  type=CH2E   charge= 0.000 end
    atom HG1 type=HA     charge= 0.000 end
    atom HG2 type=HA     charge= 0.000 end
    atom CD  type=CH2E   charge= 0.000 end
    atom HD1 type=HA     charge= 0.000 end
    atom HD2 type=HA     charge= 0.000 end
    atom CE  type=CH2E   charge= 0.310 end
    atom HE1 type=HA     charge= 0.000 end
    atom HE2 type=HA     charge= 0.000 end
    atom NZ  type=NH3    charge=-0.300 end
    atom HZ1 type=HC     charge= 0.330 end
    atom HZ2 type=HC     charge= 0.330 end
    atom HZ3 type=HC     charge= 0.330 end
    atom C   type=C      charge= 0.500 end
    atom O   type=O      charge=-0.500 end

  bond N  HN
  bond N  CA     bond CA HA
  bond CA CB     bond CB HB1     bond CB HB2
  bond CB CG     bond CG HG1     bond CG HG2
  bond CG CD     bond CD HD1     bond CD HD2
  bond CD CE     bond CE HE1     bond CE HE2
  bond CE NZ     bond NZ HZ1     bond NZ HZ2     bond NZ HZ3
  bond CA C
  bond C  O

  improper HA N C CB      !chirality CA
  improper HB1 HB2 CA CG  !stereo CB
  improper HG1 HG2 CB CD  !stereo CG
  improper HD1 HD2 CG CE  !stereo CD
  improper HE1 HE2 CD NZ  !stereo CE
  improper HZ1 HZ2 CE HZ3 !methyl NZ

  dihedral CG  CB  CA  N
  dihedral CD  CG  CB  CA
  dihedral CE  CD  CG  CB
  dihedral NZ  CE  CD  CG
  dihedral HZ1 NZ  CE  CD ! UCL stagger NH3 group 12-MAR-00

  DONO HN   N
  DONO HZ1  NZ
  DONO HZ2  NZ
  DONO HZ3  NZ
  ACCE O    C
end

residue ALY
  group
    atom N   type=NH1    charge=-0.570 end
    atom HN  type=H      charge= 0.370 end
    atom CA  type=CH1E   charge= 0.200 end
    atom HA  type=HA     charge= 0.000 end
    atom CB  type=CH2E   charge= 0.000 end
    atom HB1 type=HA     charge= 0.000 end
    atom HB2 type=HA     charge= 0.000 end
    atom CG  type=CH2E   charge= 0.000 end
    atom HG1 type=HA     charge= 0.000 end
    atom HG2 type=HA     charge= 0.000 end
    atom CD  type=CH2E   charge= 0.000 end
    atom HD1 type=HA     charge= 0.000 end
    atom HD2 type=HA     charge= 0.000 end
    atom CE  type=CH2E   charge= 0.200 end
    atom HE1 type=HA     charge= 0.000 end
    atom HE2 type=HA     charge= 0.000 end
    atom NZ  type=NH1    charge=-0.570 end
    atom HZ1 type=H      charge= 0.370 end
    atom CZ  type=C      charge= 0.500 end
    atom OZ  type=O      charge=-0.500 end
    atom CM  type=CH3E   charge= 0.000 end
    atom HM1 type=HA     charge= 0.000 end
    atom HM2 type=HA     charge= 0.000 end
    atom HM3 type=HA     charge= 0.000 end
    atom C   type=C      charge= 0.500 end
    atom O   type=O      charge=-0.500 end

  bond N  HN
  bond N  CA     bond CA HA
  bond CA CB     bond CB HB1     bond CB HB2
  bond CB CG     bond CG HG1     bond CG HG2
  bond CG CD     bond CD HD1     bond CD HD2
  bond CD CE     bond CE HE1     bond CE HE2
  bond CE NZ     bond NZ HZ1     bond NZ CZ     bond CZ OZ   bond CZ CM
  bond CM HM1    bond CM HM2     bond CM HM3
  bond CA C
  bond C  O

  improper HA N C CB      !chirality CA
  improper HB1 HB2 CA CG  !stereo CB
  improper HG1 HG2 CB CD  !stereo CG
  improper HD1 HD2 CG CE  !stereo CD
  improper HE1 HE2 CD NZ  !stereo CE
  improper HM1 HM2 CZ HM3 !methyl CM
  improper CZ  CM  NZ OZ  !planar CZ
  improper NZ  CZ  CM HZ1 !planar NZ
  improper CE  NZ  CZ CM  !side-chain peptide plane

  dihedral CG  CB  CA  N
  dihedral CD  CG  CB  CA
  dihedral CE  CD  CG  CB
  dihedral NZ  CE  CD  CG
  dihedral HZ1 NZ  CE  CD ! UCL stagger NH3 group 12-MAR-00
!  dihedral CE  NZ  CZ  OZ

  DONO HN   N
  DONO HZ1  NZ
  ACCE O    C
  ACCE OZ   CZ
end

residue MLZ ! monomethyl lysine, added 30-04-2009 A. Bonvin
  group
    atom N    type=NH1   charge=-0.570 end
    atom HN   type=H     charge= 0.370 end
    atom CA   type=CH1E  charge= 0.200 end
    atom HA   type=HA    charge= 0.000 end
    atom CB   type=CH2E  charge= 0.000 end
    atom HB1  type=HA    charge= 0.000 end
    atom HB2  type=HA    charge= 0.000 end
    atom CG   type=CH2E  charge= 0.000 end
    atom HG1  type=HA    charge= 0.000 end
    atom HG2  type=HA    charge= 0.000 end
    atom CD   type=CH2E  charge= 0.000 end
    atom HD1  type=HA    charge= 0.000 end
    atom HD2  type=HA    charge= 0.000 end
    atom CE   type=CH2E  charge=-0.157 end
    atom HE1  type=HA    charge= 0.250 end
    atom HE2  type=HA    charge= 0.250 end
    atom NZ   type=NC2   charge=-0.400 end
    atom HZ1  type=HC    charge= 0.320 end
    atom HZ2  type=HC    charge= 0.320 end
    atom CM3  type=CH3E  charge=-0.333 end
    atom HM31 type=HA    charge= 0.250 end
    atom HM32 type=HA    charge= 0.250 end
    atom HM33 type=HA    charge= 0.250 end
    atom C    type=C     charge= 0.500 end
    atom O    type=O     charge=-0.500 end

  bond N  HN
  bond N  CA     bond CA HA
  bond CA CB     bond CB HB1     bond CB HB2
  bond CB CG     bond CG HG1     bond CG HG2
  bond CG CD     bond CD HD1     bond CD HD2
  bond CD CE     bond CE HE1     bond CE HE2
  bond CE NZ     bond NZ HZ1     bond NZ HZ2     bond NZ CM3
  bond CM3 HM31  bond CM3 HM32   bond CM3 HM33
  bond CA C
  bond C  O

  DONO HN   N
  ACCE O    C
end

residue MLY ! Dimethyl lysine, added 30-04-2009 A. Bonvin
  group
    atom N    type=NH1   charge=-0.570 end
    atom HN   type=H     charge= 0.370 end
    atom CA   type=CH1E  charge= 0.200 end
    atom HA   type=HA    charge= 0.000 end
    atom CB   type=CH2E  charge= 0.000 end
    atom HB1  type=HA    charge= 0.000 end
    atom HB2  type=HA    charge= 0.000 end
    atom CG   type=CH2E  charge= 0.000 end
    atom HG1  type=HA    charge= 0.000 end
    atom HG2  type=HA    charge= 0.000 end
    atom CD   type=CH2E  charge= 0.000 end
    atom HD1  type=HA    charge= 0.000 end
    atom HD2  type=HA    charge= 0.000 end
    atom CE   type=CH2E  charge=-0.154 end
    atom HE1  type=HA    charge= 0.250 end
    atom HE2  type=HA    charge= 0.250 end
    atom NZ   type=NC3   charge=-0.510 end
    atom HZ1  type=HC    charge= 0.330 end
    atom CM2  type=CH3E  charge=-0.333 end
    atom HM21 type=HA    charge= 0.250 end
    atom HM22 type=HA    charge= 0.250 end
    atom HM23 type=HA    charge= 0.250 end
    atom CM3  type=CH3E  charge=-0.333 end
    atom HM31 type=HA    charge= 0.250 end
    atom HM32 type=HA    charge= 0.250 end
    atom HM33 type=HA    charge= 0.250 end
    atom C    type=C     charge= 0.500 end
    atom O    type=O     charge=-0.500 end

  bond N  HN
  bond N  CA     bond CA HA
  bond CA CB     bond CB HB1     bond CB HB2
  bond CB CG     bond CG HG1     bond CG HG2
  bond CG CD     bond CD HD1     bond CD HD2
  bond CD CE     bond CE HE1     bond CE HE2
  bond CE NZ     bond NZ HZ1     bond NZ CM2     bond NZ CM3
  bond CM2 HM21  bond CM2 HM22   bond CM2 HM23
  bond CM3 HM31  bond CM3 HM32   bond CM3 HM33
  bond CA C
  bond C  O

  DONO HN   N
  ACCE O    C
end

residue M3L ! trimethyl lysine
  group
    atom N    type=NH1   charge=-0.570 end
    atom HN   type=H     charge= 0.370 end
    atom CA   type=CH1E  charge= 0.200 end
    atom HA   type=HA    charge= 0.000 end
    atom CB   type=CH2E  charge= 0.000 end
    atom HB1  type=HA    charge= 0.000 end
    atom HB2  type=HA    charge= 0.000 end
    atom CG   type=CH2E  charge= 0.000 end
    atom HG1  type=HA    charge= 0.000 end
    atom HG2  type=HA    charge= 0.000 end
    atom CD   type=CH2E  charge= 0.000 end
    atom HD1  type=HA    charge= 0.000 end
    atom HD2  type=HA    charge= 0.000 end
    atom CE   type=CH2E  charge=-0.151 end
    atom HE1  type=HA    charge= 0.250 end
    atom HE2  type=HA    charge= 0.250 end
    atom NZ   type=NC4   charge=-0.600 end
    atom CM1  type=CH3E  charge=-0.333 end
    atom HM11 type=HA    charge= 0.250 end
    atom HM12 type=HA    charge= 0.250 end
    atom HM13 type=HA    charge= 0.250 end
    atom CM2  type=CH3E  charge=-0.333 end
    atom HM21 type=HA    charge= 0.250 end
    atom HM22 type=HA    charge= 0.250 end
    atom HM23 type=HA    charge= 0.250 end
    atom CM3  type=CH3E  charge=-0.333 end
    atom HM31 type=HA    charge= 0.250 end
    atom HM32 type=HA    charge= 0.250 end
    atom HM33 type=HA    charge= 0.250 end
    atom C    type=C     charge= 0.500 end
    atom O    type=O     charge=-0.500 end

  bond N  HN
  bond N  CA     bond CA HA
  bond CA CB     bond CB HB1     bond CB HB2
  bond CB CG     bond CG HG1     bond CG HG2
  bond CG CD     bond CD HD1     bond CD HD2
  bond CD CE     bond CE HE1     bond CE HE2
  bond CE NZ     bond NZ CM1     bond NZ CM2     bond NZ CM3
  bond CM1 HM11  bond CM1 HM12   bond CM1 HM13
  bond CM2 HM21  bond CM2 HM22   bond CM2 HM23
  bond CM3 HM31  bond CM3 HM32   bond CM3 HM33
  bond CA C
  bond C  O

!  improper HA N C CB         !chirality CA
!  improper HB1 HB2 CA CG     !stereo CB
!  improper HG1 HG2 CB CD     !stereo CG
!  improper HD1 HD2 CG CE     !stereo CD
!  improper HE1 HE2 CD NZ     !stereo CE
!  improper CM1 CM2 CE CM3    !methyl NZ
!  improper HM11 HM12 NZ HM13 !methyl CM1
!  improper HM21 HM22 NZ HM23 !methyl CM1
!  improper HM31 HM32 NZ HM33 !methyl CM1

!  dihedral CG  CB  CA  N
!  dihedral CD  CG  CB  CA
!  dihedral CE  CD  CG  CB
!  dihedral NZ  CE  CD  CG
!  dihedral CM1 NZ  CE  CD ! UCL stagger NH3 group 12-MAR-00

  DONO HN   N
  ACCE O    C
end

residue MET
  group
    atom N   type=NH1     charge=-0.570 end
    atom HN  type=H       charge= 0.370 end
    atom CA  type=CH1E    charge= 0.200 end
    atom HA  type=HA      charge= 0.000 end
    atom CB  type=CH2E    charge=-0.000 end
    atom HB1 type=HA      charge= 0.000 end
    atom HB2 type=HA      charge= 0.000 end
    atom CG  type=CH2E    charge= 0.235 end
    atom HG1 type=HA      charge= 0.000 end
    atom HG2 type=HA      charge= 0.000 end
    atom SD  type=SM      charge=-0.470 end
    atom CE  type=CH3E    charge= 0.235 end
    atom HE1 type=HA      charge= 0.000 end
    atom HE2 type=HA      charge= 0.000 end
    atom HE3 type=HA      charge= 0.000 end
    atom C   type=C       charge= 0.500 end
    atom O   type=O       charge=-0.500 end

  bond N  HN
  bond N  CA     bond CA HA
  bond CA CB     bond CB HB1     bond CB HB2
  bond CB CG     bond CG HG1     bond CG HG2
  bond CG SD
  bond SD CE     bond CE HE1     bond CE HE2     bond CE HE3
  bond CA C
  bond C  O

  improper HA N C CB      !chirality CA
  improper HB1 HB2 CA CG  !stereo CB
  improper HG1 HG2 CB SD  !stereo CG
  improper HE1 HE2 SD HE3 !methyl CE

  dihedral CG  CB  CA  N
  dihedral SD  CG  CB  CA
  dihedral CE  SD  CG  CB
  dihedral HE1 CE  SD  CG ! UCL methyl stagger 12-MAR-00

  DONO HN   N
  ACCE O    C
end


residue PHE
  group
    atom N   type=NH1     charge=-0.570 end
    atom HN  type=H       charge= 0.370 end
    atom CA  type=CH1E    charge= 0.200 end
    atom HA  type=HA      charge= 0.000 end
    atom CB  type=CH2E    charge= 0.000 end
    atom HB1 type=HA      charge= 0.000 end
    atom HB2 type=HA      charge= 0.000 end
    atom CG  type=CF      charge= 0.000 exclude=(CZ) end
    atom CD1 type=CR1E    charge= 0.000 exclude=(CE2) end
    atom HD1 type=HA      charge= 0.000 end
    atom CD2 type=CR1E    charge= 0.000 exclude=(CE1) end
    atom HD2 type=HA      charge= 0.000 end
    atom CE1 type=CR1E    charge= 0.000 exclude=(CD2) end
    atom HE1 type=HA      charge= 0.000 end
    atom CE2 type=CR1E    charge= 0.000 exclude=(CD1) end
    atom HE2 type=HA      charge= 0.000 end
    atom CZ  type=CR1E    charge= 0.000 exclude=(CG) end
    atom HZ  type=HA      charge= 0.000 end
    atom C   type=C       charge= 0.500 end
    atom O   type=O       charge=-0.500 end
  bond N   HN
  bond N   CA     bond CA  HA
  bond CA  CB     bond CB  HB1     bond CB  HB2
  bond CB  CG
  bond CG  CD1    bond CD1 HD1
  bond CG  CD2    bond CD2 HD2
  bond CD1 CE1    bond CE1 HE1
  bond CD2 CE2    bond CE2 HE2
  bond CE1 CZ     bond CZ  HZ
  bond CE2 CZ
  bond CA  C
  bond C   O

  improper HA  N   C   CB !chirality CA
  improper HB1 HB2 CA CG  !stereo CB

! Hs and CB around the ring
  improper HD2 CD2 CE2 CZ
  improper HE2 CE2 CZ  CE1
  improper HZ  CZ  CE1 CD1
  improper HE1 CE1 CD1 CG
  improper HD1 CD1 CG  CD2
  improper CB  CG  CD2 CE2

! around the ring
  improper CG  CD1 CE1 CZ 
  improper CD1 CE1 CZ  CE2
  improper CE1 CZ  CE2 CD2
  improper CZ  CE2 CD2 CG
  improper CE2 CD2 CG  CD1
  improper CD2 CG  CD1 CE1

  dihedral CG  CB  CA  N
  dihedral CD1 CG  CB  CA

  DONO HN   N
  ACCE O    C
end


residue PRO
  group
    atom N   type=N     charge=-0.570 end
    atom CA  type=CH1E  charge= 0.285 end
    atom HA  type=HA    charge= 0.000 end
    atom CB  type=CH2E  charge= 0.000 end
    atom HB1 type=HA    charge= 0.000 end
    atom HB2 type=HA    charge= 0.000 end
    atom CG  type=CH2P  charge= 0.000 end
    atom HG1 type=HA    charge= 0.000 end
    atom HG2 type=HA    charge= 0.000 end
    atom CD  type=CH2P  charge= 0.285 end
    atom HD1 type=HA    charge= 0.000 end   
    atom HD2 type=HA    charge= 0.000 end   
    atom C   type=C     charge= 0.500 end   
    atom O   type=O     charge=-0.500 end

  bond N  CA     bond CA HA
  bond CA CB     bond CB HB1     bond CB HB2
  bond CB CG     bond CG HG1     bond CG HG2
  bond CG CD     bond CD HD1     bond CD HD2
  bond CD N
  bond CA C
  bond C  O

  improper HA N C CB      !chirality CA
  improper HB1 HB2 CA CG  !stereo CB
  improper HG1 HG2 CB CD  !stereo CG
  improper HD1 HD2 CG N   !stereo CD

  ACCE O    C
end


residue HYP  ! 4R-hydroxyproline
  group
    atom N   type=N     charge=-0.570 end
    atom CA  type=CH1E  charge= 0.285 end
    atom HA  type=HA    charge= 0.000 end
    atom CB  type=CH2E  charge= 0.000 end
    atom HB1 type=HA    charge= 0.000 end
    atom HB2 type=HA    charge= 0.000 end
    atom CG  type=CH1P  charge= 0.485 end
    atom OG1 type=OH1   charge=-0.700 end   
    atom HG1 type=H     charge= 0.500 end   
    atom HG2 type=HA    charge= 0.000 end   
    atom CD  type=CH2P  charge= 0.000 end
    atom HD1 type=HA    charge= 0.000 end
    atom HD2 type=HA    charge= 0.000 end
    atom C   type=C     charge= 0.500 end   
    atom O   type=O     charge=-0.500 end

  bond N  CA     bond CA HA
  bond CA CB     bond CB HB1     bond CB HB2
  bond CB CG     bond CG OG1     bond CG HG2
  bond OG1 HG1
  bond CG CD     bond CD HD1     bond CD HD2
  bond CD N
  bond CA C
  bond C  O

  improper HA N C CB      !chirality CA
  improper HB1 HB2 CA CG  !stereo CB
  improper OG1 HG2 CB CD  !stereo CG
  improper HD1 HD2 CG N   !stereo CD

  ACCE O    C
end


! RESIDUE R1A - X-ray/EPR version of CYM added 29-04-2013 M. Bye

residue R1A
GROUP
  atom N    type=NH1    charge=-0.570 end
  atom HN   type=H      charge= 0.370 end
  atom CA   type=CH1E   charge= 0.200 end
  atom HA   type=HA     charge= 0.000 end
  atom CB   type=CH2E   charge= 0.080 end
  atom HB1  type=HA     charge= 0.000 end
  atom HB2  type=HA     charge= 0.000 end
  atom SG   type=S      charge=-0.080 end
  atom SD   type=S      charge=-0.080 end
  atom CE   type=CH2E   charge= 0.080 end
  atom HCE1 type=HA     charge= 0.000 end
  atom HCE2 type=HB     charge= 0.000 end
  atom C3   type=C      charge= 0.000 end
  atom C2   type=C      charge= 0.000 end
  atom C9   type=CH3E   charge= 0.000 end
  atom C8   type=CH3E   charge= 0.000 end
  atom HC81 type=HA     charge= 0.000 end
  atom HC82 type=HA     charge= 0.000 end
  atom HC83 type=HA     charge= 0.000 end
  atom C4   type=CH2P   charge= 0.000 end
  atom HC41 type=HA     charge= 0.000 end
  atom HC42 type=HA     charge= 0.000 end
  atom C5   type=C      charge= 0.000 end
  atom C7   type=CH3E   charge= 0.000 end
  atom HC71 type=HA     charge= 0.000 end
  atom HC72 type=HA     charge= 0.000 end
  atom HC73 type=HA     charge= 0.000 end
  atom C6   type=CH3E   charge= 0.000 end
  atom HC61 type=HA     charge= 0.000 end
  atom HC62 type=HA     charge= 0.000 end
  atom HC63 type=HA     charge= 0.000 end
  atom N1   type=N      charge= 0.265 end
  atom O1   type=O      charge=-0.700 end
  atom HO1  type=HHAA   charge= 0.435 end
  atom C    type=C      charge= 0.500 end
  atom O    type=O      charge=-0.500 end

  bond N  HN
  bond N  CA     bond CA HA
  bond CA CB     bond CB HB1     bond CB HB2
  bond CB SG
  bond SG SD
  bond SD CE     bond CE HCE1    bond CE HCE1
  bond CE C3     bond C3 C2      bond C3 C4
  bond C2 N1     bond C2 C8      bond C2 C9
  bond C8 HC81   bond C8 HC82    bond C8 HC83
  bond C9 HC91   bond C9 HC92    bond C9 HC93
  bond N1 O1     bond O1 HO1     bond N1 C5
  bond C5 C4     bond C5 C6      bond C5 C7
  bond C6 HC61   bond C6 HC62    bond C6 HC63
  bond C7 HC71   bond C7 HC72    bond C7 HC73
  bond C4 HC41   bond C4 HC42
  bond CA C
  bond C  O


  ANGLE C9   C2   C8
  ANGLE C9   C2   N1
  ANGLE C9   C2   C3
  ANGLE C8   C2   N1
  ANGLE C8   C2   C3
  ANGLE C2   N1   O1
  ANGLE C2   N1   C5
  ANGLE N1   C5   C6
  ANGLE N1   C5   C7
  ANGLE N1   C5   C4
  ANGLE O1   N1   C5
  ANGLE C5   C6   C7
  ANGLE C5   C4   C3
  ANGLE C4   C3   C2
  ANGLE C4   C3   CE
  ANGLE C3   CE   SD
  ANGLE CE   SD   SG
  ANGLE SD   SG   CB


  improper HA   N    C    CB   !chirality CA
  improper HB1  HB2  CA   SG   !stereo CB
  improper C3   CE   C2   C4
  improper C2   C8   C9   N1
  improper N1   C2   O1   C5
  improper C5   N1   C6   C7
  improper C6   HC61 HC62 HC63
  improper C7   HC71 HC72 HC73
  improper C8   HC81 HC82 HC83
  improper C9   HC91 HC92 HC93
 

  DIHEDRAL SG   CB   CA   N
  DIHEDRAL SD   SG   CB   CA
  DIHEDRAL CE   SD   SG   CB
  DIHEDRAL C3   CE   SD   SG
  DIHEDRAL C2   C3   CE   SD
  DIHEDRAL C2   N1   C5   C6
  DIHEDRAL C2   N1   C5   C7
  DIHEDRAL C2   N1   C5   C4
  DIHEDRAL C8   C2   C3   CE
  DIHEDRAL C8   C2   N1   O1
  DIHEDRAL C8   C2   N1   C5
  DIHEDRAL C9   C2   C3   CE
  DIHEDRAL C9   C2   N1   O1
  DIHEDRAL C9   C2   N1   C5
  DIHEDRAL N1   C5   C4   C3
  DIHEDRAL O1   N1   C5   C6
  DIHEDRAL O1   N1   C5   C7
  DIHEDRAL O1   N1   C5   C4
  DIHEDRAL C5   C4   C3   C2
  DIHEDRAL C5   C4   C3   CE
  DIHEDRAL C6   C5   C4   C3
  DIHEDRAL C7   C5   C4   C3


  DONO HN   N
  ACCE O    C

END


residue SER
  group
    atom N   type=NH1    charge=-0.570 end
    atom HN  type=H      charge= 0.370 end
    atom CA  type=CH1E   charge= 0.200 end
    atom HA  type=HA     charge= 0.000 end
    atom CB  type=CH2E   charge= 0.265 end
    atom HB1 type=HA     charge= 0.000 end
    atom HB2 type=HA     charge= 0.000 end
    atom OG  type=OH1    charge=-0.700 end
    atom HG  type=H      charge= 0.435 end
    atom C   type=C      charge= 0.500 end
    atom O   type=O      charge=-0.500 end

  bond N  HN
  bond N  CA     bond CA HA
  bond CA CB     bond CB HB1     bond CB HB2
  bond CB OG     bond OG HG
  bond O  C
  bond C  CA

  improper HA N C CB      !chirality CA
  improper HB1 HB2 CA OG  !stereo CB

  dihedral OG  CB  CA  N

  DONO HN   N
  DONO HG   OG
  ACCE OG  " "
  ACCE O    C
end


residue SEP !phosphorylated Serine, AB-2008-11
  group
    atom N   type=NH1    charge=-0.570 end
    atom HN  type=H      charge= 0.370 end
    atom CA  type=CH1E   charge= 0.200 end
    atom HA  type=HA     charge= 0.000 end
    atom CB  type=CH2E   charge= 0.265 end
    atom HB1 type=HA     charge= 0.000 end
    atom HB2 type=HA     charge= 0.000 end
    atom OG  type=OHP    charge=-0.625 end
    atom P   type=PP     charge= 0.520 end
    atom O1P type=OP1    charge=-0.720 end
    atom O2P type=OP1    charge=-0.720 end
    atom O3P type=OR3    charge=-0.720 end
    atom C   type=C      charge= 0.500 end
    atom O   type=O      charge=-0.500 end

  bond N  HN
  bond N  CA     bond CA HA
  bond CA CB     bond CB HB1     bond CB HB2
  bond CB OG     bond OG  P
  bond P   O1P
  bond P   O2P
  bond P   O3P
  bond O  C
  bond C  CA

  angle CB OG P
  angle OG P O3P
  angle O3P P O1P
  angle O3P P O2P

  improper HA N C CB      !chirality CA
  improper HB1 HB2 CA OG  !stereo CB

  dihedral OG  CB  CA  N
  dihedral CB  OG  P   O3P

  DONO HN   N
  DONO HG   OG
  ACCE OG  " "
  ACCE O    C
  ACCE O1P  P
  ACCE O2P  P
  ACCE O3P  P
end


residue THR
  group
    atom N    type=NH1 charge=-0.570 end
    atom HN   type=H   charge= 0.370 end
    atom CA   type=CH1E  charge= 0.200 end
    atom HA   type=HA  charge= 0.000 end
    atom CB   type=CH1E  charge= 0.265 end
    atom HB   type=HA  charge= 0.000 end
    atom OG1  type=OH1  charge=-0.700 end
    atom HG1  type=H   charge= 0.435 end
    atom CG2  type=CH3E  charge=-0.000 end
    atom HG21 type=HA  charge= 0.000 end
    atom HG22 type=HA  charge= 0.000 end
    atom HG23 type=HA  charge= 0.000 end
    atom C    type=C   charge= 0.500 end
    atom O    type=O   charge=-0.500 end

  bond N  HN
  bond N  CA     bond CA HA
  bond CA CB     bond CB HB
  bond CB OG1    bond OG1 HG1
  bond CB CG2    bond CG2 HG21    bond CG2 HG22    bond CG2 HG23
  bond CA C
  bond C  O

  improper HA N  C   CB        !chirality CA
  improper HB CA OG1 CG2       !stereo CB
  improper HG21 HG22 CB HG23   !methyl CG2

  dihedral OG1 CB  CA  N
  dihedral HG21 CG2 CB  CA   ! UCL methyl stagger 12-MAR-00 

  DONO HN   N
  DONO HG1  OG1
  ACCE OG1 " "
  ACCE O    C
end


residue TOP
  group
    atom N    type=NH1 charge=-0.570 end
    atom HN   type=H   charge= 0.370 end
    atom CA   type=CH1E  charge= 0.200 end
    atom HA   type=HA  charge= 0.000 end
    atom CB   type=CH1E  charge= 0.265 end
    atom HB   type=HA  charge= 0.000 end
    atom OG1  type=OHP    charge=-0.625 end
    atom P    type=PP     charge= 0.520 end
    atom O1P  type=OP1    charge=-0.720 end
    atom O2P  type=OP1    charge=-0.720 end
    atom O3P  type=OR3    charge=-0.720 end
    atom CG2  type=CH3E  charge=-0.000 end
    atom HG21 type=HA  charge= 0.000 end
    atom HG22 type=HA  charge= 0.000 end
    atom HG23 type=HA  charge= 0.000 end
    atom C    type=C   charge= 0.500 end
    atom O    type=O   charge=-0.500 end

  bond N  HN
  bond N  CA     bond CA HA
  bond CA CB     bond CB HB
  bond CB OG1    bond OG1 P
  bond P   O1P
  bond P   O2P
  bond P   O3P

  bond CB CG2    bond CG2 HG21    bond CG2 HG22    bond CG2 HG23
  bond CA C
  bond C  O

  angle CB OG P
  angle OG P O3P
  angle O3P P O1P
  angle O3P P O2P

  improper HA N  C   CB        !chirality CA
  improper HB CA OG1 CG2       !stereo CB
  improper HG21 HG22 CB HG23   !methyl CG2

  dihedral OG1 CB  CA  N
  dihedral CB  OG1 P   O3P
  dihedral HG21 CG2 CB  CA   ! UCL methyl stagger 12-MAR-00 

  DONO HN   N
  DONO HG1  OG1
  ACCE OG1 " "
  ACCE O    C
end


residue TRP
  group
    atom N   type=NH1 charge=-0.570 end
    atom HN  type=H   charge= 0.370 end
    atom CA  type=CH1E  charge= 0.200 end
    atom HA  type=HA  charge= 0.000 end
    atom CB  type=CH2E  charge= 0.000 end
    atom HB1 type=HA  charge= 0.000 end
    atom HB2 type=HA  charge= 0.000 end
    atom CG  type=C5W  charge=-0.055 end
    atom CD1 type=CR1E  charge= 0.130 end
    atom HD1 type=HA  charge= 0.000 end
    atom CD2 type=CW  charge=-0.055 exclude=(CH2) end
    atom NE1 type=NH1 charge=-0.570 end
    atom HE1 type=H   charge= 0.420 end
    atom CE2 type=CW  charge= 0.130 exclude=(CZ3) end
    atom CE3 type=CR1E  charge= 0.000 exclude=(CZ2) end
    atom HE3 type=HA  charge= 0.000 end
    atom CZ2 type=CR1W charge= 0.000 exclude=(CE3) end
    atom HZ2 type=HA  charge= 0.000 end
    atom CZ3 type=CR1E  charge= 0.000 exclude=(CE2) end
    atom HZ3 type=HA  charge= 0.000 end
    atom CH2 type=CR1W charge= 0.000 exclude=(CD2) end
    atom HH2 type=HA  charge= 0.000 end
    atom C   type=C   charge= 0.500 end
    atom O   type=O   charge=-0.500 end

  bond N   HN
  bond N   CA     bond CA  HA
  bond CA  CB     bond CB  HB1     bond CB  HB2
  bond CB  CG
  bond CG  CD1    bond CD1 HD1
  bond CG  CD2
  bond CD1 NE1    bond NE1 HE1
  bond NE1 CE2
  bond CD2 CE2
  bond CD2 CE3    bond CE3 HE3
  bond CE2 CZ2    bond CZ2 HZ2
  bond CE3 CZ3    bond CZ3 HZ3
  bond CZ2 CH2    bond CH2 HH2
  bond CZ3 CH2
  bond CA  C
  bond C   O

! chirality
  improper HA  N   C   CB !chirality CA
  improper HB1 HB2 CA CG  !stereo CB

! around the 6-ring
  improper CD2 CE2 CZ2 CH2
  improper CE2 CZ2 CH2 CZ3
  improper CZ2 CH2 CZ3 CE3
  improper CH2 CZ3 CE3 CD2
  improper CZ3 CE3 CD2 CE2
  improper CE3 CD2 CE2 CZ2

! link 5-ring to 6-ring
  improper CD1 NE1 CE2 CZ2
  improper CD1 CG  CD2 CE3
  improper NE1 CE2 CZ2 CH2
  improper NE1 CE2 CD2 CE3
  improper CG  CD2 CE3 CZ3
  improper CG  CD2 CE2 CZ2

! 6-ring hydrogens
  improper HZ2 CZ2 CH2 CZ3
  improper HH2 CH2 CZ3 CE3
  improper HZ3 CZ3 CH2 CZ2
  improper HE3 CE3 CZ3 CH2

! 5-ring hydrogens and CB
  improper HE1 NE1 CE2 CD2
  improper HD1 CD1 NE1 CE2
  improper CB  CG  CD2 CE2

  dihedral CG  CB  CA  N
  dihedral CD1 CG  CB  CA

  DONO HN   N
  DONO HE1  NE1
  ACCE O    C
end

residue TYR
  group
    atom N   type=NH1 charge=-0.570 end
    atom HN  type=H   charge= 0.370 end
    atom CA  type=CH1E  charge= 0.200 end
    atom HA  type=HA  charge= 0.000 end
    atom CB  type=CH2E  charge= 0.000 end
    atom HB1 type=HA  charge= 0.000 end
    atom HB2 type=HA  charge= 0.000 end
    atom CG  type=CY  charge= 0.000 exclude=(CZ) end
    atom CD1 type=CR1E  charge= 0.000 exclude=(CE2) end
    atom HD1 type=HA  charge= 0.000 end
    atom CD2 type=CR1E  charge= 0.000 exclude=(CE1) end
    atom HD2 type=HA  charge= 0.000 end
    atom CE1 type=CR1E  charge= 0.000 exclude=(CD2) end
    atom HE1 type=HA  charge= 0.000 end
    atom CE2 type=CR1E  charge= 0.000 exclude=(CD1) end
    atom HE2 type=HA  charge= 0.000 end
    atom CZ  type=CY2   charge= 0.265 exclude=(CG) end
    atom OH  type=OH1  charge=-0.700 end
    atom HH  type=H   charge= 0.435 end
    atom C   type=C   charge= 0.500 end
    atom O   type=O   charge=-0.500 end

  bond N   HN
  bond N   CA     bond CA  HA
  bond CA  CB     bond CB  HB1     bond CB  HB2
  bond CB  CG
  bond CG  CD1    bond CD1 HD1
  bond CG  CD2    bond CD2 HD2
  bond CD1 CE1    bond CE1 HE1
  bond CD2 CE2    bond CE2 HE2
  bond CE1 CZ
  bond CE2 CZ
  bond CZ  OH     bond OH  HH
  bond CA  C
  bond C   O

! chirality
  improper HA  N   C   CB !chirality CA
  improper HB1 HB2 CA CG  !stereo CB

! Hs, OH, and CB around the ring
  improper HD2 CD2 CE2 CZ
  improper HE2 CE2 CZ  CE1
  improper OH  CZ  CE1 CD1
  improper HE1 CE1 CD1 CG
  improper HD1 CD1 CG  CD2
  improper CB  CG  CD2 CE2

! around the ring
  improper CG  CD1 CE1 CZ 
  improper CD1 CE1 CZ  CE2
  improper CE1 CZ  CE2 CD2
  improper CZ  CE2 CD2 CG
  improper CE2 CD2 CG  CD1
  improper CD2 CG  CD1 CE1

  dihedral CG  CB  CA  N
  dihedral CD1 CG  CB  CA
  dihedral CE2 CZ  OH  HH   ! UCL Added 12-MAR-00

  DONO HN   N
  DONO HH   OH
  ACCE OH  " "
  ACCE O    C
end


residue TYP
  group
    atom N   type=NH1 charge=-0.570 end
    atom HN  type=H   charge= 0.370 end
    atom CA  type=CH1E  charge= 0.200 end
    atom HA  type=HA  charge= 0.000 end
    atom CB  type=CH2E  charge= 0.000 end
    atom HB1 type=HA  charge= 0.000 end
    atom HB2 type=HA  charge= 0.000 end
    atom CG  type=CY  charge= 0.000 exclude=(CZ) end
    atom CD1 type=CR1E  charge= 0.000 exclude=(CE2) end
    atom HD1 type=HA  charge= 0.000 end
    atom CD2 type=CR1E  charge= 0.000 exclude=(CE1) end
    atom HD2 type=HA  charge= 0.000 end
    atom CE1 type=CR1E  charge= 0.000 exclude=(CD2) end
    atom HE1 type=HA  charge= 0.000 end
    atom CE2 type=CR1E  charge= 0.000 exclude=(CD1) end
    atom HE2 type=HA  charge= 0.000 end
    atom CZ  type=CY2   charge= 0.265 exclude=(CG) end
    atom OH  type=OHP  charge=-0.625 end
    atom P   type=PP    charge= 0.520 end
    atom O1P type=OP1   charge=-0.720 end
    atom O2P type=OP1   charge=-0.720 end
    atom O3P type=OR3   charge=-0.720 end
    atom C   type=C   charge= 0.500 end
    atom O   type=O   charge=-0.500 end

  bond N   HN
  bond N   CA     bond CA  HA
  bond CA  CB     bond CB  HB1     bond CB  HB2
  bond CB  CG
  bond CG  CD1    bond CD1 HD1
  bond CG  CD2    bond CD2 HD2
  bond CD1 CE1    bond CE1 HE1
  bond CD2 CE2    bond CE2 HE2
  bond CE1 CZ
  bond CE2 CZ
  bond CZ  OH     bond OH  P
  bond P   O1P
  bond P   O2P
  bond P   O3P
  bond CA  C
  bond C   O

  angle CZ OH P
  angle OH P O3P
  angle O3P P O1P
  angle O3P P O2P
  
! chirality
  improper HA  N   C   CB !chirality CA
  improper HB1 HB2 CA CG  !stereo CB

! Hs, OH, and CB around the ring
  improper HD2 CD2 CE2 CZ
  improper HE2 CE2 CZ  CE1
  improper OH  CZ  CE1 CD1
  improper HE1 CE1 CD1 CG
  improper HD1 CD1 CG  CD2
  improper CB  CG  CD2 CE2

! around the ring
  improper CG  CD1 CE1 CZ 
  improper CD1 CE1 CZ  CE2
  improper CE1 CZ  CE2 CD2
  improper CZ  CE2 CD2 CG
  improper CE2 CD2 CG  CD1
  improper CD2 CG  CD1 CE1
  !improper OH P O3P O1P ! chirality or flatness improper   -37.36
     
  dihedral CG  CB  CA  N
  dihedral CD1 CG  CB  CA
  dihedral CE2 CZ  OH  P   
  dihedral CZ  OH  P   O3P
  
  DONO HN   N
  DONO HH   OH
  ACCE OH  " "
  ACCE O    C
  ACCE O1P  P
  ACCE O2P  P
  ACCE O3P  P
  
end




residue TYS
  group
    atom N   type=NH1 charge=-0.570 end
    atom HN  type=H   charge= 0.370 end
    atom CA  type=CH1E  charge= 0.200 end
    atom HA  type=HA  charge= 0.000 end
    atom CB  type=CH2E  charge= 0.000 end
    atom HB1 type=HA  charge= 0.000 end
    atom HB2 type=HA  charge= 0.000 end
    atom CG  type=CY  charge= 0.000 exclude=(CZ) end
    atom CD1 type=CR1E  charge= 0.000 exclude=(CE2) end
    atom HD1 type=HA  charge= 0.000 end
    atom CD2 type=CR1E  charge= 0.000 exclude=(CE1) end
    atom HD2 type=HA  charge= 0.000 end
    atom CE1 type=CR1E  charge= 0.000 exclude=(CD2) end
    atom HE1 type=HA  charge= 0.000 end
    atom CE2 type=CR1E  charge= 0.000 exclude=(CD1) end
    atom HE2 type=HA  charge= 0.000 end
    atom CZ  type=CY2   charge= 0.265 exclude=(CG) end
    atom OH  type=OUF   charge=-0.625 end
    atom S   type=SUF   charge= 0.520 end
    atom O1S type=OUF   charge=-0.720 end
    atom O2S type=OUF   charge=-0.720 end
    atom O3S type=OUF   charge=-0.720 end
    atom C   type=C   charge= 0.500 end
    atom O   type=O   charge=-0.500 end

  bond N   HN
  bond N   CA     bond CA  HA
  bond CA  CB     bond CB  HB1     bond CB  HB2
  bond CB  CG
  bond CG  CD1    bond CD1 HD1
  bond CG  CD2    bond CD2 HD2
  bond CD1 CE1    bond CE1 HE1
  bond CD2 CE2    bond CE2 HE2
  bond CE1 CZ
  bond CE2 CZ
  bond CZ  OH     bond OH  S
  bond S   O1S
  bond S   O2S
  bond S   O3S
  bond CA  C
  bond C   O

  angle CZ OH S
  angle OH S O1S
  angle OH S O2S
  angle OH S O3S
  angle O3S S O1S
  angle O3S S O2S
  angle O2S S O1S
  
! chirality
  improper HA  N   C   CB !chirality CA
  improper HB1 HB2 CA CG  !stereo CB

! Hs, OH, and CB around the ring
  improper HD2 CD2 CE2 CZ
  improper HE2 CE2 CZ  CE1
  improper OH  CZ  CE1 CD1
  improper HE1 CE1 CD1 CG
  improper HD1 CD1 CG  CD2
  improper CB  CG  CD2 CE2

! around the ring
  improper CG  CD1 CE1 CZ 
  improper CD1 CE1 CZ  CE2
  improper CE1 CZ  CE2 CD2
  improper CZ  CE2 CD2 CG
  improper CE2 CD2 CG  CD1
  improper CD2 CG  CD1 CE1
  improper OH P O3P O1P ! chirality improper   -37.36
     
  dihedral CG  CB  CA  N
  dihedral CD1 CG  CB  CA
  dihedral CE2 CZ  OH  S   
  dihedral CZ  OH  S   O3S
  
  DONO HN   N
  DONO HH   OH
  ACCE OH  " "
  ACCE O    C
  ACCE O1S  S
  ACCE O2S  S
  ACCE O3S  S
  
end


residue PTR
  group
    atom N   type=NH1 charge=-0.570 end
    atom HN  type=H   charge= 0.370 end
    atom CA  type=CH1E  charge= 0.200 end
    atom HA  type=HA  charge= 0.000 end
    atom CB  type=CH2E  charge= 0.000 end
    atom HB1 type=HA  charge= 0.000 end
    atom HB2 type=HA  charge= 0.000 end
    atom CG  type=CY  charge= 0.000 exclude=(CZ) end
    atom CD1 type=CR1E  charge= 0.000 exclude=(CE2) end
    atom HD1 type=HA  charge= 0.000 end
    atom CD2 type=CR1E  charge= 0.000 exclude=(CE1) end
    atom HD2 type=HA  charge= 0.000 end
    atom CE1 type=CR1E  charge= 0.000 exclude=(CD2) end
    atom HE1 type=HA  charge= 0.000 end
    atom CE2 type=CR1E  charge= 0.000 exclude=(CD1) end
    atom HE2 type=HA  charge= 0.000 end
    atom CZ  type=CY2   charge= 0.265 exclude=(CG) end
    atom OH  type=OHP  charge=-0.625 end
    atom P   type=PP    charge= 0.520 end
    atom O1P type=OP1   charge=-0.720 end
    atom O2P type=OP1   charge=-0.720 end
    atom O3P type=OR3   charge=-0.720 end
    atom C   type=C   charge= 0.500 end
    atom O   type=O   charge=-0.500 end

  bond N   HN
  bond N   CA     bond CA  HA
  bond CA  CB     bond CB  HB1     bond CB  HB2
  bond CB  CG
  bond CG  CD1    bond CD1 HD1
  bond CG  CD2    bond CD2 HD2
  bond CD1 CE1    bond CE1 HE1
  bond CD2 CE2    bond CE2 HE2
  bond CE1 CZ
  bond CE2 CZ
  bond CZ  OH     bond OH  P
  bond P   O1P
  bond P   O2P
  bond P   O3P
  bond CA  C
  bond C   O

  angle CZ OH P
  angle OH P O3P
  angle O3P P O1P
  angle O3P P O2P
  
! chirality
  improper HA  N   C   CB !chirality CA
  improper HB1 HB2 CA CG  !stereo CB

! Hs, OH, and CB around the ring
  improper HD2 CD2 CE2 CZ
  improper HE2 CE2 CZ  CE1
  improper OH  CZ  CE1 CD1
  improper HE1 CE1 CD1 CG
  improper HD1 CD1 CG  CD2
  improper CB  CG  CD2 CE2

! around the ring
  improper CG  CD1 CE1 CZ 
  improper CD1 CE1 CZ  CE2
  improper CE1 CZ  CE2 CD2
  improper CZ  CE2 CD2 CG
  improper CE2 CD2 CG  CD1
  improper CD2 CG  CD1 CE1
  !improper OH P O3P O1P ! chirality or flatness improper   -37.36
     
  dihedral CG  CB  CA  N
  dihedral CD1 CG  CB  CA
  dihedral CE2 CZ  OH  P   
  dihedral CZ  OH  P   O3P
  
  DONO HN   N
  DONO HH   OH
  ACCE OH  " "
  ACCE O    C
  ACCE O1P  P
  ACCE O2P  P
  ACCE O3P  P
  
end


residue VAL
  group
    atom N    type=NH1 charge=-0.570 end
    atom HN   type=H   charge= 0.370 end
    atom CA   type=CH1E  charge= 0.200 end
    atom HA   type=HA  charge= 0.000 end
    atom CB   type=CH1E  charge= 0.000 end
    atom HB   type=HA  charge= 0.000 end
    atom CG1  type=CH3E  charge= 0.000 end
    atom HG11 type=HA  charge= 0.000 excl = (HG21 HG22 HG23) end
    atom HG12 type=HA  charge= 0.000 excl = (HG21 HG22 HG23) end
    atom HG13 type=HA  charge= 0.000 excl = (HG21 HG22 HG23) end
    atom CG2  type=CH3E  charge=-0.000 end
    atom HG21 type=HA  charge= 0.000 excl = (HG11 HG12 HG13) end
    atom HG22 type=HA  charge= 0.000 excl = (HG11 HG12 HG13) end
    atom HG23 type=HA  charge= 0.000 excl = (HG11 HG12 HG13) end
    atom C    type=C   charge= 0.500 end
    atom O    type=O   charge=-0.500 end

  bond N   HN
  bond N   CA     bond CA  HA
  bond CA  CB     bond CB  HB
  bond CB  CG1    bond CG1 HG11    bond CG1 HG12    bond CG1 HG13
  bond CB  CG2    bond CG2 HG21    bond CG2 HG22    bond CG2 HG23
  bond CA  C
  bond C   O

  improper HA N C CB         !chirality CA
  improper HB   CA   CG1 CG2 !stereo CB
  improper HG11 HG12 CB HG13    !methyl G1
  improper HG21 HG22 CB HG23    !methyl G2

  dihedral CG1 CB  CA  N
  dihedral HG11 CG1 CB  CA   ! UCL methyl stagger 12-MAR-00 
  dihedral HG21 CG2 CB  CA   ! UCL methyl stagger 12-MAR-00 

  DONO HN   N
  ACCE O    C
end




residue CHX  !! ADDED BY MN
  group
    atom N   type=NH1 charge=-0.360 end
    atom HN  type=H   charge= 0.260 end
    atom CA  type=CH1E  charge= 0.000 end
    atom HA  type=HA  charge= 0.100 end
    atom CB  type=CH2E  charge=-0.200 end
    atom HB1 type=HA  charge= 0.100 end
    atom HB2 type=HA  charge= 0.100 end
    atom CG  type=CH1E  charge=-0.200 end
    atom HG  type=HA  charge= 0.100 end
    atom CD1  type=CH2E  charge=-0.200 end
    atom HD11 type=HA  charge= 0.100 end
    atom HD12 type=HA  charge= 0.100 end
    atom CD2  type=CH2E  charge=-0.200 end
    atom HD21 type=HA  charge= 0.100 end
    atom HD22 type=HA  charge= 0.100 end
    atom CE1  type=CH2E  charge=-0.200 end
    atom HE11 type=HA  charge= 0.100 end
    atom HE12 type=HA  charge= 0.100 end
    atom CE2  type=CH2E  charge=-0.200 end
    atom HE21 type=HA  charge= 0.100 end
    atom HE22 type=HA  charge= 0.100 end
    atom CZ  type=CH2E  charge=-0.200 end
    atom HZ1 type=HA  charge= 0.100 end
    atom HZ2 type=HA  charge= 0.100 end
    atom C   type=C   charge= 0.480 end
    atom O   type=O   charge=-0.480 end

  bond N  HN
  bond N  CA     bond CA HA
  bond CA CB     bond CB HB1     bond CB HB2
  bond CB CG     bond CG CD1     bond CG CD2     bond CG HG    
  bond CD1 CE1   bond CD1 HD11    bond CD1 HD12   
  bond CD2 CE2   bond CD2 HD21    bond CD2 HD22
  bond CE1 CZ    bond CE1 HE11    bond CE1 HE12
  bond CE2 CZ    bond CE2 HE21    bond CE2 HE22
  bond CZ HZ1    bond CZ  HZ2
  bond CA C
  bond C  O

  improper HA N C CB          !chirality CA
  improper HB1 HB2 CA CG  !stereo CB
  improper HG CB CD1 CD2      !stereo CG
  improper HD11 HD12 CG CE1      !stereo CD1
  improper HD21 HD22 CG CE2      !stereo CD2
  improper HE11 HE12 CE1 CZ      !stereo CE1
  improper HE11 HE22 CE2 CZ      !stereo CE2
  improper HZ1 HZ2 CE1 CE2  !stereo CZ

  dihedral CG  CB  CA  N
  dihedral CD1  CG  CB  CA

  DONO HN   N
  ACCE O    C
end





residue ACE
  group
    atom CA  type=CH3E charge= 0.000 end
    atom HA1 type=HA charge= 0.000 end
    atom HA2 type=HA charge= 0.000 end
    atom HA3 type=HA charge= 0.000 end
    atom C   type=C  charge= 0.500 end
    atom O   type=O  charge=-0.500 end

  bond C  CA     bond CA HA1     bond CA HA2     bond CA HA3
  bond C  O

  improper HA1 HA2 C HA3  !methyl CA

  ACCE O    C
end




presidue NTER                      ! patch as "NTER - *" to any except PRO
  group
    modify    atom +N   type=NH3 charge=-0.300 end
    delete    atom +HN                        end
    add       atom +HT1 type=HC  charge= 0.330 end
    add       atom +HT2 type=HC  charge= 0.330 end
    add       atom +HT3 type=HC  charge= 0.330 end
    modify    atom +CA           charge= 0.310 end

  add bond +HT1 +N
  add bond +HT2 +N
  add bond +HT3 +N

  add angle +HT1 +N +HT2
  add angle +HT2 +N +HT3
  add angle +HT2 +N +CA
  add angle +HT1 +N +HT3
  add angle +HT1 +N +CA
  add angle +HT3 +N +CA
  add improper +HT1 +HT2 +CA +HT3  !methyl N ???

  add dihedral +C  +CA  +N  +HT1      ! UCL (12-MAR-00)

  ADD DONOr +HT1  +N
  ADD DONOr +HT2  +N
  ADD DONOr +HT3  +N
end


presidue PROP                        ! N-terminal for PRO: "PROP - PRO"
! the charges are guessed from making the residue have charge +1
! and keeping the same charge on N as in NTER (Michael Nilges)
  modify    atom +CD           charge= 0.320 end
  modify    atom +CA           charge= 0.320 end
  modify    atom +N   type=NH3 charge=-0.300 end
  add       atom +HT1 type=HC  charge= 0.330 end
  add       atom +HT2 type=HC  charge= 0.330 end

  add bond +HT1 +N
  add bond +HT2 +N

  add angle +HT1 +N +HT2
  add angle +HT2 +N +CA
  add angle +HT1 +N +CD
  add angle +HT1 +N +CA
  add angle +CD  +N +HT2
  add improper +HT1 +HT2 +CA +CD  !stereo N 
 
  ADD DONOr +HT1  +N
  ADD DONOr +HT2  +N
end
 

presidue CTER               ! C-terminal for all amino acids "* - CTER"
! charge on -C changed from 0.700 to make group -1, Michael Nilges
  group
    modify    atom -CA            charge= 0.100  end
    modify    atom -C             charge= 0.700  end
    modify    atom -O   type=OC   charge=-0.800  end
    add       atom -OXT type=OC   charge=-0.800  end

  add bond -C -OXT

  add angle -CA  -C -OXT
  add angle -O -C -OXT

  add improper -C -CA -OXT -O
 
  add dihedral -N -CA -C -O      ! UCL (12-MAR-00)

  ADD ACCEptor -OXT -C
end


presidue CTN                  ! C-terminal for all, CONH2 at end "* - CTN"
! charges not consistent with rest, Michael Nilges
  group
    modify    atom -C           charge= 0.48 end
    modify    atom -O           charge=-0.48 end
    add       atom -NT type=NH2 charge=-0.52 end
    add       atom -H1 type=H   charge= 0.26 end
    add       atom -H2 type=H   charge= 0.26 end

  add bond -C  -NT
  add bond -NT -H1
  add bond -NT -H2

  add angle -CA -C  -NT
  add angle -O  -C  -NT
  add angle -CA -C  -O
  add angle -C  -NT -H1
  add angle -C  -NT -H2
  add angle -H1 -NT -H2

  add improper -C  -CA -NT -O
  add improper -C  -NT -O  -H1
  add improper -NT -H1 -H2 -C

  add dihedral -N -CA -C -NT      ! UCL (12-MAR-00)

  ADD DONOR  -H1 -NT
  ADD DONOR  -H2 -NT
end


presidue PEPT     ! PEPTide bond link, for all except the  *(-) - (+)PRO link
                  ! "*(-) - PEPT - (+)*:
  add bond -C +N

  add angle -CA -C +N
  add angle -O  -C +N
  add angle -C  +N +CA
  add angle -C  +N +HN

  add improper  -C -CA +N -O                 ! planar -C
  add improper  +N -C +CA +HN                ! planar +N
  add improper -CA -C  +N  +CA               ! angle across peptide plane

! phi/psi related topology UCL 05-JUL-01

  add dihedral  -C +N +CA +C  mult 6
  add dihedral  -C +N +CA +CB mult 6
  add dihedral  -CB -CA -C +N mult 6
  add dihedral  -CB -CA -C -O mult 6         ! corrected from +O 16-Sept-02
end
 

presidue PEPP     ! for  ...*(-) - (+)PRO  link, same as PEPT except
                  ! replacement H by CD and improper +N +CA +CD -C
  add bond -C +N

  add angle -CA -C +N
  add angle -O  -C +N
  add angle -C  +N +CA
  add angle -C  +N +CD

!  ADD DIHEdral  -C +N +CA +C  ! taken out since related to phi MN 18-MAR-02
!  ADD DIHEdral  -N -CA -C +N  ! taken out since equivalent below MN 18-MAR-02
!  ADD DIHEdral  -CA -C +N +CA ! taken out since improper below MN 18-MAR-02

  add improper  -C  -CA +N  -O               ! planar -C
  add improper  +N  -C +CA +CD               ! planar +N
  add improper -CA  -C  +N  +CA              ! angle across peptide plane

! psi related topology N.B. phi is fixed by ring bonding 05-JUL-01

  add dihedral  -CB -CA -C +N mult 6
  add dihedral  -CB -CA -C -O mult 6         ! corrected from +O 16-Sept-02
end


presidue PPGP     ! for  GLY(-) - (+)PRO  link, same as PEPT except
                  ! replacement H by CD and improper +N +CA +CD -C
  add bond -C +N

  add angle -CA -C +N
  add angle -O  -C +N
  add angle -C  +N +CA
  add angle -C  +N +CD

!  ADD DIHEdral  -C +N +CA +C  ! taken out since related to phi MN 18-MAR-02
!  ADD DIHEdral  -N -CA -C +N  ! taken out since equivalent below MN 18-MAR-02
!  ADD DIHEdral  -CA -C +N +CA ! taken out since improper below MN 18-MAR-02

  add improper  -C  -CA +N  -O               ! planar -C
  add improper  +N  -C +CA +CD               ! planar +N
  add improper -CA  -C  +N  +CA              ! angle across peptide plane

end


PRESidue PPGG { for GLY (-) - (+) GLY LINK }

  add bond -C +N

  add angle -CA -C +N
  add angle -O  -C +N
  add angle -C  +N +CA
  add angle -C  +N +HN

  add improper  -C -CA +N -O                 ! planar -C
  add improper  +N -C +CA +HN                ! planar +N
  add improper -CA -C  +N  +CA               ! angle across peptide plane

! phi/psi related topology UCL 05-JUL-01

  add dihedral  -C +N +CA +C  mult 6
end

PRESidue PPG1 { for ...*(-) - (+) GLY LINK }

  add bond -C +N

  add angle -CA -C +N
  add angle -O  -C +N
  add angle -C  +N +CA
  add angle -C  +N +HN

  add improper  -C -CA +N -O                 ! planar -C
  add improper  +N -C +CA +HN                ! planar +N
  add improper -CA -C  +N  +CA               ! angle across peptide plane

! phi/psi related topology UCL 05-JUL-01

  add dihedral  -C +N +CA +C  mult 6
  add dihedral  -CB -CA -C +N mult 6
  add dihedral  -CB -CA -C -O mult 6          ! corrected from +O 16-Sept-02

end


PRESidue PPG2 { for ... GLY(-) - (+) * LINK }
  add bond -C +N

  add angle -CA -C +N
  add angle -O  -C +N
  add angle -C  +N +CA
  add angle -C  +N +HN

  add improper  -C -CA +N -O                  ! planar -C
  add improper  +N -C +CA +HN                 ! planar +N
  add improper -CA -C  +N  +CA                ! angle across peptide plane

! phi/psi related topology UCL 05-JUL-01

  add dihedral  -C +N +CA +C  mult 6
  add dihedral  -C +N +CA +CB mult 6
end



presidue DISU                ! disulfide bridge  ...CYS - DISU - CYS...
  group
    delete    atom 1HG               end
    modify    atom 1CB              charge= 0.300 end
    MODIfy    ATOM 1SG  TYPE=S      charge=-0.300 end
  group
    delete    atom 2HG               end
    modify    atom 2CB              charge= 0.300 end
    MODIfy    ATOM 2SG  TYPE=S      charge=-0.300 end

  add bond 1SG 2SG

  add angle 1CB 1SG 2SG
  add angle 1SG 2SG 2CB

  add dihedral 1CB 1SG 2SG 2CB mult 6   ! UCL modified 12-MAR-00 & 07-JUL-01
end


presidue DISN                ! disulfide bridge  ...CYS - DISU - CYS...
                             ! w/o the actual bond
  group
    delete    atom 1HG               end
    modify    atom 1CB              charge= 0.300 end
    MODIfy    ATOM 1SG  TYPE=S      charge=-0.300 end
  group
    delete    atom 2HG               end
    modify    atom 2CB              charge= 0.300 end
    MODIfy    ATOM 2SG  TYPE=S      charge=-0.300 end
end

presidue CYNH                ! deprotonated CYS

  group
    delete    atom 1HG               end
    modify    atom 1CB              charge= 0.000 end
    MODIfy    ATOM 1SG  TYPE=S      charge=-0.500 end
end


presidue LTOD                        ! change from L to D amino acid
  delete improper HA N C CB
  add    improper HA C N CB
end

presidue CISP                        ! change from trans to cis peptide bond
  modify atom C type=CCIS end
end
presidue CIPP                        ! change from trans to cis peptide bond. not necessary to have separate patch
  modify atom C type=CCIS end
end


!--------------------------------------------------------------------------

PRESidue HISE   ! Patch to change doubly protonated HIS to singly protonated histidine (HE2)
                ! has to be patched as REFErence=NIL=<selection>
  DELETE DONOR  ND1 HD1
  MODIFY ATOM  CB   TYPE=CH2E    CHARge= 0.000  END
  MODIFY ATOM  CG   TYPE=C5      CHARge= 0.130  END !#
  MODIFY ATOM  ND1  TYPE=NR      CHARge=-0.570  END !#
  MODIFY ATOM  CE1  TYPE=CRH     CHARge= 0.410  END !#
  MODIFY ATOM  CD2  TYPE=CR1E    CHARge= 0.100  END
  MODIFY ATOM  NE2  TYPE=NH1     CHARge=-0.570  END !#
  MODIFY ATOM  HE2  TYPE=H       CHARge= 0.420  END !#
  DELETE ATOM  HD1                              END

  ADD ACCEPTOR  ND1 " "
END {HISE}

!--------------------------------------------------------------------------

PRES HISD   ! Patch to change doubly protonated HIS to singly protonated histidine (HD1)
            ! has to be patched as REFErence=NIL=<selection>
  DELETE DONOR HE2 NE2
  MODIFY ATOM  CB   TYPE=CH2E    CHARge= 0.000  END
  MODIFY ATOM  CG   TYPE=C5      CHARge= 0.130  END !#
  MODIFY ATOM  ND1  TYPE=NH1     CHARge=-0.570  END  !#
  MODIFY ATOM  HD1  TYPE=H       CHARge= 0.420  END  !#
  MODIFY ATOM  CD2  TYPE=CR1E    CHARge= 0.100  END  !#
  MODIFY ATOM  NE2  TYPE=NR      CHARge=-0.490  END  !#
  MODIFY ATOM  CE1  TYPE=CRH     CHARge= 0.410  END  !#
  DELETE ATOM  HE2                              END

  ADD ACCEPTOR NE2 " "

END {HISD}


PRESidue DCA2   ! Patch to add a single bond from an ASP COO- group to a calcium ion

  ADD BOND 1OD1 2CA+2

END


PRESidue ECA2   ! Patch to add a single bond from a GLU COO- group to a calcium ion

  ADD BOND 1OE1 2CA+2

END
  

set message=$old_message echo=$old_echo end
