subplot(3,2,1);
hold on
for k=1:10
    [y,x,t]=step([k],[1 0.5 1]);
    plot(t,y);
end
title('charakterystyka odpowiedzi skokowej dla zmiennego k oraz E=0.5 i T0 = 1');
subplot(3,2,3);
hold on
for T0=1:10
    [y,x,t]=step([1],[T0*T0 T0*0.5 1]);
    plot(t,y);
end
title('charakterystyka odpowiedzi skokowej dla zmiennego T1 oraz k=1 i E = 0.5');
subplot(3,2,5);
hold on
for E=1:-0.1:0.1
    [y,x,t]=step([1],[1 E 1]);
    plot(t,y);
end
title('charakterystyka odpowiedzi skokowej dla zmiennego E oraz k=1 i T0=1');
subplot(3,2,2);
hold on
for k=1:10
    [y,x,t]=impulse([k],[1 0.5 1]);
    plot(t,y);
end
title('charakterystyka odpowiedzi impulsowej dla zmiennego k oraz E=0.5 i T0 = 1');
subplot(3,2,4);
hold on
for T0=1:10
    [y,x,t]=impulse([1],[T0*T0 T0*0.5 1]);
    plot(t,y);
end
title('charakterystyka odpowiedzi impulsowej dla zmiennego T1 oraz k=1 i E = 0.5');
subplot(3,2,6);
hold on
for E=1:-0.1:0.1
    [y,x,t]=impulse([1],[1 E 1]);
    plot(t,y);
end
title('charakterystyka odpowiedzi impulsowej dla zmiennego E oraz k=1 i T0=1');