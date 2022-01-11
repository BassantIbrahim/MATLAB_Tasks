function varargout = viewImageOnCond(varargin)
% VIEWIMAGEONCOND MATLAB code for viewImageOnCond.fig
%      VIEWIMAGEONCOND, by itself, creates a new VIEWIMAGEONCOND or raises the existing
%      singleton*.
%
%      H = VIEWIMAGEONCOND returns the handle to a new VIEWIMAGEONCOND or the handle to
%      the existing singleton*.
%
%      VIEWIMAGEONCOND('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in VIEWIMAGEONCOND.M with the given input arguments.
%
%      VIEWIMAGEONCOND('Property','Value',...) creates a new VIEWIMAGEONCOND or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before viewImageOnCond_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to viewImageOnCond_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help viewImageOnCond

% Last Modified by GUIDE v2.5 11-Jan-2022 13:00:41

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @viewImageOnCond_OpeningFcn, ...
                   'gui_OutputFcn',  @viewImageOnCond_OutputFcn, ...
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


% --- Executes just before viewImageOnCond is made visible.
function viewImageOnCond_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to viewImageOnCond (see VARARGIN)

% Choose default command line output for viewImageOnCond
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes viewImageOnCond wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = viewImageOnCond_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton16.
function pushbutton16_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
I = imread('sad.jpg');
J = imread('happy.jpg');
axes(handles.axes1);

x=get(handles.edit3,'String');
x=str2num(x);
if x>=60
  imshow(I);
else
  imshow(J); 
end
