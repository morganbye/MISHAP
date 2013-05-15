function seq = MISHAP_pro_sequence(partner,structure,chain)

% MISHAP - MMM Interfacing of Spin labels to HADDOCK progam
%
%   MISHAP
%
% An open source program, for the conversion of MMM models to a format
% suitable for submission to HADDOCK.
%
% This program needs to be called from MMM (Predict > Quaternary > HADDOCK)
%
% Inputs:       n/a
%
% Outputs:
%    output1    - PDB(/s)
%    output2    - 
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
% M. Bye v13.04
%
% Author:       Morgan Bye
% Work address: Henry Wellcome Unit for Biological EPR
%               University of East Anglia
%               NORWICH, UK
% Email:        morgan.bye@uea.ac.uk
% Website:      http://www.morganbye.net/mishap/
% Mar 2013;     Last revision: 22-March-2013
%
% Version history:
% Mar 13        Initial release

% Load variables
% global model
global MISHAP

editbox = MISHAP.handles.pro.(['edit_seq' num2str(partner)]);

% With chains and structures found show sequence preview
%
% From MMM
% global model
% seq = sprintf('%c%c%c%c%c ',model.structures{structure}(chain).sequence);

% seq = sprintf('%c%c%c%c%c ' ,...
%    MISHAP.PDB.model.structures{structure}(chain).sequence);

p1StructNum = get(MISHAP.handles.pro.popupmenu_structure1,'Value');
p1StructOpt = get(MISHAP.handles.pro.popupmenu_structure1,'String');
if size(p1StructOpt,1) == 1
    p1StructStr = p1StructOpt;
else
    p1StructStr = p1StructOpt{p1StructNum};
end

p1ChainNum = get(MISHAP.handles.pro.popupmenu_chain1,'Value');
p1ChainOpt = get(MISHAP.handles.pro.popupmenu_chain1,'String');
if size(p1ChainOpt,1) == 1
    p1ChainStr = p1ChainOpt;
else
    p1ChainStr = p1ChainOpt{p1ChainNum};
end

a = MISHAP.PDB.p1.PDB.Sequence.(['Chain' p1ChainStr]);

% Remove all white space
for k =1:size(a,1)
   a(k) = regexprep(a(k),' ',''); 
end

% Invert
a = a';

b = cell2mat(a);

seq = sprintf('%c%c%c %c%c%c %c%c%c    ', b);



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
