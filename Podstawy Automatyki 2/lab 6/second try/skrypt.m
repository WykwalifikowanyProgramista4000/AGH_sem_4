%% Wzmocnienie Krytyczne i Czas oscylacji
kkr = 3.3;
Tosc = 75.7;

k = 1.18;
tau = 22;
T = 45;

r = 2.5;

Kp = kkr;
Ki = 1e+06;
Kd = 0;

sim('tralala')

plot(simout)
xlabel('Czas [s]')
ylabel('Odpowiedü skokowa')
title('Odowiedü skokowa dla wzmocnienia krytycznego rÛwnego 3.3')
set(gcf, 'Position',  [100, 100, 1000, 400])

%% Metoda Zieglera Nicholsa
%% P
Kp = 0.5 * kkr;
Ki = 1e+6;
Kd = 0;

sim('tralala')

plot(simout)
xlabel('Czas [s]')
ylabel('Odpowiedü skokowa')
title('Odowiedü skokowa obiektu dla regulatora P')
set(gcf, 'Position',  [100, 100, 1000, 400])

%% PI - coú jest nie tak
Kp = 0.45 * kkr;
Ki = 0.85 * Tosc;
Kd = 0;

sim('tralala')

plot(simout)
xlabel('Czas [s]')
ylabel('Odpowiedü skokowa')
title('Odowiedü skokowa obiektu dla regulatora PI')
set(gcf, 'Position',  [100, 100, 1000, 400])

%% PD
Kp = 0.8 * kkr;
Ki = 1e+6;
Kd = 0.125 * Tosc / Ki;

sim('tralala')

plot(simout)
xlabel('Czas [s]')
ylabel('Odpowiedü skokowa')
title('Odowiedü skokowa obiektu dla regulatora PD')
set(gcf, 'Position',  [100, 100, 1000, 400])
%% PID
Kp = 0.6 * kkr;
Ki = 0.5 * Tosc;
Kd = 0.12 * Tosc;

sim('tralala')

plot(simout)
xlabel('Czas [s]')
ylabel('Odpowiedü skokowa')
title('Odowiedü skokowa obiektu dla regulatora PID')
set(gcf, 'Position',  [100, 100, 1000, 400])
%% Ma≥e przeregulowania (PID)
Kp = 0.33 * kkr;
Ki = 0.5 * Tosc;
Kd = 0.33 * Tosc;

sim('tralala')

plot(simout)
xlabel('Czas [s]')
ylabel('Odpowiedü skokowa')
title('Odowiedü skokowa obiektu dla regulatora PID')
set(gcf, 'Position',  [100, 100, 1000, 400])
%% Bez przeregulowaÒ (PID)
Kp = 0.2 * kkr
Ki = 0.5 * Tosc
Kd = 0.33 * Tosc

sim('tralala')

plot(simout)
xlabel('Czas [s]')
ylabel('Odpowiedü skokowa')
title('Odowiedü skokowa obiektu dla regulatora PID')
set(gcf, 'Position',  [100, 100, 1000, 400])
%% Passen Integral Rule
%% PID
Kp = 0.7 * kkr
Ki = 0.4 * Tosc
Kd = 0.15 * Tosc

sim('tralala')

plot(simout)
xlabel('Czas [s]')
ylabel('Odpowiedü skokowa')
title('Odowiedü skokowa obiektu dla regulatora PID')
set(gcf, 'Position',  [100, 100, 1000, 400])
%% Tyreus-Luyben
%% PI
Kp = 0.3125 * kkr
Ki = 0.22 * Tosc
Kd = 0 * Tosc

sim('tralala')

plot(simout)
xlabel('Czas [s]')
ylabel('Odpowiedü skokowa')
title('Odowiedü skokowa obiektu dla regulatora PID')
set(gcf, 'Position',  [100, 100, 1000, 400])

%% PID
Kp = 0.3125 * kkr
Ki = 0.22 * Tosc
Kd = 0.1587 * Tosc

sim('tralala')

plot(simout)
xlabel('Czas [s]')
ylabel('Odpowiedü skokowa')
title('Odowiedü skokowa obiektu dla regulatora PID')
set(gcf, 'Position',  [100, 100, 1000, 400])

%% Metody oparte o parametry odpowiedzi skokowej obiektu
%% Przeregulowania
Kp = (0.94*T) / (k*tau)
Ki = 2.4 * tau
Kd = 0.4 * tau

sim('tralala')

plot(simout)
xlabel('Czas [s]')
ylabel('Odpowiedü skokowa')
title('Odowiedü skokowa obiektu dla regulatora PID')
set(gcf, 'Position',  [100, 100, 1000, 400])

%% Minimum
Kp = (1.4*T) / (k*tau)
Ki = 1.3 * tau
Kd = 0.5 * tau

sim('tralala')

plot(simout)
xlabel('Czas [s]')
ylabel('Odpowiedü skokowa')
title('Odowiedü skokowa obiektu dla regulatora PID')
set(gcf, 'Position',  [100, 100, 1000, 400])

%% Metoda Astroma-Hagglunda
%% Wyznaczenie wzmocnienia krytycznego
%% P
%% PI
%% PID

%% Wykorzystanie funkcji "Autotune" úrodowiska Simulink

%% Test

kkr = 3.3;
Tosc = 75.7;

k = 1;
tau = 0;
T = 1;

r = 2.5;

Kp = 8;
Ki = 1e-06;
Kd = 0;

sim('tralala')

plot(simout)
xlabel('Czas [s]')
ylabel('Odpowiedü skokowa')
title('Odowiedü skokowa dla wzmocnienia krytycznego rÛwnego 3.3')
set(gcf, 'Position',  [100, 100, 1000, 400])