t0 = 0.5;%s
R = 1000;%ohms
C = 100e-6;%farads
tau = R*C;
Vp = 1;%volts

syms yp2RC(t) Vin(t)

Vin = Vp *(heaviside(t) - heaviside(t-t0));
Dy = diff(yp2RC);
yp2RC = dsolve(Dy + 1/tau*yp2RC == 1/tau * Vin,yp2RC(0)==0);
figure(2);
ezplot(yp2RC,[0,1,0,1])
xlabel('t');
ylabel('yp2RC');
title('Q5');
