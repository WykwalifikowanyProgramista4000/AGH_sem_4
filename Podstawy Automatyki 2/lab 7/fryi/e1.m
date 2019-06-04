SP = 0.5
tau = 22;
T = 45;

for h = [0.05, 0.1, 0.2]
    sim('model1')
    subplot(2,1,1)
    title("Zmienne h")
    plot(y.time,y.signals.values)
    hold on
    grid on
    xlabel('czas[s]')
    ylabel('y(t')
    
    subplot(2,1,2)
    plot(u.time,u.signals.values)
    hold on;
    grid on
    xlabel('czas[s]')
    ylabel('u(t')
    axis([0,300,-0.5,1.2])
    legend("h=0.05", "h=0.1", "h=0.2")
end

subplot(2,1,1)
plot(y.time, SP, '.')