remarks 
remarks this is a macro to define standard protein peptide bonds
remarks and termini to generate a protein sequence.
 
set message ? end eval ($old_message=$result) set echo ? end eval ($old_echo=$result)
set message=off echo=off end

checkversion 1.3

link  ppgp head - GLY tail + PRO end
link  ppgp head - GLY tail + HYP end
link  ppgg head - GLY tail + GLY end

{ special link to GLY}
link ppg1 head - ACE tail + GLY end
link ppg1 head - ALA tail + GLY end
link ppg1 head - CYS tail + GLY end
link ppg1 head - CYM tail + GLY end
link ppg1 head - CYF tail + GLY end
link ppg1 head - CSP tail + GLY end
link ppg1 head - ASP tail + GLY end
link ppg1 head - ASH tail + GLY end
link ppg1 head - GLU tail + GLY end
link ppg1 head - GLH tail + GLY end
link ppg1 head - PHE tail + GLY end
link ppg1 head - HIS tail + GLY end
link ppg1 head - NEP tail + GLY end
link ppg1 head - ILE tail + GLY end
link ppg1 head - LYS tail + GLY end
link ppg1 head - ALY tail + GLY end
link ppg1 head - MLY tail + GLY end
link ppg1 head - MLZ tail + GLY end
link ppg1 head - M3L tail + GLY end
link ppg1 head - LEU tail + GLY end
link ppg1 head - MET tail + GLY end
link ppg1 head - ASN tail + GLY end
link ppg1 head - PRO tail + GLY end
link ppg1 head - GLN tail + GLY end
link ppg1 head - ARG tail + GLY end
link ppg1 head - SER tail + GLY end
link ppg1 head - SEP tail + GLY end
link ppg1 head - THR tail + GLY end
link ppg1 head - THP tail + GLY end
link ppg1 head - TOP tail + GLY end
link ppg1 head - VAL tail + GLY end
link ppg1 head - TRP tail + GLY end
link ppg1 head - TYR tail + GLY end
link ppg1 head - TYP tail + GLY end
link ppg1 head - TYS tail + GLY end
link ppg1 head - HYP tail + GLY end
link ppg1 head - R1A tail + GLY end
link ppg1 head - IA1 tail + GLY end
 
{ special link from GLY}
link ppg2 head - GLY tail + ALA end
link ppg2 head - GLY tail + CYS end
link ppg2 head - GLY tail + CYM end
link ppg2 head - GLY tail + CYF end
link ppg2 head - GLY tail + CSP end
link ppg2 head - GLY tail + ASP end
link ppg2 head - GLY tail + ASH end
link ppg2 head - GLY tail + GLU end
link ppg2 head - GLY tail + GLH end
link ppg2 head - GLY tail + PHE end
link ppg2 head - GLY tail + HIS end
link ppg2 head - GLY tail + NEP end
link ppg2 head - GLY tail + ILE end
link ppg2 head - GLY tail + LYS end
link ppg2 head - GLY tail + ALY end
link ppg2 head - GLY tail + MLY end
link ppg2 head - GLY tail + MLZ end
link ppg2 head - GLY tail + M3L end
link ppg2 head - GLY tail + LEU end
link ppg2 head - GLY tail + MET end
link ppg2 head - GLY tail + ASN end
link ppg2 head - GLY tail + PRO end
link ppg2 head - GLY tail + GLN end
link ppg2 head - GLY tail + ARG end
link ppg2 head - GLY tail + SER end
link ppg2 head - GLY tail + SEP end
link ppg2 head - GLY tail + THR end
link ppg2 head - GLY tail + THP end
link ppg2 head - GLY tail + TOP end
link ppg2 head - GLY tail + VAL end
link ppg2 head - GLY tail + TRP end
link ppg2 head - GLY tail + TYR end
link ppg2 head - GLY tail + TYP end
link ppg2 head - GLY tail + TYS end
link ppg2 head - GLY tail + HYP end
link ppg2 head - GLY tail + CTN end
link ppg2 head - GLY tail + R1A end
link ppg2 head - CLY tail + IA1 end
 
{ special link to PRO and HYP}
link pepp head - ACE tail + PRO end
link pepp head - ALA tail + PRO end
link pepp head - CYS tail + PRO end
link pepp head - CYM tail + PRO end
link pepp head - CYF tail + PRO end
link pepp head - CSP tail + PRO end
link pepp head - ASP tail + PRO end
link pepp head - ASH tail + PRO end
link pepp head - GLU tail + PRO end
link pepp head - GLH tail + PRO end
link pepp head - PHE tail + PRO end
link pepp head - HIS tail + PRO end
link pepp head - NEP tail + PRO end
link pepp head - ILE tail + PRO end
link pepp head - LYS tail + PRO end
link pepp head - ALY tail + PRO end
link pepp head - MLY tail + PRO end
link pepp head - MLZ tail + PRO end
link pepp head - M3L tail + PRO end
link pepp head - LEU tail + PRO end
link pepp head - MET tail + PRO end
link pepp head - ASN tail + PRO end
link pepp head - PRO tail + PRO end
link pepp head - GLN tail + PRO end
link pepp head - ARG tail + PRO end
link pepp head - SER tail + PRO end
link pepp head - SEP tail + PRO end
link pepp head - THR tail + PRO end
link pepp head - THP tail + PRO end
link pepp head - TOP tail + PRO end
link pepp head - VAL tail + PRO end
link pepp head - TRP tail + PRO end
link pepp head - TYR tail + PRO end
link pepp head - TYP tail + PRO end
link pepp head - TYS tail + PRO end
link pepp head - HYP tail + PRO end
link pepp head - R1A tail + PRO end
link pepp head - IA1 tail + PRO end
 
{ special link to PRO and HYP}
link pepp head - ACE tail + HYP end
link pepp head - ALA tail + HYP end
link pepp head - CYS tail + HYP end
link pepp head - CYM tail + HYP end
link pepp head - CYF tail + HYP end
link pepp head - CSP tail + HYP end
link pepp head - ASP tail + HYP end
link pepp head - ASH tail + HYP end
link pepp head - GLU tail + HYP end
link pepp head - GLH tail + HYP end
link pepp head - PHE tail + HYP end
link pepp head - HIS tail + HYP end
link pepp head - NEP tail + HYP end
link pepp head - ILE tail + HYP end
link pepp head - LYS tail + HYP end
link pepp head - ALY tail + HYP end
link pepp head - MLY tail + HYP end
link pepp head - MLZ tail + HYP end
link pepp head - M3L tail + HYP end
link pepp head - LEU tail + HYP end
link pepp head - MET tail + HYP end
link pepp head - ASN tail + HYP end
link pepp head - PRO tail + HYP end
link pepp head - GLN tail + HYP end
link pepp head - ARG tail + HYP end
link pepp head - SER tail + HYP end
link pepp head - SEP tail + HYP end
link pepp head - THR tail + HYP end
link pepp head - THP tail + HYP end
link pepp head - TOP tail + HYP end
link pepp head - VAL tail + HYP end
link pepp head - TRP tail + HYP end
link pepp head - TYR tail + HYP end
link pepp head - TYP tail + HYP end
link pepp head - TYS tail + HYP end
link pepp head - HYP tail + HYP end
link pepp head - R1A tail + HYP end
link pepp head - IA1 tail + HYP end
 
{ peptide linkages for ACE }
link pept head - ACE tail + ALA end
link pept head - ACE tail + CYS end
link pept head - ACE tail + CYM end
link pept head - ACE tail + CYF end
link pept head - ACE tail + CSP end
link pept head - ACE tail + ASP end
link pept head - ACE tail + ASH end
link pept head - ACE tail + GLU end
link pept head - ACE tail + GLH end
link pept head - ACE tail + PHE end
link pept head - ACE tail + HIS end
link pept head - ACE tail + NEP end
link pept head - ACE tail + ILE end
link pept head - ACE tail + LYS end
link pept head - ACE tail + ALY end
link pept head - ACE tail + MLY end
link pept head - ACE tail + MLZ end
link pept head - ACE tail + M3L end
link pept head - ACE tail + LEU end
link pept head - ACE tail + MET end
link pept head - ACE tail + ASN end
link pept head - ACE tail + PRO end
link pept head - ACE tail + GLN end
link pept head - ACE tail + ARG end
link pept head - ACE tail + SER end
link pept head - ACE tail + SEP end
link pept head - ACE tail + THR end
link pept head - ACE tail + THP end
link pept head - ACE tail + TOP end
link pept head - ACE tail + VAL end
link pept head - ACE tail + TRP end
link pept head - ACE tail + TYR end
link pept head - ACE tail + TYP end
link pept head - ACE tail + TYS end
link pept head - ACE tail + HYP end
link pept head - ACE tail + CTN end
link pept head - ACE tail + R1A end
link pept head - ACE tail + IA1 end
 
