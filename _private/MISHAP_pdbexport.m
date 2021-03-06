function MISHAP_pdbexport(varargin)

% MISHAP_PDBEXPORT exports a PDB-like structure in MATLAB to a .pdb file
%
%   MISHAP_PDBEXPORT (myProtein)
%   MISHAP_PDBEXPORT (myProtein,'/path/to/file/myProtein.pdb')
%
% MISHAP_PDBEXPORT allows a MatLab PDB structure created with MISHAP's PDB
% functions to be saved out from MATLAB to a .pdb file. By default the save
% location is selected using a graphical user interface, but can also be
% done using a command line method.
%
% As this script is for MISHAP with the intention of being used with
% HADDOCK it deliberately only exports the atom information and NOTHING
% ELSE.
%
% Inputs:
%    input1     - structure
%                   the PDB-like structure in MATLAB 
%    input2     - a file location
%                   a full file location to save the file, if the user does
%                   not want to use the GUI to select a location
%
% Outputs:
%    output1    - a PDB file
%                   
% Example: 
%    PDBEXPORT(myProtein)
%               export the PDB structure myProtein
%
% Other m-files required:   none
%
% Subfunctions:             none
%
% MAT-files required:       none
%
%
% See also: EPRTOOLBOX MISHAP MISHAP_PDBIMPORT

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
%
% M. Bye v13.06
%
% Author:       Morgan Bye
% Work address: Henry Wellcome Unit for Biological EPR
%               University of East Anglia
%               NORWICH, UK
% Email:        morgan.bye@uea.ac.uk
% Website:      http://www.morganbye.net/mishap/
% May 2013;     Last revision: 14-May-2013
%
% Version history:
% May 13        > Pull from EPR toolbox
%               > Made MISHAP compatible
%
% Aug 12        > 2 arguments in for basic/complete export
%               > Better error handling
%               > More reliable export
%               > Command line addressing if required
%
% Feb 12        Initial release
%

switch nargin
    case 0
        error('No PDB structure has been selected for export')
    
    case 1
        structure = varargin{1};
        
        [out_name, out_path] = uiputfile('*.pdb', 'Save PDB as...');
        out_add = fullfile(out_path,out_name);
        
    case 2
        structure = varargin{1};
        out_add   = varargin{2};
        
end
        
% Check input is a structure
if ~isstruct(structure)
    error ('The input must be a valid MATLAB structure')
end

% Check that the required fields exist
if isfield(structure.Model,'Atom') == 0
    error ('The selected protein has no Atom field in the model')
end

if isfield(structure,'Model')              % If Atoms exist
    
    atoms       = [];
    TotalAtoms  = size(structure.Model.Atom,2);
    
    for k = 1 : TotalAtoms

% Previous method for full PDB information        
        
%         line = ['ATOM  ',...
%             (sprintf('%5d %-4s%3s %1s   %5d   %8.3f%8.3f%8.3f%6.2f%6.2f          %1s', ...
%             structure.Model.Atom(k).AtomSerNo , ...
%             structure.Model.Atom(k).AtomName , ...
%             structure.Model.Atom(k).resName , ...
%             structure.Model.Atom(k).chainID , ...
%             structure.Model.Atom(k).resSeq , ...
%             structure.Model.Atom(k).X , ...
%             structure.Model.Atom(k).Y , ...
%             structure.Model.Atom(k).Z , ...
%             structure.Model.Atom(k).occupancy , ...
%             structure.Model.Atom(k).tempFactor , ...
%             structure.Model.Atom(k).element))];
        
% In HADDOCK we do not want the chain ID or element in place. Notice also
% the careful spacing between residue number and x co-ordinate. Get this
% wrong and the PDB wont work in anything!!!

% '%5d  %-4s%3s %5d    %8.3f%8.3f%8.3f%6.2f%6.2f'
% '%5d % 4s %3s %5d    %8.3f%8.3f%8.3f%6.2f%6.2f'

          line = ['ATOM  ',...
            (sprintf('%5d % 4s %3s %5d    %8.3f%8.3f%8.3f', ...
            structure.Model.Atom(k).AtomSerNo , ...
            structure.Model.Atom(k).AtomName , ...
            structure.Model.Atom(k).resName , ...
            structure.Model.Atom(k).resSeq , ...
            structure.Model.Atom(k).X , ...
            structure.Model.Atom(k).Y , ...
            structure.Model.Atom(k).Z ))]; ...
%            structure.Model.Atom(k).occupancy , ...
%            structure.Model.Atom(k).tempFactor...
            
        
        % Format the output
        try
            atoms = [atoms ; sprintf('%-80s',line)];
        catch
            disp(sprintf('Error: Line %f is greater line 80 characters',k))
        end
        %end
        
    end
    
    output = atoms;
end

output = [output ; sprintf('%-80s','END')];


% File shuffling
% ========================================================================

% Convert to array of strings (each line in new cell)
output = cellstr(output);

% Find empty cells and remove them
output = output(~cellfun(@isempty,output));

% Convert back to string for export
output = char(output);

% Write output to file
% ========================================================================

fid = fopen(out_add,'w+');

% Check file can be opened/written to
if fid == (-1)
    error ('The file cannot be opened for writing, please check the folder''s permissions')
end

try
    for k = 1 : length(output)
        fprintf(fid, [output(k,:) '\n']);
    end
    
    fclose(fid);
    
catch
    % if there's an error close the file and delete it ready for another
    % try
    fclose(fid);
    delete(out_add);
    error ('The file could not be written')
end



