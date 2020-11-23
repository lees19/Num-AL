currentPrecision = digits(10);
syms x;
g(x)=(x / (1-x));
tt(x)=taylor(g,'ExpansionPoint', 0, 'Order',3);

%order is n+1 so 6 gives you 5
display(tt);
pretty(tt);
xd= 0:0.05:.5;
yd=subs(g,x,xd);

%{
ezplot(tt,[0,.4]);
hold on;
plot(xd, yd, 'r-.');
title('Taylor approx. vs. actual');
legend('Taylor','Function');
%}

dd3(x)=diff(g,3);
display(dd3);
pretty(dd3);
dd4(x) = diff(dd3, 1)

xd=0:0.05:0.5;
yd=subs(dd3,x,xd);
plot(xd, yd, 'r-.');
title('Graph of the third derivative');
legend('third derivative'); 

%error bound
errorbdd = vpa(abs(dd3(.5))); 
display(errorbdd);

%actual error at x = 0.4
actualerror=vpa(abs(g(0.5)-tt(0.5)));
display(actualerror)

%integral error bound
f=@(x) (x/(1-x)) - (x^2 + x);
q = integral(f, 0, .5,'AbsTol', 1e-8); 
display(vpa(abs(q)));