%use a loop to find the pulse response
N = 0:24;
ypBL = zeros(1,25);

pulseSize = 1;
r= 0.05;
N0 = 5;

for n = 0:24;
    y0 = 1;
    ypBL(1) = y0;
    if (n > 0)&(n < N0)
        ypBL(n+1) = ypBL(n)*(1+r) + pulseSize;
    elseif (n >= N0)
        ypBL(n+1) = ypBL(n)*(1+r);
    end
end

stem(N,ypBL);
xlabel('n');
ylabel('ypBL');
title('Q15');
            
        
