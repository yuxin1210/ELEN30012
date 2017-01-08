r= 0.05;
N0 = 5;

n = 0:24;
ypBL = zeros(size(n)); % Preallocating enough memory for y
region1 = (n>=0)&(n< N0); % First interval
ypBL(region1) = ((1+r).^(n(region1)+1)-1)/r;
region2 = (n>=N0)&(n<=24);
ypBL(region2) = 1/r * ((1+r).^(n(region2)+1) - (1+r).^(n(region2)-N0+1));

figure(1);
stem(n,ypBL);
xlabel('n');
ylabel('ypBL');
title('Q14');
