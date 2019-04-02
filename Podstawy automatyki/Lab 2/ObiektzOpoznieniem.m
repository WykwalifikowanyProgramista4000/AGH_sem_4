% REDI

%% NYQUIST

w=logspace(-5,5,1000);

figure(1)
set(gcf, 'Position',  [100, 100, 1000, 400])
hold on;
T = 5;
for teta = [3, 5, 7]
    [del_l,del_m]=pade(teta, T);
    [licz_d,mian_d]=series(del_l,del_m,[1],[T,1]);
    nyquist(licz_d,mian_d,w);
end
title('Charakterystyka Nyquista dla: T = 5');
legend('tau = 3', 'tau = 5', 'tau = 7', 'Location','SouthWest')
grid();

figure(2)
set(gcf, 'Position',  [100, 100, 1000, 400])
hold on;
teta = 5;
for T = [3, 5, 7]
    [del_l,del_m]=pade(teta, T);
    [licz_d,mian_d]=series(del_l,del_m,[1],[T,1]);
    nyquist(licz_d,mian_d,w);
end
title('Charakterystyka Nyquista dla: tau = 5');
legend('T = 3', 'T = 5', 'T = 7', 'Location','SouthWest')
grid();

%% BODE

figure(3)
set(gcf, 'Position',  [100, 100, 1000, 400])
hold on;
T = 5;
for teta = [3 5 7]
    [del_l,del_m]=pade(teta, T);
    [licz_d,mian_d]=series(del_l,del_m,[1],[T,1]);
    bode(licz_d,mian_d);
end
title('Charakterystyka Bodego dla: T = 5, k = 1');
legend('tau = 3', 'tau = 5', 'tau = 7', 'Location','East')
grid();

figure(4)
set(gcf, 'Position',  [100, 100, 1000, 400])
hold on;
teta = 5;
for T = [3 5 7]
    [del_l,del_m]=pade(teta, T);
    [licz_d,mian_d]=series(del_l,del_m,[1],[T,1]);
    bode(licz_d,mian_d);
end
title('Charakterystyka Bodego dla: tau = 5, k = 1');
legend('T = 3', 'T = 5', 'T = 7', 'Location','East')
grid();