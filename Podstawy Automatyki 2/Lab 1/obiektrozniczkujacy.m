subplot(2,2,1);
hold on
for Td=1:10
    [y,x,t]=step([Td 0],[1 1]);
    plot(t,y);
end
title('charakterystyka odpowiedzi skokowej dla zmiennego Td oraz T=1');
subplot(2,2,3);
hold on
for T=1:10
    [y,x,t]=step([1 0],[T 1]);
    plot(t,y);
end
title('charakterystyka odpowiedzi skokowej dla zmiennego T oraz Td=1');
subplot(2,2,2);
hold on
for Td=1:10
    [y,x,t]=impulse([Td 0],[1 1]);
    plot(t,y);
end
title('charakterystyka odpowiedzi impulsowej dla zmiennego Td oraz T=1');
subplot(2,2,4);
hold on
for T=1:10
    [y,x,t]=impulse([1 0],[T 1]);
    plot(t,y);
end
title('charakterystyka odpowiedzi impulsowej dla zmiennego T oraz Td=1');