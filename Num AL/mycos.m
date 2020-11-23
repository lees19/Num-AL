function c=mycos(x,N)
% function c=mycos(x)
%purpose: compute first several terms in
% the talyor series for cosine
%N=5
c=0
for n=0:N
    c=c + (-1)^n*(x.^(2*n))/factorial(2*n);
%.^ is called "array power" and .* is called "array multiplication", 
%which may be useful to know 
%.^ Array power. A.^B is the matrix with elements A(i,j) to the B(i,j) 
%power. A and B must have the same size, unless one of them is a scalar.
end


