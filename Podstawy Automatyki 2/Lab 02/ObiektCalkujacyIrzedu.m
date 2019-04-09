% REDI

%% NYQUIST

figure(1)
set(gcf, 'Position',  [100, 100, 1000, 400])
hold on
T = 5;
Ti =5;
for k = [3 5 7]
    nyquist([k],[T*Ti, T, 0]);
end
title('Charakterystyka Nyquista dla: T = 5, Ti = 0.5');
legend('k = 3', 'k = 5', 'k = 7', 'Location','EastOutside')
grid();

figure(2)
set(gcf, 'Position',  [100, 100, 1000, 400])
hold on
k = 5;
Ti = 5;
for T= [3 5 7]
    nyquist([k],[T*Ti, T, 0]);
end
title('Charakterystyka Nyquista dla: k = 1, Ti = 0.5');
legend('T = 3', 'T = 5', 'T = 7', 'Location','EastOutside')
grid();

figure(3)
set(gcf, 'Position',  [100, 100, 1000, 400])
hold on
k = 5;
T = 5;
for Ti = [3 5 7]
    nyquist([k],[T*Ti, T, 0]);
end
title('Charakterystyka Nyquista dla: k = 1, T = 5');
legend('Ti = 3', 'Ti = 5', 'Ti = 7', 'Location','EastOutside')
grid();


%% BODE

figure(4)
set(gcf, 'Position',  [100, 100, 1000, 400])
hold on
T =5;
Ti = 5;
for k=[3 5 7]
    bode([k],[T*Ti, T, 0]);
end
title('Charakterystyka Bodego dla: T = 5, Ti = 0.5');
legend('k=3', 'k = 5', 'k = 7', 'Location','EastOutside')
grid();

figure(5)
set(gcf, 'Position',  [100, 100, 1000, 400])
hold on
k = 5;
Ti = 5;
for  T= [3 5 7]
    bode([k],[T*Ti, T, 0]);
end
title('Charakterystyka Bodego dla: k = 1, Ti = 0.5');
legend('T = 3', 'T = 5', 'T = 7', 'Location','EastOutside')
grid();

figure(6)
set(gcf, 'Position',  [100, 100, 1000, 400])
hold on
k = 5;
T = 5;
for  Ti = [3 5 7]
    bode([k],[T*Ti, T, 0]);
end
title('Charakterystyka Bodego dla: k = 1, T = 5');
legend('Ti = 3', 'Ti = 5', 'Ti = 7', 'Location', 'EastOutside')
grid();