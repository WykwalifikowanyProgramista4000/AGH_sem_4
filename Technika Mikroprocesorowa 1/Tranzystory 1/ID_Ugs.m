
plot(Ugs, ID)
hold on
grid on

plot(-U_GS_sim2, ID_sim2)

plot(-2.805, 2.008e-05, 'x', 'LineWidth', 1.5); %odciecie do�w
plot(-3.05, 4.1736e-07, 'x', 'LineWidth', 1.5); %odci�cie ltspice

plot([-5 0], [0.0089056 0.0089056], '--') %nasycenie do�w
plot([-5 0], [0.0097212 0.0097212], '--') %nasycenie ltspice

title('Charakterystyka I_D = f(U_G_S)')

ylabel('Nat�enie pr�du I_D [A]')
xlabel('Napi�cie U_G_S [V]');

legend( 'Przebieg wyznaczony do�wiadczalnie',...
        'Przebieg wyznaczony w LTSpice',...
        'Napi�cie odci�cia U_G_S_0 do�wiadczalnie',...
        'Napi�cie odci�cia U_G_S_0 LTSpice',...
        'Pr�d nasycenia drenu I_D_S_S do�wiadczalnie',...
        'Pr�d nasycenia drenu I_D_S_S LTSpice')

axis([-5 0 -1*10^(-3) 1.12*10^(-2)]);

hold off