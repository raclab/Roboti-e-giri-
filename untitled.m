function varargout = untitled(varargin)
% UNTITLED MATLAB code for untitled.fig
%      UNTITLED, by itself, creates a new UNTITLED or raises the existing
%      singleton*.
%
%      H = UNTITLED returns the handle to a new UNTITLED or the handle to
%      the existing singleton*.
%
%      UNTITLED('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UNTITLED.M with the given input arguments.
%
%      UNTITLED('Property','Value',...) creates a new UNTITLED or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before untitled_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to untitled_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help untitled

% Last Modified by GUIDE v2.5 22-May-2018 10:49:45

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @untitled_OpeningFcn, ...
                   'gui_OutputFcn',  @untitled_OutputFcn, ...
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


% --- Executes just before untitled is made visible.
function untitled_OpeningFcn(hObject, ~, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to untitled (see VARARGIN)

% Choose default command line output for untitled
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes untitled wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = untitled_OutputFcn(~, ~, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function Theta_1_Callback(~, ~, ~)
% hObject    handle to Theta_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Theta_1 as text
%        str2double(get(hObject,'String')) returns contents of Theta_1 as a double


% --- Executes during object creation, after setting all properties.
function Theta_1_CreateFcn(hObject, ~, ~)
% hObject    handle to Theta_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Theta_2_Callback(~, ~, ~)
% hObject    handle to Theta_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Theta_2 as text
%        str2double(get(hObject,'String')) returns contents of Theta_2 as a double


% --- Executes during object creation, after setting all properties.
function Theta_2_CreateFcn(hObject, ~, ~)
% hObject    handle to Theta_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Theta_3_Callback(~, ~, ~)
% hObject    handle to Theta_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Theta_3 as text
%        str2double(get(hObject,'String')) returns contents of Theta_3 as a double


% --- Executes during object creation, after setting all properties.
function Theta_3_CreateFcn(hObject, ~, ~)
% hObject    handle to Theta_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btn_Forward.
function btn_Forward_Callback(~, ~, handles)
% hObject    handle to btn_Forward (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%% ?leri Kinematik için yap?lan hesaplamalar

Th_1=str2double(handles.Theta_1.String)*pi/180; %"Edit Text" bölümüne girilen string de?eri Th_1 aç?s?na çeviren fonksiyon
Th_2=str2double(handles.Theta_2.String)*pi/180; %"Edit Text" bölümüne girilen string de?eri Th_2 aç?s?na çeviren fonksiyon
Th_3=str2double(handles.Theta_3.String)*pi/180; %"Edit Text" bölümüne girilen string de?eri Th_3 aç?s?na çeviren fonksiyon

L_1=20; % "Axes" k?sm?na çizilecek robot kolun birinci link uzunlu?u
L_2=50; % "Axes" k?sm?na çizilecek robot kolun ikinci link uzunlu?u
L_3=40; % "Axes" k?sm?na çizilecek robot kolun üçüncü link uzunlu?u

L(1)=Link([0 L_1 0 pi/2]); % Robot kol için hesaplanan 1.link parametreleri
L(2)=Link([0 0 L_2 0]); % Robot kol için hesaplanan 2.link parametreleri
L(3)=Link([0 0 L_3 0]); % Robot kol için hesaplanan 3.link parametreleri

Robot=SerialLink(L); % Yukar?da hesab? yap?lan bu üç linkin birle?tirip robot kol haline getiren fonksiyon 
Robot.name='Yasin_Robot'; % Robot kol'a verdi?imiz isim
Robot.plot([Th_1 Th_2 Th_3]); % Hesaplanan aç?lara göre robot kol'u "Axes" k?sm?na çizen fonksiyon
 
T = Robot.fkine([Th_1 Th_2 Th_3]);  % Robot kolun transformasyon matrisi
handles.Pos_X.String=num2str(floor(T(1,4))); % Hesaplanan aç? de?erlerinin string türüne dönü?türülüp Pos_X de?i?kenine atay?p ilgili "Edit Text"'e yazar
handles.Pos_Y.String=num2str(floor(T(1,4))); % Hesaplanan aç? de?erlerinin string türüne dönü?türülüp Pos_Y de?i?kenine atay?p ilgili "Edit Text"'e yazar
handles.Pos_Z.String=num2str(floor(T(1,4))); % Hesaplanan aç? de?erlerinin string türüne dönü?türülüp Pos_Z de?i?kenine atay?p ilgili "Edit Text"'e yazar



function Pos_X_Callback(~, ~, ~)
% hObject    handle to Pos_X (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Pos_X as text
%        str2double(get(hObject,'String')) returns contents of Pos_X as a double


% --- Executes during object creation, after setting all properties.
function Pos_X_CreateFcn(hObject, ~, ~)
% hObject    handle to Pos_X (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Pos_Y_Callback(~, ~, ~)
% hObject    handle to Pos_Y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Pos_Y as text
%        str2double(get(hObject,'String')) returns contents of Pos_Y as a double


% --- Executes during object creation, after setting all properties.
function Pos_Y_CreateFcn(hObject, ~, ~)
% hObject    handle to Pos_Y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Pos_Z_Callback(~, ~, ~)
% hObject    handle to Pos_Z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Pos_Z as text
%        str2double(get(hObject,'String')) returns contents of Pos_Z as a double


% --- Executes during object creation, after setting all properties.
function Pos_Z_CreateFcn(hObject, ~, ~)
% hObject    handle to Pos_Z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btn_Inverse.
function btn_Inverse_Callback(~, ~, ~)
% hObject    handle to btn_Inverse (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%% Ters Kinematik K?sm? ?çin Hesaplamalar

PX=str2double.Pos_X.String); % Pos_X string türünü okuyup double türüne dönü?türür ve PX de?i?kenine atar
PY=str2double.Pos_Y.String); % Pos_Y string türünü okuyup double türüne dönü?türür ve PY de?i?kenine atar
PZ=str2double.Pos_Z.String); % Pos_Z string türünü okuyup double türüne dönü?türür ve PZ de?i?kenine atar

L_1=20; % 1.Link için Link Uzunlu?u belirlendi
L_2=50; % 2.Link için Link Uzunlu?u belirlendi
L_3=40; % 3.Link için Link Uzunlu?u belirlendi

L(1)=Link([0 L_1 0 pi/2]);  % Robot kol için hesaplanan 1.link parametreleri
L(2)=Link([0 0 L_2 0]); % Robot kol için hesaplanan 2.link parametreleri
L(3)=Link([0 0 L_3 0]); % Robot kol için hesaplanan 3.link parametreleri


Robot=SeialLink(L); % Yukar?da hesab? yap?lan bu üç linkin birle?tirip robot kol haline getiren fonksiyon 
Robot.name='Yasin_Robot'; % Robot kol'a verdi?imiz isim
Robot.plot([Th_1 Th_2 Th_3]); % Hesaplanan aç?lara göre robot kol'u "Axes" k?sm?na çizen fonksiyon



