function varargout = untitled(varargin)
% UNTITLED MATLAB code for untitled.fig
%      UNTITLED, by itself, creates a new UNTITLED or raises the existing
%      singleton*.
%
%      H = UNTITLED returns the handle to a new UNTITLED or the handle to
%      the existing singleton*.
%
%      UNTITLED('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UNTITLED.M with the given input arguments.
%
%      UNTITLED('Property','Value',...) creates a new UNTITLED or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before untitled_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to untitled_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help untitled

% Last Modified by GUIDE v2.5 05-Dec-2016 19:09:55

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @untitled_OpeningFcn, ...
                   'gui_OutputFcn',  @untitled_OutputFcn, ...
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
end

% --- Executes just before untitled is made visible.
function untitled_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to untitled (see VARARGIN)

% Choose default command line output for untitled
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes untitled wait for user response (see UIRESUME)
% uiwait(handles.figure1);
end

% --- Outputs from this function are returned to the command line.
function varargout = untitled_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
end
% --- Executes on button press in startBT.
function startBT_Callback(hObject, eventdata, handles)
    global table;
    global f;
    global finish;
    % initialize table
    table = zeros(4, 4, 4);
    % create and initialize new fegure
    f = figure;
    hold on
    plot3(1,1,1);
    view(3)
    xlim([1,5])
    ylim([1,5])
    zlim([1,5])
    grid on
    rotate3d on
    axis on
    xlabel('x')
    ylabel('y')
    zlabel('z')
    finish = 0;
    set(handles.text5, 'String', 'Playing...');
    
% hObject    handle to startBT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

end

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
end


function xin_Callback(hObject, eventdata, handles)
% hObject    handle to xin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of xin as text
%        str2double(get(hObject,'String')) returns contents of xin as a double
end

% --- Executes during object creation, after setting all properties.
function xin_CreateFcn(hObject, eventdata, handles)
% hObject    handle to xin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end


function yin_Callback(hObject, eventdata, handles)
% hObject    handle to yin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of yin as text
%        str2double(get(hObject,'String')) returns contents of yin as a double
end

% --- Executes during object creation, after setting all properties.
function yin_CreateFcn(hObject, eventdata, handles)
% hObject    handle to yin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end


function zin_Callback(hObject, eventdata, handles)
% hObject    handle to zin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of zin as text
%        str2double(get(hObject,'String')) returns contents of zin as a double
end

% --- Executes during object creation, after setting all properties.
function zin_CreateFcn(hObject, eventdata, handles)
% hObject    handle to zin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end
% --- Executes on button press in EnterBT.
function EnterBT_Callback(hObject, eventdata, handles)
% hObject    handle to EnterBT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global finish;
% if the game is finished, don't let user do anything on this board
% (but user can create another new game to play)
if finish == 1 
    return
end
% read input from user
x = str2num(get(handles.xin, 'string'));
y = str2num(get(handles.yin, 'string'));
z = str2num(get(handles.zin, 'string'));

% attemp to put on chess
valid = put(1, x, y, z);

% only when user put on a valid position the game will go on
% (otherwise nothing will change)
if (valid == true)
   % draw a cube on the position user choose
   drawCube(x ,y ,z, 1);
   
   % judge whether the user has win
   if judge() == 1
       set(handles.text5, 'String', 'You win!');
       % the game has finished
       finish = 1;
       return
   end
   
   % let AI choose a position
   [AIx, AIy, AIz] = AInext();
   % put PI's chess on that position
   put(2, AIx, AIy, AIz);
   % draw a cube
   drawCube(AIx, AIy, AIz, 2);
   % judge whether the AI has win
   if judge() == 2
       set(handles.text5, 'String', 'You lose!');
       % the game has finished
       finish = 0;
       return
   end
end
end
