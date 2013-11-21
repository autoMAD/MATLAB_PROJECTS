function varargout = VPP_TEST1(varargin)
% VPP_TEST1 M-file for VPP_TEST1.fig
%      VPP_TEST1, by itself, creates a new VPP_TEST1 or raises the existing
%      singleton*.
%
%      H = VPP_TEST1 returns the handle to a new VPP_TEST1 or the handle to
%      the existing singleton*.
%
%      VPP_TEST1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in VPP_TEST1.M with the given input arguments.
%
%      VPP_TEST1('Property','Value',...) creates a new VPP_TEST1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before VPP_TEST1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to VPP_TEST1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help VPP_TEST1

% Last Modified by GUIDE v2.5 11-Nov-2013 15:15:20

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @VPP_TEST1_OpeningFcn, ...
                   'gui_OutputFcn',  @VPP_TEST1_OutputFcn, ...
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


% --- Executes just before VPP_TEST1 is made visible.
function VPP_TEST1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to VPP_TEST1 (see VARARGIN)

% Choose default command line output for VPP_TEST1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
axes(handles.axes1);
imshow('kplogo.png');
axes(handles.axes2);
imshow('lingampallylogo.png');
axes(handles.axes3);
imshow('ameerpetlogo.png');
axes(handles.axes4);
imshow('miyapurlogo.png');

% UIWAIT makes VPP_TEST1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = VPP_TEST1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
fig=handles.figure1;
% First Button
uicontrol('Style','pushbutton','String','KUKATPALLY','FontSize',18,...
    'Callback','KPPANEL',...
    'Units','Normalized','Position',[0.08 0.68 0.13 0.1],...
    'Parent',fig)

% Second Button
uicontrol('Style','pushbutton','String','AMEERPET','FontSize',18,...
    'Callback','APPANEL',...
    'Units','Normalized','Position',[0.08 0.185 0.13 0.1],...
    'Parent',fig)

% Third Button
uicontrol('Style','pushbutton','String','LINGAMPALLY','FontSize',18,...
    'Callback','LPPANEL',...
    'Units','Normalized','Position',[0.828 0.68 0.15 0.1],...
    'Parent',fig)
% Fourth Button
uicontrol('Style','pushbutton','String','MIYAPUR','FontSize',18,...
    'Callback','MPPANEL',...
    'Units','Normalized','Position',[0.828 0.185 0.13 0.1],...
    'Parent',fig)
