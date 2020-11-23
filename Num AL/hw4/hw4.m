format long e 
syms x 

f(x) = (x+2)*(x+1)^2*x*(x-1)^3*(x-2)
g(x) = 2*sin(x) 

pretty(f(x))

xd1=vpa(-2.5:0.001:2.5);
yd1=subs(f,x,xd1);
%yd2=subs(g,x,xd1);

plot(xd1, yd1) 
hold on 
%plot(xd1, yd2)