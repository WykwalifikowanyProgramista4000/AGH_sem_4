subplot(2,2,1)
hold on
for T = 1:2:9
    nyquist([4 0],[T 1]);
end
title('Charakterystyka Nyquista dla sta쿮go Td=4 oraz zmiennego T');
legend('T=1','T=3','T=5','T=7','T=9','Location','NorthWest')
grid();

subplot(2,2,3)
hold on
for Td= 1:2:9
    nyquist([Td 0],[5 1]);
end
title('Charakterystyka Nyquista dla sta쿮go T5=4 oraz zmiennego Td');
legend('Td=1','Td=3','Td=5','Td=7','Td=9','Location','NorthWest')
grid();

subplot(2,2,2)
hold on
for T=1:2:9
    bode([4 0],[T 1]);
end
title('Charakterystyka Bodego dla sta쿮go Td=4 oraz zmiennego T');
legend('T=1','T=3','T=5','T=7','T=9','Location','NorthWest')
grid();

subplot(2,2,4)
hold on
for  k= 1:2:9
    bode([Td 0],[5 1])
end
title('Charakterystyka Bodego dla sta쿮go T=5 oraz zmiennego Td');
legend('Td=1','Td=3','Td=5','Td=7','Td=9','Location','NorthWest')
grid();