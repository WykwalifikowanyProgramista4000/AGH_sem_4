subplot(2,2,1);
hold on
for k=1:10
    [y,x,t]=step([k],[1 1]);
    plot(t,y);
end
title('charakterystyka odpowiedzi skokowej dla zmiennego k oraz T=1');
subplot(2,2,3);

hold on
for T=1:10
    [y,x,t]=step([1],[T 1]);
    plot(t,y);
end
title('charakterystyka odpowiedzi skokowej dla zmiennego T oraz k=1');
subplot(2,2,2);

hold on
for k=1:10
    [y,x,t]=impulse([k],[1 1]);
    plot(t,y);
end
title('charakterystyka odpowiedzi impulsowej dla zmiennego k oraz T=1');
subplot(2,2,4);

hold on
for T=1:10
    [y,x,t]=impulse([1],[T 1]);
    plot(t,y);
end
title('charakterystyka odpowiedzi impulsowej dla zmiennego T oraz k=1');