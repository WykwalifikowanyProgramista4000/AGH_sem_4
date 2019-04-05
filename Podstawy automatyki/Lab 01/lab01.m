%% Obiekt inercyjny I rzÍdu
subplot(2,2,1);
hold on
T = 5;
for k = [3, 5, 7]
    [y, x, t] = step([k],[T,1]);
    plot(t,y)
end
title('charakterystyka odpowiedzi skokowej dla k = {3, 5, 7} oraz T = 5');
hold off; grid on; axis([0 45 0 10]);

subplot(2,2,2);
hold on
k = 3;
for T = [3 5 7]
    [y, x, t] = step([k],[T,1]);
    plot(t,y)
end
title('charakterystyka odpowiedzi skokowej dla k = 3 oraz T = {3, 5, 7}');
hold off; grid on; axis([0 45 0 10]);

subplot(2,2,3);
hold on
T = 5;
for k = [3, 5, 7]
    [y, x, t] = impulse([k],[T,1]);
    plot(t,y)
end
title('charakterystyka odpowiedzi impulsowej dla k = {3, 5, 7} oraz T = 5');
hold off; grid on;

subplot(2,2,4);
hold on
k = 3;
for T = [3 5 7]
    [y, x, t] = impulse([k],[T,1]);
    plot(t,y)
end
title('charakterystyka odpowiedzi impulsowej dla k = 3 oraz T = {3, 5, 7}');
hold off; grid on; axis([0 30 0 2]);
%% Obiekt inercyjny II rzÍdu

% skokowa

subplot(2,3,1)
hold on
T1 = 5;
T2 = 5;
for k = [3, 5, 7]
    [y, x, t] = step([k],[T1*T2, T1 + T2, 1]);
    plot(t,y)
end
title('Odpowiedü skokowa dla k = {1,3,5,7,9} oraz T1 = 5 , T2 = 10');
hold off; grid on; axis([0 50 0 8]);

subplot(2,3,2)
hold on
k = 5;
T2 = 5;
for T1 = [3, 5, 7]
    [y, x, t] = step([k],[T1*T2, T1 + T2, 1]);
    plot(t,y)
end
title('Odpowiedü skokowa dla k = 5 oraz T1 = {3, 5, 7} , T2 = 5');
hold off; grid on; axis([0 50 0 8]);

subplot(2,3,3)
hold on
k = 5;
T1 = 5;
for T2 = [3, 5, 7]
    [y, x, t] = step([k],[T1*T2, T1 + T2, 1]);
    plot(t,y)
end
title('Odpowiedü skokowa dla k = 5 oraz T1 = 5 , T2 = {3, 5, 7}');
hold off; grid on; axis([0 50 0 8]);

% IMPULSOWA

subplot(2,3,4)
hold on
T1 = 5;
T2 = 5;
for k = [3, 5, 7]
    [y, x, t] = impulse([k],[T1*T2, T1 + T2, 1]);
    plot(t,y)
end
title('Odpowiedü impulsowa dla k = {1,3,5,7,9} oraz T1 = 5 , T2 = 10');
hold off; grid on; axis([0 50 0 0.6]);

subplot(2,3,5)
hold on
k = 5;
T2 = 5;
for T1 = [3, 5, 7]
    [y, x, t] = impulse([k],[T1*T2, T1 + T2, 1]);
    plot(t,y)
end
title('Odpowiedü impulsowa dla k = 5 oraz T1 = {3, 5, 7} , T2 = 5');
hold off; grid on; axis([0 50 0 0.6]);

subplot(2,3,6)
hold on
k = 5;
T1 = 5;
for T2 = [3, 5, 7]
    [y, x, t] = impulse([k],[T1*T2, T1 + T2, 1]);
    plot(t,y)
end
title('Odpowiedü impulsowa dla k = 5 oraz T1 = 5 , T2 = {3, 5, 7}');
hold off; grid on; axis([0 50 0 0.6]);


%% Obiekt Oscylacyjny II rzÍdu

% SKOKOWA

