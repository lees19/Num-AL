clear all
format long e
syms x 

s = 300 
ga = 32.17
m = .25
k = .1

g(x) = 2^(-x);
gPrime = diff(g(x))

xd1=vpa(5.9:0.001:6.1);
yd1=subs(g,x,xd1)

p0 = .5;
p = 0;
TOL = 10^-4;
N0 = 1000;

i = 1
while i <= N0 
    p = g(p0);
    if abs(p-p0) < TOL 
        display(vpa(p))
        display(i)
        break
    end 
    i = i+1;
    p0 = p;
end
%display(vpa(g(2.5)) - 2.5)
plot(xd1, yd1)
hold on
plot(xd1, xd1)