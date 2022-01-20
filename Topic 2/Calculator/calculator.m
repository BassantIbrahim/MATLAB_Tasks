function varargout = bsnt(varargin)
% BSNT MATLAB code for bsnt.fig
%      BSNT, by itself, creates a new BSNT or raises the existing
%      singleton*.
%
%      H = BSNT returns the handle to a new BSNT or the handle to
%      the existing singleton*.
%
%      BSNT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in BSNT.M with the given input arguments.
%
%      BSNT('Property','Value',...) creates a new BSNT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before bsnt_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to bsnt_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help bsnt

% Last Modified by GUIDE v2.5 20-Jan-2022 01:38:43

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @bsnt_OpeningFcn, ...
                   'gui_OutputFcn',  @bsnt_OutputFcn, ...
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


% --- Executes just before bsnt is made visible.
function bsnt_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to bsnt (see VARARGIN)

% Choose default command line output for bsnt
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes bsnt wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = bsnt_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in num1.
function num1_Callback(hObject, eventdata, handles)
% hObject    handle to num1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
s=get(handles.screen1, 'string');
set(handles.screen1, 'string', strcat(s,'1'));



% --- Executes on button press in num7.
function num7_Callback(hObject, eventdata, handles)
% hObject    handle to num7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
s=get(handles.screen1, 'string');
set(handles.screen1, 'string', strcat(s,'7'));


% --- Executes on button press in num2.
function num2_Callback(hObject, eventdata, handles)
% hObject    handle to num2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
s=get(handles.screen1, 'string');
set(handles.screen1, 'string', strcat(s,'2'));

% --- Executes on button press in num3.
function num3_Callback(hObject, eventdata, handles)
% hObject    handle to num3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
s=get(handles.screen1, 'string');
set(handles.screen1, 'string', strcat(s,'3'));