subplot(2,3,1)
hold on
T0 = 5;
f = 0.5;
for k = [3, 5, 7]
    [y, x, t] = step([k],[T0*T0, 2*f*T0, 1]);
    plot(t,y)
end
title('Odpowiedü skokowa dla k = {3, 5, 7} oraz f = 0.5 , T0 = 5');
hold off; grid on; %axis([0 50 0 8]);

subplot(2,3,2)
hold on
k = 5;
f = 0.5;
for T0 = [3, 5, 7]
   [y, x, t] = step([k],[T0*T0, 2*f*T0, 1]);
    plot(t,y)
end
title('Odpowiedü skokowa dla k = 5 oraz T0 = {3, 5, 7} , f = 0.5');
hold off; grid on; %axis([0 50 0 8]);

subplot(2,3,3)
hold on
k = 5;
T0 = 5;
for f = [0.3, 0.5, 0.7]
    [y, x, t] = step([k],[T0*T0, 2*f*T0, 1]);
    plot(t,y)
end
title('Odpowiedü skokowa dla k = 5 oraz T0 = 5 , f = {0.3, 0.5, 0.7}');
hold off; grid on; %axis([0 50 0 8]);

% IMPULSOWA

subplot(2,3,4)
hold on
T0 = 5;
f = 0.5;
for k = [3, 5, 7]
    [y, x, t] = impulse([k],[T0*T0, 2*f*T0, 1]);
    plot(t,y)
end
title('Odpowiedü impulsowa dla k = {3, 5, 7} oraz f = 0.5 , T0 = 5');
hold off; grid on; %axis([0 50 0 8]);

subplot(2,3,5)
hold on
k = 5;
f = 0.5;
for T0 = [3, 5, 7]
   [y, x, t] = impulse([k],[T0*T0, 2*f*T0, 1]);
    plot(t,y)
end
title('Odpowiedü impulsowa dla k = 5 oraz T0 = {3, 5, 7} , f = 0.5');
hold off; grid on; %axis([0 50 0 8]);

subplot(2,3,6)
hold on
k = 5;
T0 = 5;
for f = [0.3, 0.5, 0.7]
    [y, x, t] = impulse([k],[T0*T0, 2*f*T0, 1]);
    plot(t,y)
end
title('Odpowiedü impulsowa dla k = 5 oraz T0 = 5 , f = {0.3, 0.5, 0.7}');
hold off; grid on; %axis([0 50 0 8]);

%% Obiekt ca≥kujπcy z inercjπ I

% SKOKOWA

subplot(2,3,1)
hold on
T = 5;
Ti = 5;
for k = [3, 5, 7]
    [y, x, t] = step([k],[T*Ti, Ti, 1]);
    plot(t,y)
end
title('Odpowiedü skokowa dla k = {3, 5, 7} oraz T = 5 , Ti = 5');
hold off; grid on; %axis([0 50 0 8]);

subplot(2,3,2)
hold on
k = 5;
Ti = 5;
for T = [3, 5, 7]
   [y, x, t] = step([k],[T*Ti, Ti, 1]);
    plot(t,y)
end
title('Odpowiedü skokowa dla k = 5 oraz T = {3, 5, 7} , Ti = 5');
hold off; grid on; %axis([0 50 0 8]);

subplot(2,3,3)
hold on
k = 5;
T = 5;
for Ti = [3, 5, 7]
    [y, x, t] = step([k],[T*Ti, Ti, 1]);
    plot(t,y)
end
title('Odpowiedü skokowa dla k = 5 oraz T = 5 , Ti = {3, 5, 7}');
hold off; grid on; %axis([0 50 0 8]);


% IMPULSOWA

subplot(2,3,4)
hold on
T = 5;
Ti = 5;
for k = [3, 5, 7]
    [y, x, t] = impulse([k],[T*Ti, Ti, 1]);
    plot(t,y)
end
title('Odpowiedü impulsowa dla k = {3, 5, 7} oraz T = 5 , Ti = 5');
hold off; grid on; %axis([0 50 0 8]);

