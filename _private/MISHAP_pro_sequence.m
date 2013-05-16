function MISHAP_pro_sequence(partner)

% MISHAP_pro_sequence - Generate amino acid sequence in PDB window
%
%   MISHAP_pro_sequence(partner)
%
% An open source program, for the conversion of MMM models to a format
% suitable for submission to HADDOCK.
%
% This program needs to be called from MMM (Predict > Quaternary > HADDOCK)
%
% Inputs:       
%    input1     - partner
%                   '1' or '2' for the binding partners
%
% Outputs:
%    output1    - updated amino acid sequence 
%
% Example:
%    see http://morganbye.net/mishap
%
% Other m-files required:   /MISHAP folder
%
% Subfunctions:             none
%
% MAT-files required:       none
%
% See also:
% MISHAP MMM EPRTOOLBOX


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
% May 2013;     Last revision: 16-May-2013
%
% Version history:
% May 13        Fix for non file loads
%
% Mar 13        Initial release

% Load variables
global MISHAP

p = num2str(partner);
editbox = MISHAP.handles.pro.(['edit_seq' p]);



switch MISHAP.PDB.(['p' p]).source
    case 'MMM'
        % FUTURE PROOFING
        
        % global model
        % seq = sprintf('%c%c%c%c%c ',model.structures{structure}(chain).sequence);
    
    % Cannot use:
    % case 'file' || 'web'
    otherwise
        
        StructNum = get(MISHAP.handles.pro.(['popupmenu_structure' p]),'Value');
        StructOpt = get(MISHAP.handles.pro.(['popupmenu_structure' p]),'String');
        
        if size(StructOpt,1) == 1
            StructStr = StructOpt;
        else
            StructStr = StructOpt{StructNum};
        end
        
        ChainNum = get(MISHAP.handles.pro.(['popupmenu_chain' p]),'Value');
        ChainOpt = get(MISHAP.handles.pro.(['popupmenu_chain' p]),'String');
        
        if size(ChainOpt,1) == 1
            ChainStr = ChainOpt;
        else
            ChainStr = ChainOpt{ChainNum};
        end
        
        a = MISHAP.PDB.(['p' p]).PDB.Sequence.(['Chain' ChainStr]);
        
        % Remove all white space
        for k =1:size(a,1)
            a(k) = regexprep(a(k),' ','');
        end
        
        % Invert
        a = a';
        
        b = cell2mat(a);
        
        seq = sprintf('%c%c%c %c%c%c %c%c%c    ', b);
        
        
    
end


seq = linewrap(seq,30);
seq = textwrap(editbox,seq);
set(editbox,'String',seq);






function c = linewrap(s, maxchars)

% Simple script to wrap strings to a desired length.

if nargin < 2
   % Default value for second input argument.
   maxchars = 80;
end

s = strtrim(s);

exp = sprintf('(\\S\\S{%d,}|.{1,%d})(?:\\s+|$)', maxchars, maxchars);

tokens = regexp(s, exp, 'tokens').';

get_contents = @(f) f{1};
c = cellfun(get_contents, tokens, 'UniformOutput', false);

c = deblank(c);
