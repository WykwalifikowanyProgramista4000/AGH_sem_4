%% Zadanie 1.1

[b,a] = maxflat(4,1,0.3)
fvtool(b,a) 

%% Zadanie 1.2

[b,a] = maxflat(4,'sym',0.3)
fvtool(b,a)

%% Zadanie 2

b = [1 -0.5]; a = [1 -2];
act_flag1 = isstable(b,a)
zplane(b,a) 

%% Zadanie 3

b = [1 -0.1];  a = [-1 -0.1];
act_flag1 = isstable(b,a)
zplane(b,a) 

%% Zadanie 4

b = [0.9 -0.8];  a = [-0.9 -0.8];
act_flag1 = isstable(b,a)
zplane(b,a) 

%% Zadanie 5

b = [0.9 -0.8 1 1];  a = [-0.9 -0.8 -1];
act_flag1 = isstable(b,a)
zplane(b,a) 

%% Zadanie 6

m = [0   0   1   1   1   0   1   1   0 0];
f = [0 0.1 0.2 0.3 0.4 0.5 0.7 0.8 0.9 1];
[b,a] = yulewalk(10,f,m);

act_flag1 = isstable(b,a)
zplane(b,a)

%% Zadanie 7

[b,a] = maxflat(4,1,0.3);

% act_flag1 = isstable(b,a)
% zplane(b,a)

% wynik flag = 0


load chirp
t = (0:length(y)-1)/Fs;
% 1.6 sekundy
xfft=abs(fft(y));
xfft=xfft/13129;

x1=1:1:6564;

% bar(x1(1:6564), xfft(1:6564));
% axis([0,6564, 0,0.01]) ;

% plot(t,y);
% fvtool(b,a)

outsignal = filter(b,a,y);

figure()
plot(t, outsignal);

xfft=abs(fft(outsignal));
xfft=xfft/13129;
x1=1:1:6564;

figure()
bar(x1(1:6564), xfft(1:6564));
axis([0,6564, 0,0.01]) ;

%% Zadanie 8

m = [0 0 0 0 0 1 1 1 1 1];
f = [0 0.1 0.2 0.3 0.4 0.5 0.7 0.8 0.9 1];
[b,a] = yulewalk(10,f,m); 

% act_flag1 = isstable(b,a)
% zplane(b,a)

% wynik flag = 0


load chirp
t = (0:length(y)-1)/Fs;
% 1.6 sekundy
xfft=abs(fft(y));
xfft=xfft/13129;

x1=1:1:6564;

% bar(x1(1:6564), xfft(1:6564));
% axis([0,6564, 0,0.01]) ;

% plot(t,y);
% fvtool(b,a)

outsignal = filter(b,a,y);

figure()
plot(t, outsignal);

xfft=abs(fft(outsignal));
xfft=xfft/13129;
x1=1:1:6564;

figure()
bar(x1(1:6564), xfft(1:6564));
axis([0,6564, 0,0.01]) ; 



%% zad9


b = [0.9 -0.8 1 1]; a = [-0.9 -0.8 -1]; 
% niestabilny

% act_flag1 = isstable(b,a)
% zplane(b,a)

% wynik flag = 0


load chirp
t = (0:length(y)-1)/Fs;
% 1.6 sekundy
xfft=abs(fft(y));
xfft=xfft/13129;

x1=1:1:6564;

% bar(x1(1:6564), xfft(1:6564));
% axis([0,6564, 0,0.01]) ;

% plot(t,y);
% fvtool(b,a)

outsignal = filter(b,a,y);

figure()
plot(t, outsignal);

xfft=abs(fft(outsignal));
xfft=xfft/13129;
x1=1:1:6564;

figure()
bar(x1(1:6564), xfft(1:6564));
axis([0,6564, 0,0.01]) ; 
