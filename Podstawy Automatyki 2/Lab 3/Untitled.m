%% Wczytanko danych
load pomiary
czas = linspace(0,300,length(pomiary));

%% Inercja I rzêdu z opóŸnieniem
% KOÑCOWE WARTOŒCI
% Y0 = max(pomiary);
% U0 = 1;
% 
% k = Y0/U0;
% tau = 30;
% n = 5;
% T = 39.8;

plot(czas,pomiary, 'r');
set(gcf,'position',[300, 300, 800,400])
grid on;
hold on

Y0 = max(pomiary);
U0 = 1;

k = Y0/U0;
tau = 30;
n = 5;
T = 40;

[ld, md] = pade(tau, n);
l = [k];
m = [T 1];
[licznik,mianownik] = series(ld,md, l, m);
Inercja_I_delay = step(licznik, mianownik, czas);

plot(czas, Inercja_I_delay, 'm')

krok = czas(2) - czas(1);
blad2 = (Inercja_I_delay' - pomiary).^2;
calka_z_bledu = sum(blad2)

lsim([1],[1 0], blad2, czas)
legend('Charakterystyka badanego obiektu', 'Aproksymacja modelem I rzêdu z opóŸnieniem', 'Ca³ka z kwadratu b³êdu');

hold off
%% Inercja II rzêdu z opóŸnieniem
% 
% Y0 = max(pomiary);
% U0 = 1;
% 
% k = Y0/U0;
% tau = 12;
% n = 5;
% T1 = 28;
% T2 = 28;

plot(czas,pomiary, 'r');
set(gcf,'position',[300, 300, 800,400])
grid on;
hold on

Y0 = max(pomiary);
U0 = 1;

k = Y0/U0;
tau = 12;
n = 5;
T1 = 28;
T2 = 28;

[del_l, del_m] = pade(tau,n);
licz = [k];
mian = [T1*T2, T1 + T2, 1];
[licz_d, mian_d]=series(del_l, del_m, licz, mian);
Inercja_II_delay = step(licz_d, mian_d, czas);

plot(czas,Inercja_II_delay, 'm')

krok = czas(2) - czas(1);
blad2 = (Inercja_II_delay' - pomiary).^2;
calka_z_bledu = sum(blad2)

lsim([1],[1 0], blad2, czas)
legend('Charakterystyka badanego obiektu', 'Aproksymacja modelem II rzêdu z opóŸnieniem', 'Ca³ka z kwadratu b³êdu');

hold off

%% Aproksymacja Strejca
% k pozostaje takie samo, zmieniam T i rz¹d aproksymacji
% WARTOŒCI KOÑCOWE
% n = 1:3;
% T=16.5;

% n = 1:2;
% T=22.2;


plot(czas,pomiary, 'r', 'LineWidth', 1.5);
set(gcf,'position',[300, 300, 800,400])

n = 1:2;
T=22.2;

colors = ['k', 'm', 'm', 'y']

m=[T 1];
m_0 = m;
hold on
for n = n
    [l_0, m_0]=series(k,m_0,1,m);
    Apr_Strejca = step(l_0,m_0,czas);
    plot(czas,Apr_Strejca, colors(n))
end
% Apr_Strejca = step(l_0,m_0,czas);
% plot(czas,Apr_Strejca)

blad = sum(((pomiary-Apr_Strejca').^2)*0.1)
krok = czas(2) - czas(1);
blad2 = (Apr_Strejca' - pomiary).^2;
calka_z_bledu = sum(blad2)

lsim([1],[1 0], blad2, czas)
legend('Charakterystyka badanego obiektu', 'Krok 1', 'Krok 2', 'Ca³ka z kwadratu b³êdu');

hold off

%% Pierdo³y

% [y, x, t] = step([k],[T,1]);
%     plot(t,y)
%     
%     [y, x, t] = step([k],[T1*T2, T1 + T2, 1]);
%     plot(t,y)
%     
%     [del_l, del_m] = pade(T,n);
%     licz = [n];
%     mian = [T,1];
%     [licz_d, mian_d]=series(del_l, del_m, licz, mian);
%     [y,x,t]=step(licz_d, mian_d);
%     plot(t,y)