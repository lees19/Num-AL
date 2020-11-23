syms x;
currentPrecision = digits(10);
P=1;
T=300;
a=3.592;
b=0.04267;
R=0.082054;
v1=vpa((R*T)/P);
display(v1);
v2(x)=(R*T)/(x-b)-(a)/(x^2)-P;
display(vpa(v2(23)));
display(vpa(v2(25)));
xd=23:0.01:25;
yd=subs(v2,x,xd);
plot(xd, yd, 'r-.');
title('Graph to see solution');