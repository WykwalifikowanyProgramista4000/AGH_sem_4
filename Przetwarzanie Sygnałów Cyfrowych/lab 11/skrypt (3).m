clear all; close all;
syms t x w K

fp = 200; fg = fp/2; %Hz
wp = 2*pi*fp; wg = 2*pi*fg;

s = 0; ws = s*wg;

x_sin = sin(ws*t);

X_FT_sin_org = fourier(x_sin);

X_FT_sin = X_FT_sin_org + ... % orygina³ widma
symsum((subs(X_FT_sin_org, w, w - K*wp ) + ...% 3 aliasy lewe
subs(X_FT_sin_org, w, w + K*wp)), K , 1, 3); % 3 aliasy prawe

FILT_FT = rectangularPulse(-wg,wg,w); % filtr rekonstruuj¹cy
x_sin_rek = ifourier(X_FT_sin*FILT_FT); % odwr. tarnsf. Fouriera

BND_t = [-10/fp;10/fp];
%t_SMP = [BND_t(1):1/(10*fp):BND_t(2) ];
BND_w = [-4*wp;4*wp];
w_SMP = [BND_w(1):wp/10:BND_w(2)];

figure; subplot(2,1,1); hold on; grid on;
ezplot(FILT_FT,BND_w); %okno filtru rek.
%ezplot(X_FT_sin,BND_w)
v_num = abs(double(subs(X_FT_sin, w, w_SMP)));
n = find(abs(v_num) == Inf);
stem(w_SMP(n),sign(v_num(n)),'r*', 'LineWidth', 2);
xlabel('\omega [rad/s]'); ylabel('|X(\omega)|')
legend('Okno filtra rek.','Widmo');

subplot(2,1,2); hold on; grid on;
ezplot(x_sin, BND_t);    % syg. próbkowany
ezplot(x_sin_rek, BND_t) % syg. odtworzony

wezly_probkowania = -0.05:1/fp:0.05;
plot(wezly_probkowania, sin(ws*wezly_probkowania), 'bo')
xlabel('t [s]'); ylabel('x(t)')
legend('x\_sin','x\_sin\_rek', 'wezly probkowania');
%% test

fplot(triangularPulse(-wg, wg, w))