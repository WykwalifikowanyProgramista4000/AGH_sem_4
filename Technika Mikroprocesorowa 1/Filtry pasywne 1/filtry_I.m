%% Bode dó³

R = 1979;
C = 3.1*10^(-9);

L = [1];
M = [R*C 1];

bode(L, M)
title('Charakterystyka amplitudowo-fazowa filtra dolnoprzepustowego');
grid on;

%% Bode góra

R = 10054;
C = 325 * 10^(-12);

L = [R*C 0];
M = [R*C 1];

bode(L, M);
title('Charakterystyka amplitudowo-fazowa filtra górnoprzepustowego');
grid on;


%% dolno

log_A_low = 20*log(A_l/1.05);

semilogx(f_low*1e3,log_A_low)
grid on
title('Charakterystyka amplitudowo czêstotliwoœciowa filtra dolnoprzepustowego')
xlabel('Czêstotliwoœæ [Hz]')
ylabel('Wzmocnienie [dB]')
axis([10e2 10e4 -30 5])

%% górno

log_A_high = 20*log(A_g/1.05);

semilogx(f_low*1e3,log_A_high)
grid on
title('Charakterystyka amplitudowo czêstotliwoœciowa filtra górnoprzepustowego')
xlabel('Czêstotliwoœæ [Hz]')
ylabel('Wzmocnienie [dB]')