{ peptide linkages for ALA }
link pept head - ALA tail + ALA end
link pept head - ALA tail + CYS end
link pept head - ALA tail + CYM end
link pept head - ALA tail + CYF end
link pept head - ALA tail + CSP end
link pept head - ALA tail + ASP end
link pept head - ALA tail + ASH end
link pept head - ALA tail + GLU end
link pept head - ALA tail + GLH end
link pept head - ALA tail + PHE end
link pept head - ALA tail + HIS end
link pept head - ALA tail + NEP end
link pept head - ALA tail + ILE end
link pept head - ALA tail + LYS end
link pept head - ALA tail + ALY end
link pept head - ALA tail + MLY end
link pept head - ALA tail + MLZ end
link pept head - ALA tail + M3L end
link pept head - ALA tail + LEU end
link pept head - ALA tail + MET end
link pept head - ALA tail + ASN end
link pept head - ALA tail + PRO end
link pept head - ALA tail + GLN end
link pept head - ALA tail + ARG end
link pept head - ALA tail + SER end
link pept head - ALA tail + SEP end
link pept head - ALA tail + THR end
link pept head - ALA tail + THP end
link pept head - ALA tail + TOP end
link pept head - ALA tail + VAL end
link pept head - ALA tail + TRP end
link pept head - ALA tail + TYR end
link pept head - ALA tail + TYP end
link pept head - ALA tail + TYS end
link pept head - ALA tail + HYP end
link pept head - ALA tail + CTN end
link pept head - ALA tail + R1A end
link pept head - ALA tail + IA1 end
 
{ peptide linkages for CYS }
link pept head - CYS tail + ALA end
link pept head - CYS tail + CYS end
link pept head - CYS tail + CYM end
link pept head - CYS tail + CYF end
link pept head - CYS tail + CSP end
link pept head - CYS tail + ASP end
link pept head - CYS tail + ASH end
link pept head - CYS tail + GLU end
link pept head - CYS tail + GLH end
link pept head - CYS tail + PHE end
link pept head - CYS tail + HIS end
link pept head - CYS tail + NEP end
link pept head - CYS tail + ILE end
link pept head - CYS tail + LYS end
link pept head - CYS tail + ALY end
link pept head - CYS tail + MLY end
link pept head - CYS tail + MLZ end
link pept head - CYS tail + M3L end
link pept head - CYS tail + LEU end
link pept head - CYS tail + MET end
link pept head - CYS tail + ASN end
link pept head - CYS tail + PRO end
link pept head - CYS tail + GLN end
link pept head - CYS tail + ARG end
link pept head - CYS tail + SER end
link pept head - CYS tail + SEP end
link pept head - CYS tail + THR end
link pept head - CYS tail + THP end
link pept head - CYS tail + TOP end
link pept head - CYS tail + VAL end
link pept head - CYS tail + TRP end
link pept head - CYS tail + TYR end
link pept head - CYS tail + TYP end
link pept head - CYS tail + TYS end
link pept head - CYS tail + HYP end
link pept head - CYS tail + CTN end
link pept head - CYS tail + R1A end
link pept head - CYS tail + IA1 end
 
{ peptide linkages for CYM }
link pept head - CYM tail + ALA end
link pept head - CYM tail + CYS end
link pept head - CYM tail + CYM end
link pept head - CYM tail + CYF end
link pept head - CYM tail + CSP end
link pept head - CYM tail + ASP end
link pept head - CYM tail + ASH end
link pept head - CYM tail + GLU end
link pept head - CYM tail + GLH end
link pept head - CYM tail + PHE end
link pept head - CYM tail + HIS end
link pept head - CYM tail + NEP end
link pept head - CYM tail + ILE end
link pept head - CYM tail + LYS end
link pept head - CYM tail + ALY end
link pept head - CYM tail + MLY end
link pept head - CYM tail + MLZ end
link pept head - CYM tail + M3L end
link pept head - CYM tail + LEU end
link pept head - CYM tail + MET end
link pept head - CYM tail + ASN end
link pept head - CYM tail + PRO end
link pept head - CYM tail + GLN end
link pept head - CYM tail + ARG end
link pept head - CYM tail + SER end
link pept head - CYM tail + SEP end
link pept head - CYM tail + THR end
link pept head - CYM tail + THP end
link pept head - CYM tail + TOP end
link pept head - CYM tail + VAL end
link pept head - CYM tail + TRP end
link pept head - CYM tail + TYR end
link pept head - CYM tail + TYP end
link pept head - CYM tail + TYS end
link pept head - CYM tail + HYP end
link pept head - CYM tail + CTN end
 
{ peptide linkages for CYF }
link pept head - CYF tail + ALA end
link pept head - CYF tail + CYS end
link pept head - CYF tail + CYM end
link pept head - CYF tail + CYF end
link pept head - CYF tail + CSP end
link pept head - CYF tail + ASP end
link pept head - CYF tail + ASH end
link pept head - CYF tail + GLU end
link pept head - CYF tail + GLH end
link pept head - CYF tail + PHE end
link pept head - CYF tail + HIS end
link pept head - CYF tail + NEP end
link pept head - CYF tail + ILE end
link pept head - CYF tail + LYS end
link pept head - CYF tail + ALY end
link pept head - CYF tail + MLY end
link pept head - CYF tail + MLZ end
link pept head - CYF tail + M3L end
link pept head - CYF tail + LEU end
link pept head - CYF tail + MET end
link pept head - CYF tail + ASN end
link pept head - CYF tail + PRO end
link pept head - CYF tail + GLN end
link pept head - CYF tail + ARG end
link pept head - CYF tail + SER end
link pept head - CYF tail + SEP end
link pept head - CYF tail + THR end
link pept head - CYF tail + THP end
link pept head - CYF tail + TOP end
link pept head - CYF tail + VAL end
link pept head - CYF tail + TRP end
link pept head - CYF tail + TYR end
link pept head - CYF tail + TYP end
link pept head - CYF tail + TYS end
link pept head - CYF tail + HYP end
link pept head - CYF tail + CTN end
link pept head - CYF tail + R1A end
link pept head - CYF tail + IA1 end
 
{ peptide linkages for CSP }
link pept head - CSP tail + ALA end
link pept head - CSP tail + CYS end
link pept head - CSP tail + CYM end
link pept head - CSP tail + CYF end
link pept head - CSP tail + CSP end
link pept head - CSP tail + ASP end
link pept head - CSP tail + ASH end
link pept head - CSP tail + GLU end
link pept head - CSP tail + GLH end
link pept head - CSP tail + PHE end
link pept head - CSP tail + HIS end
link pept head - CSP tail + NEP end
link pept head - CSP tail + ILE end
link pept head - CSP tail + LYS end
link pept head - CSP tail + ALY end
link pept head - CSP tail + MLY end
link pept head - CSP tail + MLZ end
link pept head - CSP tail + M3L end
link pept head - CSP tail + LEU end
link pept head - CSP tail + MET end
link pept head - CSP tail + ASN end
link pept head - CSP tail + PRO end
link pept head - CSP tail + GLN end
link pept head - CSP tail + ARG end
link pept head - CSP tail + SER end
link pept head - CSP tail + SEP end
link pept head - CSP tail + THR end
link pept head - CSP tail + THP end
link pept head - CSP tail + TOP end
link pept head - CSP tail + VAL end
link pept head - CSP tail + TRP end
link pept head - CSP tail + TYR end
link pept head - CSP tail + TYP end
link pept head - CSP tail + TYS end
link pept head - CSP tail + HYP end
link pept head - CSP tail + CTN end
link pept head - CSP tail + R1A end
link pept head - CSP tail + IA1 end
 
