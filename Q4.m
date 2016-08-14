t0 = 0.5;%s
R = 1000;%ohms
C = 100e-6;%farads
tau = R*C;
Vp = 1;%volts
t = 0:0.005:1;

y = zeros(size(t)); % Preallocating enough memory for y
region1 = (t>=0)&(t< t0); % First interval
y(region1) = Vp * (1 - exp(-t(region1)/tau));
region2 = (t>=t0)&(t<=1);
y(region2) = Vp * (1 - exp(-t0/tau)) * exp(-(t(region2) - t0)/tau);

plot(t,y);
xlabel('t');
ylabel('Vc');