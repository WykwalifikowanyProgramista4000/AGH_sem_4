licz_Td = [15 0];
mian_Td = [1 1];
reg_Td=tf(licz_Td,mian_Td);
licz_1 = 1;
mian_1 = 1;
reg_1 = tf(licz_1,mian_1);
reg_1D = parallel(reg_Td,reg_1);

for k =1:9
    licz_k = k;
    mian_k = 1;
    reg_k = tf(licz_k, mian_k);
    reg_PD = series(reg_1D,reg_k);
    
    figure(1)
    hold on
    step(reg_PD);
    
    figure(2)
    hold on
    nyquist(reg_PD);
    
    figure(3)
    hold on
    bode(reg_PD);
end


licz_k = 10;
mian_k = 1;
reg_k=tf(licz_k,mian_k);
licz_1 = 1;
mian_1 = 1;
reg_1 = tf(licz_1,mian_1);

for Td = 15:5:65
    licz_Td = [Td 0];
    mian_Td = [1 1];
    reg_Td = tf(licz_k, mian_k);
    reg_1D = parallel(reg_1,reg_Td);
    reg_PD = series(reg_k,reg_1D);
    
    figure(4)
    hold on
    step(reg_PD);
    
    figure(5)
    hold on
    nyquist(reg_PD);
    
    figure(6)
    hold on
    bode(reg_PD);
end
