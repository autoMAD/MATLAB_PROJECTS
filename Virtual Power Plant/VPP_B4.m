function varargout = VPP_B4(varargin)
% VPP_B4 M-file for VPP_B4.fig
%      VPP_B4, by itself, creates a new VPP_B4 or raises the existing
%      singleton*.
%
%      H = VPP_B4 returns the handle to a new VPP_B4 or the handle to
%      the existing singleton*.
%
%      VPP_B4('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in VPP_B4.M with the given input arguments.
%
%      VPP_B4('Property','Value',...) creates a new VPP_B4 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before VPP_B4_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to VPP_B4_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help VPP_B4

% Last Modified by GUIDE v2.5 20-Nov-2013 18:16:58

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @VPP_B4_OpeningFcn, ...
                   'gui_OutputFcn',  @VPP_B4_OutputFcn, ...
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


% --- Executes just before VPP_B4 is made visible.
function VPP_B4_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to VPP_B4 (see VARARGIN)

% Choose default command line output for VPP_B4
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes VPP_B4 wait for user response (see UIRESUME)
% uiwait(handles.figure1);
fig=handles.figure1;
% First Button
uicontrol('Style','pushbutton','String','BACK','FontSize',18,...
    'Callback','VPP_TEST1',...
    'Units','Normalized','Position',[0.825 0.032 0.1 0.1],...
    'Parent',fig)


% --- Outputs from this function are returned to the command line.
function varargout = VPP_B4_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
axes(handles.axes1);
Y=[2 0.9 0.3];
bar(Y,0.5);
title('NORMAL BACK-UP');
xlabel('Renewable Energy Source (SOLAR, WIND, BIOGAS)');
ylabel('BACK-UP HOURS');
axes(handles.axes2);
Y=[4 0.8 0.3];
bar(Y,0.5);
title('SUMMER BACK-UP');
xlabel('Renewable Energy Source (SOLAR, WIND, BIOGAS)');
ylabel('BACK-UP HOURS');
axes(handles.axes3);
Y=[1 2.3 0.3];
bar(Y,0.5);
title('RAINY BACK-UP');
xlabel('Renewable Energy Source (SOLAR, WIND, BIOGAS)');
ylabel('BACK-UP HOURS');