{ peptide linkages for ASP }
link pept head - ASP tail + ALA end
link pept head - ASP tail + CYS end
link pept head - ASP tail + CYM end
link pept head - ASP tail + CYF end
link pept head - ASP tail + CSP end
link pept head - ASP tail + ASP end
link pept head - ASP tail + ASH end
link pept head - ASP tail + GLU end
link pept head - ASP tail + GLH end
link pept head - ASP tail + PHE end
link pept head - ASP tail + HIS end
link pept head - ASP tail + NEP end
link pept head - ASP tail + ILE end
link pept head - ASP tail + LYS end
link pept head - ASP tail + ALY end
link pept head - ASP tail + MLY end
link pept head - ASP tail + MLZ end
link pept head - ASP tail + M3L end
link pept head - ASP tail + LEU end
link pept head - ASP tail + MET end
link pept head - ASP tail + ASN end
link pept head - ASP tail + PRO end
link pept head - ASP tail + GLN end
link pept head - ASP tail + ARG end
link pept head - ASP tail + SER end
link pept head - ASP tail + SEP end
link pept head - ASP tail + THR end
link pept head - ASP tail + THP end
link pept head - ASP tail + TOP end
link pept head - ASP tail + VAL end
link pept head - ASP tail + TRP end
link pept head - ASP tail + TYR end
link pept head - ASP tail + TYP end
link pept head - ASP tail + TYS end
link pept head - ASP tail + HYP end
link pept head - ASP tail + CTN end
link pept head - ASP tail + R1A end
link pept head - ASP tail + IA1 end
 
{ peptide linkages for ASH }
link pept head - ASH tail + ALA end
link pept head - ASH tail + CYS end
link pept head - ASH tail + CYM end
link pept head - ASH tail + CYF end
link pept head - ASH tail + CSP end
link pept head - ASH tail + ASP end
link pept head - ASH tail + ASH end
link pept head - ASH tail + GLU end
link pept head - ASH tail + GLH end
link pept head - ASH tail + PHE end
link pept head - ASH tail + HIS end
link pept head - ASH tail + NEP end
link pept head - ASH tail + ILE end
link pept head - ASH tail + LYS end
link pept head - ASH tail + ALY end
link pept head - ASH tail + MLY end
link pept head - ASH tail + MLZ end
link pept head - ASH tail + M3L end
link pept head - ASH tail + LEU end
link pept head - ASH tail + MET end
link pept head - ASH tail + ASN end
link pept head - ASH tail + PRO end
link pept head - ASH tail + GLN end
link pept head - ASH tail + ARG end
link pept head - ASH tail + SER end
link pept head - ASH tail + SEP end
link pept head - ASH tail + THR end
link pept head - ASH tail + THP end
link pept head - ASH tail + TOP end
link pept head - ASH tail + VAL end
link pept head - ASH tail + TRP end
link pept head - ASH tail + TYR end
link pept head - ASH tail + TYP end
link pept head - ASH tail + TYS end
link pept head - ASH tail + HYP end
link pept head - ASH tail + CTN end
link pept head - ASH tail + R1A end
link pept head - ASH tail + IA1 end
 
{ peptide linkages for GLU }
link pept head - GLU tail + ALA end
link pept head - GLU tail + CYS end
link pept head - GLU tail + CYM end
link pept head - GLU tail + CYF end
link pept head - GLU tail + CSP end
link pept head - GLU tail + ASP end
link pept head - GLU tail + ASH end
link pept head - GLU tail + GLU end
link pept head - GLU tail + GLH end
link pept head - GLU tail + PHE end
link pept head - GLU tail + HIS end
link pept head - GLU tail + NEP end
link pept head - GLU tail + ILE end
link pept head - GLU tail + LYS end
link pept head - GLU tail + ALY end
link pept head - GLU tail + MLY end
link pept head - GLU tail + MLZ end
link pept head - GLU tail + M3L end
link pept head - GLU tail + LEU end
link pept head - GLU tail + MET end
link pept head - GLU tail + ASN end
link pept head - GLU tail + PRO end
link pept head - GLU tail + GLN end
link pept head - GLU tail + ARG end
link pept head - GLU tail + SER end
link pept head - GLU tail + SEP end
link pept head - GLU tail + THR end
link pept head - GLU tail + THP end
link pept head - GLU tail + TOP end
link pept head - GLU tail + VAL end
link pept head - GLU tail + TRP end
link pept head - GLU tail + TYR end
link pept head - GLU tail + TYP end
link pept head - GLU tail + TYS end
link pept head - GLU tail + HYP end
link pept head - GLU tail + CTN end
link pept head - GLU tail + R1A end
link pept head - GLU tail + IA1 end
 
{ peptide linkages for GLH }
link pept head - GLH tail + ALA end
link pept head - GLH tail + CYS end
link pept head - GLH tail + CYM end
link pept head - GLH tail + CYF end
link pept head - GLH tail + CSP end
link pept head - GLH tail + ASP end
link pept head - GLH tail + ASH end
link pept head - GLH tail + GLU end
link pept head - GLH tail + GLH end
link pept head - GLH tail + PHE end
link pept head - GLH tail + HIS end
link pept head - GLH tail + NEP end
link pept head - GLH tail + ILE end
link pept head - GLH tail + LYS end
link pept head - GLH tail + ALY end
link pept head - GLH tail + MLY end
link pept head - GLH tail + MLZ end
link pept head - GLH tail + M3L end
link pept head - GLH tail + LEU end
link pept head - GLH tail + MET end
link pept head - GLH tail + ASN end
link pept head - GLH tail + PRO end
link pept head - GLH tail + GLN end
link pept head - GLH tail + ARG end
link pept head - GLH tail + SER end
link pept head - GLH tail + SEP end
link pept head - GLH tail + THR end
link pept head - GLH tail + THP end
link pept head - GLH tail + TOP end
link pept head - GLH tail + VAL end
link pept head - GLH tail + TRP end
link pept head - GLH tail + TYR end
link pept head - GLH tail + TYP end
link pept head - GLH tail + TYS end
link pept head - GLH tail + HYP end
link pept head - GLH tail + CTN end
link pept head - GLH tail + R1A end
link pept head - GLH tail + IA1 end
 
{ peptide linkages for PHE }
link pept head - PHE tail + ALA end
link pept head - PHE tail + CYS end
link pept head - PHE tail + CYM end
link pept head - PHE tail + CYF end
link pept head - PHE tail + CSP end
link pept head - PHE tail + ASP end
link pept head - PHE tail + ASH end
link pept head - PHE tail + GLU end
link pept head - PHE tail + GLH end
link pept head - PHE tail + PHE end
link pept head - PHE tail + HIS end
link pept head - PHE tail + NEP end
link pept head - PHE tail + ILE end
link pept head - PHE tail + LYS end
link pept head - PHE tail + ALY end
link pept head - PHE tail + MLY end
link pept head - PHE tail + MLZ end
link pept head - PHE tail + M3L end
link pept head - PHE tail + LEU end
link pept head - PHE tail + MET end
link pept head - PHE tail + ASN end
link pept head - PHE tail + PRO end
link pept head - PHE tail + GLN end
link pept head - PHE tail + ARG end
link pept head - PHE tail + SER end
link pept head - PHE tail + SEP end
link pept head - PHE tail + THR end
link pept head - PHE tail + THP end
link pept head - PHE tail + TOP end
link pept head - PHE tail + VAL end
link pept head - PHE tail + TRP end
link pept head - PHE tail + TYR end
link pept head - PHE tail + TYP end
link pept head - PHE tail + TYS end
link pept head - PHE tail + HYP end
link pept head - PHE tail + CTN end
link pept head - PHE tail + R1A end
link pept head - PHE tail + IA1 end
 
{ peptide linkages for HIS }
link pept head - HIS tail + ALA end
link pept head - HIS tail + CYS end
link pept head - HIS tail + CYM end
link pept head - HIS tail + CYF end
link pept head - HIS tail + CSP end
link pept head - HIS tail + ASP end
link pept head - HIS tail + ASH end
link pept head - HIS tail + GLU end
link pept head - HIS tail + GLH end
link pept head - HIS tail + PHE end
link pept head - HIS tail + HIS end
link pept head - HIS tail + NEP end
link pept head - HIS tail + ILE end
link pept head - HIS tail + LYS end
link pept head - HIS tail + ALY end
link pept head - HIS tail + MLY end
link pept head - HIS tail + MLZ end
link pept head - HIS tail + M3L end
link pept head - HIS tail + LEU end
link pept head - HIS tail + MET end
link pept head - HIS tail + ASN end
link pept head - HIS tail + PRO end
link pept head - HIS tail + GLN end
link pept head - HIS tail + ARG end
link pept head - HIS tail + SER end
link pept head - HIS tail + SEP end
link pept head - HIS tail + THR end
link pept head - HIS tail + THP end
link pept head - HIS tail + TOP end
link pept head - HIS tail + VAL end
link pept head - HIS tail + TRP end
link pept head - HIS tail + TYR end
link pept head - HIS tail + TYP end
link pept head - HIS tail + TYS end
link pept head - HIS tail + HYP end
link pept head - HIS tail + CTN end
link pept head - HIS tail + R1A end
link pept head - HIS tail + IA1 end
 
