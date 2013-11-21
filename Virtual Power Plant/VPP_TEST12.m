function varargout = VPP_TEST12(varargin)
% VPP_TEST12 M-file for VPP_TEST12.fig
%      VPP_TEST12, by itself, creates a new VPP_TEST12 or raises the existing
%      singleton*.
%
%      H = VPP_TEST12 returns the handle to a new VPP_TEST12 or the handle to
%      the existing singleton*.
%
%      VPP_TEST12('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in VPP_TEST12.M with the given input arguments.
%
%      VPP_TEST12('Property','Value',...) creates a new VPP_TEST12 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before VPP_TEST12_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to VPP_TEST12_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help VPP_TEST12

% Last Modified by GUIDE v2.5 12-Nov-2013 10:54:03

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @VPP_TEST12_OpeningFcn, ...
                   'gui_OutputFcn',  @VPP_TEST12_OutputFcn, ...
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


% --- Executes just before VPP_TEST12 is made visible.
function VPP_TEST12_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to VPP_TEST12 (see VARARGIN)

% Choose default command line output for VPP_TEST12
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes VPP_TEST12 wait for user response (see UIRESUME)
% uiwait(handles.figure1);
fig=handles.figure1;
% First Button
uicontrol('Style','pushbutton','String','BACK','FontSize',18,...
    'Callback','LPPANEL',...
    'Units','Normalized','Position',[0.825 0.032 0.1 0.1],...
    'Parent',fig)
% More Analysis Button

uicontrol('Style','pushbutton','String','NEXT','FontSize',18,...
    'Callback','VPP_TEST121',...
    'Units','Normalized','Position',[0.825 0.2 0.1 0.1],...
    'Parent',fig)

% --- Outputs from this function are returned to the command line.
function varargout = VPP_TEST12_OutputFcn(hObject, eventdata, handles) 
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

y1=(420*y);
z1=(80*z);
m1=(150*m);

PC=y1+z1+m1;
total=0;
for i=1:24
    total=total+PC(1,i);
end
disp('Place: Lingampally');
disp('Total Power Consumption per Day in Watt:');
disp(total);
axes(handles.axes1);
plot(x,PC);
title('Behaviour of Consumer Vs Power Consumption');
xlabel('Behaviour of Consumer in (Hours)');
ylabel('Power Consumption in (Watt)');
axes(handles.axes2);
pie([60 40],{'Hydro','Coal'});
hydro=0.6*total;
coal=0.4*total;
disp('Total Power Generation per Day in Watt:');
disp('Hydro Electricity Power per Day in Watt:');
disp(hydro);
disp('Coal Power per Day in Watt:');
disp(coal);
