clear all

xn = -2:1;
x = zeros(size(xn));
hn = 1:5;
h = zeros(size(hn));

n = 1;
for j = xn
    x(n) = 1;
    n = n + 1;
end

i = 1;
for k = hn
    h(i) = k;
    i = i+ 1;
end

y = conv(x,h);
ny = -1:6;
stem(ny,y);

xlabel('n');
ylabel('y[n]');
title('Q3');
