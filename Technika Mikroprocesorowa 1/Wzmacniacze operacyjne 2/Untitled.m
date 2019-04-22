%% super dioda

CH1_d_filtered = smooth(CH1_d, 0.05, 'loess');

CH2_d_filtered = smooth(CH2_d, 0.05, 'loess');

subplot(2,1,1);
plot(CH1_d, CH2_d);

subplot(2,1,2);
plot(CH1_d_filtered, CH2_d_filtered);

%% 

figure(1)
subplot(2,1,1);
plot(CH1_l, CH2_l);

subplot(2,1,2);
plot(CH2_l_sim)