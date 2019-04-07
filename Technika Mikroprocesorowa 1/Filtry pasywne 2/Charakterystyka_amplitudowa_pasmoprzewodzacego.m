V_amped = log10(V_out./V_in) .* 20;
S_amped = log10(S_out./S_in) .* 20;

semilogx(V_freq, V_amped)
hold on;
semilogx(T_freq, T_out)
semilogx(LT_freq, LT_dolno_out)
semilogx(LT_freq, LT_gorno_out)

semilogx([1e+3 1e+5], [-3 -3], '--')

%semilogx([7712.825 7712.825], [-20 0], '--') %rzeczywista graniczna pasmop
semilogx([7213 7213], [-20 0], '--') % wliczona graniczna dolna
semilogx([48021 48021], [-20 0], '--') % wliczona graniczna gorna
semilogx([18611 18611], [-20 0], '--') % wliczona centralna

%semilogx([2.30291754e+4 2.30291754e+4], [-20 0], '--')

ylabel('Wzmocnienie [dB]')
xlabel('Cz�stotliwo�� [Hz]');
legend('Charakterystyka pazmowoprzepustowego do�wiadczalnie', 'Charakterystyka pasmowoprzepustowego LTspice', 'Charakterystyka dolnoprzepustowego LTspice', 'Charakterystyka g�rnoprzepustowego LTspice', '-3 dB', 'Dolna cz�stotliwo�� graniczna', 'G�rna cz�stotliwo�� graniczna', 'Cz�stotliwo�� centralna', 'Location','South')
axis([1e+3 1e+5 -20 0]);
grid on;
hold off;