function varargout = TrafficLight(varargin)
% TRAFFICLIGHT MATLAB code for TrafficLight.fig
%      TRAFFICLIGHT, by itself, creates a new TRAFFICLIGHT or raises the existing
%      singleton*.
%
%      H = TRAFFICLIGHT returns the handle to a new TRAFFICLIGHT or the handle to
%      the existing singleton*.
%
%      TRAFFICLIGHT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TRAFFICLIGHT.M with the given input arguments.
%
%      TRAFFICLIGHT('Property','Value',...) creates a new TRAFFICLIGHT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before TrafficLight_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to TrafficLight_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help TrafficLight

% Last Modified by GUIDE v2.5 28-Jan-2022 21:25:57

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @TrafficLight_OpeningFcn, ...
                   'gui_OutputFcn',  @TrafficLight_OutputFcn, ...
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


% --- Executes just before TrafficLight is made visible.
function TrafficLight_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to TrafficLight (see VARARGIN)

% Choose default command line output for TrafficLight
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes TrafficLight wait for user response (see UIRESUME)
% uiwait(handles.figure1);
clear all;

global a, global b,global c, global d, global e, global f;
b=imread('maintenance.jpg');
c=imread('car_start.jpg');
d=imread('car_stop.jpg');
e=imread('walk_start.jpg');
f=imread('walk_stop.jpg');



a=arduino('COM3','Uno');
%pins configuration
configurePin(a, 'D9', 'DigitalOutput');
configurePin(a, 'D8', 'DigitalOutput');
configurePin(a, 'D11', 'DigitalOutput');
configurePin(a, 'D10', 'DigitalOutput');



% --- Outputs from this function are returned to the command line.
function varargout = TrafficLight_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in RedBtn.
function RedBtn_Callback(hObject, eventdata, handles)
% hObject    handle to RedBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global a, global flag;
if(flag==0)
    writeDigitalPin(a,'D9', 1);
    writeDigitalPin(a,'D8', 0);
    writeDigitalPin(a,'D11', 0);
end    

% --- Executes on button press in YellowBtn.
function YellowBtn_Callback(hObject, eventdata, handles)
% hObject    handle to YellowBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global a, global flag;
if(flag==0)
    writeDigitalPin(a,'D9', 0);
    writeDigitalPin(a,'D8', 1);
    writeDigitalPin(a,'D11', 0);
end

% --- Executes on button press in GreenBtn.
function GreenBtn_Callback(hObject, eventdata, handles)
% hObject    handle to GreenBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global a, global flag;
if(flag==0)
    writeDigitalPin(a,'D9', 0);
    writeDigitalPin(a,'D8', 0);
    writeDigitalPin(a,'D11', 1);
end


