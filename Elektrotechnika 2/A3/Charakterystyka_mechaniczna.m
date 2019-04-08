% subplot(2,2,1)
% plot(P)
% legend('P')
% 
% subplot(2,2,2)
% plot(I)
% legend('I')
% 
% subplot(2,2,3)
% plot(nt)
% legend('nt')
% 
% subplot(2,2,4)
% plot(cos_fi)
% legend('cos fi')

J = 0.39;
UN = 380;

Tem = [];
Tem(1) = J * (n_t(2) - n_t(1))/0.01;

for i = 2:1:879;    
    Tem(i) = J * (n_t(i) - n_t(i-1))/0.01;
end

TemN = [];

for i = 1:1:879;
    TemN(i) = Tem(i).*(UN./Uab(i))^2;
end

plot(n_t, TemN)
grid on
title('Cahrakterystyka mechaniczna')
ylabel('T [N*m]');
xlabel('n [obr/min]');
axis([n_t(1) n_t(879) -100 1100]);


