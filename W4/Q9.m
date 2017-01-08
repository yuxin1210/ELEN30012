xn = 0:24;
hn = -2:14;
n = 1;
for i =xn
    xtrun(n) = 0.5.^(i-2) .* unitstep(i,2);
    n = n+1;
end

n = 1;
for j = hn
    htrun(n) = unitstep(j,-2);
    n = n+1;
end

ytrun = conv(htrun,xtrun);
ny = -2:-2+length(ytrun)-1;
stem(ny,ytrun)