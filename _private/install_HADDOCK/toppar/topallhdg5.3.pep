REMARKS  TOPH19.pep -MACRO for protein sequence
SET ECHO=FALSE END

! this is a macro to define standard protein peptide bonds
! and termini to generate a protein sequence.
! it should be added as @topallhdg5.3.pep in the SEGMent SEQUence
! level.
! 
! Author: Axel Brunger, 19-JAN-84
! modified for topallhdg5.3: Michael Nilges, 21-MAR-02
! modified for IA1 & R1A: Morgan Bye, 26-MAR-13

checkversion 1.3

link  PPGP head - GLY tail + PRO end
link  PPGP head - GLY tail + HYP end
link  PPGG head - GLY tail + GLY end 
link  PEPP head - *   tail + PRO end
link  PEPP head - *   tail + HYP end
link  PPG2 head - GLY tail + *   end
link  PPG1 head - *   tail + GLY end
link  PEPT head - *   tail + *   end

first IONS            tail + NA1 end
first IONS            tail + CL1 end
first IONS            tail + CA2 end
first IONS            tail + CU1 end
first IONS            tail + CU2 end
first IONS            tail + CU3 end
first IONS            tail + MG2 end
first IONS            tail + FE2 end
first IONS            tail + ZN2 end
first IONS            tail + SO4 end
first IONS            tail + PO4 end
first IONS            tail + HEB end
first IONS            tail + HEC end
first IONS            tail + TIP3 end
first IONS            tail + GTP end
first IONS            tail + DRG end
first PROP            tail + PRO end
first PROP            tail + HYP end
first NTER            tail + ALA end
first NTER            tail + ARG end
first NTER            tail + ASN end
first NTER            tail + ASP end
first NTER            tail + CYS end
first NTER            tail + CYM end
first NTER            tail + CSP end
first NTER            tail + CYF end
first NTER            tail + CYM end
first NTER            tail + GLN end
first NTER            tail + GLU end
first NTER            tail + GLY end
first NTER            tail + HIS end
first NTER            tail + NEP end
first NTER            tail + IA1 end
first NTER            tail + ILE end
first NTER            tail + LEU end
first NTER            tail + LYS end
first NTER            tail + ALY end
first NTER            tail + M3L end
first NTER            tail + MLY end
first NTER            tail + MLZ end
first NTER            tail + MET end
first NTER            tail + PHE end
first NTER            tail + R1A end
first NTER            tail + SER end
first NTER            tail + SEP end
first NTER            tail + THR end
first NTER            tail + THP end
first NTER            tail + TOP end
first NTER            tail + TRP end
first NTER            tail + TYR end
first NTER            tail + TYP end
first NTER            tail + TYS end
first NTER            tail + TPR end
first NTER            tail + TYS end
first NTER            tail + VAL end
first ACET            tail + ACE end

last  IONS head - NA1            end
last  IONS head - CL1            end
last  IONS head - CA2            end
last  IONS head - CU1            end
last  IONS head - CU2            end
last  IONS head - CU3            end
last  IONS head - MG2            end
last  IONS head - FE2            end
last  IONS head - ZN2            end
last  IONS head - SO4            end
last  IONS head - PO4            end
last  IONS head - HEB            end
last  IONS head - HEC            end
last  IONS head - TIP3           end
last  IONS head - GTP            end
last  IONS head - DRG            end
last  CTER head - ALA end
last  CTER head - ARG end
last  CTER head - ASN end
last  CTER head - ASP end
last  CTER head - CYS end
last  CTER head - CYM end
last  CTER head - CYF end
last  CTER head - CSP end
last  CTER head - CYM end
last  CTER head - GLN end
last  CTER head - GLU end
last  CTER head - GLY end
last  CTER head - HIS end
last  CTER head - NEP end
last  CTER head - IA1 end
last  CTER head - ILE end
last  CTER head - LEU end
last  CTER head - LYS end
last  CTER head - ALY end
last  CTER head - M3L end
last  CTER head - MLY end
last  CTER head - MLZ end
last  CTER head - MET end
last  CTER head - PHE end
last  CTER head - PRO end
last  CTER head - HYP end
last  CTER head - R1A end
last  CTER head - SER end
last  CTER head - SEP end
last  CTER head - THR end
last  CTER head - THP end
last  CTER head - TOP end
last  CTER head - TPR end
last  CTER head - TRP end
last  CTER head - TYR end
last  CTER head - TYP end
last  CTER head - TYS end
last  CTER head - VAL end


SET ECHO=TRUE END
