function pdb_out = MISHAP_pdb_add_MMM_rotamers(varargin)

% MISHAP_PDB_ADD_MMM_ROTAMERS This script takes a PDB structure in memory and adds a
%       MMM rotamer structure to it
% 
%
% Syntax:   PDB out = MISHAP_PDB_ADD_MMM_ROTAMERS(...
%               PDB structure, ...
%               MMM structure, ...
%               MMM rotamer number)
%
% Inputs:
%    input1 - PDB structure
%
%    input2 - MMM structure
%
%    input3 - Label
%               'R1A' / 'IA1'
%
%    input4 - PDB residue number
%               the residue number to replace with the label
%
%    input5 - MMM rotamer number
%               the desired rotamer number to be inserted, if not used this
%               will default to rotamer 1 as MMM lists rotamers by
%               population
%
%    input6 - Chain
%               the PDB structure chain to insert onto, by default 'A'
%
% Outputs:
%    output1 - output PDB structure
%
%
% Other m-files required:   n/a
%
% Subfunctions:             none
%
% MAT-files required:       none
%
% See also: PDBIMPORT PDBEXPORT MMM

%                                        _                             _   
%                                       | |                           | |  
%  _ __ ___   ___  _ __ __ _  __ _ _ __ | |__  _   _  ___   _ __   ___| |_ 
% | '_ ` _ \ / _ \| '__/ _` |/ _` | '_ \| '_ \| | | |/ _ \ | '_ \ / _ \ __|
% | | | | | | (_) | | | (_| | (_| | | | | |_) | |_| |  __/_| | | |  __/ |_ 
% |_| |_| |_|\___/|_|  \__, |\__,_|_| |_|_.__/ \__, |\___(_)_| |_|\___|\__|
%                       __/ |                   __/ |                      
%                      |___/                   |___/                       
%
%
% M. Bye v13.06
%
% Author:       Morgan Bye
% Work address: Henry Wellcome Unit for Biological EPR
%               University of East Anglia
%               NORWICH, UK
% Email:        morgan.bye@uea.ac.uk
% Website:      http://www.morganbye.net/mishap/
% May 2013;     Last revision: 06-May-2013
%
% Version history:
% May 13        > Pull from EPR toolbox
%               > Made MISHAP compatible
%               > Added MMM rotamer option
%               > Added residue rotamer option
%               > Fixed insert residue number
%
% Aug 12        > Removal of dependency on the MATLAB Bioinformatics
%                   toolbox

% Arguments in
% ===================================================

switch nargin
    case 0      
       error('Not enough inputs')
       
    case 1      
       error('Not enough inputs')
    
    case 2      
       error('Not enough inputs, add the label type')     
       
    case 3
       pdb_in     = varargin{1};
       pdb_MMM    = varargin{2};
       Label      = varargin{3};
       pdb_resi   = pdb_MMM.Model.Atom(1).resSeq;
       r.residue  = 1;
       Chain      = 'A';
       
    case 4
       pdb_in     = varargin{1};
       pdb_MMM    = varargin{2};
       Label      = varargin{3};
       pdb_resi   = varargin{4};
       r.residue  = 1;
       Chain      = 'A';

    case 5
       pdb_in     = varargin{1};
       pdb_MMM    = varargin{2};
       Label      = varargin{3};
       pdb_resi   = varargin{4};
       r.residue  = varargin{5};
       Chain      = 'A';
       
    case 6
       pdb_in     = varargin{1};
       pdb_MMM    = varargin{2};
       Label      = varargin{3};
       pdb_resi   = varargin{4};
       r.residue  = varargin{5};
       Chain      = varargin{6};
       
    otherwise
        errordlg('The number of inputs was not recognised');
end

% find atom numbers of residue to replace in PDB
% ===================================================

r.ToBeReplaced = [];

% for every atom
for k = 1:numel(pdb_in.Model.Atom)
    
    % if atom residue number = rotamer residue, copy atom number across
    if pdb_in.Model.Atom(k).resSeq == pdb_resi
        r.ToBeReplaced(k) = pdb_in.Model.Atom(k).AtomSerNo;   
    end
end

% find the atom number to start at
r.ToBeReplaced = find(r.ToBeReplaced);

% Split atoms before and after the residue
% ===================================================

% Slight adjustment if the residue to replace is residue 1
if r.ToBeReplaced(1) == 1
    r.Atoms_afterresidue  = pdb_in.Model.Atom((r.ToBeReplaced(end)):end);
else
    % remove old residue from PDB
    % r.Atoms_minusresidue = [pdb_in.Model.Atom(1:(r.ToBeReplaced(1))) pdb_in.Model.Atom((r.ToBeReplaced(end)):end)];
    r.Atoms_beforeresidue = pdb_in.Model.Atom(1:(r.ToBeReplaced(1)-1));
    r.Atoms_afterresidue  = pdb_in.Model.Atom((r.ToBeReplaced(end)+1):end);
end


% find MMM rotamer
% ===================================================

switch Label
    case 'R1A'
        atomNo = 36;
    case 'IA1'
        atomNo = 41;
end
  
if r.residue == 1
    r.Atoms_insert = pdb_MMM.Model.Atom(1:atomNo);
    
else
r.Atoms_insert = pdb_MMM.Model.Atom(...
    (r.residue*atomNo)+1:...
    ((r.residue+1)*atomNo));
end

% Then update the residue information to match the PDB
for k = 1:atomNo
    r.Atoms_insert(k).resSeq     = pdb_resi;
    r.Atoms_insert(k).chainID    = Chain;
    r.Atoms_insert(k).occupancy  = 1;
    r.Atoms_insert(k).tempFactor = 0;
end

% ===================================================
% NOW FOR THE MERGE
% ===================================================

% If residue 1 is label then
if r.ToBeReplaced(1) == 1
    outmodel = [r.Atoms_insert r.Atoms_afterresidue];

% Normal residues
else
    outmodel = [r.Atoms_beforeresidue ...
        r.Atoms_insert ...
        r.Atoms_afterresidue];
end

% Renumber atoms
for k = 1:numel(outmodel)
    outmodel(k).AtomSerNo = k;
end

pdb_out = pdb_in;
pdb_out.Model.Atom = outmodel;