%% lecimy se zmieniamy k
clear();

licznik_Ti = [1];
mianownik_Ti = [20 0];

licznik_jeden = [1];
mianownik_jeden = [1];

czlon_jeden = tf(licznik_jeden, mianownik_jeden);
czlon_I = tf(licznik_Ti, mianownik_Ti);

regulator_PI_bez_k = parallel(czlon_jeden, czlon_I);

for licznik_k = 1:3:10;
    
    mianownik_k = [1];
    
    czlon_k = tf(licznik_k, mianownik_k);
    
    regulator_PI = series(czlon_k, regulator_PI_bez_k);
    
    figure(1);
    step(regulator_PI);
    hold on;
    title('Odpowiedü skokowa dla Ti = 20')
    legend('k = 1', 'k = 4', 'k = 7', 'k = 10')
    set(gcf, 'Position',  [100, 100, 1000, 400])
    
    figure(2);
    nyquist(regulator_PI);
    hold on;
    title('Charakterystyka Nyquista dla Ti = 20')
    legend('k = 1', 'k = 4', 'k = 7', 'k = 10')
    set(gcf, 'Position',  [100, 100, 1000, 400])
    
    figure(3);
    bode(regulator_PI);
    hold on;
    title('Charakterystyka Bodego dla Ti = 20')
    legend('k = 1', 'k = 4', 'k = 7', 'k = 10')
    set(gcf, 'Position',  [100, 100, 1000, 400])
    
end

%% lecimy se zmieniamy Ti
clear();

licznik_k = [7];
mianownik_k = [1];

licznik_jeden = [1];
mianownik_jeden = [1];

czlon_jeden = tf(licznik_jeden, mianownik_jeden);
czlon_k = tf(licznik_k, mianownik_k);

for mianownik_Ti = 10:10:40
    
    licznik_Ti = [1];
    
    czlon_Ti = tf(licznik_Ti, [mianownik_Ti 0]);
    
    rownolegle_jeden_z_Ti = parallel(czlon_jeden, czlon_Ti);
    
    regulator_PI = series(czlon_k, rownolegle_jeden_z_Ti);
    
    figure(1);
    step(regulator_PI);
    hold on;
    title('Odpowiedü skokowa dla k = 7')
    legend('Ti = 10', 'Ti = 20', 'Ti = 30', 'Ti = 40')
    set(gcf, 'Position',  [100, 100, 1000, 400])
    
    figure(2);
    nyquist(regulator_PI);
    hold on;
    title('Charakterystyka Nyquista dla k = 7')
    legend('Ti = 10', 'Ti = 20', 'Ti = 30', 'Ti = 40')
    set(gcf, 'Position',  [100, 100, 1000, 400])
    
    figure(3);
    bode(regulator_PI);
    hold on;
    title('Charakterystyka Bodego dla k = 7')
    legend('Ti = 10', 'Ti = 20', 'Ti = 30', 'Ti = 40')
    set(gcf, 'Position',  [100, 100, 1000, 400])
    
end