{ peptide linkages for NEP }
link pept head - NEP tail + ALA end
link pept head - NEP tail + CYS end
link pept head - NEP tail + CYM end
link pept head - NEP tail + CYF end
link pept head - NEP tail + CSP end
link pept head - NEP tail + ASP end
link pept head - NEP tail + ASH end
link pept head - NEP tail + GLU end
link pept head - NEP tail + GLH end
link pept head - NEP tail + PHE end
link pept head - NEP tail + HIS end
link pept head - NEP tail + NEP end
link pept head - NEP tail + ILE end
link pept head - NEP tail + LYS end
link pept head - NEP tail + ALY end
link pept head - NEP tail + MLY end
link pept head - NEP tail + MLZ end
link pept head - NEP tail + M3L end
link pept head - NEP tail + LEU end
link pept head - NEP tail + MET end
link pept head - NEP tail + ASN end
link pept head - NEP tail + PRO end
link pept head - NEP tail + GLN end
link pept head - NEP tail + ARG end
link pept head - NEP tail + SER end
link pept head - NEP tail + SEP end
link pept head - NEP tail + THR end
link pept head - NEP tail + THP end
link pept head - NEP tail + TOP end
link pept head - NEP tail + VAL end
link pept head - NEP tail + TRP end
link pept head - NEP tail + TYR end
link pept head - NEP tail + TYP end
link pept head - NEP tail + TYS end
link pept head - NEP tail + HYP end
link pept head - NEP tail + CTN end
link pept head - NEP tail + R1A end
link pept head - NEP tail + IA1 end
 
{ peptide linkages for ILE }
link pept head - ILE tail + ALA end
link pept head - ILE tail + CYS end
link pept head - ILE tail + CYM end
link pept head - ILE tail + CYF end
link pept head - ILE tail + CSP end
link pept head - ILE tail + ASP end
link pept head - ILE tail + ASH end
link pept head - ILE tail + GLU end
link pept head - ILE tail + GLH end
link pept head - ILE tail + PHE end
link pept head - ILE tail + HIS end
link pept head - ILE tail + NEP end
link pept head - ILE tail + ILE end
link pept head - ILE tail + LYS end
link pept head - ILE tail + ALY end
link pept head - ILE tail + MLY end
link pept head - ILE tail + MLZ end
link pept head - ILE tail + M3L end
link pept head - ILE tail + LEU end
link pept head - ILE tail + MET end
link pept head - ILE tail + ASN end
link pept head - ILE tail + PRO end
link pept head - ILE tail + GLN end
link pept head - ILE tail + ARG end
link pept head - ILE tail + SER end
link pept head - ILE tail + SEP end
link pept head - ILE tail + THR end
link pept head - ILE tail + THP end
link pept head - ILE tail + TOP end
link pept head - ILE tail + VAL end
link pept head - ILE tail + TRP end
link pept head - ILE tail + TYR end
link pept head - ILE tail + TYP end
link pept head - ILE tail + TYS end
link pept head - ILE tail + HYP end
link pept head - ILE tail + CTN end
link pept head - ILE tail + R1A end
link pept head - ILE tail + IA1 end
 
{ peptide linkages for LYS }
link pept head - LYS tail + ALA end
link pept head - LYS tail + CYS end
link pept head - LYS tail + CYM end
link pept head - LYS tail + CYF end
link pept head - LYS tail + CSP end
link pept head - LYS tail + ASP end
link pept head - LYS tail + ASH end
link pept head - LYS tail + GLU end
link pept head - LYS tail + GLH end
link pept head - LYS tail + PHE end
link pept head - LYS tail + HIS end
link pept head - LYS tail + NEP end
link pept head - LYS tail + ILE end
link pept head - LYS tail + LYS end
link pept head - LYS tail + ALY end
link pept head - LYS tail + MLY end
link pept head - LYS tail + MLZ end
link pept head - LYS tail + M3L end
link pept head - LYS tail + LEU end
link pept head - LYS tail + MET end
link pept head - LYS tail + ASN end
link pept head - LYS tail + PRO end
link pept head - LYS tail + GLN end
link pept head - LYS tail + ARG end
link pept head - LYS tail + SER end
link pept head - LYS tail + SEP end
link pept head - LYS tail + THR end
link pept head - LYS tail + THP end
link pept head - LYS tail + TOP end
link pept head - LYS tail + VAL end
link pept head - LYS tail + TRP end
link pept head - LYS tail + TYR end
link pept head - LYS tail + TYP end
link pept head - LYS tail + TYS end
link pept head - LYS tail + HYP end
link pept head - LYS tail + CTN end
link pept head - LYS tail + R1A end
link pept head - LYS tail + IA1 end
 
{ peptide linkages for ALY }
link pept head - ALY tail + ALA end
link pept head - ALY tail + CYS end
link pept head - ALY tail + CYM end
link pept head - ALY tail + CYF end
link pept head - ALY tail + CSP end
link pept head - ALY tail + ASP end
link pept head - ALY tail + ASH end
link pept head - ALY tail + GLU end
link pept head - ALY tail + GLH end
link pept head - ALY tail + PHE end
link pept head - ALY tail + HIS end
link pept head - ALY tail + NEP end
link pept head - ALY tail + ILE end
link pept head - ALY tail + LYS end
link pept head - ALY tail + ALY end
link pept head - ALY tail + MLY end
link pept head - ALY tail + MLZ end
link pept head - ALY tail + M3L end
link pept head - ALY tail + LEU end
link pept head - ALY tail + MET end
link pept head - ALY tail + ASN end
link pept head - ALY tail + PRO end
link pept head - ALY tail + GLN end
link pept head - ALY tail + ARG end
link pept head - ALY tail + SER end
link pept head - ALY tail + SEP end
link pept head - ALY tail + THR end
link pept head - ALY tail + THP end
link pept head - ALY tail + TOP end
link pept head - ALY tail + VAL end
link pept head - ALY tail + TRP end
link pept head - ALY tail + TYR end
link pept head - ALY tail + TYP end
link pept head - ALY tail + TYS end
link pept head - ALY tail + HYP end
link pept head - ALY tail + CTN end
link pept head - ALY tail + R1A end
link pept head - ALY tail + IA1 end
 
{ peptide linkages for MLY }
link pept head - MLY tail + ALA end
link pept head - MLY tail + CYS end
link pept head - MLY tail + CYM end
link pept head - MLY tail + CYF end
link pept head - MLY tail + CSP end
link pept head - MLY tail + ASP end
link pept head - MLY tail + ASH end
link pept head - MLY tail + GLU end
link pept head - MLY tail + GLH end
link pept head - MLY tail + PHE end
link pept head - MLY tail + HIS end
link pept head - MLY tail + NEP end
link pept head - MLY tail + ILE end
link pept head - MLY tail + LYS end
link pept head - MLY tail + ALY end
link pept head - MLY tail + MLY end
link pept head - MLY tail + MLZ end
link pept head - MLY tail + M3L end
link pept head - MLY tail + LEU end
link pept head - MLY tail + MET end
link pept head - MLY tail + ASN end
link pept head - MLY tail + PRO end
link pept head - MLY tail + GLN end
link pept head - MLY tail + ARG end
link pept head - MLY tail + SER end
link pept head - MLY tail + SEP end
link pept head - MLY tail + THR end
link pept head - MLY tail + THP end
link pept head - MLY tail + TOP end
link pept head - MLY tail + VAL end
link pept head - MLY tail + TRP end
link pept head - MLY tail + TYR end
link pept head - MLY tail + TYP end
link pept head - MLY tail + TYS end
link pept head - MLY tail + HYP end
link pept head - MLY tail + CTN end
link pept head - MLY tail + R1A end
link pept head - MLY tail + IA1 end
 
