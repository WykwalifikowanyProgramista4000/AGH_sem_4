
plot(Ugs, ID)
hold on
grid on

plot(-U_GS_sim2, ID_sim2)

plot(-2.805, 2.008e-05, 'x', 'LineWidth', 1.5); %odciecie doœw
plot(-3.05, 4.1736e-07, 'x', 'LineWidth', 1.5); %odciêcie ltspice

plot([-5 0], [0.0089056 0.0089056], '--') %nasycenie doœw
plot([-5 0], [0.0097212 0.0097212], '--') %nasycenie ltspice

title('Charakterystyka I_D = f(U_G_S)')

ylabel('Natê¿enie pr¹du I_D [A]')
xlabel('Napiêcie U_G_S [V]');

legend( 'Przebieg wyznaczony doœwiadczalnie',...
        'Przebieg wyznaczony w LTSpice',...
        'Napiêcie odciêcia U_G_S_0 doœwiadczalnie',...
        'Napiêcie odciêcia U_G_S_0 LTSpice',...
        'Pr¹d nasycenia drenu I_D_S_S doœwiadczalnie',...
        'Pr¹d nasycenia drenu I_D_S_S LTSpice')

axis([-5 0 -1*10^(-3) 1.12*10^(-2)]);

hold off