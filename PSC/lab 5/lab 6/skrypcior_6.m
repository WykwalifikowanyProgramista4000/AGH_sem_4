%% Przyk≈Çad 2

figure 
load openloop60hertz, openLoop=openLoopVoltage; 
Fs=1000;
t=(0:length(openLoop)-1)/Fs;
plot(t, openLoop);
box on;
grid on; 
ylabel 'Voltage [V]', xlabel 'Time [s]' 
title 'Open-Loop Voltage with Noise' 

%% Power spectrum - Moc 
%% na ok 60 Hz widzimy zaklocenie

figure;
periodogram(openLoop, [], [], Fs);

%% Projektujemy filtr 

filtCoeff= designfilt('bandstopiir', 'FilterOrder', 2,... 
    'HalfPowerFrequency1', 59, 'HalfPowerFrequency2', 61, ... 
    'SampleRate', Fs); 

%% Wykres filtru 

fvtool(filtCoeff) 

noiseFreeSignal= filter(filtCoeff, openLoop); 

%% sprawadzamy wynik w dziedzinie czasu 

close all; 
figure; 
plot (t, openLoop, t, noiseFreeSignal); 
grid on; 
legend('Przed filtracja', 'Po filtracji'); 
ylabel 'Napiecie [V]', xlabel 'Czas [s]' 

%% sprawdzamy wynik w dziedzinie czƒôstotliwo≈õci 
figure; 
periodogram(noiseFreeSignal, [], [], Fs); 
title('Po filtracji '); 

figure; 
periodogram(openLoop, [], [], Fs); 
title('Przed filtracja ');

%% Przyk≈Çad 3

rng default    %losowe liczby
x = rand(2,15);

b =1;
a = [1 -0.2];

y = filter(b,a,x,[],2);

t = 0:length(x)-1; %indeks wektora

plot(t,x(1,:))
hold on
plot(t,y(1,:))
legend('Input Data','Filtered Data')
title('First Row')

%% Przyk≈Çad 4

load chirp 
t =  (0:length(y) - 1/ Fs);

xfft = abs(fft(y));
xfft = xfft/13129;
x1 = 1:1:6564;
bar(x1(1:6564), xfft(1:6564));
axis([ 0 , 6564, 0, 0.01]);

bhi = fir1(34,0.48,'high',chebwin(35,30)); 
freqz(bhi,1) 
fvtool(bhi) 
outhi = filter(bhi,1,y); 

xfft=abs(fft(outhi)); 
xfft=xfft/13129; 
x1=1:1:6564; 

bar(x1(1:6564), xfft(1:6564));   
axis([0,6564, 0,0.01]) ; 

subplot(2,1,1) 
plot(t,y) 
title('Original Signal') 
ys = ylim; 

subplot(2,1,2) 
plot(t,outhi) 
title('Highpass Filtered Signal') 
xlabel('Time (s)') 
ylim(ys)

%% Przyk≈Çad 5

load chirp 
t = (0:length(y)-1)/Fs; % 1.6 sekundy 

ord = 46; 
low = 0.4; 
bnd = [0.5 0.99]; 
bM = fir1(ord,[low bnd]); 
fvtool(bM)

%outF = filter(bM,1,y); 

xfft=abs(fft(outF)); 
xfft=xfft/13129; 
x1=1:1:6564; 
%bar(x1(1:6564), xfft(1:6564));   
%axis([0,6564, 0,0.01]) ;

%% Przyk≥ad 6

load chirp 
t = (0:length(y)-1)/Fs;   % 1.6 sekundy 

hM = fir1(ord,[low bnd],'DC-0',hann(ord+1)); 

hfvt = fvtool(bM,1,hM,1);      %porownanie okien 
legend(hfvt,'Hamming','Hann')  

outhann = filter(hM,1,y);

xfft=abs(fft(outhann)); 
xfft=xfft/13129; 
x1=1:1:6564; 
bar(x1(1:6564), xfft(1:6564));   
axis([0,6564, 0,0.01]) ;

%% Przyk≥ad 7

x2 = wiatrak20;
% normalizacja do przedzialu [-1, 1]  
% jesli sygnaly sa mierzone w roznych odleglosciach
max_data=max(abs(wiatrak20));    
data=wiatrak20/max_data; 
xfft=abs(fft(x2)); 
xfft=xfft/44100; 

% NastÍpnie wyrysowujemy wykresy FFT. 

x1=1:1:44100; 
bar(x1(1:44100), xfft(1:44100));   

% wyrysowalo 2 razy zatem wyrysujemy 22050 

x1=1:1:22050; 
bar(x1(1:22050), xfft(1:22050));  