{ peptide linkages for MLZ }
link pept head - MLZ tail + ALA end
link pept head - MLZ tail + CYS end
link pept head - MLZ tail + CYM end
link pept head - MLZ tail + CYF end
link pept head - MLZ tail + CSP end
link pept head - MLZ tail + ASP end
link pept head - MLZ tail + ASH end
link pept head - MLZ tail + GLU end
link pept head - MLZ tail + GLH end
link pept head - MLZ tail + PHE end
link pept head - MLZ tail + HIS end
link pept head - MLZ tail + NEP end
link pept head - MLZ tail + ILE end
link pept head - MLZ tail + LYS end
link pept head - MLZ tail + ALY end
link pept head - MLZ tail + MLY end
link pept head - MLZ tail + MLZ end
link pept head - MLZ tail + M3L end
link pept head - MLZ tail + LEU end
link pept head - MLZ tail + MET end
link pept head - MLZ tail + ASN end
link pept head - MLZ tail + PRO end
link pept head - MLZ tail + GLN end
link pept head - MLZ tail + ARG end
link pept head - MLZ tail + SER end
link pept head - MLZ tail + SEP end
link pept head - MLZ tail + THR end
link pept head - MLZ tail + THP end
link pept head - MLZ tail + TOP end
link pept head - MLZ tail + VAL end
link pept head - MLZ tail + TRP end
link pept head - MLZ tail + TYR end
link pept head - MLZ tail + TYP end
link pept head - MLZ tail + TYS end
link pept head - MLZ tail + HYP end
link pept head - MLZ tail + CTN end
link pept head - MLZ tail + R1A end
link pept head - MLZ tail + IA1 end
 
{ peptide linkages for M3L }
link pept head - M3L tail + ALA end
link pept head - M3L tail + CYS end
link pept head - M3L tail + CYM end
link pept head - M3L tail + CYF end
link pept head - M3L tail + CSP end
link pept head - M3L tail + ASP end
link pept head - M3L tail + ASH end
link pept head - M3L tail + GLU end
link pept head - M3L tail + GLH end
link pept head - M3L tail + PHE end
link pept head - M3L tail + HIS end
link pept head - M3L tail + NEP end
link pept head - M3L tail + ILE end
link pept head - M3L tail + LYS end
link pept head - M3L tail + ALY end
link pept head - M3L tail + MLY end
link pept head - M3L tail + MLZ end
link pept head - M3L tail + M3L end
link pept head - M3L tail + LEU end
link pept head - M3L tail + MET end
link pept head - M3L tail + ASN end
link pept head - M3L tail + PRO end
link pept head - M3L tail + GLN end
link pept head - M3L tail + ARG end
link pept head - M3L tail + SER end
link pept head - M3L tail + SEP end
link pept head - M3L tail + THR end
link pept head - M3L tail + THP end
link pept head - M3L tail + TOP end
link pept head - M3L tail + VAL end
link pept head - M3L tail + TRP end
link pept head - M3L tail + TYR end
link pept head - M3L tail + TYP end
link pept head - M3L tail + TYS end
link pept head - M3L tail + HYP end
link pept head - M3L tail + CTN end
link pept head - M3L tail + R1A end
link pept head - M3L tail + IA1 end
 
{ peptide linkages for LEU }
link pept head - LEU tail + ALA end
link pept head - LEU tail + CYS end
link pept head - LEU tail + CYM end
link pept head - LEU tail + CYF end
link pept head - LEU tail + CSP end
link pept head - LEU tail + ASP end
link pept head - LEU tail + ASH end
link pept head - LEU tail + GLU end
link pept head - LEU tail + GLH end
link pept head - LEU tail + PHE end
link pept head - LEU tail + HIS end
link pept head - LEU tail + NEP end
link pept head - LEU tail + ILE end
link pept head - LEU tail + LYS end
link pept head - LEU tail + ALY end
link pept head - LEU tail + MLY end
link pept head - LEU tail + MLZ end
link pept head - LEU tail + M3L end
link pept head - LEU tail + LEU end
link pept head - LEU tail + MET end
link pept head - LEU tail + ASN end
link pept head - LEU tail + PRO end
link pept head - LEU tail + GLN end
link pept head - LEU tail + ARG end
link pept head - LEU tail + SER end
link pept head - LEU tail + SEP end
link pept head - LEU tail + THR end
link pept head - LEU tail + THP end
link pept head - LEU tail + TOP end
link pept head - LEU tail + VAL end
link pept head - LEU tail + TRP end
link pept head - LEU tail + TYR end
link pept head - LEU tail + TYP end
link pept head - LEU tail + TYS end
link pept head - LEU tail + HYP end
link pept head - LEU tail + CTN end
link pept head - LEU tail + R1A end
link pept head - LEU tail + IA1 end
 
{ peptide linkages for MET }
link pept head - MET tail + ALA end
link pept head - MET tail + CYS end
link pept head - MET tail + CYM end
link pept head - MET tail + CYF end
link pept head - MET tail + CSP end
link pept head - MET tail + ASP end
link pept head - MET tail + ASH end
link pept head - MET tail + GLU end
link pept head - MET tail + GLH end
link pept head - MET tail + PHE end
link pept head - MET tail + HIS end
link pept head - MET tail + NEP end
link pept head - MET tail + ILE end
link pept head - MET tail + LYS end
link pept head - MET tail + ALY end
link pept head - MET tail + MLY end
link pept head - MET tail + MLZ end
link pept head - MET tail + M3L end
link pept head - MET tail + LEU end
link pept head - MET tail + MET end
link pept head - MET tail + ASN end
link pept head - MET tail + PRO end
link pept head - MET tail + GLN end
link pept head - MET tail + ARG end
link pept head - MET tail + SER end
link pept head - MET tail + SEP end
link pept head - MET tail + THR end
link pept head - MET tail + THP end
link pept head - MET tail + TOP end
link pept head - MET tail + VAL end
link pept head - MET tail + TRP end
link pept head - MET tail + TYR end
link pept head - MET tail + TYP end
link pept head - MET tail + TYS end
link pept head - MET tail + HYP end
link pept head - MET tail + CTN end
link pept head - MET tail + R1A end
link pept head - MET tail + IA1 end
 
{ peptide linkages for ASN }
link pept head - ASN tail + ALA end
link pept head - ASN tail + CYS end
link pept head - ASN tail + CYM end
link pept head - ASN tail + CYF end
link pept head - ASN tail + CSP end
link pept head - ASN tail + ASP end
link pept head - ASN tail + ASH end
link pept head - ASN tail + GLU end
link pept head - ASN tail + GLH end
link pept head - ASN tail + PHE end
link pept head - ASN tail + HIS end
link pept head - ASN tail + NEP end
link pept head - ASN tail + ILE end
link pept head - ASN tail + LYS end
link pept head - ASN tail + ALY end
link pept head - ASN tail + MLY end
link pept head - ASN tail + MLZ end
link pept head - ASN tail + M3L end
link pept head - ASN tail + LEU end
link pept head - ASN tail + MET end
link pept head - ASN tail + ASN end
link pept head - ASN tail + PRO end
link pept head - ASN tail + GLN end
link pept head - ASN tail + ARG end
link pept head - ASN tail + SER end
link pept head - ASN tail + SEP end
link pept head - ASN tail + THR end
link pept head - ASN tail + THP end
link pept head - ASN tail + TOP end
link pept head - ASN tail + VAL end
link pept head - ASN tail + TRP end
link pept head - ASN tail + TYR end
link pept head - ASN tail + TYP end
link pept head - ASN tail + TYS end
link pept head - ASN tail + HYP end
link pept head - ASN tail + CTN end
link pept head - ASN tail + R1A end
link pept head - ASN tail + IA1 end
 
{ peptide linkages for PRO }
link pept head - PRO tail + ALA end
link pept head - PRO tail + CYS end
link pept head - PRO tail + CYM end
link pept head - PRO tail + CYF end
link pept head - PRO tail + CSP end
link pept head - PRO tail + ASP end
link pept head - PRO tail + ASH end
link pept head - PRO tail + GLU end
link pept head - PRO tail + GLH end
link pept head - PRO tail + PHE end
link pept head - PRO tail + HIS end
link pept head - PRO tail + NEP end
link pept head - PRO tail + ILE end
link pept head - PRO tail + LYS end
link pept head - PRO tail + ALY end
link pept head - PRO tail + MLY end
link pept head - PRO tail + MLZ end
link pept head - PRO tail + M3L end
link pept head - PRO tail + LEU end
link pept head - PRO tail + MET end
link pept head - PRO tail + ASN end
link pept head - PRO tail + PRO end
link pept head - PRO tail + GLN end
link pept head - PRO tail + ARG end
link pept head - PRO tail + SER end
link pept head - PRO tail + SEP end
link pept head - PRO tail + THR end
link pept head - PRO tail + THP end
link pept head - PRO tail + TOP end
link pept head - PRO tail + VAL end
link pept head - PRO tail + TRP end
link pept head - PRO tail + TYR end
link pept head - PRO tail + TYP end
link pept head - PRO tail + TYS end
link pept head - PRO tail + HYP end
link pept head - PRO tail + CTN end
link pept head - PRO tail + R1A end
link pept head - PRO tail + IA1 end
 
