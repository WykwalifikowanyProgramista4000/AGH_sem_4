%redi

%% NYQUIST

figure(1)
set(gcf, 'Position',  [100, 100, 1000, 400])
hold on
k = 3;
for T = [3, 5, 7]
    nyquist([k],[T 1]);
end
title('Charakterystyka Nyquista dla k = 3');
legend('T = 1','T = 5','T = 10','Location','East')
grid on;

figure(2)
set(gcf, 'Position',  [100, 100, 1000, 400])
hold on
T = 5;
for k = [3, 5, 7]
    nyquist([k],[T 1]);
end
title('Charakterystyka Nyquista dla T = 5');
legend('k = 1','k = 5', 'k = 10','Location','East')
grid on;

%% BODE

figure(3)
set(gcf, 'Position',  [100, 100, 1000, 400])
hold on
k = 3;
for T = [3, 5, 7]
    bode([k],[T 1]);
end
title('Charakterystyka Bodego dla k = 3');
legend('T = 1', 'T = 5', 'T = 10','Location','East')
grid on;

figure(4)
set(gcf, 'Position',  [100, 100, 1000, 400])
hold on
T = 5;
for  k = [3, 5, 7]
    bode([k],[T 1])
end
title('Charakterystyka Bodego dla T = 5');
legend('k = 1', 'k = 5', 'k = 10','Location','East')
grid on;