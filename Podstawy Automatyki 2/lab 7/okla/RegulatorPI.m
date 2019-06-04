%Ti ma byæ wiêksze od Td o dwa rzêdy, Tau o rz¹d od Td

%regulator PI

%zmienne k
licz_Ti = 1;
mian_Ti = [50 0];
reg_Ti=tf(licz_Ti,mian_Ti);
licz_1 = 1;
mian_1 = 1;
reg_1 = tf(licz_1,mian_1);
reg_1I = parallel(reg_Ti,reg_1);

for k =1:9
    licz_k = k;
    mian_k = 1;
    reg_k = tf(licz_k, mian_k);
    reg_PI = series(reg_1I,reg_k);
    
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



licz_k = 10;
mian_k = 1;
reg_k=tf(licz_k,mian_k);
licz_1 = 1;
mian_1 = 1;
reg_1 = tf(licz_1,mian_1);

for Ti = 50:10:140;
    licz_Ti = 1;
    mian_Ti = [Ti 0];
    reg_Ti = tf(licz_Ti, mian_Ti);
    reg_1I = parallel(reg_Ti,reg_1);
    reg_PI = series(reg_1k,reg_1I);
    
    figure(4)
    hold on
    step(reg_PI);
    
    figure(5)
    hold on
    nyquist(reg_PI);
    
    figure(6)
    hold on
    bode(reg_PI);
end








