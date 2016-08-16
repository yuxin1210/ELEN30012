r= 0.05;


n = 0:24;
ypBL = zeros(size(n)); % Preallocating enough memory for y
y = (1+r).^n;

figure(1);
stem(n,y);
xlabel('n');
ylabel('y');
title('Q16:Unit Pulse Response');