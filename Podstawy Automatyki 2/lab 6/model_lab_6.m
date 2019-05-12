%% Metoda Zieglera Nicholsa
kkr = 3.3;
Tosc = 184.969 - 109,219;

k = 1.18;
tau = 22;
T = 45;

r = 2.5;

P_k = 0.5 * kkr;

PI_k = 0.45 * kkr;
PI_Ti = 0.85 * Tosc;

PID_k = 0.6 * kkr;
PID_Ti = 0.5 * Tosc;
PID_Td = 0.12 * Tosc;

Kp = 3.3;
Ki = 0;
Kd = 0;

sim('tralala')

%% Metoda Astroma-Hagglunda

