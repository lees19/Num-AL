format long e;
currentPrecision = digits(10);
syms x;
g(x)=(x - sin(x))/x^3;
tt(x)=taylor(g,'ExpansionPoint', 0, 'Order',6);

gg=[ ]; %original 
n2=[ ];
gg2=[ ]; %reformulation
tt1=[ ];%taylor series exapansion
xx=1;

%{
for i=1:20;
xx=10^(-i);
gg(i) = (sqrt(4+xx)-2) / xx;
gg2(i)= 1/(sqrt(4+xx) + 2);
n2(i)=i;
end;

c=[n2; gg; gg2];
bb=fopen('dataLOSS.txt','w');
fprintf(bb,'%6s %9s %9s\n','n2','gg','gg2');
fprintf(bb,'%6.2f %6.8f %12.8f\n',c);
fclose(bb);
%}

for i=1:20;
xx=10^(-i);
gg(i) = (xx - sin(xx)) / xx^3;
gg2(i)= tt(xx);
n2(i)=i;
end;

c=[n2; gg; gg2];
fprintf('%6s %9s %9s\n','n2','gg','gg2');
fprintf('%6.2f %6.8f %12.8f\n',c);
