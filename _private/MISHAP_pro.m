function varargout = MISHAP_pro(varargin)

% MISHAP_pro - Main MISHAP protein generator window
%
%   MISHAP_pro
%
% Inputs:       n/a
%
% Outputs:      n/a
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
% May 13        Major write
%
% Mar 13        Initial write

% Edit the above text to modify the response to help MISHAP_pro

% Last Modified by GUIDE v2.5 14-May-2013 19:00:25

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @MISHAP_pro_OpeningFcn, ...
                   'gui_OutputFcn',  @MISHAP_pro_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before MISHAP_pro is made visible.
function MISHAP_pro_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to MISHAP_pro (see VARARGIN)

% Choose default command line output for MISHAP_pro
handles.output = hObject;

% Name the figure
set(gcf,'Name','MISHAP - v13.06 - BETA - PDB creator')

global MISHAP
MISHAP.handles.pro = handles;

% Move the figure to the side of MISHAP_dist
MISHAP.PosPro = get(gcf,'OuterPosition');

set(gcf,'OuterPosition',[...
    (MISHAP.PosDist(1) - MISHAP.PosPro(3) - 1),...
    MISHAP.PosDist(2),...
    MISHAP.PosPro(3),...
    MISHAP.PosPro(4)]);

% Setup default values
% ====================

% Change default save path to current path
set(handles.edit_output,'String',pwd);

set(handles.edit_seq1,'Max',2);
set(handles.edit_seq1,'FontName','FixedWidth');

% set(handles.edit_seq2,'Max',2);
% set(handles.edit_seq2,'FontName','FixedWidth');

set(handles.edit_save1,'String',...
    ['ProteinA_' datestr(now,'yymmdd') '.pdb']);
set(handles.edit_save2,'String',...
    ['ProteinB_' datestr(now,'yymmdd') '.pdb']);

% get_from_MMM;

% Update handles structure
guidata(hObject, handles);


% --- Outputs from this function are returned to the command line.
function varargout = MISHAP_pro_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


