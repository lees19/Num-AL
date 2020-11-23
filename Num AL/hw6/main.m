clear all;
format long e 
syms x 

f(x) = x^2 - 5
fPrime = diff(f)
fdP = diff(f, 2)

p0 = .5;
p = 0;
sol = sqrt(5)
tries = [p0]
TOL = 10^-5;
N = 1000;

i = 1;

while i <= N
    p = p0 - ( (f(p0)*fPrime(p0)) / (fPrime(p0)^2 - f(p0)*fdP(p0)) );
    
    if abs(p-p0) < TOL
        display(vpa(p))
        break
    end 
    
    i = i+1
    p0 = vpa(p);
    tries(i) = p
end
