format long e;
syms x;
currentPrecision = digits(4);
f(x)=1+10*x+45*x^2+120*x^3+210*x^4+252*x^5+210*x^6+120*x^7+45*x^8+10*x^9+x^10;
g(x)=(x+1)^10;
currentPrecision = digits(4);

xd1=vpa(-1.01:0.0001:-0.990);
yd1=subs(f,x,xd1);
xd2=-1.01:0.0001:-0.990;
yd2=subs(g,x,xd2);
plot(xd1,yd1);
hold on
plot(xd2,yd2);

%{
xd1=vpa(0.990:0.0001:1.01);
yd1=subs(f,x,xd1);
xd2=0.990:0.0001:1.01;
yd2=subs(g,x,xd2);
plot(xd1,yd1);
hold on
plot(xd2,yd2);
%}