%  ____  _           _ _               __ 
% |  _ \(_)         | (_)             /_ |
% | |_) |_ _ __   __| |_ _ __   __ _   | |
% |  _ <| | '_ \ / _` | | '_ \ / _` |  | |
% | |_) | | | | | (_| | | | | | (_| |  | |
% |____/|_|_| |_|\__,_|_|_| |_|\__, |  |_|
%                               __/ |     
%                              |___/      

% --- Executes on button press in pushbutton_loadpdb_file1.
function pushbutton_loadpdb_file1_Callback(hObject, eventdata, handles)

get_PDB('file','1');

% --- Executes on button press in pushbutton_loadpdb_web1.
function pushbutton_loadpdb_web1_Callback(hObject, eventdata, handles)

get_PDB('web','1');


% --- Executes on selection change in popupmenu_structure1.
function popupmenu_structure1_Callback(hObject, eventdata, handles)

MISHAP_pro_sequence('1')

% --- Executes during object creation, after setting all properties.
function popupmenu_structure1_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on selection change in popupmenu_chain1.
function popupmenu_chain1_Callback(hObject, eventdata, handles)

MISHAP_pro_sequence('1')

% --- Executes during object creation, after setting all properties.
function popupmenu_chain1_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function edit_seq1_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function edit_seq1_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in pushbutton_loadmmm_file1.
function pushbutton_loadmmm_file1_Callback(hObject, eventdata, handles)

get_MMM_rotamers('file','1');


% --- Executes during object creation, after setting all properties.
function pushbutton_loadmmm_file1_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton_loadmmm_mmm1.
function pushbutton_loadmmm_mmm1_Callback(hObject, eventdata, handles)



% global model
% update_sequence;
% seq = sprintf('%c%c%c%c%c ',model.structures{structure}(chain).sequence);


function edit_label1_Callback(hObject, eventdata, handles)


% --- Executes during object creation, after setting all properties.
function edit_label1_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function edit_temp1_Callback(hObject, eventdata, handles)


% --- Executes during object creation, after setting all properties.
function edit_temp1_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function edit_resid1_Callback(hObject, eventdata, handles)


% --- Executes during object creation, after setting all properties.
function edit_resid1_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_rot1_Callback(hObject, eventdata, handles)
% hObject    handle to edit_rot1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_rot1 as text
%        str2double(get(hObject,'String')) returns contents of edit_rot1 as a double

global MISHAP

% Get the input
input = get(MISHAP.handles.pro.edit_rot1,'String');

% Try to convert it to a number
try
    rot = str2double(input);
catch
    set(MISHAP.handles.pro.edit_rot1,'String','1');
end

% Check that the number is an allowed rotamer
if rot > MISHAP.MMM.p1.TotRot
    set(MISHAP.handles.pro.edit_rot1,'String',char(MISHAP.MMM.p1.TotRot));
    
elseif rot < MISHAP.MMM.p1.TotRot
    set(MISHAP.handles.pro.edit_rot1,'String','1');

end





% --- Executes during object creation, after setting all properties.
function edit_rot1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_rot1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_save1_Callback(hObject, eventdata, handles)


% --- Executes during object creation, after setting all properties.
function edit_save1_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
 
%   ____  _           _ _               ___  
%  |  _ \(_)         | (_)             |__ \ 
%  | |_) |_ _ __   __| |_ _ __   __ _     ) |
%  |  _ <| | '_ \ / _` | | '_ \ / _` |   / / 
%  | |_) | | | | | (_| | | | | | (_| |  / /_ 
%  |____/|_|_| |_|\__,_|_|_| |_|\__, | |____|
%                                __/ |       
%                               |___/        


% --- Executes on button press in pushbutton_loadpdb_file2.
function pushbutton_loadpdb_file2_Callback(hObject, eventdata, handles)

get_PDB('file','2');


% --- Executes on button press in pushbutton_loadpdb_web2.
function pushbutton_loadpdb_web2_Callback(hObject, eventdata, handles)

get_PDB('web','2');


% --- Executes on button press in pushbutton_loadpdb_mmm2.
function pushbutton_loadpdb_mmm2_Callback(hObject, eventdata, handles)



% --- Executes on selection change in popupmenu_structure2.
function popupmenu_structure2_Callback(hObject, eventdata, handles)

MISHAP_pro_sequence('2')


% --- Executes during object creation, after setting all properties.
function popupmenu_structure2_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu_chain2.
function popupmenu_chain2_Callback(hObject, eventdata, handles)

MISHAP_pro_sequence('2')


% --- Executes during object creation, after setting all properties.
function popupmenu_chain2_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_seq2_Callback(hObject, eventdata, handles)


% --- Executes during object creation, after setting all properties.
function edit_seq2_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




% --- Executes on button press in pushbutton_loadmmm_file2.
function pushbutton_loadmmm_file2_Callback(hObject, eventdata, handles)

get_MMM_rotamers('file','2');


% --- Executes on button press in pushbutton_loadmmm_mmm2.
function pushbutton_loadmmm_mmm2_Callback(hObject, eventdata, handles)



function edit_label2_Callback(hObject, eventdata, handles)


% --- Executes during object creation, after setting all properties.
function edit_label2_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_temp2_Callback(hObject, eventdata, handles)


% --- Executes during object creation, after setting all properties.
function edit_temp2_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_resid2_Callback(hObject, eventdata, handles)


% --- Executes during object creation, after setting all properties.
function edit_resid2_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




function edit_rot2_Callback(hObject, eventdata, handles)

global MISHAP

% Get the input
input = get(MISHAP.handles.pro.edit_rot2,'String');

% Try to convert it to a number
try
    rot = str2double(input);
catch
    set(MISHAP.handles.pro.edit_rot2,'String','1');
end

% Check that the number is an allowed rotamer
if rot > MISHAP.MMM.p2.TotRot
    set(MISHAP.handles.pro.edit_rot2,'String',char(MISHAP.MMM.p2.TotRot));
    
elseif rot < MISHAP.MMM.p2.TotRot
    set(MISHAP.handles.pro.edit_rot2,'String','1');

end

% --- Executes during object creation, after setting all properties.
function edit_rot2_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




function edit_save2_Callback(hObject, eventdata, handles)


% --- Executes during object creation, after setting all properties.
function edit_save2_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



%   ____        _   _                  
%  |  _ \      | | | |                 
%  | |_) | ___ | |_| |_ ___  _ __ ___  
%  |  _ < / _ \| __| __/ _ \| '_ ` _ \ 
%  | |_) | (_) | |_| || (_) | | | | | |
%  |____/ \___/ \__|\__\___/|_| |_| |_|
                                     

