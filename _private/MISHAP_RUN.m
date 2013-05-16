function MISHAP_RUN

% MISHAP_RUN - Creates the distance distribution parameters file
%
%   MISHAP_RUN
%
%
% Inputs:       n/a
%
% Outputs:
%    output1    - A distance restraints file
%                   default - unambig.tbl
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
% May 13        Initial release

% Variables
global MISHAP

tic
logo = [...
'             __  __ _____  _____ _    _          _____                     ';...
'            |  \/  |_   _|/ ____| |  | |   /\   |  __ \                    ';...
'            | \  / | | | | (___ | |__| |  /  \  | |__) |                   ';...
'            | |\/| | | |  \___ \|  __  | / /\ \ |  ___/                    ';...
'            | |  | |_| |_ ____) | |  | |/ ____ \| |                        ';...
'            |_|  |_|_____|_____/|_|  |_/_/    \_\_|                        ';...
'                                                                           ';...
'      _____                _             _       _                         ';...
'     / ____|              | |           (_)     | |                        ';...
'    | |     ___  _ __  ___| |_ _ __ __ _ _ _ __ | |_                       ';...
'    | |    / _ \| ''_ \/ __| __| ''__/ _` | | ''_ \| __|                      ';...
'    | |___| (_) | | | \__ \ |_| | | (_| | | | | | |_                       ';...
'     \_____\___/|_| |_|___/\__|_|  \__,_|_|_| |_|\__|                      ';...
'                                                    _                      ';...
'                                                   | |                     ';...
'                     __ _  ___ _ __   ___ _ __ __ _| |_ ___  _ __          ';...
'                    / _` |/ _ \ ''_ \ / _ \ ''__/ _` | __/ _ \| ''__|         ';...
'                   | (_| |  __/ | | |  __/ | | (_| | || (_) | |            ';...
'                    \__, |\___|_| |_|\___|_|  \__,_|\__\___/|_|            ';...
'                     __/ |                                                 ';...
'                    |___/                                                  '];

fprintf('\n\n')
disp(logo)

fprintf('============================================\n');
fprintf('STARTING Distance Constraint Creation\n');
fprintf('============================================\n\n');
fprintf('MISHAP version    - 13.06\n');
fprintf('Release date      - 16th May 2013\n\n');

switch computer
    case 'PCWIN'
        sys = 'windows';
        fprintf('System            - Windows - 32 bit\n\n');

    case 'PCWIN64'
        sys = 'windows';
        fprintf('System            - Windows - 64 bit\n\n');

    case 'MACI64'
        sys = 'mac';
        fprintf('System            - Mactintosh\n\n');

    case 'GLNX86'
        sys = 'linux';
        fprintf('System            - Linux - 32 bit\n\n');
        
    case 'GLNXA64'
        sys = 'linux';
        fprintf('System            - Linux - 64 bit\n\n');
end

fprintf('MatLab version    - %s\n\n',version);
fprintf('============================================\n\n');
fprintf('Checking the data table...\n');

table = get(MISHAP.handles.dist.uitable,'Data');

NoDistances = size(table,1);



% Open file
try
    file = fopen(MISHAP.outpath,'w');
catch
   fprintf('The selected output location could not be opened.\nPlease check that the folder exists and that you have file permissions for it.\nAborting generator...\n');
   fclose(file);
   return
end

% Check that table has been filled
if strcmp(table{1,2},'-') || strcmp(table{1,3},'-')
   fprintf('The from chain and residue are not complete\nAborting generator...\n');
   fclose(file);
   return
end
if strcmp(table{1,6},'-') || strcmp(table{1,7},'-')
   fprintf('The to chain and residue are not complete\nAborting generator...\n');
   fclose(file);
   return
end
if strcmp(table{1,9},'x.xx') || strcmp(table{1,10},'x.xx')
   fprintf('The distances have not been entered\nAborting generator...\n');
   fclose(file);
   return
end

fprintf('Checking complete\n\n');
fprintf('Setting label variables...\n\n');
fprintf('Saving file...\n');

for k = 1:NoDistances
    
    % FUTUREPROOFING - other labels may not use the O1 atom
    switch table{k,4}
        case 'IA1'
            labelto = 'O1';
        case 'R1A'
            labelto = 'O1';
    end
    
    switch table{k,8}
        case 'IA1'
            labelfrom = 'O1';
        case 'R1A'
            labelfrom = 'O1';
    end
    
% From the HADDOCK mailing list unambiguous distances should have the
% format:
% 
%        assign (name "atomname" and resid "residuenumber" and ...
% segid "segment id") (name "atomname" and resid "residuenumber" and ...
% segid "segment id") dext -dext 0
%
% For example:
%
%        assign (name "O1" and resid "xx" and segid "A") ...
% (name "O1" and resid "yy" and segid "B") 6.9 0.2 0.2
%
%           %%%% BEWARE OF CNS/Xplor syntax %%%%
%
% You have three numbers. So if you want your
% distance to the 6.9+/-0.2, those numbers should be: 6.9 0.2 0.2
%
% Lower limit is: First - second        6.9-0.2 = 6.7
% Upper limit is: First + third         6.9+0.2 = 7.1
    
    output = [...
        '    assign (name "'...
        labelto ...
        '" and resid "' ...
        table{k,3} ...
        '" and segid "' ...
        table{k,2} ...
        '") (name "' ...
        labelfrom ...
        '" and resid "'...
        table{k,7} ...
        '" and segid "' ...
        table{k,6} ...
        '") ' ...
        table{k,9} ' '...
        (num2str(str2double(table{k,10})/2)) ' '...
        (num2str(str2double(table{k,10})/2))...
        ];
    
    fprintf(file,'%s\n',output);
    
end

% Close file from memory
fclose(file);

fprintf('File saved as\n%s\n',MISHAP.outpath);

fprintf('\n============================================\n\n');

runTime = toc;

fprintf('MISHAP - distance constraint generator completed in %s seconds\n',num2str(runTime));
fprintf('Thank you for using MISHAP\n\n');