{ peptide linkages for GLN }
link pept head - GLN tail + ALA end
link pept head - GLN tail + CYS end
link pept head - GLN tail + CYM end
link pept head - GLN tail + CYF end
link pept head - GLN tail + CSP end
link pept head - GLN tail + ASP end
link pept head - GLN tail + ASH end
link pept head - GLN tail + GLU end
link pept head - GLN tail + GLH end
link pept head - GLN tail + PHE end
link pept head - GLN tail + HIS end
link pept head - GLN tail + NEP end
link pept head - GLN tail + ILE end
link pept head - GLN tail + LYS end
link pept head - GLN tail + ALY end
link pept head - GLN tail + MLY end
link pept head - GLN tail + MLZ end
link pept head - GLN tail + M3L end
link pept head - GLN tail + LEU end
link pept head - GLN tail + MET end
link pept head - GLN tail + ASN end
link pept head - GLN tail + PRO end
link pept head - GLN tail + GLN end
link pept head - GLN tail + ARG end
link pept head - GLN tail + SER end
link pept head - GLN tail + SEP end
link pept head - GLN tail + THR end
link pept head - GLN tail + THP end
link pept head - GLN tail + TOP end
link pept head - GLN tail + VAL end
link pept head - GLN tail + TRP end
link pept head - GLN tail + TYR end
link pept head - GLN tail + TYP end
link pept head - GLN tail + TYS end
link pept head - GLN tail + HYP end
link pept head - GLN tail + CTN end
link pept head - GLN tail + R1A end
link pept head - GLN tail + IA1 end
 
{ peptide linkages for ARG }
link pept head - ARG tail + ALA end
link pept head - ARG tail + CYS end
link pept head - ARG tail + CYM end
link pept head - ARG tail + CYF end
link pept head - ARG tail + CSP end
link pept head - ARG tail + ASP end
link pept head - ARG tail + ASH end
link pept head - ARG tail + GLU end
link pept head - ARG tail + GLH end
link pept head - ARG tail + PHE end
link pept head - ARG tail + HIS end
link pept head - ARG tail + NEP end
link pept head - ARG tail + ILE end
link pept head - ARG tail + LYS end
link pept head - ARG tail + ALY end
link pept head - ARG tail + MLY end
link pept head - ARG tail + MLZ end
link pept head - ARG tail + M3L end
link pept head - ARG tail + LEU end
link pept head - ARG tail + MET end
link pept head - ARG tail + ASN end
link pept head - ARG tail + PRO end
link pept head - ARG tail + GLN end
link pept head - ARG tail + ARG end
link pept head - ARG tail + SER end
link pept head - ARG tail + SEP end
link pept head - ARG tail + THR end
link pept head - ARG tail + THP end
link pept head - ARG tail + TOP end
link pept head - ARG tail + VAL end
link pept head - ARG tail + TRP end
link pept head - ARG tail + TYR end
link pept head - ARG tail + TYP end
link pept head - ARG tail + TYS end
link pept head - ARG tail + HYP end
link pept head - ARG tail + CTN end
link pept head - ARG tail + R1A end
link pept head - ARG tail + IA1 end
 
{ peptide linkages for SER }
link pept head - SER tail + ALA end
link pept head - SER tail + CYS end
link pept head - SER tail + CYM end
link pept head - SER tail + CYF end
link pept head - SER tail + CSP end
link pept head - SER tail + ASP end
link pept head - SER tail + ASH end
link pept head - SER tail + GLU end
link pept head - SER tail + GLH end
link pept head - SER tail + PHE end
link pept head - SER tail + HIS end
link pept head - SER tail + NEP end
link pept head - SER tail + ILE end
link pept head - SER tail + LYS end
link pept head - SER tail + ALY end
link pept head - SER tail + MLY end
link pept head - SER tail + MLZ end
link pept head - SER tail + M3L end
link pept head - SER tail + LEU end
link pept head - SER tail + MET end
link pept head - SER tail + ASN end
link pept head - SER tail + PRO end
link pept head - SER tail + GLN end
link pept head - SER tail + ARG end
link pept head - SER tail + SER end
link pept head - SER tail + SEP end
link pept head - SER tail + THR end
link pept head - SER tail + THP end
link pept head - SER tail + TOP end
link pept head - SER tail + VAL end
link pept head - SER tail + TRP end
link pept head - SER tail + TYR end
link pept head - SER tail + TYP end
link pept head - SER tail + TYS end
link pept head - SER tail + HYP end
link pept head - SER tail + CTN end
link pept head - SER tail + R1A end
link pept head - SER tail + IA1 end
 
{ peptide linkages for SEP }
link pept head - SEP tail + ALA end
link pept head - SEP tail + CYS end
link pept head - SEP tail + CYM end
link pept head - SEP tail + CYF end
link pept head - SEP tail + CSP end
link pept head - SEP tail + ASP end
link pept head - SEP tail + ASH end
link pept head - SEP tail + GLU end
link pept head - SEP tail + GLH end
link pept head - SEP tail + PHE end
link pept head - SEP tail + HIS end
link pept head - SEP tail + NEP end
link pept head - SEP tail + ILE end
link pept head - SEP tail + LYS end
link pept head - SEP tail + ALY end
link pept head - SEP tail + MLY end
link pept head - SEP tail + MLZ end
link pept head - SEP tail + M3L end
link pept head - SEP tail + LEU end
link pept head - SEP tail + MET end
link pept head - SEP tail + ASN end
link pept head - SEP tail + PRO end
link pept head - SEP tail + GLN end
link pept head - SEP tail + ARG end
link pept head - SEP tail + SER end
link pept head - SEP tail + SEP end
link pept head - SEP tail + THR end
link pept head - SEP tail + THP end
link pept head - SEP tail + TOP end
link pept head - SEP tail + VAL end
link pept head - SEP tail + TRP end
link pept head - SEP tail + TYR end
link pept head - SEP tail + TYP end
link pept head - SEP tail + TYS end
link pept head - SEP tail + HYP end
link pept head - SEP tail + CTN end
link pept head - SEP tail + R1A end
link pept head - SEP tail + IA1 end
 
{ peptide linkages for THR }
link pept head - THR tail + ALA end
link pept head - THR tail + CYS end
link pept head - THR tail + CYM end
link pept head - THR tail + CYF end
link pept head - THR tail + CSP end
link pept head - THR tail + ASP end
link pept head - THR tail + ASH end
link pept head - THR tail + GLU end
link pept head - THR tail + GLH end
link pept head - THR tail + PHE end
link pept head - THR tail + HIS end
link pept head - THR tail + NEP end
link pept head - THR tail + ILE end
link pept head - THR tail + LYS end
link pept head - THR tail + ALY end
link pept head - THR tail + MLY end
link pept head - THR tail + MLZ end
link pept head - THR tail + M3L end
link pept head - THR tail + LEU end
link pept head - THR tail + MET end
link pept head - THR tail + ASN end
link pept head - THR tail + PRO end
link pept head - THR tail + GLN end
link pept head - THR tail + ARG end
link pept head - THR tail + SER end
link pept head - THR tail + SEP end
link pept head - THR tail + THR end
link pept head - THR tail + THP end
link pept head - THR tail + TOP end
link pept head - THR tail + VAL end
link pept head - THR tail + TRP end
link pept head - THR tail + TYR end
link pept head - THR tail + TYP end
link pept head - THR tail + TYS end
link pept head - THR tail + HYP end
link pept head - THR tail + CTN end
link pept head - THR tail + R1A end
link pept head - THR tail + IA1 end
 
{ peptide linkages for THP }
link pept head - THP tail + ALA end
link pept head - THP tail + CYS end
link pept head - THP tail + CYM end
link pept head - THP tail + CYF end
link pept head - THP tail + CSP end
link pept head - THP tail + ASP end
link pept head - THP tail + ASH end
link pept head - THP tail + GLU end
link pept head - THP tail + GLH end
link pept head - THP tail + PHE end
link pept head - THP tail + HIS end
link pept head - THP tail + NEP end
link pept head - THP tail + ILE end
link pept head - THP tail + LYS end
link pept head - THP tail + ALY end
link pept head - THP tail + MLY end
link pept head - THP tail + MLZ end
link pept head - THP tail + M3L end
link pept head - THP tail + LEU end
link pept head - THP tail + MET end
link pept head - THP tail + ASN end
link pept head - THP tail + PRO end
link pept head - THP tail + GLN end
link pept head - THP tail + ARG end
link pept head - THP tail + SER end
link pept head - THP tail + SEP end
link pept head - THP tail + THR end
link pept head - THP tail + THP end
link pept head - THP tail + TOP end
link pept head - THP tail + VAL end
link pept head - THP tail + TRP end
link pept head - THP tail + TYR end
link pept head - THP tail + TYP end
link pept head - THP tail + TYS end
link pept head - THP tail + HYP end
link pept head - THP tail + CTN end
link pept head - THP tail + R1A end
link pept head - THP tail + IA1 end
 
