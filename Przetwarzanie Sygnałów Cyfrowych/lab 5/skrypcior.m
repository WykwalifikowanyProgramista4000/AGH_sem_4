%% Przykład 1

X =[1 2 3 4];
SREDNIA_X = mean(X);

%% Przykład 2

X = [1 2 3]
RMS_X = rms(X)

%% Przykład 3

fs = 5000;
t = 0 : (1/fs) :1;
X = sin(2*pi*2*t);
plot(t, X, 'r', 'LineWidth', 3);
RMS_X = rms(X)
w = peak2rms(X)

%% Przykład 4

fs = 5000;
t = 0 : (1/fs) :1;
X = sin(2*pi*2*t);
plot(t, X, 'r', 'LineWidth', 3);
p2p = peak2peak(X)

%% Przykład 5

fs = 5000;
t = 0 : (1/fs) :1;
X = sin(2*pi*2*t);
plot(t, X, 'r', 'LineWidth', 3);
[a, b] = max(X)
[c, d] = min(X)

%% Przykład 6

X = [1, 2, 6];
a = var(X)

X = [1, 2, 9];
a = var(X)

X = [1, 2, 3, 4, 5];
a=var(X)

%% Przykład 7

X= [1 2 6];
stdX=std(X)

X=[1 2 9];
stdX=std(X)

X = [1 2 3 4 5]
stdX=std(X)

%% ZADANIA DO WYKONANIA

%% Zadanie 1

X = [0 1 3];

mean_X = mean(X)
mean_wiatrak_20 = mean(data_wiatrak_20)
mean_przekladnia_20 = mean(data_przekladnia_20)

%% Zadanie 2

rms_x = rms(X)
rms_wiatrak_20 = rms(data_wiatrak_20)
rms_przekladnia_20 = rms(data_przekladnia_20)

%% Zadanie 3

p2rms_X = peak2rms(X)
p2rms_wiatrak_20 = peak2rms(data_wiatrak_20)
p2rms_przekladnia_20 = peak2rms(data_przekladnia_20)

%% Zadanie 4

p2p_X = peak2peak(X)
p2p_wiatrak_20 = peak2peak(data_wiatrak_20)
p2p_przekladnia_20 = peak2peak(data_przekladnia_20)

%% Zadanie 5

[a_max_X, b_max_X] = max(X)
[a_max_wiatrak_20, b_max_wiatrak_20] = max(data_wiatrak_20)
[a_max_przekladnia_20, b_max_przekladana_20] = max(data_przekladnia_20)

[a_min_X, b_min_X] = min(X)
[a_min_wiatrak_20, b_min_wiatrak_20] = min(data_wiatrak_20)
[a_min_przekladnia_20, b_min_przekladana_20] = min(data_przekladnia_20)

%% Zadanie 6

var_X = var(X)
var_wiatrak_20 = var(data_wiatrak_20)
var_przekladnia_20 = var(data_przekladnia_20)

%% Zadanie 7

std_X = std(X)
std_wiatrak_20 = std(data_wiatrak_20)
std_przekladania_20 = std(data_przekladnia_20)

%% Zadanie 8

energy_X = sum(X.^2)
energy_wiatrak_20 = sum(data_wiatrak_20.^2)
energy_przekladnia_20 = sum(data_przekladnia_20.^2)

%% Zadanie 9

t = 0: 0.001 : 1- 0.001;
X = cos(2*pi*100*t);

powerAvrage_X = bandpower(X)
powerAvrage_wiatrak_20 = bandpower(data_wiatrak_20)
poverAvrage_przekladnia_20 = bandpower(data_przekladnia_20)

%% Zadanie 10

rss_X = rssq(X)
rss_wiatrak_20 = rssq(data_wiatrak_20)
rss_przekladnia_20 = rssq(data_przekladnia_20)

%% Zadanie 11

X1 = [4 0 1 6;
    2 0 2 7;
    4 0 1 5;
    2 0 5 6];

X2 = [4 0 1 6;
    2 0 2 7;
    4 0 1 5;
    2 0 5 6;
    1 0 1 7];

okresSekwencji_X1 = seqperiod(X1)
okresSekwencji_X2 = seqperiod(X2)

%% Zadanie 12

fs = 5000;
t = 0 : 1/fs : 1;

X = sin(2*pi*2*t);
Y = cos(2*pi*8*t);

s = X + Y;

plot(t, s, 'r', 'LineWidth', 3)
findpeaks(s)


%% Zadanie 13