function CarTimer_Callback(hObject, eventdata, handles)
% hObject    handle to CarTimer (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of CarTimer as text
%        str2double(get(hObject,'String')) returns contents of CarTimer as a double


% --- Executes during object creation, after setting all properties.
function CarTimer_CreateFcn(hObject, eventdata, handles)
% hObject    handle to CarTimer (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function WalkTimer_Callback(hObject, eventdata, handles)
% hObject    handle to WalkTimer (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of WalkTimer as text
%        str2double(get(hObject,'String')) returns contents of WalkTimer as a double


% --- Executes during object creation, after setting all properties.
function WalkTimer_CreateFcn(hObject, eventdata, handles)
% hObject    handle to WalkTimer (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in ResetBtn.
function ResetBtn_Callback(hObject, eventdata, handles)
% hObject    handle to ResetBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global a, global flag, global b;

writeDigitalPin(a, 'D9', 0);
writeDigitalPin(a, 'D8', 0);
writeDigitalPin(a, 'D11', 0);
writeDigitalPin(a, 'D10', 0);
set(handles.ModeTitle, 'string', 'Choose Mode');
set(handles.CarTimer, 'string', '0');
set(handles.WalkTimer, 'string', '0');

axes(handles.CarImage);
imshow(b);

axes(handles.WalkImage);
imshow(b);

flag=1;



% --- Executes on button press in AutoMode.
function AutoMode_Callback(hObject, eventdata, handles)
% hObject    handle to AutoMode (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of AutoMode
set(handles.ManualBtn, 'value', 0);

% --- Executes on button press in ManualBtn.
function ManualBtn_Callback(hObject, eventdata, handles)
% hObject    handle to ManualBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of ManualBtn
set(handles.AutoMode, 'value', 0);



function EditCT_Callback(hObject, eventdata, handles)
% hObject    handle to EditCT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EditCT as text
%        str2double(get(hObject,'String')) returns contents of EditCT as a double


% --- Executes during object creation, after setting all properties.
function EditCT_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EditCT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EditWT_Callback(hObject, eventdata, handles)
% hObject    handle to EditWT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EditWT as text
%        str2double(get(hObject,'String')) returns contents of EditWT as a double


% --- Executes during object creation, after setting all properties.
function EditWT_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EditWT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Deploy.
function Deploy_Callback(hObject, eventdata, handles)
% hObject    handle to Deploy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global flag , global a ,global T1 , global T2 , global b , global c,global d,global e,global f;

if(flag==1)
    x=get(handles.AutoMode, 'value');
    y=get(handles.ManualBtn, 'value');
    
if(x==1)
    set(handles.ManualBtn, 'value', 0);
    set(handles.ModeTitle, 'string', 'Automatic Mode');
    writeDigitalPin(a,'D9',0);
    writeDigitalPin(a,'D8',0);
    writeDigitalPin(a,'D11',0);
    T1=str2double(get(handles.EditCT, 'string'));
    if(isnan(T1))
        T1=100;
    end
    T2=str2double(get(handles.EditWT, 'string'));
    if(isnan(T2))
        T2=100;
    end
    flag=2;
    
    while(flag==2)
        %for red light
        axes(handles.CarImage);
        imshow(c)
        axes(handles.WalkImage);
        imshow(f);
        writeDigitalPin(a, 'D9', 1);
        writeDigitalPin(a, 'D10', 1);
        writeDigitalPin(a, 'D8', 0);
        writeDigitalPin(a, 'D11', 0);
        
        for i=T2:-1:0
            if(flag==1)
                break;
            end
            set(handles.CarTimer, 'string', num2str(i));
            set(handles.WalkTimer, 'string', num2str(i));
            pause(0.1);
        end
        
        %for yellow light
        if (flag==2)
            axes(handles.CarImage);
            imshow(d);
            axes(handles.WalkImage);
            imshow(f);
            writeDigitalPin(a, 'D9', 0);
            writeDigitalPin(a, 'D10', 0);
            writeDigitalPin(a, 'D8', 1);
            writeDigitalPin(a, 'D11', 0);
        end
        for i=50:-1:0
            if(flag==1)
                break;
            end
            set(handles.CarTimer, 'string', num2str(i));
            set(handles.WalkTimer, 'string', num2str(i));
            pause(0.1);
        end
        
        %for green light
        if (flag==2)
            axes(handles.CarImage);
            imshow(d);
            axes(handles.WalkImage);
            imshow(e);
            writeDigitalPin(a, 'D9', 0);
            writeDigitalPin(a, 'D10', 0);
            writeDigitalPin(a, 'D8', 0);
            writeDigitalPin(a, 'D11', 1);
        end
        for i=T1:-1:0
            if(flag==1)
                break;
            end
            set(handles.CarTimer, 'string', num2str(i));
            set(handles.WalkTimer, 'string', num2str(i));
            pause(0.1);
        end
    end
end

if(y==1)
    set(handles.AutoMode, 'value', 0);
    set(handles.ManualBtn, 'string', 'Manual Mode');
    flag=0;
end
end

            
            
            
            
        
        
        
    

    

    
