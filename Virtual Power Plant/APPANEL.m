function varargout = APPANEL(varargin)
% APPANEL M-file for APPANEL.fig
%      APPANEL, by itself, creates a new APPANEL or raises the existing
%      singleton*.
%
%      H = APPANEL returns the handle to a new APPANEL or the handle to
%      the existing singleton*.
%
%      APPANEL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in APPANEL.M with the given input arguments.
%
%      APPANEL('Property','Value',...) creates a new APPANEL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before APPANEL_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to APPANEL_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help APPANEL

% Last Modified by GUIDE v2.5 20-Nov-2013 17:59:37

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @APPANEL_OpeningFcn, ...
                   'gui_OutputFcn',  @APPANEL_OutputFcn, ...
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


% --- Executes just before APPANEL is made visible.
function APPANEL_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to APPANEL (see VARARGIN)

% Choose default command line output for APPANEL
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes APPANEL wait for user response (see UIRESUME)
% uiwait(handles.figure1);
fig=handles.figure1;
% First Button
uicontrol('Style','pushbutton','String','NORMAL','FontSize',18,...
    'Callback','VPP_TEST13',...
    'Units','Normalized','Position',[0.1 0.225 0.3 0.3],...
    'Parent',fig)


uicontrol('Style','pushbutton','String','FAULT','FontSize',18,...
    'Callback','VPP_B4',...
    'Units','Normalized','Position',[0.6 0.225 0.3 0.3],...
    'Parent',fig)



% --- Outputs from this function are returned to the command line.
function varargout = APPANEL_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
