%% Obiekt inercyjny I rzêdu
figure(1)
set(gcf, 'Position',  [100, 100, 1000, 400])
hold on
T = 5;
for k = 5
    [y, x, t] = step([k],[T,1]);
    plot(t,y)
    plot([0 45],[5 5], '--r')
    plot([5 5], [0 5], '--') 
    plot([0 5], [0 5], '--')
end
title('charakterystyka odpowiedzi skokowej');
hold off; grid on; axis([0 45 0 10]);

%% Obiekt Oscylacyjny II rzêdu

% SKOKOWA

figure(1)
set(gcf, 'Position',  [100, 100, 1000, 400])
hold on
T0 = 5;
f = 0.5;
for k = 5
    [y, x, t] = step([k],[T0*T0, 2*f*T0, 1]);
    plot(t,y)
    plot([0 53], [5 5], '--')
end
title('charakterystyka odpowiedzi skokowej');
hold off; grid on; axis([0 53 0 8]);

%% Obiekt ró¿niczkuj¹cy rzeczywisty

% SKOKOWA

figure(1)
set(gcf, 'Position',  [100, 100, 1000, 400])
hold on
Td = 5;
for T = 5
    [y, x, t] = step([Td, 0],[T, 1]);
    plot(t,y)
    plot([0 5], [1 0], '--')
end
title('charakterystyka odpowiedzi skokowej');
hold off; grid on; axis([0 30 0 1.5]);


%% Obiekt inercyjny I rzêdu z opóŸnieniem

% SKOKOWA

figure(1)
set(gcf, 'Position',  [100, 100, 1000, 400])
hold on;
n = 5;
for T = 5
    [del_l, del_m] = pade(T,n);
    licz = [k];
    mian = [T,1];
    [licz_d, mian_d]=series(del_l, del_m, licz, mian);
    [y,x,t]=step(licz_d, mian_d);
    plot(t,y)  
    plot([0 35], [5 5], '--')
    plot([5 10], [0 5], '--')    
    plot([10 10],[0 5], '--')
    plot([0 35], [0 0], '--')
end
title('charakterystyka odpowiedzi skokowej');
hold off; grid on; axis([0 34 -2 8]);




