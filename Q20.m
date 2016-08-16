%use a loop to find the pulse response
N = 0:24;
y = zeros(1,25);

pulseSize = 1;
r= 0.05;
N0 = 1;

for n = 0:24;
    y0 = 1;
    y(1) = y0;
    if (n > 0)&(n < N0)
        y(n+1) = y(n)*(1+r) + pulseSize;
    elseif (n >= N0)
        y(n+1) = y(n)*(1+r);
    end
end

stem(N,y);
xlabel('n');
ylabel('Y');
title('Q16:Unit Pulse Response');
            
        