s = [25 8 15 5 6 10 10 3 1 20 7];

plot(s)
findpeaks(s)

[ys, xs] = findpeaks(s)

%% Zadanie 14

s = [25 8 15 5 6 10 10 3 1 20 7];

plot(s)
findpeaks(s)

[peaks_s, lokalizacja_s] = findpeaks(s, 'SortStr', 'descend')
findpeaks(s, 'SortStr', 'descend')
text(lokalizacja_s + .02, peaks_s, num2str((1:numel(peaks_s))'))

%% Zadanie 15

x = [ 1 2 3 4 5 6 7 8 9 10 11];
s = [25 8 15 5 6 10 10 3 1 20 7];

subplot(2,2,1)
plot(x,s)
grid on

subplot(2,2,2)
findpeaks(s, 'Threshold', 10)

subplot(2,2,3)
findpeaks(s, 'Threshold', 5)

subplot(2,2,4)
findpeaks(s, 'Threshold', 0)

%% Zadanie 16

x = [ 1 2 3 4 5 6 7 8 9 10 11];
s = [25 8 15 5 6 10 10 3 1 20 7];

subplot(2,2,1)
plot(x,s)
grid on

subplot(2,2,2)
findpeaks(s, 'MinPeakHeight', 12)

subplot(2,2,3)
findpeaks(s, 'MinPeakHeight', 8)

subplot(2,2,4)
findpeaks(s, 'MinPeakHeight', 3)

%% Zadanie 17

x = [ 1 2 3 4 5 6 7 8 9 10 11];
s = [25 8 15 5 6 10 10 3 1 20 7];

subplot(3,1,1)
plot(x,s)
grid on

subplot(3,1,2)
findpeaks(s, 'NPeaks', 1)

subplot(3,1,3)
findpeaks(s, 'NPeaks', 2)

%% Zadanie 18

x = [ 1 2 3 4 5 6 7 8 9 10 11];
s = [25 8 15 5 6 10 10 3 1 20 7];

subplot(2,1,1)
plot(x,s)
grid on

subplot(2,1,2)
findpeaks(s, 'MinPeakWidth', 1)

%% Zadanie 19

RMS_przekladnia_20 = rms(data_przekladnia_20);
RMS_przekladnia_21 = rms(data_przekladnia_21);
RMS_przekladnia_23 = rms(data_przekladnia_23);
RMS_przekladnia_24 = rms(data_przekladnia_24);

RMS_wiatrak_20 = rms(data_wiatrak_20);
RMS_wiatrak_21 = rms(data_wiatrak_21);
RMS_wiatrak_23 = rms(data_wiatrak_23);
RMS_wiatrak_24 = rms(data_wiatrak_24);

w_23 = [];
w_24 = [];
p_23 = [];
p_24 = [];

w_23(1) = (abs(RMS_wiatrak_23 - RMS_wiatrak_20));
w_23(2) = sum(abs(RMS_wiatrak_23 - RMS_wiatrak_21));
w_23(3) = sum(abs(RMS_wiatrak_23 - RMS_przekladnia_20));
w_23(4) = sum(abs(RMS_wiatrak_23 - RMS_przekladnia_21))

w_24(1) = sum(abs(RMS_wiatrak_24 - RMS_wiatrak_20));
w_24(2) = sum(abs(RMS_wiatrak_24 - RMS_wiatrak_21));
w_24(3) = sum(abs(RMS_wiatrak_24 - RMS_przekladnia_20));
w_24(4) = sum(abs(RMS_wiatrak_24 - RMS_przekladnia_21))

p_23(1) = sum(abs(RMS_przekladnia_23 - RMS_wiatrak_20));
p_23(2) = sum(abs(RMS_przekladnia_23 - RMS_wiatrak_21));
p_23(3) = sum(abs(RMS_przekladnia_23 - RMS_przekladnia_20));
p_23(4) = sum(abs(RMS_przekladnia_23 - RMS_przekladnia_21))

p_24(1) = sum(abs(RMS_przekladnia_24 - RMS_wiatrak_20));
p_24(2) = sum(abs(RMS_przekladnia_24 - RMS_wiatrak_21));
p_24(3) = sum(abs(RMS_przekladnia_24 - RMS_przekladnia_20));
p_24(4) = sum(abs(RMS_przekladnia_24 - RMS_przekladnia_21))

best_w_23 = min(w_23)
best_w_24 = min(w_24)
best_p_23 = min(p_23)
best_p_24 = min(p_24)




