% dodajmy osie i etykiety osi 

axis([0,1000, 0,0.02]) ; 

xlabel('Skladowa czestotliwoúci [Hz]'); 
ylabel('Znormalizowania amplituda skladowej czestotliwosci');

%% ZADANIE 1.

filtCoeff= designfilt('bandstopiir', 'FilterOrder', 2,... 
    'HalfPowerFrequency1', 50, 'HalfPowerFrequency2', 70, ... 
    'SampleRate', Fs); 

%% ZADANIE 2.

x = [1 2 3 4 5 4 3 4 5 6 7];

b =1;
a = [1 -0.5];

y = filter(b,a,x,[],2);

t = 0:length(x)-1; %indeks wektora

plot(t,x(1,:))
hold on
plot(t,y(1,:))
legend('Input Data','Filtered Data')
title('First Row')

%% ZADANIE 3.

x = [1 2 3 4 5 4 3 4 5 6 7];

b = [2 3];
a = [1 0.2];

y = filter(b,a,x,[],2);

t = 0:length(x)-1; %indeks wektora

plot(t,x(1,:))
hold on
plot(t,y(1,:))
legend('Input Data','Filtered Data')
title('First Row')

%% ZADANIE 4.

load chirp 

bhi = fir1(34,0.48,'low',chebwin(35,30)); 
freqz(bhi,1) 
fvtool(bhi) 
outhi = filter(bhi,1,y); 

%% ZADANIE 5

load chirp 
t = (0:length(y)-1)/Fs; % 1.6 sekundy 

ord = 46; 
low = 0.4; 
bnd = [0.5 0.99]; 
bM = fir1(ord,[low bnd]); 


ord = 46; 
low = 0.4; 
bnd = [0.5 0.99]; 
bW = fir1(ord,[low bnd], 'DC-1'); 

fvtool(bM, 1, bW, 1)

%% Zadanie 6.

load chirp 
t = (0:length(y)-1)/Fs;   % 1.6 sekundy 

tW = fir1(ord,[low bnd],'DC-1',tukeywin(ord+1));

hfvt = fvtool(bM,1,tW,1);      %porownanie okien 
legend(hfvt,'Hamming','Tukey')  

outhann = filter(hM,1,y);

xfft=abs(fft(outhann)); 
xfft=xfft/13129; 
x1=1:1:6564; 
bar(x1(1:6564), xfft(1:6564));   
axis([0,6564, 0,0.01]) ;

%% ZADANIE 7

x2 = wiatrak20;
% normalizacja do przedzialu [-1, 1]  
% jesli sygnaly sa mierzone w roznych odleglosciach
max_data=max(abs(wiatrak20));    
data=wiatrak20/max_data; 
xfft=abs(fft(x2)); 
xfft=xfft/44100; 
xfft(1:499)=0;
xfft(1001:44100)=0;

fid = fopen('FFT_filtracja_wiatrak20.txt','w+t','n');
fprintf(fid,'%f\n',xfft(1:22050));
fclose(fid)

x2 = wiatrak21;
% normalizacja do przedzialu [-1, 1]  
% jesli sygnaly sa mierzone w roznych odleglosciach
max_data=max(abs(wiatrak21));    
data=wiatrak20/max_data; 
xfft=abs(fft(x2)); 
xfft=xfft/44100; 
xfft(1:499)=0;
xfft(1001:44100)=0;

fid = fopen('FFT_filtracja_wiatrak21.txt','w+t','n');
fprintf(fid,'%f\n',xfft(1:22050));
fclose(fid)

x2 = wiatrak23;
% normalizacja do przedzialu [-1, 1]  
% jesli sygnaly sa mierzone w roznych odleglosciach
max_data=max(abs(wiatrak23));    
data=wiatrak20/max_data; 
xfft=abs(fft(x2)); 
xfft=xfft/44100; 
xfft(1:499)=0;
xfft(1001:44100)=0;

fid = fopen('FFT_filtracja_wiatrak23.txt','w+t','n');
fprintf(fid,'%f\n',xfft(1:22050));
fclose(fid)

x2 = wiatrak24;
% normalizacja do przedzialu [-1, 1]  
% jesli sygnaly sa mierzone w roznych odleglosciach
max_data=max(abs(wiatrak24));    
data=wiatrak20/max_data; 
xfft=abs(fft(x2)); 
xfft=xfft/44100; 
xfft(1:499)=0;
xfft(1001:44100)=0;

fid = fopen('FFT_filtracja_wiatrak24.txt','w+t','n');
fprintf(fid,'%f\n',xfft(1:22050));
fclose(fid)

