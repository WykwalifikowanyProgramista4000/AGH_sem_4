syms x_s t Sn_s

f_s = 50; %[Hz]
T_s = 1/f_s;
w_s = 2*pi*f_s;
A_s = 325; %[V]
t_sin = 0:0.0001:T_s;

sinus = A_s*sin(w_s*t);
x_s = abs(sinus);
modified_sinus = abs(A_s*sin(w_s*t_sin));

%% wspó³æzynniki a_n i b_n
BND_s = [0, T_s];

a_s = [];
b_s = [];
ind = 1 : 16;
for n = ind
    a_n_s = 1/T_s*int(x_s*cos(w_s*n*t),t,BND_s);
    b_n_s = 1/T_s*int(x_s*sin(w_s*n*t),t,BND_s);
    a_s(n) = a_n_s;
    b_s(n) = b_n_s;
end 

a0_s = 1/T_s*int(x_s,t,BND_s);

figure; 
hold on;
stem(ind*f_s, a_s,'b','LineWidth',2);
xlabel('f [Hz]')
stem(ind*f_s, b_s,'r','LineWidth',2);
grid on
legend('a_n','b_n','Location','NorthEast')
title('Wspólczynniki zespolonego szeregu Fouriera a_n i b_n')


%% wartoœæ skuteczna
 
integral_p = int (x_s.^2, t, BND_s);
 
s = sqrt((1/T_s)*integral_p);
 
sk_s = double(s)

%% aproksymacja za pomoco 16 funkcyj

step = (BND_s(2) - BND_s(1))/1000;
tt = [BND_s(1)-T_s : step: BND_s(2) + T_s];
init = zeros(1,length(tt));
init = init + a0_s; %skladowa stala

figure
plot(tt,init,'m'); grid on, hold on;
plot([tt(1),tt(2)],[max(init)-0.1,min(init)+0.1],'w.')

pause(0.5)
xlabel('t'); ylabel('x(t)');

for  n =  1 : 16
    x_s = 2*(a_s(n)*cos(w_s*n*tt) + b_s(n)*sin(w_s*n*tt));
    init = init + x_s;
    plot(tt,x_s,'r');
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
for  n = 3 : limit
    Sn_s = 2*(a_s(n)*cos(w_s*n*t) + b_s(n)*sin(w_s*n*t));
    thd_init = thd_init + sqrt((1/T_s*int(Sn_s*Sn_s,t,BND_s)))^2;
end

S_1 = 2*(a_s(2)*cos(w_s*2*t)+b_s(2)*sin(w_s*2*t));
THD = sqrt(thd_init)/sqrt(1/T_s*int(S_1*S_1,t,BND_s));
double(THD)
