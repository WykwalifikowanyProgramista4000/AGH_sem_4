%% Wczytanko danych
load pomiary
czas = linspace(0,300,length(pomiary));

%% Inercja I rzêdu z opóŸnieniem

plot(czas,pomiary);
grid on;
hold on

Y0 = max(pomiary);
U0 = 1;

k = Y0/U0;
tau = 30;
n = 5;
T = 39.8;

[ld, md] = pade(tau, n);
l = [k];
m = [T 1];
[licznik,mianownik] = series(ld,md, l, m);
Inercja_I_delay = step(licznik, mianownik, czas);

plot(czas, Inercja_I_delay)

krok = czas(2) - czas(1);
blad2 = (Inercja_I_delay' - pomiary).^2;
calka_z_bledu = sum(blad2)

lsim([1],[1 0], blad2, czas)

hold off
%% Inercja II rzêdu z opóŸnieniem

plot(czas,pomiary);
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

plot(t,Inercja_II_delay)

krok = czas(2) - czas(1);
blad2 = (Inercja_II_delay' - pomiary).^2;
calka_z_bledu = sum(blad2)

lsim([1],[1 0], blad2, czas)

hold off

%% Aproksymacja Strejca
%k pozostaje takie samo, zmieniam T i rz¹d aproksymacji
plot(czas,pomiary, 'LineWidth', 1.5);

T=17;

m=[T 1];
m_0 = m;
hold on
for n = 1:4 %tutaj bedê sobie zmienia³ rz¹d aproksymacji
    [l_0, m_0]=series(k,m_0,1,m);
    Apr_Strejca = step(l_0,m_0,czas);
    plot(czas,Apr_Strejca)
end
Apr_Strejca = step(l_0,m_0,czas);
plot(czas,Apr_Strejca)

blad = sum(((pomiary-Apr_Strejca').^2)*0.1)

hold off

%% Pierdo³y

[y, x, t] = step([k],[T,1]);
    plot(t,y)
    
    [y, x, t] = step([k],[T1*T2, T1 + T2, 1]);
    plot(t,y)
    
    [del_l, del_m] = pade(T,n);
    licz = [n];
    mian = [T,1];
    [licz_d, mian_d]=series(del_l, del_m, licz, mian);
    [y,x,t]=step(licz_d, mian_d);
    plot(t,y)