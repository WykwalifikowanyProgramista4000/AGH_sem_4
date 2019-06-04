%zmienne k
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

for k =1:9
    licz_k = k;
    mian_k = 1;
    reg_k = tf(licz_k, mian_k);
    reg_PI = series(reg_1ID,reg_k);
    
    figure(1)
    hold on
    step(reg_PI);
    
    figure(2)
    hold on
    nyquist(reg_PI);
    
    figure(3)
    hold on
    bode(reg_PI);
end

%zmienne Ti

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

for Ti = 50:10:140;
    licz_Ti = 1;
    mian_Ti = [Ti 0];
    reg_Ti = tf(licz_Ti, mian_Ti);
    reg_1ID = parallel(reg_1Td,reg_Ti);
    reg_PID = series(reg_k,reg_1ID);
    
    figure(4)
    hold on
    step(reg_PID);
    
    figure(5)
    hold on
    nyquist(reg_PID);
    
    figure(6)
    hold on
    bode(reg_PID);
end

%zmienne Td

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


for Td = 0.1:0.05:0.5
    licz_Td = [Td 0];
    reg_Td = tf(licz_Td, mian_Td);
    reg_1ID = parallel(reg_1I,reg_Td);
    reg_PID = series(reg_k,reg_1ID);
    
    figure(7)
    hold on
    step(reg_PID);
    
    figure(8)
    hold on
    nyquist(reg_PID);
    
    figure(9)
    hold on
    bode(reg_PID);
end

%zmienna sta³a czasowa

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
licz_Td = [0.1 0];


for T = 0.01:0.005:0.05
    mian_Td = [T 1];
    reg_Td = tf(licz_Td, mian_Td);
    reg_1ID = parallel(reg_1I,reg_Td);
    reg_PID = series(reg_k,reg_1ID);
    
    figure(10)
    hold on
    step(reg_PID);
    
    figure(11)
    hold on
    nyquist(reg_PID);
    
    figure(12)
    hold on
    bode(reg_PID);
end




