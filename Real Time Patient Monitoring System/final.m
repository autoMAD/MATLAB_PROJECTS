function varargout = final(varargin)
% FINAL MATLAB code for final.fig
%      FINAL, by itself, creates a new FINAL or raises the existing
%      singleton*.
%
%      H = FINAL returns the handle to a new FINAL or the handle to
%      the existing singleton*.
%
%      FINAL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FINAL.M with the given input arguments.
%
%      FINAL('Property','Value',...) creates a new FINAL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before final_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to final_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help final

% Last Modified by GUIDE v2.5 22-Apr-2013 01:01:05

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @final_OpeningFcn, ...
                   'gui_OutputFcn',  @final_OutputFcn, ...
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

% --- Executes just before final is made visible.
function final_OpeningFcn(hObject, eventdata, handles, varargin)
axes(handles.axes1);
img=imread('avatar.jpg');
image(img);

axes(handles.axes2);
img=imread('ecg.jpg');
image(img);

handles.comport ='';
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to final (see VARARGIN)

% Choose default command line output for final
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes final wait for user response (see UIRESUME)
% uiwait(handles.figure1);

% --- Outputs from this function are returned to the command line.
function varargout = final_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
    global file;

    str = get(hObject, 'String');
    val = get(hObject,'Value');
  switch str{val};  
case 'Patient 1'
    axes(handles.axes1);
    %set(gca,'visible','off');
    %set(gca,'xtick',[]) ;
    img=imread('prasanna.jpg');
    image(img);
    file = fopen('achuth.txt', 'w');
    set(handles.name,'String','Name : K. Prasanna Kumar');
    set(handles.age,'String','Age  :  24  ');
    set(handles.dob,'String','DOB  :  21/06/1991  ');
    set(handles.hgt,'String','Height  :  5.11 ft  ');
    set(handles.wgt,'String','Weight  :  82 kgs  ');
    guidata(hObject,handles);
case 'Patient 2'
    axes(handles.axes1);
    set(gca,'visible','off');
    img=imread('ashok.jpg');
    image(img);
    file = fopen('ashok.txt', 'w');
    set(handles.name,'String','Name : Ch.Ashok');
    set(handles.age,'String','Age  :  21  ');
    set(handles.dob,'String','DOB  :   04/07/1991 ');
    set(handles.hgt,'String','Height  :  5.8 ft  ');
    set(handles.wgt,'String','Weight  :  60 kgs  ');
case 'Patient 4'
    axes(handles.axes1);
    set(gca,'visible','off');
    img=imread('vinnu.JPG');
    image(img);
    file = fopen('vinay.txt', 'w');
    set(handles.name,'String','Name : S.Vinay kumar');
    set(handles.age,'String','Age  :  21  ');
    set(handles.dob,'String','DOB  :   23/03/1989  ');
    set(handles.hgt,'String','Height  :  5.8 ft  ');
    set(handles.wgt,'String','Weight  :  55 kgs  ');
                            
  case 'Patient 3'
    axes(handles.axes1);
    set(gca,'visible','off');
    img=imread('shiva.jpg');
    image(img);
    file = fopen('vinay.txt', 'w');
    set(handles.name,'String','Name : U.shiva kumar');
    set(handles.age,'String','Age  :  21  ');
    set(handles.dob,'String','DOB  :   23/03/1989  ');
    set(handles.hgt,'String','Height  :  5.6 ft  ');
    set(handles.wgt,'String','Weight  :  58 kgs  ');
  end 
guidata(hObject,handles)
    

% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
clc;
%val = get(handles.popupmenu1,'Value');
%str = get(handles.popupmenu1, 'String');
%patient=str{val};
global data;
%data=file;
s= serial('com2','baudrate',9600);
fopen(s);
%fid=fopen('C:\Users\pawan\Google Drive\Prasanna.txt','a');
t = 1 ;
x = [] ;
b = 0 ;
fs=100;
beatcount=0;
period=300;
step=0.8;
bp=randi([68,73],1,30);
%r=rand([1,2.5],1,30);
%t=rand([0.3,1],1,30);
i=1;
axes(handles.axes2);

while ( t > 0 )
   b =fscanf(s,'%f');
   fprintf(fid,'%f',b);
   fprintf(fid,'\n');
    
   if(b<=2&b>=-2)
        x = [ x, b ] ;
        y = plot (x) ;
        axis ( [ t ,period+t, -2 , 2 ] ) ;
        grid on;
        t = t + step;
        set(gca,'Color',[0.1 0.1 0.1],'XTick', []);
        set(y,'Color','red','LineWidth',1.5)
        drawnow; 
        refresh; 
      
   end
   %set(handles.r,'String',r(1,i));  
   %set(handles.t,'String',t(1,i)); 
   if b==0;
     set(handles.bpm,'string','0');  
  
   else
   set(handles.bpm,'string',bp(1,i));
   end
      i=i+1;
      if i==30;
          i=1;
      end    
          
end
%fclose(fid);
fclose(s);
guidata(hObject,handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in com.
function com_Callback(hObject, eventdata, handles)
    val = get(hObject,'Value');
    str = get(hObject, 'String');
    handles.comPort = str{val};
    guidata(hObject,handles)
% hObject    handle to com (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns com contents as cell array
%        contents{get(hObject,'Value')} returns selected item from com


% --- Executes during object creation, after setting all properties.
function com_CreateFcn(hObject, eventdata, handles)
% hObject    handle to com (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)

clear all;
close all;
guidata(hObject,handles);
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