{ peptide linkages for TOP }
link pept head - TOP tail + ALA end
link pept head - TOP tail + CYS end
link pept head - TOP tail + CYM end
link pept head - TOP tail + CYF end
link pept head - TOP tail + CSP end
link pept head - TOP tail + ASP end
link pept head - TOP tail + ASH end
link pept head - TOP tail + GLU end
link pept head - TOP tail + GLH end
link pept head - TOP tail + PHE end
link pept head - TOP tail + HIS end
link pept head - TOP tail + NEP end
link pept head - TOP tail + ILE end
link pept head - TOP tail + LYS end
link pept head - TOP tail + ALY end
link pept head - TOP tail + MLY end
link pept head - TOP tail + MLZ end
link pept head - TOP tail + M3L end
link pept head - TOP tail + LEU end
link pept head - TOP tail + MET end
link pept head - TOP tail + ASN end
link pept head - TOP tail + PRO end
link pept head - TOP tail + GLN end
link pept head - TOP tail + ARG end
link pept head - TOP tail + SER end
link pept head - TOP tail + SEP end
link pept head - TOP tail + THR end
link pept head - TOP tail + THP end
link pept head - TOP tail + TOP end
link pept head - TOP tail + VAL end
link pept head - TOP tail + TRP end
link pept head - TOP tail + TYR end
link pept head - TOP tail + TYP end
link pept head - TOP tail + TYS end
link pept head - TOP tail + HYP end
link pept head - TOP tail + CTN end
link pept head - TOP tail + R1A end
link pept head - TOP tail + IA1 end
 
{ peptide linkages for VAL }
link pept head - VAL tail + ALA end
link pept head - VAL tail + CYS end
link pept head - VAL tail + CYM end
link pept head - VAL tail + CYF end
link pept head - VAL tail + CSP end
link pept head - VAL tail + ASP end
link pept head - VAL tail + ASH end
link pept head - VAL tail + GLU end
link pept head - VAL tail + GLH end
link pept head - VAL tail + PHE end
link pept head - VAL tail + HIS end
link pept head - VAL tail + NEP end
link pept head - VAL tail + ILE end
link pept head - VAL tail + LYS end
link pept head - VAL tail + ALY end
link pept head - VAL tail + MLY end
link pept head - VAL tail + MLZ end
link pept head - VAL tail + M3L end
link pept head - VAL tail + LEU end
link pept head - VAL tail + MET end
link pept head - VAL tail + ASN end
link pept head - VAL tail + PRO end
link pept head - VAL tail + GLN end
link pept head - VAL tail + ARG end
link pept head - VAL tail + SER end
link pept head - VAL tail + SEP end
link pept head - VAL tail + THR end
link pept head - VAL tail + THP end
link pept head - VAL tail + TOP end
link pept head - VAL tail + VAL end
link pept head - VAL tail + TRP end
link pept head - VAL tail + TYR end
link pept head - VAL tail + TYP end
link pept head - VAL tail + TYS end
link pept head - VAL tail + HYP end
link pept head - VAL tail + CTN end
link pept head - VAL tail + R1A end
link pept head - VAL tail + IA1 end
 
{ peptide linkages for TRP }
link pept head - TRP tail + ALA end
link pept head - TRP tail + CYS end
link pept head - TRP tail + CYM end
link pept head - TRP tail + CYF end
link pept head - TRP tail + CSP end
link pept head - TRP tail + ASP end
link pept head - TRP tail + ASH end
link pept head - TRP tail + GLU end
link pept head - TRP tail + GLH end
link pept head - TRP tail + PHE end
link pept head - TRP tail + HIS end
link pept head - TRP tail + NEP end
link pept head - TRP tail + ILE end
link pept head - TRP tail + LYS end
link pept head - TRP tail + ALY end
link pept head - TRP tail + MLY end
link pept head - TRP tail + MLZ end
link pept head - TRP tail + M3L end
link pept head - TRP tail + LEU end
link pept head - TRP tail + MET end
link pept head - TRP tail + ASN end
link pept head - TRP tail + PRO end
link pept head - TRP tail + GLN end
link pept head - TRP tail + ARG end
link pept head - TRP tail + SER end
link pept head - TRP tail + SEP end
link pept head - TRP tail + THR end
link pept head - TRP tail + THP end
link pept head - TRP tail + TOP end
link pept head - TRP tail + VAL end
link pept head - TRP tail + TRP end
link pept head - TRP tail + TYR end
link pept head - TRP tail + TYP end
link pept head - TRP tail + TYS end
link pept head - TRP tail + HYP end
link pept head - TRP tail + CTN end
link pept head - TRP tail + R1A end
link pept head - TRP tail + IA1 end
 
{ peptide linkages for TYR }
link pept head - TYR tail + ALA end
link pept head - TYR tail + CYS end
link pept head - TYR tail + CYM end
link pept head - TYR tail + CYF end
link pept head - TYR tail + CSP end
link pept head - TYR tail + ASP end
link pept head - TYR tail + ASH end
link pept head - TYR tail + GLU end
link pept head - TYR tail + GLH end
link pept head - TYR tail + PHE end
link pept head - TYR tail + HIS end
link pept head - TYR tail + NEP end
link pept head - TYR tail + ILE end
link pept head - TYR tail + LYS end
link pept head - TYR tail + ALY end
link pept head - TYR tail + MLY end
link pept head - TYR tail + MLZ end
link pept head - TYR tail + M3L end
link pept head - TYR tail + LEU end
link pept head - TYR tail + MET end
link pept head - TYR tail + ASN end
link pept head - TYR tail + PRO end
link pept head - TYR tail + GLN end
link pept head - TYR tail + ARG end
link pept head - TYR tail + SER end
link pept head - TYR tail + SEP end
link pept head - TYR tail + THR end
link pept head - TYR tail + THP end
link pept head - TYR tail + TOP end
link pept head - TYR tail + VAL end
link pept head - TYR tail + TRP end
link pept head - TYR tail + TYR end
link pept head - TYR tail + TYP end
link pept head - TYR tail + TYS end
link pept head - TYR tail + HYP end
link pept head - TYR tail + CTN end
link pept head - TYR tail + R1A end
link pept head - TYR tail + IA1 end
 
{ peptide linkages for TYP }
link pept head - TYP tail + ALA end
link pept head - TYP tail + CYS end
link pept head - TYP tail + CYM end
link pept head - TYP tail + CYF end
link pept head - TYP tail + CSP end
link pept head - TYP tail + ASP end
link pept head - TYP tail + ASH end
link pept head - TYP tail + GLU end
link pept head - TYP tail + GLH end
link pept head - TYP tail + PHE end
link pept head - TYP tail + HIS end
link pept head - TYP tail + NEP end
link pept head - TYP tail + ILE end
link pept head - TYP tail + LYS end
link pept head - TYP tail + ALY end
link pept head - TYP tail + MLY end
link pept head - TYP tail + MLZ end
link pept head - TYP tail + M3L end
link pept head - TYP tail + LEU end
link pept head - TYP tail + MET end
link pept head - TYP tail + ASN end
link pept head - TYP tail + PRO end
link pept head - TYP tail + GLN end
link pept head - TYP tail + ARG end
link pept head - TYP tail + SER end
link pept head - TYP tail + SEP end
link pept head - TYP tail + THR end
link pept head - TYP tail + THP end
link pept head - TYP tail + TOP end
link pept head - TYP tail + VAL end
link pept head - TYP tail + TRP end
link pept head - TYP tail + TYR end
link pept head - TYP tail + TYP end
link pept head - TYP tail + TYS end
link pept head - TYP tail + HYP end
link pept head - TYP tail + CTN end
link pept head - TYP tail + R1A end
link pept head - TYP tail + IA1 end
 
