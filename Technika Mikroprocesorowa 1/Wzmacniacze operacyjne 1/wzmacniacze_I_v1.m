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
semilogx(nieodw_LT_freq, nieodw_LT_gain);
semilogx([10^5 10^7], [-3  -3], 'r--');

semilogx([4.06*(10^6)], [-3],'rx', 'LineWidth',2);
semilogx([4.34*(10^6)], [-3],'mx','LineWidth',2);
grid on
ylabel('Wzmocnienie [dB]')
hold off
axis([10^5 10^7 -20 10])

yyaxis right
semilogx(fz_nieodw*1000, ale_faza)
hold on
semilogx(nieodw_LT_freq, nieodw_LT_faza.*(-1));
ylabel('Przesueniêcie fazowe [deg]')
legend('Wzmocnienie doœwiadczalnie', 'Wzmocnienie LTSpice','-3dB', 'Czêstotliwoœæ graniczna doœwiadczalnie','Czêstotliwoœæ graniczna LTSpice', 'Przesuniêcie fazowe doœwiadczalnie','Przesuniêcie fazowe LTSpice')

title('Charakterystyka wzmacniacza nieodwracaj¹cego fazy')
xlabel('Czêstotliwoœæ [Hz]')

%% 3 - odwracajacy

odw_D_decybele = log10(odw_D_out./odw_D_in).*20;

yyaxis left
semilogx(odw_D_freq*1000, odw_D_decybele)
hold on
semilogx(odw_LT_freq, odw_LT_gain);
semilogx([10^5 10^7], [-3  -3], 'r--');

semilogx([2.98*(10^6)], [-3],'rx', 'LineWidth',2); % graniczna dosw.
semilogx([3.64*(10^6)], [-3],'mx','LineWidth',2);  % graniczna ltspice
grid on
ylabel('Wzmocnienie [dB]')
hold off
axis([10^5 10^7 -25 14])

yyaxis right
semilogx(odw_D_freq*1000, odw_D_faza)
hold on
semilogx(odw_LT_freq, odw_LT_faza.*(-1));
ylabel('Przesueniêcie fazowe [deg]')
legend('Wzmocnienie doœwiadczalnie', 'Wzmocnienie LTSpice','-3dB', 'Czêstotliwoœæ graniczna doœwiadczalnie','Czêstotliwoœæ graniczna LTSpice', 'Przesuniêcie fazowe doœwiadczalnie','Przesuniêcie fazowe LTSpice')

title('Charakterystyka wzmacniacza nieodwracaj¹cego fazy')
xlabel('Czêstotliwoœæ [Hz]')

%% 4 - to dziwne coœ 2,2 wzmocnienie i zmieniamy Vpp na wejœciu

plot(cos_in, cos_out);
grid on;

xL = xlim;
yL = ylim;
line([0 0], yL);  %x-axis
line(xL, [0 0]);  %y-axis

xlabel('U wejœciowe [V]');
ylabel('U wyjœciowe [V]');










