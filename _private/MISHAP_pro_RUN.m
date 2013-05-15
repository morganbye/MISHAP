function MISHAP_pro_RUN

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
% MMM EPRTOOLBOX


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
% May 2013;     Last revision: 15-May-2013
%
% Version history:
% May 13        Initial release

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
'       _____  _____  ____     _____                _                       ';...
'      |  __ \|  __ \|  _ \   / ____|              | |                      ';...
'      | |__) | |  | | |_) | | |     _ __ ___  __ _| |_ ___  _ __           ';...
'      |  ___/| |  | |  _ <  | |    | ''__/ _ \/ _` | __/ _ \| ''__|          ';...
'      | |    | |__| | |_) | | |____| | |  __/ (_| | || (_) | |             ';...
'      |_|    |_____/|____/   \_____|_|  \___|\__,_|\__\___/|_|             ';...
'                                                                           '];
fprintf('\n\n')
disp(logo)

fprintf('============================================\n');
fprintf('STARTING PDB Creation\n');
fprintf('============================================\n\n');
fprintf('MISHAP version    - 13.06\n');
fprintf('Release date      - 15th May 2013\n\n');

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

outpath = get(MISHAP.handles.pro.edit_output ,'String');

% Check for both the PDB and MMM file have been loaded

if isfield(MISHAP.PDB,'p1PDB') && isfield(MISHAP.MMM,'p1')
    fprintf('============================================\n');
    fprintf('Binding partner 1\n');
    fprintf('============================================\n\n');
    
    if isfield(MISHAP.PDB,'p1PDB')
        
        fprintf('Finding the selected PDB...\n');
        
        switch MISHAP.PDB.p1source
            case 'file'
                fprintf('Loading file %s...\n',MISHAP.PDB.p1address);
            case 'web'
                fprintf('Loading file from %s\n',MISHAP.PDB.p1address)
            case 'MMM'
                fprintf('Fetching data from MMM\n')
        end
        
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
        
        fprintf('Using structure %s and chain %s',p1StructStr,p1ChainStr);
        fprintf('\nPDB loaded!\n\n');
        
    else
        fprintf('Selected PDB could not be loaded\n\n');
    end
    
    if isfield(MISHAP.MMM,'p1')
        fprintf('Finding the selected MMM rotamer...\n');
        
        % switch MISHAP.MMM.p1.source
        %    case 'file'
                fprintf('Loading file %s...\n',MISHAP.MMM.p1.address);
        %    case 'MMM'
        %        fprintf('Fetching data from MMM');
        %end
        
        p1Label = get(MISHAP.handles.pro.edit_label1,'String');
        p1Temp  = get(MISHAP.handles.pro.edit_temp1 ,'String');
        p1Resi  = get(MISHAP.handles.pro.edit_resid1,'String');
        p1Rot   = get(MISHAP.handles.pro.edit_rot1  ,'String');
        p1Name  = get(MISHAP.handles.pro.edit_save1 ,'String');
        
        fprintf('Label                  - %s\n'  ,p1Label);
        fprintf('Temperature            - %s K\n',p1Temp);
        fprintf('Attaching to residue   - %s\n'  ,p1Resi);
        fprintf('Using rotamer          - %s\n\n',p1Rot);
        
    else
        fprintf('Selected MMM rotamer file could not be loaded\n\n');
    end
    
    % Merge
    
    fprintf('Adding rotamer to PDB...\n');
    
    MISHAP.PDB.pdb_out1 = MISHAP_pdb_add_MMM_rotamers(...
        MISHAP.PDB.p1PDB,...
        MISHAP.MMM.p1.structure ,...
        p1Label,...
        str2double(p1Resi),...
        str2double(p1Rot),...
        p1ChainStr);
    
    fprintf('Rotamer successfully added!\n\n');
    fprintf('Saving file...\n');

    
    % Save file
    
    outaddress = fullfile(outpath,p1Name);
    
    MISHAP_pdbexport(MISHAP.PDB.pdb_out1,outaddress);
    
    fprintf('File saved as\n%s\n',outaddress);
    
end

if isfield(MISHAP.PDB,'p2PDB') && isfield(MISHAP.MMM,'p2')
    fprintf('============================================\n');
    fprintf('Binding partner 2\n');
    fprintf('============================================\n\n');
    
    if isfield(MISHAP.PDB,'p2PDB')
        
        fprintf('Finding the selected PDB!\n');
        
        switch MISHAP.PDB.p1source
            case 'file'
                fprintf('Loading file \n%s...',MISHAP.PDB.p2address);
            case 'web'
                fprintf('Loading file from %s',MISHAP.PDB.p2address)
            case 'MMM'
                fprintf('Fetching data from MMM')
        end
        
        p2Struct = get(MISHAP.handles.pro.popupmenu_structure1,'Value');
        p2Chain  = get(MISHAP.handles.pro.popupmenu_chain1,'Value');
        
        fprintf('Using structure %s and chain %s',p2Struct,p2Chain);
        fprintf('\nPDB loaded!\n\n');
        
    else
        fprintf('Selected PDB could not be loaded\n\n');
    end
    
    if isfield(MISHAP.MMM,'p2')
        fprintf('Finding the selected MMM rotamer\n');
        
        switch MISHAP.MMM.p2source
            case 'file'
                fprintf('Loading file \n%s...',MISHAP.MMM.p2address);
            case 'MMM'
                fprintf('Fetching data from MMM');
        end
        
        fprintf('Rotamers loaded!\n\n');
        
        

        
        p2Label = get(MISHAP.handles.pro.edit_label2,'String');
        p2Temp  = get(MISHAP.handles.pro.edit_temp2 ,'String');
        p2Resi  = get(MISHAP.handles.pro.edit_resid2,'String');
        p2Rot   = get(MISHAP.handles.pro.edit_rot2  ,'String');
        p2Name  = get(MISHAP.handles.pro.edit_save2 ,'String');
        
        fprintf('Setting labelling conditions:\n');
        fprintf('Label                  - %s\n'  ,p2Label);
        fprintf('Temperature            - %s K\n',p2Temp);
        fprintf('Attaching to residue   - %s\n'  ,p2Resi);
        fprintf('Using rotamer          - %s\n\n',p2Rot);
        
    else
        fprintf('Selected MMM rotamer file could not be loaded\n\n');
    end
    
    % Merge
    
    fprintf('Attaching rotamer to PDB...\n');
    
    MISHAP.PDB.pdb_out1 = MISHAP_pdb_add_MMM_rotamers(...
        MISHAP.PDB.p2PDB,...
        MISHAP.MMM.p2.structure ,...
        p2Label,...
        p2Resi,...
        p2Rot,...
        p2Chain);
    
    fprintf('Rotamer successfully added!\n\n');
    fprintf('Saving file...\n');
    
    % Save file
    outaddress = fullfile(outpath,p2Name);
    MISHAP_pdbexport(outaddress);
    
    fprintf('Successfully saved \n%s\n',outaddress);
end

fprintf('\n============================================\n\n');

runTime = toc;

fprintf('MISHAP - PDB Creator completed in %s seconds\n',num2str(runTime));
fprintf('Thank you for using MISHAP\n\n');