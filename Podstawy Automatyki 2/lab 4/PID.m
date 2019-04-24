%% zmienne k
czas = 1:100;
licz_Ti = 1;
mian_Ti = [50 0];
licz_Td = [0.5 0];
mian_Td = [0.05 1];
reg_Ti = tf(licz_Ti, mian_Ti);
reg_Td = tf(licz_Td, mian_Td);
licz_1 = 1;
mian_1 = 1;
reg_1 = tf(licz_1,mian_1);
reg_ID = parallel(reg_Ti,reg_Td);
reg_1ID = parallel(reg_ID,reg_1);

for k =1:3:10
    licz_k = k;
    mian_k = 1;
    reg_k = tf(licz_k, mian_k);
    reg_PI = series(reg_1ID,reg_k);
    
    figure(1)
    hold on
    step(reg_PI);
    title('Odpowiedü skokowa dla Ti = 50, Td = 0.5, T = 0.05')
    legend('k = 1', 'k = 4', 'k = 7', 'k = 10')
    set(gcf, 'Position',  [100, 100, 1000, 400])
    
    figure(2)
    hold on
    nyquist(reg_PI);
    title('Charakterystyka Nyquista dla Ti = 50, Td = 0.5, T = 0.05')
    legend('k = 1', 'k = 4', 'k = 7', 'k = 10')
    set(gcf, 'Position',  [100, 100, 1000, 400])
    
    figure(3)
    hold on
    bode(reg_PI);
    title('Charakterystyka Bodego dla Ti = 50, Td = 0.5, T = 0.05')
    legend('k = 1', 'k = 4', 'k = 7', 'k = 10')
    set(gcf, 'Position',  [100, 100, 1000, 400])
    
    figure(13)
    hold on
    lsim(reg_PI, czas, czas);
    title('Odpowiedü czasowa dla Ti = 50, Td = 0.5, T = 0.05')
    legend('k = 1', 'k = 4', 'k = 7', 'k = 10')
    set(gcf, 'Position',  [100, 100, 1000, 400])
end

%% zmienne Ti

licz_k = 10;
mian_k = 1;
reg_k=tf(licz_k,mian_k);
licz_1 = 1;
mian_1 = 1;
licz_Td = [0.5 0];
mian_Td = [0.05 1];
reg_Td = tf(licz_Td,mian_Td);
reg_1 = tf(licz_1,mian_1);
reg_1Td = parallel(reg_Td,reg_1);

for Ti = 50:20:110;
    licz_Ti = 1;
    mian_Ti = [Ti 0];
    reg_Ti = tf(licz_Ti, mian_Ti);
    reg_1ID = parallel(reg_1Td,reg_Ti);
    reg_PID = series(reg_k,reg_1ID);
    
    figure(4)
    hold on
    step(reg_PID);
    title('Odpowiedü skokowa dla k = 10, Td = 0.5, T = 0.05')
    legend('Ti = 50', 'Ti = 70', 'Ti = 90', 'Ti = 110')
    set(gcf, 'Position',  [100, 100, 1000, 400])
    
    figure(5)
    hold on
    nyquist(reg_PID);
    title('Charakterysyka Nyquista dla k = 10, Td = 0.5, T = 0.05')
    legend('Ti = 50', 'Ti = 70', 'Ti = 90', 'Ti = 110')
    set(gcf, 'Position',  [100, 100, 1000, 400])
    
    figure(6)
    hold on
    bode(reg_PID);
    title('Charakterystyka Bodegodla k = 10, Td = 0.5, T = 0.05')
    legend('Ti = 50', 'Ti = 70', 'Ti = 90', 'Ti = 110')
    set(gcf, 'Position',  [100, 100, 1000, 400])
    
    figure(14)
    hold on
    lsim(reg_PID, czas, czas);
    title('Odpowiedü czasowa dla k = 10, Td = 0.5, T = 0.05')
    legend('Ti = 50', 'Ti = 70', 'Ti = 90', 'Ti = 110')
    set(gcf, 'Position',  [100, 100, 1000, 400])
    
end

%% zmienne Td

