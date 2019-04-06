load pomiary
czas = linspace(0,300,length(pomiary));
plot(czas,pomiary);
grid();
%czas badania odpowiedzi - 300 sekund, krok ca�kowania 0.1s !!!
%% Inercja pierwszego rz�du z op�nieniem
%zobacz do konspektu z msd jak zrobi� op�nienie
Y0 = max(pomiary);
U0 = 1;
k = Y0/U0;
tdel = 28;
T = 41;
[ld,md] = pade(tdel,5);
[licznik,mianownik] = series(ld,md,[k],[T 1]);
hold on
y_inercja1 = step(licznik,mianownik,czas);
plot(czas,y_inercja1)
legend('pomiary','pr�ba identyfikacji');
blad=sum(((pomiary - y_inercja1').^2)*0.1)
%lsim ( [1] , [1 0], blad2 , czas ); - zastanowi� si� w domu jak to dzia�a,
%ok
%% Inercja drugiego rz�du z op�nieniem
% k pozostawiam takie samo
y_a = 0.71 * k;
[czas_a , wartosc_a] = ginput(1);
%czas a = 79.7379 lepiej nie odczytasz
b = (79.7379/4);
pomiary(200)
% T2/T1 = 0.031738
%policzysz tutaj p�niej

%% Aproksymacja Strejca
%k pozostaje takie samo, zmieniam T i rz�d aproksymacji
T=16;
m=[T 1];
m_0=m;
for n = 1:3 %tutaj bed� sobie zmienia� rz�d aproksymacji
    [l_0, m_0]=series(k,m_0,1,m);
end
y_strejca = step(l_0,m_0,czas);
plot(czas,y_strejca)
blad=sum(((pomiary-y_strejca').^2)*0.1)



