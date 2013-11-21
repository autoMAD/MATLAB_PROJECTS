function varargout = VPP_TEST111(varargin)
% VPP_TEST111 M-file for VPP_TEST111.fig
%      VPP_TEST111, by itself, creates a new VPP_TEST111 or raises the existing
%      singleton*.
%
%      H = VPP_TEST111 returns the handle to a new VPP_TEST111 or the handle to
%      the existing singleton*.
%
%      VPP_TEST111('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in VPP_TEST111.M with the given input arguments.
%
%      VPP_TEST111('Property','Value',...) creates a new VPP_TEST111 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before VPP_TEST111_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to VPP_TEST111_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help VPP_TEST111

% Last Modified by GUIDE v2.5 12-Nov-2013 10:44:10

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @VPP_TEST111_OpeningFcn, ...
                   'gui_OutputFcn',  @VPP_TEST111_OutputFcn, ...
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


% --- Executes just before VPP_TEST111 is made visible.
function VPP_TEST111_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to VPP_TEST111 (see VARARGIN)

% Choose default command line output for VPP_TEST111
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes VPP_TEST111 wait for user response (see UIRESUME)
% uiwait(handles.figure1);
fig=handles.figure1;
% First Button
uicontrol('Style','pushbutton','String','BACK','FontSize',18,...
    'Callback','VPP_TEST11',...
    'Units','Normalized','Position',[0.825 0.032 0.1 0.1],...
    'Parent',fig)


% --- Outputs from this function are returned to the command line.
function varargout = VPP_TEST111_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
% Time of the Day
x=[0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23];

% Power Consumption in Houses
y=[20 18 16 12 10 9 8 10 12 16 20 26 30 32 28 26 24 22 24 26 28 30 28 24];

% Power Consumption in Super Markets
z=[0 0 0 0 0 0 0 0 0 20 10 12 13 14 15 16 18 20 22 24 26 28 0 0];

% Power Consumption in Offices
m=[0 0 0 0 0 0 0 10 5 6 7 8 9 10 12 14 16 18 20 22 0 0 0 0];

y1=(234*y);
z1=(34*z);
m1=(45*m);
axes(handles.axes1);
plot(x,y1);
title('Behaviour of Consumer Vs Power Consumption in Homes');
xlabel('Behaviour of Consumer (Hours)');
ylabel('Power Consumption (Watt)');
axes(handles.axes2);
plot(x,z1);
title('Behaviour of Consumer Vs Power Consumption in Super Markets');
xlabel('Behaviour of Consumer (Hours)');
ylabel('Power Consumption (Watt)');
axes(handles.axes3);
plot(x,m1);
title('Behaviour of Consumer Vs Power Consumption in Offices');
xlabel('Behaviour of Consumer (Hours)');
ylabel('Power Consumption (Watt)');