function edit_output_Callback(hObject, eventdata, handles)


% --- Executes during object creation, after setting all properties.
function edit_output_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton_output.
function pushbutton_output_Callback(hObject, eventdata, handles)

global MISHAP

current = get(MISHAP.handles.pro.edit_output,'String');

new = uigetdir(current,'Select output location');

set(MISHAP.handles.pro.edit_output,'String',new);



% --- Executes on button press in pushbutton_RUN.
function pushbutton_RUN_Callback(hObject, eventdata, handles)

MISHAP_pro_RUN;






function text_URL_ButtonDownFcn(hObject, eventdata, handles)

web http://morganbye.net/mishap -browser

%    ____  _   _                  _____ _    _ _____ 
%   / __ \| | | |                / ____| |  | |_   _|
%  | |  | | |_| |__   ___ _ __  | |  __| |  | | | |  
%  | |  | | __| '_ \ / _ \ '__| | | |_ | |  | | | |  
%  | |__| | |_| | | |  __/ |    | |__| | |__| |_| |_ 
%   \____/ \__|_| |_|\___|_|     \_____|\____/|_____|
%                                                    
%                                                    

% --- Executes when user attempts to close figure1.
function figure1_CloseRequestFcn(hObject, eventdata, handles)

% Update variables
global MISHAP
MISHAP.pro = 0;

% Close figure
delete(hObject);



