subplot(3,2,1);
hold on
for k=1:10
    [y,x,t]=step([k],[1 2 1]);
    plot(t,y);
end
title('charakterystyka odpowiedzi skokowej dla zmiennego k oraz T1=1 i T2 = 1');
subplot(3,2,3);
hold on
for T1=1:10
    [y,x,t]=step([1],[T1 T1+1 1]);
    plot(t,y);
end
title('charakterystyka odpowiedzi skokowej dla zmiennego T1 oraz k=1 i T2 = 1');
subplot(3,2,5);
hold on
for T2=1:10
    [y,x,t]=step([1],[T2 T2+1 1]);
    plot(t,y);
end
title('charakterystyka odpowiedzi skokowej dla zmiennego T2 oraz k=1 i T1=1');
subplot(3,2,2);
hold on
for k=1:10
    [y,x,t]=impulse([k],[1 2 1]);
    plot(t,y);
end
title('charakterystyka odpowiedzi impulsowej dla zmiennego k oraz T1=1 i T2 = 1');
subplot(3,2,4);
hold on
for T1=1:10
    [y,x,t]=impulse([1],[T1 T1+1 1]);
    plot(t,y);
end
title('charakterystyka odpowiedzi impulsowej dla zmiennego T1 oraz k=1 i T2 = 1');
subplot(3,2,6);
hold on
for T2=1:10
    [y,x,t]=impulse([1],[T2 T2+1 1]);
    plot(t,y);
end
title('charakterystyka odpowiedzi impulsowej dla zmiennego T2 oraz k=1 i T1=1');