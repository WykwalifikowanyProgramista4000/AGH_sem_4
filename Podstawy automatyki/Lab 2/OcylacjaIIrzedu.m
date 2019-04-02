% REDI 

%% NYQUIST

figure(1)
set(gcf, 'Position',  [100, 100, 1000, 400])
hold on
T0 = 5;
ksi = 0.2;
for k = [3, 5, 7]    
    nyquist([k],[T0*T0, 2*ksi*T0, 1]);
end
title('Charakterystyka Nyquista dla: T0 = 5, ksi = 0.2');
legend('k = 3','k = 5','k = 7','Location','West')
grid on;

figure(2)
set(gcf, 'Position',  [100, 100, 1000, 400])
hold on
ksi = 0.3;
k = 5;
for T0= [3, 5, 7]
    nyquist([k],[T0*T0, 2*ksi*T0, 1]);
end
title('Charakterystyka Nyquista dla: k = 5, ksi = 0.3');
legend('T0 = 3','T0 = 5','T0 = 7','Location','West')
grid();

figure(3)
set(gcf, 'Position',  [100, 100, 1000, 400])
hold on
T0 = 5;
k = 5;
for ksi = [0.3, 0.5, 0.7]
    nyquist([k],[T0*T0, 2*ksi*T0, 1]);
end
title('Charakterystyka Nyquista dla: k = 5, T0 = 5');
legend('ksi = 0.3', 'ksi = 0.5', 'ksi = 0.7', 'Location', 'West')
grid();


%% BODE


figure(4)
set(gcf, 'Position',  [100, 100, 1000, 400])
hold on
T0 = 5;
ksi = 0.5;
for k = [3, 5, 7]
    bode([k],[T0*T0, 2*ksi*T0, 1]);
end
title('Charakterystyka Bodego dla: T0 = 5, ksi = 0.5');
legend('k = 3','k = 5','k = 7','Location','East')
grid();

figure(5)
set(gcf, 'Position',  [100, 100, 1000, 400])
hold on
k = 5;
ksi = 0.5;
for  T0= [3, 5, 7]
    bode([k],[T0*T0, 2*ksi*T0, 1]);
end
title('Charakterystyka Bodego dla: k = 1 , ksi = 0.5');
legend('T0 = 3', 'T0 = 5', 'T0 = 7', 'Location', 'East')
grid();

figure(6)
set(gcf, 'Position',  [100, 100, 1000, 400])
hold on
T0 = 5;
k = 5;
for  ksi = [0.3, 0.5, 0.7]
    bode([k],[T0*T0, 2*ksi*T0, 1]);
end
title('Charakterystyka Nyquista dla: k = 1, T0 = 5');
legend('ksi = 0.3','ksi = 0.5','ksi = 0.7', 'Location','East')
grid();