format long e
syms x
%f(x) = x
g(x)=abs(x^4 + 6*x^3-22*x)-15
a=1.5;
b=2;

xd1=vpa(a:0.001:b);
%yd1=subs(f,x,xd1);
yd2=subs(g,x,xd1);

%plot(xd1, yd1) 
hold on 
plot(xd1, yd2)

eps_step=1*10^-3;
eps_abs=1*10^-3;
N=10000;
rr=bisection(g, a, b, N, eps_step, eps_abs );
display(rr);
