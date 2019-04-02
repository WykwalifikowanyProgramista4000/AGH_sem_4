% REDI

%% NYQUIST

figure(1)
set(gcf, 'Position',  [100, 100, 1000, 400])
hold on
Td = 5;
for T = [3, 5, 7]
    nyquist([Td, 0],[T, 1]);
end
title('Charakterystyka Nyquista dla: Td = 5');
legend('T = 3','T = 5','T = 7','Location','SouthWest')
grid();
axis([-1 2 -1 1]);


figure(2)
set(gcf, 'Position',  [100, 100, 1000, 400])
hold on
T = 5;
for Td = [3, 5, 7]
    nyquist([Td, 0],[T, 1]);
end
title('Charakterystyka Nyquista dla: T = 5');
legend('Td = 3', 'Td = 5', 'Td = 7', 'Location','SouthWest')
grid();

%% BODE

figure(3)
set(gcf, 'Position',  [100, 100, 1000, 400])
hold on
Td = 5;
for T = [3, 5, 7]
    bode([Td, 0],[T, 1]);
end
title('Charakterystyka Bodego dla: Td = 5');
legend('T = 3', 'T = 5','T = 7', 'Location','East')
grid();

figure(4)
set(gcf, 'Position',  [100, 100, 1000, 400])
hold on
T = 5;
for  Td = [3, 5, 7]
    bode([Td, 0],[T, 1]);
end
title('Charakterystyka Bodego dla: T = 5');
legend('Td = 3', 'Td = 5', 'Td = 7', 'Location','East')
grid();