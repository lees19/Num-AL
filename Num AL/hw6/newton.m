clear all;
format long e 
syms x 

f(x) = x^2 - 5
fPrime = diff(f)

p0 = .1;
p = 0;
sol = sqrt(5)
tries = [p0]
TOL = 10^-8;
N = 1000;

i = 1;

while i <= N
    p = p0 - (f(p0)/fPrime(p0));
    
    if abs(p-p0) < TOL
        display(vpa(p))
        break
    end 
    
    i = i+1
    p0 = vpa(p);
    tries(i) = p;
end

for c = 1:numel(tries)-1
    c
    abs(tries(c+1) - sol)/(abs(tries(c) - sol)^2)
end

