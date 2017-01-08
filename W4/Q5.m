clear all

xn = 0:2;
x = zeros(size(xn));
hn = -1:1;
h = zeros(size(hn));

n = 1;
for j = xn
    x(n) = kronDel(xn(n),0) + kronDel(xn(n),2);
    n = n + 1;
end

i = 1;
for k = hn
    h(i) = 2* kronDel(hn(i),-1) - 2* kronDel(hn(i),1);
    i = i+ 1;
end

y = conv(x,h);
ny = -1:3;
stem(ny,y);

xlabel('n');
ylabel('y[n]');
title('Q5');
