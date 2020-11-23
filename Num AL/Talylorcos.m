currentPrecision = digits(10);
syms x;
g(x)=sin(x);
tt(x)=taylor(g,'ExpansionPoint', 0, 'Order',6);
%order is n+1 so 6 gives you 5
display(tt);
pretty(tt);
xd= 0:0.05:4;
yd=subs(g,x,xd);
ezplot(tt,[0,4]);
hold on;
plot(xd, yd, 'r-.');
title('Taylor approx. vs. actual');
legend('Taylor','Function');

dd7(x)=diff(g,6);
display(dd7);
dd8(x)=diff(dd7,1);
display(dd8);

xd=0:0.05:0.4;
yd=subs(dd8,x,xd);
%ezplot(tt,[0,2]);
%hold on;
plot(xd, yd, 'r-.');
title('Graph to find roots');
%d1=dd7(.1);
d1=vpa(dd7(.1));
display(d1);
d2=vpa(dd7(0.4));
display(d2);

error1=vpa(abs(g(0.4)-tt(0.4)))
display(error1)

yy=vpa(mycos(3,1));
display(yy);
error=vpa(abs(yy-cos(3)))
display(error)

yy2=vpa(mycos(3,20));
display(yy2);

f=@(x) exp(-x.^2).*log(x).^2; %vectorization
q=integral(f,0,Inf,'AbsTol',1e-8);
