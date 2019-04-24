V_amped = log10(V_out./V_in) .* 20;
S_amped = log10(S_out./S_in) .* 20;
Akt_pasm_decybele = log10(Akt_pasm_out./Akt_pasm_in).*20

semilogx(V_freq, V_amped)
hold on;
%semilogx(T_freq, T_out)
semilogx(Akt_pasm_freq.*1000, Akt_pasm_decybele)
semilogx(LT_freq, LT_dolno_out)
semilogx(LT_freq, LT_gorno_out)

semilogx([1e+3 1e+5], [-3 -3], '--')

semilogx([7.29e+03], [-3], 'x', 'LineWidth', 2)
semilogx([4.78e+04], [-3], 'x', 'LineWidth', 2)
semilogx([9.36e+03], [-3], 'x', 'LineWidth', 2)
semilogx([3.22e+04], [-3], 'x', 'LineWidth', 2)
semilogx([1.14e+04], [-3], 'x', 'LineWidth', 2)
semilogx([2.3e+04], [-3], 'x', 'LineWidth', 2)

%semilogx([7712.825 7712.825], [-20 0], '--') %rzeczywista graniczna pasmop
%semilogx([7213 7213], [-20 0], '--') % wliczona graniczna dolna
% semilogx([48021 48021], [-20 0], '--') % wliczona graniczna gorna
% semilogx([18611 18611], [-20 0], '--') % wliczona centralna

%semilogx([2.30291754e+4 2.30291754e+4], [-20 0], '--')

ylabel('Wzmocnienie [dB]')
xlabel('Czêstotliwoœæ [Hz]');

legend( 'Charakterystyka pasywnego pasmowoprzepustowego doœwiadczalnie',...        
        'Charakterystyka aktywnego pasmowoprzepustowego doœwiadczalnie',...
        'Charakterystyka dolnoprzepustowego LTspice',...
        'Charakterystyka górnoprzepustowego LTspice',...
        '-3 dB',...         
        'Czêstotliwoœæ graniczna górnoprzepustowego: 7,29+e03',...
        'Czêstotliwoœæ graniczna dolnoprzepustowego: 4,78e+04',...
        'Czêstotliwoœæ graniczna dolna aktywnego pasnowoprzepustowego: 9,36e+03',...
        'Czêstotliwoœæ graniczna górna aktywnego pasmowoprzepustowego: 3,22e+04',...
        'Czêstotliwoœæ graniczna dolna pasywnego pasmowoprzepustowego: 1,14e+04',...
        'Czêstotliwoœæ graniczna górna pasywnego pasmowoprzepustowego: 2,3e+04',...
        'Location','South')
    
axis([1e+3 1e+5 -20 0]);
grid on;
hold off;