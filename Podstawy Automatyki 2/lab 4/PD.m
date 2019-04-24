%% lecimy se zmieniamy k
clear();

l_jeden = [1];
m_jeden = [1];

Td = 1;
Tau = 0.1;

l_D = [Td 0];
m_D = [Tau 1];

czlon_jeden = tf(l_jeden, m_jeden);
czlon_D = tf(l_D, m_D);

jeden_z_D = parallel(czlon_jeden, czlon_D);

for l_k = 1:3:10
   
    m_k = [1];
    
    czlon_k = tf(l_k, m_k);
            
    regulator_PD = series(czlon_k, jeden_z_D);
    
    figure(1);
    step(regulator_PD);
    hold on;
    title('Odpowiedü skokowa dla Tau = 0.1, T = 1')
    legend('k = 1', 'k = 4', 'k = 7', 'k = 10')
    set(gcf, 'Position',  [100, 100, 1000, 400])
    
    figure(2);
    bode(regulator_PD);
    hold on;
    title('Charakterystyka Bodego dla Tau = 0.1, T = 1')
    legend('k = 1', 'k = 4', 'k = 7', 'k = 10')
    set(gcf, 'Position',  [100, 100, 1000, 400])
    
    figure(3);
    nyquist(regulator_PD);
    hold on;
    title('Charakterystyka Nyquista dla Tau = 0.1, T = 1')
    legend('k = 1', 'k = 4', 'k = 7', 'k = 10')
    set(gcf, 'Position',  [100, 100, 1000, 400])
    
end

%% lecimy se zmieniamy Td
clear();

l_jeden = [1];
m_jeden = [1];

l_k = [7];
m_k = [1];

Tau = 0.1;
m_D = [Tau 1];

czlon_jeden = tf(l_jeden, m_jeden);
czlon_k = tf(l_k, m_k);

for Td = [1, 4, 7, 10]
   
    l_D = [Td 0];
    czlon_D = tf(l_D, m_D);
    
    jeden_z_D = parallel(czlon_jeden, czlon_D);
    regulator_PD = series(czlon_k, jeden_z_D);
    
    figure(1);
    step(regulator_PD);
    hold on;
    title('Odpowiedü skokowa dla k = 7, Tau = 0.1')
    legend('Td = 1','Td = 4','Td = 7','Td = 10')
    set(gcf, 'Position',  [100, 100, 1000, 400])
    
    figure(2);
    bode(regulator_PD);
    hold on;
    title('Charakterystyka Bodego dla k = 7, Tau = 0.1')
    legend('Td = 1','Td = 4','Td = 7','Td = 10')
    set(gcf, 'Position',  [100, 100, 1000, 400])
    
    figure(3);
    nyquist(regulator_PD);
    hold on;
    title('Charakterystyka Nyquista dla k = 7, Tau = 0.1')
    legend('Td = 1','Td = 4','Td = 7','Td = 10')
    set(gcf, 'Position',  [100, 100, 1000, 400])
    
end

%% lecimy se zmieniamy Tau
clear();

l_jeden = [1];
m_jeden = [1];

l_k = [7];
m_k = [1];

Td = 10;
l_D = [Td 0]

czlon_jeden = tf(l_jeden, m_jeden);
czlon_k = tf(l_k, m_k);

for Tau = [0.01, 0.1, 1, 10]
   
    m_D = [Tau 1];
    czlon_D = tf(l_D, m_D);
    
    jeden_z_D = parallel(czlon_jeden, czlon_D);
    regulator_PD = series(czlon_k, jeden_z_D);
    
    figure(1);
    step(regulator_PD);
    hold on;
    title('Odpowiedü skokowa dla k = 7, Td = 10')
    legend('Tau = 0.01','Tau = 0.1','Tau = 1','Tau = 10')
    set(gcf, 'Position',  [100, 100, 1000, 400])
    
    figure(2);
    bode(regulator_PD);
    hold on;
    title('Charakterystyka Bodego dla k = 7, Td = 10')
    legend('Tau = 0.01','Tau = 0.1','Tau = 1','Tau = 10')
    set(gcf, 'Position',  [100, 100, 1000, 400])
    
    figure(3);
    nyquist(regulator_PD);
    hold on;
    title('Charakterystyka Nyquista dla k = 7, Td = 10')
    legend('Tau = 0.01','Tau = 0.1','Tau = 1','Tau = 10')
    set(gcf, 'Position',  [100, 100, 1000, 400])
    
end










