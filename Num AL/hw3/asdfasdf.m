currentPrecision = digits(10);
syms x;
g(x)=x*cos(x) - atan(x);
tt(x)=taylor(g,'ExpansionPoint', 0, 'Order',4);
%order is n+1 so 6 gives you 5
display(g);
pretty(g);
display(tt);
pretty(tt);