% --- Executes on button press in add.
function add_Callback(hObject, eventdata, handles)
% hObject    handle to add (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global D selector;
D=str2num(get(handles.screen1,'string'));
selector=4;
s=get(handles.screen1,'string');
set(handles.screen1,'string',"");

% --- Executes on button press in divide.
function divide_Callback(hObject, eventdata, handles)
% hObject    handle to divide (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global A selector;
A=str2num(get(handles.screen1,'string'));
selector=1;
s=get(handles.screen1,'string');
set(handles.screen1,'string',"");

% --- Executes on button press in num6.
function num6_Callback(hObject, eventdata, handles)
% hObject    handle to num6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
s=get(handles.screen1, 'string');
set(handles.screen1, 'string', strcat(s,'6'));


% --- Executes on button press in num5.
function num5_Callback(hObject, eventdata, handles)
% hObject    handle to num5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
s=get(handles.screen1, 'string');
set(handles.screen1, 'string', strcat(s,'5'));


% --- Executes on button press in num4.
function num4_Callback(hObject, eventdata, handles)
% hObject    handle to num4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
s=get(handles.screen1, 'string');
set(handles.screen1, 'string', strcat(s,'4'));


% --- Executes on button press in multiply.
function multiply_Callback(hObject, eventdata, handles)
% hObject    handle to multiply (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global B selector;
B=str2num(get(handles.screen1,'string'));
selector=2;
s=get(handles.screen1,'string');
set(handles.screen1,'string',"");


% --- Executes on button press in num9.
function num9_Callback(hObject, eventdata, handles)
% hObject    handle to num9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
s=get(handles.screen1, 'string');
set(handles.screen1, 'string', strcat(s,'9'));


% --- Executes on button press in num8.
function num8_Callback(hObject, eventdata, handles)
% hObject    handle to num8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
s=get(handles.screen1, 'string');
set(handles.screen1, 'string', strcat(s,'8'));


% --- Executes on button press in square.
function square_Callback(hObject, eventdata, handles)
% hObject    handle to square (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.screen1,'string',num2str(str2num(get(handles.screen1,'string'))^2));


% --- Executes on button press in sqrt.
function sqrt_Callback(hObject, eventdata, handles)
% hObject    handle to sqrt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.screen1,'string',num2str(sqrt(abs(str2num(get(handles.screen1,'string'))))));



% --- Executes on button press in sub.
function sub_Callback(hObject, eventdata, handles)
% hObject    handle to sub (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global C selector ;
if strcmp(get(handles.screen1,'string'),'')
    set(handles.screen1,'string','-');    
else
C=str2num(get(handles.screen1,'string'));
selector=3;
s=get(handles.screen1,'string');

set(handles.screen1,'string',"");
end



% --- Executes on button press in equal.
function equal_Callback(hObject, eventdata, handles)
% hObject    handle to equal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global A B C D selector;
try
switch selector
    case 1
        Temp=str2num(get(handles.screen1,'string'));
        disp(Temp)
        if(Temp==0)
            set(handles.screen1,'string',"cannot divide by zero");
        else
            A=A/Temp;
            set(handles.screen1,'string',num2str(A));
        end
     case 2
         B=B*str2num(get(handles.screen1,'string'));
         disp(B)
         set(handles.screen1,'string',num2str(B));
     case 3
         C=C-str2num(get(handles.screen1,'string'));
         set(handles.screen1,'string',num2str(C));
     case 4
         D=D+str2num(get(handles.screen1,'string'));
         set(handles.screen1,'string',num2str(D));
end
catch
    set(handles.screen1,'string',"invalid operation");
end   

% --- Executes on button press in clear.
function clear_Callback(hObject, eventdata, handles)
% hObject    handle to clear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.screen1,'string','');



% --- Executes on button press in pi.
function pi_Callback(hObject, eventdata, handles)
% hObject    handle to pi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if strcmp(get(handles.screen1,'string'),'')
    set(handles.screen1,'string','3.14');
end
    

% --- Executes on button press in num0.
function num0_Callback(hObject, eventdata, handles)
% hObject    handle to num0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

s=get(handles.screen1, 'string');
set(handles.screen1, 'string', strcat(s,'0'));


% --- Executes on button press in dot.
function dot_Callback(hObject, eventdata, handles)
% hObject    handle to dot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if not(strcmp(get(handles.screen1,'string'),''))
    s=get(handles.screen1,'string');
    set(handles.screen1,'string',strcat(s,'.'));
end



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton41.
function pushbutton41_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton41 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
m=get(handles.edit1,'string');
x=0:0.1:20;
axes(handles.axes1)
plot(eval(m))



function xxx_Callback(hObject, eventdata, handles)
% hObject    handle to xxx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of xxx as text
%        str2double(get(hObject,'String')) returns contents of xxx as a double


% --- Executes during object creation, after setting all properties.
function xxx_CreateFcn(hObject, eventdata, handles)
% hObject    handle to xxx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function yyy_Callback(hObject, eventdata, handles)
% hObject    handle to yyy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of yyy as text
%        str2double(get(hObject,'String')) returns contents of yyy as a double


% --- Executes during object creation, after setting all properties.
function yyy_CreateFcn(hObject, eventdata, handles)
% hObject    handle to yyy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function result1_Callback(hObject, eventdata, handles)
% hObject    handle to result1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of result1 as text
%        str2double(get(hObject,'String')) returns contents of result1 as a double


% --- Executes during object creation, after setting all properties.
function result1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to result1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in equal1.
function equal1_Callback(hObject, eventdata, handles)
% hObject    handle to equal1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
try
    m=strcat(get(handles.xxx, 'string'), get(handles.operationbox, 'string'));
    m=strcat(m,get(handles.yyy,'string'));
    x=''
    for i=string(str2sym(m))
        x=strcat(x,i);
        x=strcat(x,"");
    end
    x=strcat("[",x);
    x=strcat(x,']');
    disp(x)
    set(handles.result1,'string',x);
catch
    set(handles.result1,'string','invalid input');
end


% --- Executes on selection change in listbox3.
function listbox3_Callback(hObject, eventdata, handles)
% hObject    handle to listbox3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox3
m=get(handles.listbox3,'value');
try
    if(m==1)
        set(handles.operationbox,'string','+');
    elseif(m==2)
        set(handles.operationbox,'string','-');
    elseif(m==3)
        set(handles.operationbox,'string','*'); 
    elseif(m==4)
        set(handles.operationbox,'string','/');   
    end
catch
    set(handles.result1,'string','invalid input');
end
% --- Executes during object creation, after setting all properties.
function listbox3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
