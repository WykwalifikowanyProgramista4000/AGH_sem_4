% redi

%% NYQUIST

figure(1)
set(gcf, 'Position',  [100, 100, 1000, 400])
hold on
T1 = 5;
T2 = 5;
for k = [3, 5, 7]
    nyquist([k],[T1*T2, T1+T2, 1]);
end
title('Charakterystyka Nyquista dla: T1 = 1, T2 = 5');
legend('k = 1','k = 5','k = 10','Location','East')
grid on;

figure(2)
set(gcf, 'Position',  [100, 100, 1000, 400])
hold on
k = 5;
T2 = 5;
for T1= [3, 5, 7]
    nyquist([k],[T1*T2 T1+T2 1]);
end
title('Charakterystyka Nyquista dla: k = 1, T2 = 1');
legend('T = 1','T = 5','T = 10','Location','East')
grid on;


%% BODE

figure(3)
set(gcf, 'Position',  [100, 100, 1000, 400])
hold on
T1 = 5;
T2 = 5;
for k = [3, 5, 7]
    bode([k],[T1*T2 T1+T2 1]);
end
title('Charakterystyka Bodego dla: T1 = 5, T2 = 1');
legend('k = 1', 'k = 5', 'k = 10','Location','East')
grid();

figure(4)
set(gcf, 'Position',  [100, 100, 1000, 400])
hold on
k = 5;
T2 = 5;
for  T1 = [3, 5, 7]
    bode([k],[T1*T2 T1+T2 1])
end
title('Charakterystyka Bodego dla sta³ych k=1,T2=1 oraz zmiennego T1');
legend('T1=1', 'T1 = 5', 'T1 = 10','Location','East')
grid();

