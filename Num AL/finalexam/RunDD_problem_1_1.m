%Now Divided difference
clear all;
format long e;
A = zeros(40, 1); 
for i=1:40
    A(i+1) = i*.1;
end
A

B = zeros(40, 1); 
for i=1:41
    B(i) = exp(A(i));
end

M = [A,B]
currentPrecision = digits(15);
syms x;
%display(M);
%this grabs first column of matrix M
x1=M(:,1);
%display(x);
%this grabs second column of matrix M
y=M(:,2);
%display(y);
ff=divdiff(x1,y);
display(ff);
%symbolic polynomial
%forward 
n = length(x1);
sum=vpa(ff(1,1));
for i = 2:n;
    prod=1;
    for k=1:i-1;
       prod=prod*(x-x1(k));
    end;
    sum=sum+vpa(ff(1,i)*prod);
end;
pf(x)=sum;
display(pf(x));
d1=double(pf(.9))
d2=double(exp(.5));
error1=abs(d1-d2);
display(error1);
return
%symbolic polynomial
%backwards 
n = length(x1);
sumb=vpa(ff(n,1));
%display(sumb);
j=2;
for i = n:-1:2;
    prod1=1;
    %display(i);
    for k=n:-1:i;
       prod1=prod1*(x-x1(k));
    end;
    sumb=sumb+vpa(ff(i-1,j)*prod1);
    j=j+1;
end;
pb(x)=sumb;
display(pb(x));
