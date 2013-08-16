function structure = MISHAP_pdbimportMISHAP(varargin)

% MISHAP_PDBIMPORT loads a MISHAP generated PDB file into MATLAB
%
%   PDBIMPORT ()
%   PDBIMPORT('/path/to/file.pdb')
%   PDBIMPORT('http://web.address.net/file.pdb')
%   PDBIMPORT('XXXX')
%   STRUCTURE = PDBIMPORT(...)
%
% PDBIMPORT when run with no inputs launches a graphic user interface that
% allows the user to navigate their system and select a file to load.
% Alternitively, the user can manually type the address to a local file or
% a web address.
%
% PDBIMPORT also can fetch files directly from rcsb.org/pdb (pdb.org) if
% the PDB accession number is known, it should be a 4 digit aplha-numeric
% code.
%
% Inputs:
%    input0     - a GUI file selector
%    input1     - manual input
%                   a local path to a file
%                       '/path/to/file.pdb'
%                   a web address
%                       'http://server.domain/files/file.pdb'
%                   a PDB accession code
%                       '1QTJ' 
%
% Outputs:
%    output1    - a structure containing all the PDB information
%
% Example:
%    proteinA = pdbimport
%                   GUI import of file
%
%    proteinB = pdbimport('1QTJ')
%                   load PDB: 1QTJ directly from pdb.org
%
% Other m-files required:   n/a
%
% Subfunctions:             none
%
% MAT-files required:       none
%
%
% See also: EPRTOOLBOX PDBSPLITTER

