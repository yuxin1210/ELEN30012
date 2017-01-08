syms r
syms n
syms y0
syms f(k)
f = (1+r)^k;
symsum(f,k,0,n) + (1+r)^n*y0
