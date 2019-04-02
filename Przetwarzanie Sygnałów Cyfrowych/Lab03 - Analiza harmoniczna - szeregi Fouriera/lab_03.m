%% Zadanie 1
clear all;
close all;

syms t t1 t2 offset x

TO = 1.0; % okres
t1 = -0.5;
t2 = t1+TO;
offset = TO/4;

f0 = 1/TO; % czestotliwość
wO = 2*pi*f0; % pulsacja

% granice całkowania
BND = [t1, t2] + offset;

x = triangularPulse(t1, 0.0, t2, t-offset)-0.5;

figure;
ezplot(x,BND);
grid on;
ylabel('x(t)');

hold on;
plot([0, 0.5], [0, 0], 'or')
hold off;
%% Zadanie 2


NT = 15;
X = [];
ind = -NT : NT;
for n = ind
    Xn = (1/TO)*int(x*exp(-i*wO*n*t),t,BND);
    X(n + NT +1) = Xn;
end

figure;
hold on;
stem(ind*f0,real(X),'b','LineWidth',2);
xlabel('f [Hz]')
stem(ind*f0,imag(X),'r','LineWidth',2);
grid on
legend('real(X_n)','image(X_n)','Location','NorthEast')
title('Współczynniki zespolonego szeregu Fouriera X_n')

%% Zadanie 3

NT = 15;
S = [];
A = []
B = []

ind = 1 : NT;

a0 = (1/TO)*int(x,t,BND);

for n = ind
    an = (1/TO)*int(x*cos(wO*n*t), t, BND);
    bn = (1/TO)*int(x*sin(wO*n*t), t, BND);
    A(n) = an;
    B(n) = bn;
end

figure;
hold on;
stem(ind*f0,A,'b','LineWidth',2);
xlabel('f [Hz]')
stem(ind*f0,B,'r','LineWidth',2);
grid on
legend('real(X_n)','image(X_n)','Location','NorthEast')
title('Współczynniki zespolonego szeregu Fouriera X_n')


%% Zadanie 4

step = (BND(2) - BND(1))/1000;
tt = [BND(1)-TO : step : BND(2) + TO];
xx = zeros(1, length(tt));
xx = xx + a0; % skladowa stala

figure
plot(tt, xx, 'm'); grid on, hold on;
plot ([tt(1), tt(2)],[max(xx)-0.1,min(xx)+0.1])
%pause(0.5)
xlabel('t'); ylabel('x(t)');

for n=1 :NT
    xx_n = 2*(A(n)*cos(wO*n*tt) + B(n)*sin(wO*n*tt));
    xx = xx +xx_n;
    plot(tt, xx_n, 'r');
    plot(tt, xx, 'm');
    plot([tt(1), tt(2)], [max(xx)-0.1, min(xx)+0.1],'w')
    title(sprintf('n = %d', n+1));
    pause(0.5)
end

plot(tt, xx, 'k', 'LineWidth', 3); grid on; hold on;
plot([tt(1), tt(2)], [max(xx)-0.1, min(xx)+0.1], 'w.')
title('Rekonstrukcja sygnału ciągłego na podstawie szeregu Fouriera')


%% Zadanie 5

NT = 15;
S = [];
A = sym([]);
B = sym([]);

ind = 1 : NT;

a0 = (1/TO)*int(x,t,BND);

for n = ind
    an = (1/TO)*int(x*cos(wO*n*exp(-1i*wO*n*t)), t, BND);
    bn = (1/TO)*int(x*sin(wO*n*exp(-1i*wO*n*t)), t, BND);
    A(n) = an;
    B(n) = bn;
end

figure;
hold on;
stem(ind*f0,A,'b','LineWidth',2);
xlabel('f [Hz]')
stem(ind*f0,B,'r','LineWidth',2);
grid on
legend('real(X_n)','image(X_n)','Location','NorthEast')
title('Wspu�czynniki zespolonego szeregu Fouriera X_n')















