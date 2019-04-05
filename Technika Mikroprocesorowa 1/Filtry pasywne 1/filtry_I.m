%% Bode d�

R = 1979;
C = 3.1*10^(-9);

L = [1];
M = [R*C 1];

bode(L, M)
title('Charakterystyka amplitudowo-fazowa filtra dolnoprzepustowego');
grid on;

%% Bode g�ra

R = 10054;
C = 325 * 10^(-12);

L = [R*C 0];
M = [R*C 1];

bode(L, M);
title('Charakterystyka amplitudowo-fazowa filtra g�rnoprzepustowego');
grid on;


%% dolno

log_A_low = 20*log(A_l/1.05);

semilogx(f_low*1e3,log_A_low)
grid on
title('Charakterystyka amplitudowo cz�stotliwo�ciowa filtra dolnoprzepustowego')
xlabel('Cz�stotliwo�� [Hz]')
ylabel('Wzmocnienie [dB]')
axis([10e2 10e4 -30 5])

%% g�rno

log_A_high = 20*log(A_g/1.05);

semilogx(f_low*1e3,log_A_high)
grid on
title('Charakterystyka amplitudowo cz�stotliwo�ciowa filtra g�rnoprzepustowego')
xlabel('Cz�stotliwo�� [Hz]')
ylabel('Wzmocnienie [dB]')