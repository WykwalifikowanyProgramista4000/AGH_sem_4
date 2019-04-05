syms x_m t Sn_m
T_m = 10;
t_m0 = -5;
w_m = 2*pi/T_m;
f_m = 1/T_m;
A_m = 1;

t_m = t_m0:0.0001:t_m0+T_m+0.9;

x_m = A_m*sin(w_m*floor(t));

%% wspó³æzynniki a_n i b_n
BND_m = [t_m0, t_m0+T_m];

a_m = [];
b_m = [];
ind = 1 : 16;
for n = ind
    a_n_m = 1/T_m*int(x_m*cos(w_m*n*t),t,BND_m);
    b_n_m = 1/T_m*int(x_m*sin(w_m*n*t),t,BND_m);
    a_m(n) = a_n_m;
    b_m(n) = b_n_m;
end 

a0_s = 1/T_m*int(x_m,t,BND_m);

figure; 
hold on;
stem(ind*f_m, a_m,'b','LineWidth',2);
xlabel('f [Hz]')
stem(ind*f_m, b_m,'r','LineWidth',2);
grid on
legend('a_n','b_n','Location','NorthEast')
title('Wspólczynniki zespolonego szeregu Fouriera a_n i b_n')


%% wartoœæ skuteczna
 
integral_p = int (x_m.^2, t, BND_m);
 
s = sqrt((1/T_m)*integral_p);
 
sk_m = double(s)

%% aproksymacja za pomoco 16 funkcyj

step = (BND_m(2) - BND_m(1))/1000;
tt = [BND_m(1)-T_m : step: BND_m(2) + T_m];
init = zeros(1,length(tt));
init = init + a0_s; %skladowa stala

figure
plot(tt,init,'m'); grid on, hold on;
plot([tt(1),tt(2)],[max(init)-0.1,min(init)+0.1],'w.')

pause(0.5)
xlabel('t'); ylabel('x(t)');

for  n =  1 : 16
    x_m = 2*(a_m(n)*cos(w_m*n*tt) + b_m(n)*sin(w_m*n*tt));
    init = init + x_m;
    plot(tt,x_m,'r');
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
    Sn_m = 2*(a_m(n)*cos(w_m*n*t) + b_m(n)*sin(w_m*n*t));
    thd_init = thd_init + sqrt((1/T_m*int(Sn_m*Sn_m,t,BND_m)))^2;
end

S_1 = 2*(a_m(1)*cos(w_m*t)+b_m(1)*sin(w_m*t));
THD = sqrt(thd_init)/sqrt(1/T_m*int(S_1*S_1,t,BND_m));
double(THD)