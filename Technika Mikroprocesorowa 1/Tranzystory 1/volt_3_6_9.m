
plot(Uce_3V, Ic_3V)
hold on
grid on
plot(Uce_6V, Ic_6V)
plot(Uce_9V, Ic_9V)

plot(V2, sim_IC_3V,'--')
plot(V2, sim_IC_6V,'--')
plot(V2, sim_IC_9V,'--')

hold off

title('Rodzina charakterystyk I_c(U_c_e)')

xlabel('Napiêcie U_c_e [V]');
ylabel('Natê¿enie I_c [A]');

legend( 'Pomiary dla U_1 = 3V',...
        'Pomiary dla U_1 = 6V',...
        'Pomiary dla U_1 = 9V',...
        'Symulacja dla U_1 = 3V',...
        'Symulacja dla U_1 = 6V',...
        'Symulacja dla U_1 = 9V')
    
    
   