%   ______                _   _                 
%  |  ____|              | | (_)                
%  | |__ _   _ _ __   ___| |_ _  ___  _ __  ___ 
%  |  __| | | | '_ \ / __| __| |/ _ \| '_ \/ __|
%  | |  | |_| | | | | (__| |_| | (_) | | | \__ \
%  |_|   \__,_|_| |_|\___|\__|_|\___/|_| |_|___/
%                                               
%                                               

function get_PDB(source,partner)

global MISHAP

switch source
    case 'file'
        
        % GUI get file
        [file, directory] = uigetfile({'*.pdb','PDB file (*.pdb)'},'Load PDB file');
        
        if file == 0
            return
        end
        
        MISHAP.PDB.(['p' partner]).address = fullfile(directory, file);
        MISHAP.PDB.(['p' partner]).source  = 'file';
        
    case 'web'
        
        MISHAP.PDB.(['p' partner]).address    = inputdlg(...
            'Enter PDB code (4 letter code) or full web address:',...
            'Get PDB from online source');
        MISHAP.PDB.(['p' partner]).address = ...
            MISHAP.PDB.(['p' partner]).address{1};
        MISHAP.PDB.(['p' partner]).source = 'web';
        
end

% Load PDB
MISHAP.PDB.(['p' partner]).PDB = ...
    MISHAP_pdbimport((MISHAP.PDB.(['p' partner]).address));


% Update structure
if isfield(MISHAP.PDB.(['p' partner]).PDB,'Header')
    
    % FUTURE PROOFING - if only one structure
    pdb_code = MISHAP.PDB.(['p' partner]).PDB.Header{1}(63:67);
        
    set(MISHAP.handles.pro.(['popupmenu_structure' partner]),'String',pdb_code);
    set(MISHAP.handles.pro.(['popupmenu_structure' partner]),'Value',1);
    
else
    set(MISHAP.handles.pro.(['popupmenu_structure' partner]),'String','A');
    set(MISHAP.handles.pro.(['popupmenu_structure' partner]),'Value',1);
end

% Update chain
if isfield(MISHAP.PDB.(['p' partner]).PDB,'Terminal')
    for k = 1:size(MISHAP.PDB.(['p' partner]).PDB.Terminal,1)
        scanned = textscan(MISHAP.PDB.(['p' partner]).PDB.Terminal(k,1:end),'%s');
        chain(k)   = scanned{1}(4);
    end
    
    set(MISHAP.handles.pro.(['popupmenu_chain' partner]),'String',chain);
    set(MISHAP.handles.pro.(['popupmenu_chain' partner]),'Value',1);
    
end

% Update sequence box
if isfield(MISHAP.PDB.(['p' partner]).PDB,'Sequence')
    
else
    % Find sequence from PDB atoms
    
end

MISHAP_pro_sequence(partner);


function get_PDB_from_MMM

% Pull details for MMM. Mainly used for updating the structure and chain
% dropdown menus

global model
global MISHAP

% Check that a structure has been loaded in MMM. Otherwise open without
% searching for fields.

if isfield(model,'structure_ids')
    
    NoStruct = size(model.structures,2);
    NoChains = size(model.structures{1},2);
    
    % Get structure names
    for k = 1:model.structure_ids
        NamesStruct(k,:) = regexprep(model.structure_tags(k,:),':','');
    end
    
    % Set structure names
    set(MISHAP.handles.pro.popupmenu_structure1,'String',NamesStruct);
    set(MISHAP.handles.pro.popupmenu_structure2,'String',NamesStruct);
    
    NamesChain =  regexp(model.chain_tags(k,:),':','split');
    NamesChain{1}(strcmp('',NamesChain{1})) = [];
    
    set(MISHAP.handles.pro.popupmenu_chain1,'String',NamesChain{1});
    set(MISHAP.handles.pro.popupmenu_chain2,'String',NamesChain{1});
    
    if  size(get(MISHAP.handles.pro.popupmenu_chain2,'String'),1) > 1
        set(MISHAP.handles.pro.popupmenu_chain2,'Value',2);
    end
    
    update_sequence;
    
end

function update_sequence

% Update the sequence edit boxes

global MISHAP

s1 = get(MISHAP.handles.pro.popupmenu_structure1,'Value');
s2 = get(MISHAP.handles.pro.popupmenu_structure2,'Value');

c1 = get(MISHAP.handles.pro.popupmenu_chain1,'Value');
c2 = get(MISHAP.handles.pro.popupmenu_chain2,'Value');

MISHAP_pro_sequence(1,s1,c1);
MISHAP_pro_sequence(2,s2,c2);


function get_MMM_rotamers(source,partner)

global MISHAP

switch source
    case 'file'
               
        [MISHAP.MMM.(['p' partner]).address,...
            MISHAP.MMM.(['p' partner]).structure,...
            MISHAP.MMM.(['p' partner]).ID,...
            MISHAP.MMM.(['p' partner]).Chain,...
            MISHAP.MMM.(['p' partner]).Model,...
            MISHAP.MMM.(['p' partner]).Residue,...
            MISHAP.MMM.(['p' partner]).Label,...
            MISHAP.MMM.(['p' partner]).Temp,...
            MISHAP.MMM.(['p' partner]).TotRot] ...
            = MISHAP_pdbimportMMM;
        
        set(MISHAP.handles.pro.(['edit_label' partner]),...
            'String',MISHAP.MMM.(['p' partner]).Label);
        set(MISHAP.handles.pro.(['edit_resid' partner]),...
            'String',MISHAP.MMM.(['p' partner]).Residue);
        set(MISHAP.handles.pro.(['edit_temp' partner]),...
            'String',MISHAP.MMM.(['p' partner]).Temp);
        set(MISHAP.handles.pro.(['edit_rot' partner]),...
            'String','1');


    case 'MMM'
        
end
