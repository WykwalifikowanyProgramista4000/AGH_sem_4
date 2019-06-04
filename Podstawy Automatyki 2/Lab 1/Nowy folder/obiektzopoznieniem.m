subplot(2,2,1);
hold on;
for tdel=1:10
    [del_l,del_m]=pade(tdel,5);
    [licz_d,mian_d]=series(del_l,del_m,[1],[1,1]);
    [y,x,t]=step(licz_d,mian_d);
    plot(t,y);
end
title('Charakterystyki odpowiedzi skokowej dla zmiennedo opóŸnienia, rzêdu aproksymacji 5 oraz T = 1 i k=1');
subplot(2,2,3);
hold on;
for n=1:10
    [del_l,del_m]=pade(5,n);
    [licz_d,mian_d]=series(del_l,del_m,[1],[1,1]);
    [y,x,t]=step(licz_d,mian_d);
    plot(t,y);
end
title('Charakterystyki odpowiedzi skokowej dla zmiennego rzêdu aproksymacji, opóŸnienia 5 oraz T = 1 i k=1');
subplot(2,2,2);
hold on;
for tdel=1:10
    [del_l,del_m]=pade(tdel,5);
    [licz_d,mian_d]=series(del_l,del_m,[1],[1,1]);
    [y,x,t]=impulse(licz_d,mian_d);
    plot(t,y);
end
title('Charakterystyki odpowiedzi impulsowej dla zmiennedo opóŸnienia, rzêdu aproksymacji 5 oraz T = 1 i k=1');
subplot(2,2,4);
hold on;
for n=1:10
    [del_l,del_m]=pade(5,n);
    [licz_d,mian_d]=series(del_l,del_m,[1],[1,1]);
    [y,x,t]=impulse(licz_d,mian_d);
    plot(t,y);
end
title('Charakterystyki odpowiedzi impulsowej dla zmiennego rzêdu aproksymacji, opóŸnienia 5 oraz T = 1 i k=1');