subplot(2,3,5)
hold on
k = 5;
Ti = 5;
for T = [3, 5, 7]
   [y, x, t] = impulse([k],[T*Ti, Ti, 1]);
    plot(t,y)
end
title('Odpowiedü impulsowa dla k = 5 oraz T = {3, 5, 7} , Ti = 5');
hold off; grid on; %axis([0 50 0 8]);

subplot(2,3,6)
hold on
k = 5;
T = 5;
for Ti = [3, 5, 7]
    [y, x, t] = impulse([k],[T*Ti, Ti, 1]);
    plot(t,y)
end
title('Odpowiedü impulsowa dla k = 5 oraz T = 5 , Ti = {3, 5, 7}');
hold off; grid on; %axis([0 50 0 8]);


%% Obiekt rÛøniczkujπcy rzeczywisty

% SKOKOWA

subplot(2,2,1)
hold on
Td = 5;
for T = [3, 5, 7]
    [y, x, t] = step([Td, 0],[T, 1]);
    plot(t,y)
end
title('Odpowiedü skokowa dla T = {3, 5, 7} oraz Td = 5');
hold off; grid on; axis([0 30 0 1.5]);

subplot(2,2,2)
hold on
T = 5;
for Td = [3, 5, 7]
    [y, x, t] = step([Td, 0],[T, 1]);
    plot(t,y)
end
title('Odpowiedü skokowa dla Td = {3, 5, 7} oraz T = 5');
hold off; grid on; axis([0 30 0 1.5]);

% IMPULSOWA
% 8====D
subplot(2,2,3)
hold on
Td = 5;
for T = [3, 5, 7]
    [y, x, t] = impulse([Td, 0],[T, 1]);
    plot(t,y)
end
title('Odpowiedü impulsowa dla T = {3, 5, 7} oraz Td = 5');
hold off; grid on; axis([0 30 -0.5 0]);

subplot(2,2,4)
hold on
T = 5;
for Td = [3, 5, 7]
    [y, x, t] = impulse([Td, 0],[T, 1]);
    plot(t,y)
end
title('Odpowiedü impulsowa dla Td = {3, 5, 7} oraz T = 5');
hold off; grid on; axis([0 30 -0.5 0]);

%% Obiekt inercyjny I rzÍdu z opÛünieniem

% SKOKOWA

subplot(2,2,1)
hold on;
n = 5
for T = [3 5 7]
    [del_l, del_m] = pade(T,n);
    licz = [k];
    mian = [T,1];
    [licz_d, mian_d]=series(del_l, del_m, licz, mian);
    [y,x,t]=step(licz_d, mian_d);
    plot(t,y)
end
title('Odpowiedü skokowa dla T = {3, 5, 7} i n =5');
hold off; grid on;

subplot(2,2,2)
hold on;
T = 5
for n = [3 5 7]
    [del_l, del_m] = pade(T,n);
    licz = [k];
    mian = [T,1];
    [licz_d, mian_d]=series(del_l, del_m, licz, mian);
    [y,x,t]=step(licz_d, mian_d);
    plot(t,y)
end
title('Odpowiedü skokowa dla k = {3, 5, 7} i T = 5');
hold off; grid on;

%IMPULSOWA

subplot(2,2,3)
hold on;
n = 5
for T = [3 5 7]
    [del_l, del_m] = pade(T,n);
    licz = [k];
    mian = [T,1];
    [licz_d, mian_d]=series(del_l, del_m, licz, mian);
    [y,x,t]=impulse(licz_d, mian_d);
    plot(t,y)
end
title('Odpowiedü impulsowa dla T = {3, 5, 7} i n =5');
hold off; grid on;

subplot(2,2,4)
hold on;
T = 5
for n = [3 5 7]
    [del_l, del_m] = pade(T,n);
    licz = [k];
    mian = [T,1];
    [licz_d, mian_d]=series(del_l, del_m, licz, mian);
    [y,x,t]=impulse(licz_d, mian_d);
    plot(t,y)
end
title('Odpowiedü impulsowa dla k = {3, 5, 7} i T = 5');
hold off; grid on;