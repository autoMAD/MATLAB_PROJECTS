function varargout = final(varargin)
% FINAL M-file for final.fig
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

% Last Modified by GUIDE v2.5 28-Sep-2013 11:04:00

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


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
hw = phased.PhaseCodedWaveform('Type','P1',...
    'ChipWidth',1e-6,'NumChips',16,...
    'OutputFormat','Samples');
x = step(hw);
hmf = phased.MatchedFilter(...
    'Coefficients',getMatchedFilter(hw),...
 'SpectrumWindow','custom',...
 'CustomSpectrumWindow',{@gausswin,2.5});
y = step(hmf,x);
axes(handles.axes1);
%subplot(311),
plot(real(x));
xlabel('Samples'); ylabel('Amplitude');
title('Input Signal');
%subplot(312),
axes(handles.axes2);
plot(real(y));
xlabel('Samples'); ylabel('Amplitude');
title('Matched Filter Output');
PRF = 2e4;
[afmag,delay,doppler] = ambgfun(y,hmf.SampleRate,PRF);
%plot(delay,doppler,afmag);
%subplot(313);
axes(handles.axes3);
mesh(delay,doppler,afmag);
%contour(delay,doppler,afmag);
xlabel('Delay (seconds)'); ylabel('Doppler Shift (hertz)');


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
hw = phased.PhaseCodedWaveform('Type','P2',...
    'ChipWidth',1e-6,'NumChips',16,...
    'OutputFormat','Samples');
x = step(hw);
hmf = phased.MatchedFilter(...
    'Coefficients',getMatchedFilter(hw),...
 'SpectrumWindow','custom',...
 'CustomSpectrumWindow',{@gausswin,2.5});
y = step(hmf,x);
axes(handles.axes1);
%subplot(311),
plot(real(x));
xlabel('Samples'); ylabel('Amplitude');
title('Input Signal');
%subplot(312),
axes(handles.axes2);
plot(real(y));
xlabel('Samples'); ylabel('Amplitude');
title('Matched Filter Output');
PRF = 2e4;
[afmag,delay,doppler] = ambgfun(y,hmf.SampleRate,PRF);
%plot(delay,doppler,afmag);
%subplot(313);
axes(handles.axes3);
mesh(delay,doppler,afmag);
%contour(delay,doppler,afmag);
xlabel('Delay (seconds)'); ylabel('Doppler Shift (hertz)');


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
hw = phased.PhaseCodedWaveform('Type','P3',...
    'ChipWidth',1e-6,'NumChips',16,...
    'OutputFormat','Samples');
x = step(hw);
hmf = phased.MatchedFilter(...
    'Coefficients',getMatchedFilter(hw),...
 'SpectrumWindow','custom',...
 'CustomSpectrumWindow',{@gausswin,2.5});
y = step(hmf,x);
axes(handles.axes1);
%subplot(311),
plot(real(x));
xlabel('Samples'); ylabel('Amplitude');
title('Input Signal');
%subplot(312),
axes(handles.axes2);
plot(real(y));
xlabel('Samples'); ylabel('Amplitude');
title('Matched Filter Output');
PRF = 2e4;
[afmag,delay,doppler] = ambgfun(y,hmf.SampleRate,PRF);
%plot(delay,doppler,afmag);
%subplot(313);
axes(handles.axes3);
mesh(delay,doppler,afmag);
%contour(delay,doppler,afmag);
xlabel('Delay (seconds)'); ylabel('Doppler Shift (hertz)');


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
hw = phased.PhaseCodedWaveform('Type','P4',...
    'ChipWidth',1e-6,'NumChips',16,...
    'OutputFormat','Samples');
x = step(hw);
hmf = phased.MatchedFilter(...
    'Coefficients',getMatchedFilter(hw),...
 'SpectrumWindow','custom',...
 'CustomSpectrumWindow',{@gausswin,2.5});
y = step(hmf,x);
axes(handles.axes1);
%subplot(311),
plot(real(x));
xlabel('Samples'); ylabel('Amplitude');
title('Input Signal');
%subplot(312),
axes(handles.axes2);
plot(real(y));
xlabel('Samples'); ylabel('Amplitude');
title('Matched Filter Output');
PRF = 2e4;
[afmag,delay,doppler] = ambgfun(y,hmf.SampleRate,PRF);
%plot(delay,doppler,afmag);
%subplot(313);
axes(handles.axes3);
mesh(delay,doppler,afmag);
%contour(delay,doppler,afmag);
xlabel('Delay (seconds)'); ylabel('Doppler Shift (hertz)');


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
hw = phased.PhaseCodedWaveform('Type','Frank',...
    'ChipWidth',1e-6,'NumChips',16,...
    'OutputFormat','Samples');
x = step(hw);
hmf = phased.MatchedFilter(...
    'Coefficients',getMatchedFilter(hw),...
 'SpectrumWindow','custom',...
 'CustomSpectrumWindow',{@gausswin,2.5});
y = step(hmf,x);
axes(handles.axes1);
%subplot(311),
plot(real(x));
xlabel('Samples'); ylabel('Amplitude');
title('Input Signal');
%subplot(312),
axes(handles.axes2);
plot(real(y));
xlabel('Samples'); ylabel('Amplitude');
title('Matched Filter Output');
PRF = 2e4;
[afmag,delay,doppler] = ambgfun(y,hmf.SampleRate,PRF);
%plot(delay,doppler,afmag);
%subplot(313);
axes(handles.axes3);
mesh(delay,doppler,afmag);
%contour(delay,doppler,afmag);
xlabel('Delay (seconds)'); ylabel('Doppler Shift (hertz)');