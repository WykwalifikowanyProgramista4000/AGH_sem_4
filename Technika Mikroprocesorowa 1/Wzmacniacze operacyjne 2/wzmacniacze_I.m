%% 1 - wzm G=1


decybele = log10(Amp_G_1_Out./Amp_G_1_In).*20;
semilogx(fz_G_1.*1000, decybele);
hold on;
semilogx(fz_G_1.*1000, ones(21,1).*(-3),'--');

x0 = 4.782e6;

semilogx([x0 x0], [-20 5],'--')
semilogx([10^5 10^7], [0  0]);
grid on
title('Charakterystyka wzmacniacza o wzmocnieniu jednostkowym')
xlabel('Czêstotliwoœæ [Hz]')
ylabel('Wzmocnienie [dB]')
legend('Wzmacniacz o wzmocnieniu jednostkowym', '-3dB', 'Czêstotliwoœæ graniczna', 'Charakterystyka wyznaczona w LTspice')

hold off

%% 2 - nieodwracajacy

decybele_nieodw = log10(nieodw_A_Out./nieodw_A_In).*20;

yyaxis left
semilogx(fz_nieodw*1000, decybele_nieodw)
hold on
semilogx([10^5 10^7], [-3  -3], 'r--')
grid on
ylabel('Wzmocnienie [dB]')
hold off

yyaxis right
semilogx(fz_nieodw*1000, ale_faza)
ylabel('Przesueniêcie fazowe [deg]')

title('Charakterystyka wzmacniacza nieodwracaj¹cego fazy')
xlabel('Czêstotliwoœæ [Hz]')