{ peptide linkages for TYS }
link pept head - TYS tail + ALA end
link pept head - TYS tail + CYS end
link pept head - TYS tail + CYM end
link pept head - TYS tail + CYF end
link pept head - TYS tail + CSP end
link pept head - TYS tail + ASP end
link pept head - TYS tail + ASH end
link pept head - TYS tail + GLU end
link pept head - TYS tail + GLH end
link pept head - TYS tail + PHE end
link pept head - TYS tail + HIS end
link pept head - TYS tail + NEP end
link pept head - TYS tail + ILE end
link pept head - TYS tail + LYS end
link pept head - TYS tail + ALY end
link pept head - TYS tail + MLY end
link pept head - TYS tail + MLZ end
link pept head - TYS tail + M3L end
link pept head - TYS tail + LEU end
link pept head - TYS tail + MET end
link pept head - TYS tail + ASN end
link pept head - TYS tail + PRO end
link pept head - TYS tail + GLN end
link pept head - TYS tail + ARG end
link pept head - TYS tail + SER end
link pept head - TYS tail + SEP end
link pept head - TYS tail + THR end
link pept head - TYS tail + THP end
link pept head - TYS tail + TOP end
link pept head - TYS tail + VAL end
link pept head - TYS tail + TRP end
link pept head - TYS tail + TYR end
link pept head - TYS tail + TYP end
link pept head - TYS tail + TYS end
link pept head - TYS tail + HYP end
link pept head - TYS tail + CTN end
link pept head - TYS tail + R1A end
link pept head - TYS tail + IA1 end
 
{ peptide linkages for HYP }
link pept head - HYP tail + ALA end
link pept head - HYP tail + CYS end
link pept head - HYP tail + CYM end
link pept head - HYP tail + CYF end
link pept head - HYP tail + CSP end
link pept head - HYP tail + ASP end
link pept head - HYP tail + ASH end
link pept head - HYP tail + GLU end
link pept head - HYP tail + GLH end
link pept head - HYP tail + PHE end
link pept head - HYP tail + HIS end
link pept head - HYP tail + NEP end
link pept head - HYP tail + ILE end
link pept head - HYP tail + LYS end
link pept head - HYP tail + ALY end
link pept head - HYP tail + MLY end
link pept head - HYP tail + MLZ end
link pept head - HYP tail + M3L end
link pept head - HYP tail + LEU end
link pept head - HYP tail + MET end
link pept head - HYP tail + ASN end
link pept head - HYP tail + PRO end
link pept head - HYP tail + GLN end
link pept head - HYP tail + ARG end
link pept head - HYP tail + SER end
link pept head - HYP tail + SEP end
link pept head - HYP tail + THR end
link pept head - HYP tail + THP end
link pept head - HYP tail + TOP end
link pept head - HYP tail + VAL end
link pept head - HYP tail + TRP end
link pept head - HYP tail + TYR end
link pept head - HYP tail + TYP end
link pept head - HYP tail + TYS end
link pept head - HYP tail + HYP end
link pept head - HYP tail + CTN end
link pept head - HYP tail + R1A end
link pept head - HYP tail + IA1 end
 
{ peptide linkages for R1A }
link pept head - R1A tail + ALA end
link pept head - R1A tail + CYS end
link pept head - R1A tail + CYM end
link pept head - R1A tail + CYF end
link pept head - R1A tail + CSP end
link pept head - R1A tail + ASP end
link pept head - R1A tail + ASH end
link pept head - R1A tail + GLU end
link pept head - R1A tail + GLH end
link pept head - R1A tail + PHE end
link pept head - R1A tail + HIS end
link pept head - R1A tail + NEP end
link pept head - R1A tail + ILE end
link pept head - R1A tail + LYS end
link pept head - R1A tail + ALY end
link pept head - R1A tail + MLY end
link pept head - R1A tail + MLZ end
link pept head - R1A tail + M3L end
link pept head - R1A tail + LEU end
link pept head - R1A tail + MET end
link pept head - R1A tail + ASN end
link pept head - R1A tail + PRO end
link pept head - R1A tail + GLN end
link pept head - R1A tail + ARG end
link pept head - R1A tail + SER end
link pept head - R1A tail + SEP end
link pept head - R1A tail + THR end
link pept head - R1A tail + THP end
link pept head - R1A tail + TOP end
link pept head - R1A tail + VAL end
link pept head - R1A tail + TRP end
link pept head - R1A tail + TYR end
link pept head - R1A tail + TYP end
link pept head - R1A tail + TYS end
link pept head - R1A tail + HYP end
link pept head - R1A tail + CTN end
link pept head - R1A tail + R1A end
link pept head - R1A tail + IA1 end

{ peptide linkages for IA1 }
link pept head - IA1 tail + ALA end
link pept head - IA1 tail + CYS end
link pept head - IA1 tail + CYM end
link pept head - IA1 tail + CYF end
link pept head - IA1 tail + CSP end
link pept head - IA1 tail + ASP end
link pept head - IA1 tail + ASH end
link pept head - IA1 tail + GLU end
link pept head - IA1 tail + GLH end
link pept head - IA1 tail + PHE end
link pept head - IA1 tail + HIS end
link pept head - IA1 tail + NEP end
link pept head - IA1 tail + ILE end
link pept head - IA1 tail + LYS end
link pept head - IA1 tail + ALY end
link pept head - IA1 tail + MLY end
link pept head - IA1 tail + MLZ end
link pept head - IA1 tail + M3L end
link pept head - IA1 tail + LEU end
link pept head - IA1 tail + MET end
link pept head - IA1 tail + ASN end
link pept head - IA1 tail + PRO end
link pept head - IA1 tail + GLN end
link pept head - IA1 tail + ARG end
link pept head - IA1 tail + SER end
link pept head - IA1 tail + SEP end
link pept head - IA1 tail + THR end
link pept head - IA1 tail + THP end
link pept head - IA1 tail + TOP end
link pept head - IA1 tail + VAL end
link pept head - IA1 tail + TRP end
link pept head - IA1 tail + TYR end
link pept head - IA1 tail + TYP end
link pept head - IA1 tail + TYS end
link pept head - IA1 tail + HYP end
link pept head - IA1 tail + CTN end
link pept head - IA1 tail + R1A end
link pept head - IA1 tail + IA1 end


first PROP tail + PRO end
first PROP tail + HYP end

first ACET tail + ACE end

first NTER tail + ALA end
first NTER tail + CYS end
first NTER tail + CYM end
first NTER tail + CYF end
first NTER tail + CSP end
first NTER tail + ASP end
first NTER tail + ASH end
first NTER tail + GLU end
first NTER tail + GLH end
first NTER tail + GLY end
first NTER tail + PHE end
first NTER tail + HIS end
first NTER tail + NEP end
first NTER tail + ILE end
first NTER tail + LYS end
first NTER tail + ALY end
first NTER tail + MLY end
first NTER tail + MLZ end
first NTER tail + M3L end
first NTER tail + LEU end
first NTER tail + MET end
first NTER tail + ASN end
first NTER tail + PRO end
first NTER tail + GLN end
first NTER tail + ARG end
first NTER tail + SER end
first NTER tail + SEP end
first NTER tail + THR end
first NTER tail + THP end
first NTER tail + TOP end
first NTER tail + VAL end
first NTER tail + TRP end
first NTER tail + TYR end
first NTER tail + TYP end
first NTER tail + TYS end
first NTER tail + HYP end
first NTER tail + R1A end
first NTER tail + IA1 end

last CTER head - ALA end
last CTER head - CYS end
last CTER head - CYM end
last CTER head - CYF end
last CTER head - CSP end
last CTER head - ASP end
last CTER head - ASH end
last CTER head - GLU end
last CTER head - GLH end
last CTER head - GLY end
last CTER head - PHE end
last CTER head - HIS end
last CTER head - NEP end
last CTER head - ILE end
last CTER head - LYS end
last CTER head - ALY end
last CTER head - MLY end
last CTER head - MLZ end
last CTER head - M3L end
last CTER head - LEU end
last CTER head - MET end
last CTER head - ASN end
last CTER head - PRO end
last CTER head - GLN end
last CTER head - ARG end
last CTER head - SER end
last CTER head - SEP end
last CTER head - THR end
last CTER head - THP end
last CTER head - TOP end
last CTER head - VAL end
last CTER head - TRP end
last CTER head - TYR end
last CTER head - TYP end
last CTER head - TYS end
last CTER head - HYP end
last CTER head - R1A end
last CTER head - IA1 end

set message=$old_message echo=$old_echo end