%              __  __ _____  _____ _    _          _____  
%             |  \/  |_   _|/ ____| |  | |   /\   |  __ \ 
%             | \  / | | | | (___ | |__| |  /  \  | |__) |
%             | |\/| | | |  \___ \|  __  | / /\ \ |  ___/ 
%             | |  | |_| |_ ____) | |  | |/ ____ \| |     
%             |_|  |_|_____|_____/|_|  |_/_/    \_\_|     
%                                             
%                                by                
%                                        _                             _   
%                                       | |                           | |  
%  _ __ ___   ___  _ __ __ _  __ _ _ __ | |__  _   _  ___   _ __   ___| |_ 
% | '_ ` _ \ / _ \| '__/ _` |/ _` | '_ \| '_ \| | | |/ _ \ | '_ \ / _ \ __|
% | | | | | | (_) | | | (_| | (_| | | | | |_) | |_| |  __/_| | | |  __/ |_ 
% |_| |_| |_|\___/|_|  \__, |\__,_|_| |_|_.__/ \__, |\___(_)_| |_|\___|\__|
%                       __/ |                   __/ |                      
%                      |___/                   |___/                       
%
% M. Bye v13.08
%
% Author:       Morgan Bye
% Work address: Henry Wellcome Unit for Biological EPR
%               University of East Anglia
%               NORWICH, UK
% Email:        morgan.bye@uea.ac.uk
% Website:      http://www.morganbye.net/mishap/
% Aug 2013;     Last revision: 16-August-2013
%
% Version history:
% May 13       Initial branch from MISHAP_pdbimport

% Arguments in
% ===================================================

switch nargin
    case 0
        
        [file, directory] = uigetfile({'*.pdb','PDB file (*.pdb)'},'Load PDB file');
        
        if file == 0
            error('\nFile load canceled by user')
        end
        
        path = fullfile(directory, file);
        
        fid = fopen(path,'r');
        
        fullPDB = textscan(fid,'%s','Delimiter','\t');
        
        fclose(fid);

    case 1
        
        % Find out what has been input and act accordingly.
        
        % File
        % ====
        if exist(varargin{1},'file');
            
            path = varargin{1};
            [address,filename,~] = fileparts(path);
            
            fid = fopen(path,'r');
            
            fullPDB = textscan(fid,'%s','Delimiter','\t');
            
            fclose(fid);

        else
            error('\nFile could not be opened')
        end
        
end
    

% File splitting
% ===================================================

r = size(fullPDB{1},1);

for k = 1:r
      
    switch char(strtok(fullPDB{1}(k,:)))
        
% Most of these options should not exist in a MISHAP generated PDB file        
        
%         case 'HEADER'
%             structure.Header(k,:) = (fullPDB{1}(k,:));
%             
%         case 'OBSLTE'
%             structure.Obsolete(k,:) = (fullPDB{1}(k,:));
%             
%         case 'TITLE'
%             structure.Title(k,:) = (fullPDB{1}(k,:));
%             
%         case 'CAVEAT'
%             structure.Caveat(k,:) = (fullPDB{1}(k,:));
%             
%         case 'COMPND'
%             structure.Compound(k,:) = (fullPDB{1}(k,:));
%             
%         case 'SOURCE'
%             structure.Source(k,:) = (fullPDB{1}(k,:));
%             
%         case 'KEYWDS'
%             structure.Keywords(k,:) = (fullPDB{1}(k,:));
%             
%         case 'EXPDTA'
%             structure.ExperimentalData(k,:) = (fullPDB{1}(k,:));
%             
%         case 'AUTHOR'
%             structure.Authors(k,:) = (fullPDB{1}(k,:));
%             
%         case 'REVDAT'
%             structure.RevisionDate(k,:) = (fullPDB{1}(k,:));
%             
%         case 'SPRSDE'
%             structure.Superseded(k,:) = (fullPDB{1}(k,:));
%             
%         case 'JRNL'
%             structure.Journal(k,:) = (fullPDB{1}(k,:));
%             
%         case 'REMARK'
%             structure.Remark(k,:) = (fullPDB{1}(k,:));
%             
%         case 'DBREF'
%             structure.DBReferences(k,:) = (fullPDB{1}(k,:));
%             
%         case 'SEQADV'
%             structure.SequenceConflicts(k,:) = (fullPDB{1}(k,:));
%             
%         case 'SEQRES'
%             structure.Sequence(k,:) = (fullPDB{1}(k,:));
%             
%         case 'FTNOTE'
%             structure.Footnote(k,:) = (fullPDB{1}(k,:));
%             
%         case 'MODRES'
%             structure.ModifiedResidues(k,:) = (fullPDB{1}(k,:));
%             
%         case 'HET'
%             structure.Heterogen(k,:) = (fullPDB{1}(k,:));
%             
%         case 'HETNAM'
%             structure.HeterogenName(k,:) = (fullPDB{1}(k,:));
%             
%         case 'HETSYN'
%             structure.HeterogenSynonym(k,:) = (fullPDB{1}(k,:));
%             
%         case 'FORMUL'
%             structure.Formula(k,:) = (fullPDB{1}(k,:));
%             
%         case 'HELIX'
%             structure.Helix(k,:) = (fullPDB{1}(k,:));
%             
%         case 'SHEET'
%             structure.Sheet(k,:) = (fullPDB{1}(k,:));
%             
%         case 'TURN'
%             structure.Turn(k,:) = (fullPDB{1}(k,:));
%             
%         case 'SSBOND'
%             structure.SSBond(k,:) = (fullPDB{1}(k,:));
%             
%         case 'LINK'
%             structure.Link(k,:) = (fullPDB{1}(k,:));
%             
%         case 'HYDBND'
%             structure.HydrogenBond(k,:) = (fullPDB{1}(k,:));
%             
%         case 'SLTBRG'
%             structure.SaltBridge(k,:) = (fullPDB{1}(k,:));
%             
%         case 'CISPEP'
%             structure.CISPeptide(k,:) = (fullPDB{1}(k,:));
%             
%         case 'SITE'
%             structure.Site(k,:) = (fullPDB{1}(k,:));
%             
%         case 'CRYST1'
%             structure.Cryst1(k,:) = (fullPDB{1}(k,:));
%             
%         case 'TVECT'
%             structure.TranslationVector(k,:) = (fullPDB{1}(k,:));
%             
%         case 'MODEL'
%             structure.Model(k,:) = (fullPDB{1}(k,:));
            
        case 'ATOM'
            structure.Atom(k,:) = (fullPDB{1}(k,:));
                        
%         case 'SIGATM'
%             structure.AtomSD(k,:) = (fullPDB{1}(k,:));
%             
%         case 'ANISOU'
%             structure.AnisotropicTemp(k,:) = (fullPDB{1}(k,:));
%             
%         case 'SIGUIJ'
%             structure.AnisotropicTempSD(k,:) = (fullPDB{1}(k,:));
%             
%         case 'TER'
%             structure.Terminal(k,:) = (fullPDB{1}(k,:));
%             % structure.Terminal = strcat(structure.Terminal);
            
        case 'HETATM'
            structure.HeterogenAtom(k,:) = (fullPDB{1}(k,:));
            
%         case 'CONECT'
%             structure.Connectivity(k,:) = (fullPDB{1}(k,:));
            
            
    end
end


% Section sorting
% ===================================================

% Atoms
if ~isfield(structure,'Atom')
    structure.Atom = [];
end

% Make all the same length
z = strcat(structure.Atom);

% Remove blank cells, and string the result back
x = char(z(~cellfun(@isempty,z)));

% This bit is different, to load a MISHAP PDB, as there is no chain ID.

for k = 1:size(x,1)
    structure.Model.Atom(k).AtomSerNo = str2double(x(k,5:12));
    structure.Model.Atom(k).AtomName  = regexprep(x(k,14:17),' ','');
    structure.Model.Atom(k).resName   = x(k,18:20);
    structure.Model.Atom(k).resSeq    = str2double(x(k,22:27));
    structure.Model.Atom(k).X         = str2double(x(k,32:39));
    structure.Model.Atom(k).Y         = str2double(x(k,40:47));
    structure.Model.Atom(k).Z         = str2double(x(k,48:54));    
end

 clear structure.Atom

% Sequence sorting
% ===================================================

for k = 1:size(x,1)
    Sequence.Preformated{k} = num2str(structure.Model.Atom(k).resSeq);
end

[~,resiPos] = unique(Sequence.Preformated(1:end),'first');

resiPos = sort(resiPos);

for k = 1:numel(resiPos)
    Sequence.List{k} = structure.Model.Atom(resiPos(k)).resName;
end

structure.Sequence.ChainA = Sequence.List';
