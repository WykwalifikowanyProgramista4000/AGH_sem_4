%% Zadanie 1
%XDDDDDDDDDDDDD


%% Zadanie 2
clear;
n = -20:20;
u1 = zeros(1,41);
u1(21:41) = ones(1);
stem(n,u1);
axis([-21 21 0 3]);

u1(1:20+3) = zeros();
stem(n,u1);

%% Zadanie 3
clear;
n = [0];
u1(1,1)  = ones();

stem(n, u1);
axis([-2 4 0 2]);
hold on;
n = n + [3];
stem(n, u1);
hold off;

%% Zadanie 4
clear;
n = -20:20;
u1 = zeros(1, 41);
u1(21:41) = ones(1);
u2 = zeros(1,41);
u2(21+5:41) = ones(1);
u3 = u1 - u2;
stem(n, u3);
axis([-20 20 0 2]);


%% Zadanie 5
clear;
t1 = 0:1/10:4;
t2 = 0:1/100:4;
u1 = sin(t1*2*pi);
u2 = sin(t2*2*pi);
figure(1);
stem(t1, u1);
figure(2);
stem(t2, u2);


%% Zadanie 6
clear;
t1 = 0:1/10:4;
t2 = 0:1/100:4;
u1 = cos(2*pi*t1);
u2 = cos(2*pi*t2);
figure(1);
stem(t1, u1);
figure(2);
stem(t2, u2);


%% Zadanie 7
clear;
t = 0:0.1:10;
y = gaussmf(t,[1 5]);
stem(t,y);


%% Zadanie 8
clear;
y1 = [1,3,5,6,7,9,2];
y2 = [2,4,7,2,9,5,6];
y3 = y1.*y2;
stem(-3:3, y3)

%% Zadanie 9
clear;
n = 0:20;
x = [1, zeros(1,20)];
a = [1];
b = [1 -0.5 0.7];
y = filter(a, b, x);
stem(n, y);
axis([0 20 -1 1]);






