currentPrecision = digits(10);
syms x;
g(x)=e^x;
tt(x)=taylor(g,'ExpansionPoint', 0, 'Order',5)
display(tt);
pretty(tt);