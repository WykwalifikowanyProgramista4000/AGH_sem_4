%% Czesc 1
r = 1;

%k_3 = 8; %bez ekstrapolatora


%k_1 = 1000.0001; k_3 = 8; %tp = 0.01
%k_1 = 100.0034; k_3 = 7.75; %tp = 0.1
%k_1 = 10.02945; k_3 = 6.245; %tp = 1
%k_1 = 2; k_3 = 6.5; %tp = 5
k_1 = 0.5; k_3 = 0.03445; %tp = 10

eks_1 = 1;
eks_2 = 1;

sim('tralala')

figure(1);
set(gcf, 'Position',  [0, 0, 1000, 800]);

subplot(4,1,2)
plot(obiekt_I)

title('obiekt I rzÍdu')
ylabel('odpowiedü')
xlabel('czas [s]')

subplot(4,1,4)
plot(obiekt_III)

title('obiekt III rzÍdu')
ylabel('odpowiedü')
xlabel('czas [s]')
legend('G_3(s)', 'G_2(s)', 'G_1(s)')

subplot(4,1,1)
plot(ekstrapolator_I)

title('ekstrapolator I rzπd')
ylabel('odpowiedü')
xlabel('czas [s]')

subplot(4,1,3)
plot(ekstrapolator_III)

title('ekstrapolator III rzπd')
ylabel('odpowiedü')
xlabel('czas [s]')

%% Czesc 2

k = 1;
% T = 0 1 10;
% N = 0.1 0.2 0.4
% h = 0 0.05 0.1 0.2
% e1 = 0 0.5 1 2 5 10
% e0 = 0.5 1 2 5 10 20

T = 1;
N = 0.1;
h = 0.05;
e1 = 1;
e0 = 1;


sim("tralala");

plot(obiekt_fazowy)

ylabel('odpowiedü')
xlabel('czas [s]')
legend('f')
