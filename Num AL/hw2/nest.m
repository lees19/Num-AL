%program nested multiplication 
%Evaluates polynomial from nested form using Horners method
%Input: degree d of polynomial
%     array d+1 coefficients c (constant term first)
%     x-coordinate x at which to evaluate
%output: value y of polynomial at x

function  y=nest(d,c,x);
format long e
y=c(d+1);
for i=d:-1:1
    y=y.*x+c(i);
end    