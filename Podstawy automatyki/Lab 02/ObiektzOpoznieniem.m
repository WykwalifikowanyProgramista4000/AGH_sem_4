w=logspace(-5,5,1000);

subplot(2,2,1);
hold on;
for tdel=1:2:9
    [del_l,del_m]=pade(tdel,5);
    [licz_d,mian_d]=series(del_l,del_m,[1],[5,1]);
    nyquist(licz_d,mian_d,w);
end
title('Charakterystyka Nyquista dla sta³ego k=1,T=5 oraz zmiennego opóŸnienia');
legend('theta=1','theta=3','theta=5','theta=7','theta=9','Location','NorthWest')
grid();

subplot(2,2,3);
hold on;
for T=1:2:9
    [del_l,del_m]=pade(5,5);
    [licz_d,mian_d]=series(del_l,del_m,[1],[T,1]);
    nyquist(licz_d,mian_d,w);
end
title('Charakterystyka Nyquista dla sta³ego k=1,theta=5 oraz zmiennego T');
legend('T=1','T=3','T=5','T=7','T=9','Location','NorthWest')
grid();

subplot(2,2,2);
hold on;
for tdel=1:2:9
    [del_l,del_m]=pade(tdel,5);
    [licz_d,mian_d]=series(del_l,del_m,[1],[5,1]);
    bode(licz_d,mian_d);
end
title('Charakterystyka Bodego dla sta³ego k=1,T=5 oraz zmiennego opóŸnienia');
legend('theta=1','theta=3','theta=5','theta=7','theta=9','Location','NorthWest')
grid();

subplot(2,2,4);
hold on;
for T=1:2:9
    [del_l,del_m]=pade(5,5);
    [licz_d,mian_d]=series(del_l,del_m,[1],[T,1]);
    bode(licz_d,mian_d);
end
title('Charakterystyka Bodego dla sta³ego k=1,theta=5 oraz zmiennego T');
legend('T=1','T=3','T=5','T=7','T=9','Location','NorthWest')
grid();