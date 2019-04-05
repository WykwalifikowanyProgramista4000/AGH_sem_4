%%  4.1

 
step = (BND(2) - BND(1))/1000;
tt = [BND(1)-T0 : step: BND(2) + T0];
xx = zeros(1,length(tt));


figure
plot(tt,xx,'m'); grid on, hold on;
plot([tt(1),tt(2)],[max(xx)-0.1,min(xx)+0.1],'w.')

pause(0.5)
xlabel('t'); ylabel('x(t)');

for  n =  -NT : NT
    xx_n = X(n+NT+1)*exp(1j*w0*n*tt);
    xx = xx + xx_n;
    plot(tt,xx_n,'r');
    plot(tt,xx,'m');
    plot([tt(1),tt(2)],[max(xx)-0.1,min(xx)+0.1],'w.')
    title(sprintf('n = %d',n+1));
    pause(0.5)
end

plot(tt,xx,'k','LineWidth',3); grid on; hold on
plot([tt(1),tt(2)],[max(xx)-0.1,min(xx)+0.1],'w.')
title('Rekonstrukcja sygnalu wejœciowego na podstawie elementów szeregu zespolonego')


%% 4.2a
 
  T = 2*pi;
  bound = [0 T];
 
  syms fi
 
  integral_a = int (sin(fi).^2, fi, 0, 2*pi);
 
  s = sqrt((1/T)*integral_a);
 
  skd = double(s)
 
 
%% 4.2b

integral_b = int(x*x, BND);

s_b = sqrt((1/TO)*integral_b);

skd_b = double(s_b)


%% 4.2c

persival = 0;

for n = -15:15
    persival = persival + abs(X(n+NT+1)).^2;
end


skd_c = sqrt(persival)
