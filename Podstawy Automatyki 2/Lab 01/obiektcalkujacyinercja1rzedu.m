subplot(3,2,1);
hold on
for k=1:10
    [y,x,t]=step([k],[1 1 0]);
    plot(t,y);
end
title('charakterystyka odpowiedzi skokowej dla zmiennego k oraz T=1 i Ti = 1');
subplot(3,2,3);
hold on
for T=1:10
    [y,x,t]=step([1],[T 1 0]);
    plot(t,y);
end
title('charakterystyka odpowiedzi skokowej dla zmiennego T oraz k=1 i Ti = 1');
subplot(3,2,5);
hold on
for Ti=1:10
    [y,x,t]=step([1],[Ti Ti 1]);
    plot(t,y);
end
title('charakterystyka odpowiedzi skokowej dla zmiennego Ti oraz k=1 i T=1');
subplot(3,2,2);
hold on
for k=1:10
    [y,x,t]=impulse([k],[1 1 0]);
    plot(t,y);
end
title('charakterystyka odpowiedzi impulsowej dla zmiennego k oraz T=1 i Ti = 1');
subplot(3,2,4);
hold on
for T=1:10
    [y,x,t]=impulse([1],[T 1 0]);
    plot(t,y);
end
title('charakterystyka odpowiedzi impulsowej dla zmiennego T oraz k=1 i Ti = 1');
subplot(3,2,6);
hold on
for Ti=1:10
    [y,x,t]=impulse([1],[Ti Ti 1]);
    plot(t,y);
end
title('charakterystyka odpowiedzi impulsowej dla zmiennego Ti oraz k=1 i T=1');