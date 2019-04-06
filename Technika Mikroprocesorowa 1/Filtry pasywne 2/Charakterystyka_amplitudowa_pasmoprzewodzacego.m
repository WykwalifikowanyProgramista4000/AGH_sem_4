V_amped = log10(V_out./V_in) .* 20;
S_amped = log10(S_out./S_in) .* 20;

semilogx(V_freq, V_amped)
hold on;
semilogx(T_freq, T_out)

ylabel('Wzmocnienie [dB]')
xlabel('Cz�stotliwo�� [Hz]');
legend('Charakterystyka wyznaczona do�wiadczalnie', 'Charakterystyka wyznaczona w LTspice','Location','NorthWest')
axis([1e+3 1e+5 -20 0]);
grid on;
hold off;