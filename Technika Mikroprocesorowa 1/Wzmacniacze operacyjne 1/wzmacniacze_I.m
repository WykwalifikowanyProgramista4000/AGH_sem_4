%% 1 - wzm G=1

decybele = 20*log10(Amp_G_1_Out/Amp_G_1_In);
hold on
semilogx(fz_G_1*1000, decybele)

semilogx([10^5 10^7], [-3  -3])

x0 = 4.5069e6;

semilogx([x0 x0], [-20 5])
semilogx([10^5 10^7], [0  0], 'rgb(23,211,112)');
grid on
title('Charakterystyka wzmacniacza o wzmocnieniu jednostkowym')
xlabel('Czêstotliwoœæ [Hz]')
ylabel('Wzmocnienie [dB]')
legend('Wzmacniacz o wzmocnieniu jednostkowym', '-3dB', 'Czêstotliwoœæ graniczna', 'Charakterystyka wyznaczona w LTspice')
hold off