x2 = przekladnia20;
% normalizacja do przedzialu [-1, 1]  
% jesli sygnaly sa mierzone w roznych odleglosciach
max_data=max(abs(przekladnia20));    
data=wiatrak20/max_data; 
xfft=abs(fft(x2)); 
xfft=xfft/44100; 
xfft(1:499)=0;
xfft(1001:44100)=0;

fid = fopen('FFT_filtracja_przekladnia20.txt','w+t','n');
fprintf(fid,'%f\n',xfft(1:22050));
fclose(fid)

x2 = przekladnia21;
% normalizacja do przedzialu [-1, 1]  
% jesli sygnaly sa mierzone w roznych odleglosciach
max_data=max(abs(przekladnia21));    
data=wiatrak20/max_data; 
xfft=abs(fft(x2)); 
xfft=xfft/44100; 
xfft(1:499)=0;
xfft(1001:44100)=0;

fid = fopen('FFT_filtracja_przekladnia21.txt','w+t','n');
fprintf(fid,'%f\n',xfft(1:22050));
fclose(fid)

x2 = przekladnia23;
% normalizacja do przedzialu [-1, 1]  
% jesli sygnaly sa mierzone w roznych odleglosciach
max_data=max(abs(przekladnia23));    
data=wiatrak20/max_data; 
xfft=abs(fft(x2)); 
xfft=xfft/44100; 
xfft(1:499)=0;
xfft(1001:44100)=0;

fid = fopen('FFT_filtracja_przekladnia23.txt','w+t','n');
fprintf(fid,'%f\n',xfft(1:22050));
fclose(fid)


x2 = przekladnia24;
% normalizacja do przedzialu [-1, 1]  
% jesli sygnaly sa mierzone w roznych odleglosciach
max_data=max(abs(przekladnia24));    
data=wiatrak20/max_data; 
xfft=abs(fft(x2)); 
xfft=xfft/44100; 
xfft(1:499)=0;
xfft(1001:44100)=0;

fid = fopen('FFT_filtracja_przekladnia24.txt','w+t','n');
fprintf(fid,'%f\n',xfft(1:22050));
fclose(fid)

load FFT_filtracja_wiatrak20.txt
load FFT_filtracja_wiatrak21.txt
load FFT_filtracja_przekladnia20.txt
load FFT_filtracja_przekladnia21.txt
load FFT_filtracja_wiatrak23.txt
load FFT_filtracja_wiatrak24.txt
load FFT_filtracja_przekladnia23.txt
load FFT_filtracja_przekladnia24.txt

D=sum(abs(FFT_filtracja_wiatrak23-FFT_filtracja_wiatrak20))
D=sum(abs(FFT_filtracja_wiatrak23-FFT_filtracja_wiatrak21))
D=sum(abs(FFT_filtracja_wiatrak23-FFT_filtracja_przekladnia20))
D=sum(abs(FFT_filtracja_wiatrak23-FFT_filtracja_przekladnia21))

D=sum(abs(FFT_filtracja_wiatrak24-FFT_filtracja_wiatrak20))
D=sum(abs(FFT_filtracja_wiatrak24-FFT_filtracja_wiatrak21))
D=sum(abs(FFT_filtracja_wiatrak24-FFT_filtracja_przekladnia20))
D=sum(abs(FFT_filtracja_wiatrak24-FFT_filtracja_przekladnia21))

D=sum(abs(FFT_filtracja_przekladnia23-FFT_filtracja_wiatrak20))
D=sum(abs(FFT_filtracja_przekladnia23-FFT_filtracja_wiatrak21))
D=sum(abs(FFT_filtracja_przekladnia23-FFT_filtracja_przekladnia20))
D=sum(abs(FFT_filtracja_przekladnia23-FFT_filtracja_przekladnia21))

D=sum(abs(FFT_filtracja_przekladnia24-FFT_filtracja_wiatrak20))
D=sum(abs(FFT_filtracja_przekladnia24-FFT_filtracja_wiatrak21))
D=sum(abs(FFT_filtracja_przekladnia24-FFT_filtracja_przekladnia20))
D=sum(abs(FFT_filtracja_przekladnia24-FFT_filtracja_przekladnia21))

D=sum(abs(FFT_filtracja_wiatrak23-FFT_filtracja_wiatrak20))
D=sum(abs(FFT_filtracja_wiatrak23-FFT_filtracja_wiatrak21))
D=sum(abs(FFT_filtracja_wiatrak23-FFT_filtracja_przekladnia20))
D=sum(abs(FFT_filtracja_wiatrak23-FFT_filtracja_przekladnia21))