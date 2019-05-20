stem(0.129, 8.54/900); hold on; grid on
stem(0.074, 8.60/900);
stem(0.054, 8.61/900);

plot(Uce_3V, Ic_3V.*1);
plot(Uce_6V, Ic_6V.*1)
plot(Uce_9V*1.13, Ic_9V.*1)

x = 0:0.001:10
y = -1/817*x + (10-2.1)/817;
plot(x,y)
hold off

title('Przewidywany wygl¹d charakterystyk I_C(U_C_E)')

xlabel('Napiêcie U_c_e [V]');
ylabel('Natê¿enie I_c [A]');
axis([0 7.9 0 0.025])
legend( 'Dla przypadku I_B_1',...
        'Dla przypadku I_B_2',...
        'Dla przypadku I_B_3')
    
    
   