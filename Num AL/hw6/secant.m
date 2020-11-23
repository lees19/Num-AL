format long e 
syms x 

f(x) = 230*x^4+18*x^3+9*x^2-221*x-9 ;

p0 = .5;
p1 = 1.5;
q0 = f(p0);
q1 = f(p1);
p = 0;
TOL = 10^-6;
N = 1000;

i = 1

while i <= N
    p = vpa(p1 - q1*(p1-p0)/(q1-q0));
    
    if abs(p-p1) < TOL
        display(vpa(p))
        break
    end 
    
    i = i+1
    p0 = p1; 
    q0 = q1;
    p1 = p; 
    q1 = vpa(f(p));
end
