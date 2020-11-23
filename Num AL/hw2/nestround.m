%program nested multiplication 
%Evaluates polynomial from nested form using Horners method
%Input: degree d of polynomial
%     array d+1 coefficients c (constant term first)
%     x-coordinate x at which to evaluate
%output: value y of polynomial at x

function  y=nestround(d,c,x,N);
y=round(c(d+1),N);
for i=d:-1:1
    y=round(y.*x,N)+round(c(i),N);
end    