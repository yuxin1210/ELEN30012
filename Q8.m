%plot impulse response
R = 1000;%ohms
C = 100e-6;%farads
tau = R*C;

t = 0:0.005:1;
y_imp = 1/tau*(exp(-t/tau));

plot(t,y_imp);

xlabel('t');
ylabel('y');
title('Impulse Response');