licz_k = 10;
mian_k = 1;
reg_k=tf(licz_k,mian_k);
licz_1 = 1;
mian_1 = 1;
reg_1 = tf(licz_1,mian_1);
licz_Ti = 1;
mian_Ti = [50 0];
reg_Ti = tf(licz_Ti,mian_Ti);
reg_1I = parallel(reg_Ti,reg_1);
mian_Td = [0.01 1];


for Td = 0.1:0.1:0.4
    licz_Td = [Td 0];
    reg_Td = tf(licz_Td, mian_Td);
    reg_1ID = parallel(reg_1I,reg_Td);
    reg_PID = series(reg_k,reg_1ID);
    
    figure(7)
    hold on
    step(reg_PID);
    title('Odpowiedü skokowa dla k = 10, Ti = 50, T = 0.01')
    legend('Td = 0.1', 'Td = 0.2', 'Td = 0.3', 'Td = 0.4')
    set(gcf, 'Position',  [100, 100, 1000, 400])
    
    figure(8)
    hold on
    nyquist(reg_PID);
    title('Charakterystyka Nyquista dla k = 10, Ti = 50, T = 0.01')
    legend('Td = 0.1', 'Td = 0.2', 'Td = 0.3', 'Td = 0.4')
    set(gcf, 'Position',  [100, 100, 1000, 400])
    
    figure(9)
    hold on
    bode(reg_PID);
    title('Charakterystyka Bodego dla k = 10, Ti = 50, T = 0.01')
    legend('Td = 0.1', 'Td = 0.2', 'Td = 0.3', 'Td = 0.4')
    set(gcf, 'Position',  [100, 100, 1000, 400])
    
    figure(15)
    hold on
    lsim(reg_PID, czas, czas);
    title('Odpowiedü czasowa dla k = 10, Ti = 50, T = 0.01')
    legend('Td = 0.1', 'Td = 0.2', 'Td = 0.3', 'Td = 0.4')
    set(gcf, 'Position',  [100, 100, 1000, 400])
end

%% zmienna sta≥a czasowa

licz_k = 10;
mian_k = 1;
reg_k=tf(licz_k,mian_k);
licz_1 = 1;
mian_1 = 1;
reg_1 = tf(licz_1,mian_1);
licz_Ti = 1;
mian_Ti = [5 0];
reg_Ti = tf(licz_Ti,mian_Ti);
reg_1I = parallel(reg_Ti,reg_1);
licz_Td = [0.1 0];


for T = 0.01: 0.01 :0.04
    mian_Td = [T 1];
    reg_Td = tf(licz_Td, mian_Td);
    reg_1ID = parallel(reg_1I,reg_Td);
    reg_PID = series(reg_k,reg_1ID);
    
    figure(10)
    hold on
    step(reg_PID);
    title('Odpowiedü skokowa dla k = 10, Ti = 50, Td = 0.1')
    legend('T = 0.01', 'T = 0.02', 'T = 0.03', 'T = 0.04')
    set(gcf, 'Position',  [100, 100, 1000, 400])
    
    figure(11)
    hold on
    nyquist(reg_PID);
    title('Charakterystyka Nyquista dla k = 10, Ti = 50, Td = 0.1')
    legend('T = 0.01', 'T = 0.02', 'T = 0.03', 'T = 0.04')
    set(gcf, 'Position',  [100, 100, 1000, 400])
    
    figure(12)
    hold on
    bode(reg_PID);
    title('Charakterystyka Bodego dla k = 10, Ti = 50, Td = 0.1')
    legend('T = 0.01', 'T = 0.02', 'T = 0.03', 'T = 0.04')
    set(gcf, 'Position',  [100, 100, 1000, 400])
    
    figure(15)
    hold on
    lsim(reg_PID, czas, czas);
    title('Odpowiedü czasowa dla k = 10, Ti = 50, Td = 0.1')
    legend('T = 0.01', 'T = 0.02', 'T = 0.03', 'T = 0.04')
    set(gcf, 'Position',  [100, 100, 1000, 400])
end

%%

czas = 1:100;