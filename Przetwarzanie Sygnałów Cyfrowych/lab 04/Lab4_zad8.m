syms x t Sn_p

f_p = 1; % [kHz]
T_p = 1/f_p;
w_p = 2*pi*f_p;
tp = 0;
A_p = 1;
t_prostokat = [tp:0.0001:tp+T_p];
x = 2*A_p*(rectangularPulse(0,T_p/2,t)-0.5);


%% wspó³æzynniki a_n i b_n
BND_p = [tp, tp+T_p];

a_p = [];
b_p = [];
ind = 1 : 16;
for n = ind
    a_n_p = 1/T_p*int(x*cos(w_p*n*t),t,BND_p);
    b_n_p = 1/T_p*int(x*sin(w_p*n*t),t,BND_p);
    a_p(n) = a_n_p;
    b_p(n) = b_n_p;
end 

a0_p = 1/T_p*int(x,t,BND_p);

figure; 
hold on;
stem(ind*f_p, a_p,'b','LineWidth',2);
xlabel('f [Hz]')
stem(ind*f_p, b_p,'r','LineWidth',2);
grid on
legend('a_n','b_n','Location','NorthEast')
title('Wspólczynniki zespolonego szeregu Fouriera a_n i b_n')


%% wartoœæ skuteczna
 
integral_p = int (x.^2, t, BND_p);
 
s = sqrt((1/T_p)*integral_p);
 
sk_p = double(s);

%% aproksymacja za pomoco 16 funkcyj

step = (BND_p(2) - BND_p(1))/1000;
tt = [BND_p(1)-T_p : step: BND_p(2) + T_p];
init = zeros(1,length(tt));
init = init + a0_p; %skladowa stala

figure
plot(tt,init,'m'); grid on, hold on;
plot([tt(1),tt(2)],[max(init)-0.1,min(init)+0.1],'w.')

pause(0.5)
xlabel('t'); ylabel('x(t)');

for  n =  1 : 16
    x_p = 2*(a_p(n)*cos(w_p*n*tt) + b_p(n)*sin(w_p*n*tt));
    init = init + x_p;
    plot(tt,x_p,'r');
    plot(tt,init,'m');
    plot([tt(1),tt(2)],[max(init)-0.1,min(init)+0.1],'w.')
    title(sprintf('n = %d',n+1));
    pause(0.1)
end

plot(tt,init,'k','LineWidth',3); grid on; hold on
plot([tt(1),tt(2)],[max(init)-0.1,min(init)+0.1],'w.')
title('Rekonstrukcja sygnalu ciaglego na podstawie szeregu Fouriera')

%% THD

thd_init = 0.0;
limit = 15;
for  n = 2 : limit
    Sn_p = 2*(a_p(n)*cos(w_p*n*t) + b_p(n)*sin(w_p*n*t));
    thd_init = thd_init + sqrt((1/T_p*int(Sn_p*Sn_p,t,BND_p)))^2;
end

S_1 = 2*(a_p(1)*cos(w_p*t)+b_p(1)*sin(w_p*t));
THD = sqrt(thd_init)/sqrt(1/T_p*int(S_1*S_1,t,BND_p));
double(THD)
