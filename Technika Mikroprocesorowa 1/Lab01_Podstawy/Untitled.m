syms t
x = 2*(rectangularPulse(0, 1/2000, t)-0.5);
x2 = 325*abs(sin(100*pi*t));
x3 = 0.5*(-rectangularPulse(-0.5+1/12, -1/12, t)-rectangularPulse(0.5+1/6,-1/6, t)+ rectangularPulse(1/12, 0.5-1/12, t)+rectangularPulse(1/6,0.5-1/6, t));
plot(t,x)