hold on
plot(Ud_p, Id_p, 'Color', [1, 0.66, 0], 'LineWidth',1)
plot(Ud_r, Id_r, 'Color', [1, 0, 0], 'LineWidth',1)
stem([0.555, 1.65], [0.0006562, 0.0005513], 'o', 'Color', [0, 0.6, 1])
%plot(Ud_p, Id_p, 'o','Color',[0,0.7,0.9])
%plot(Ud_r, Id_r, 'o','Color',[0,0.7,0.9])
legend('charakterystyka pr¹dowo napiêciowa diody prostowniczej','charakterystyka pr¹dowo napiêciowa diody LED czerwonej','pr¹d przewodzenia','Location','SouthOutside')
xlabel('Napiêcie [V]')
ylabel('Natê¿enie [A]')
title('Wyk. 1  Charakterystyki pr¹dowo napiêciowe badanych diod')
grid on
hold off
