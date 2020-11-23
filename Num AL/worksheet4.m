%function [r] = bisection(f, x1, x2, epsilon)
syms x 
f(x) = 2*sin(x);
x1 = 1;
x2 = 2;
epsilon = 10^-5;
gList = [];

if f(x1)*f(x2) > 0
    error( 'f(a) and f(b) do not have opposite signs' );
else 
    count = 0;
    if f(x1) < 0 
        a = x1;
        b = x2;
    else 
        a = x2;
        b = x1;
    end
    
    while ((b-a)/b) > epsilon
        guess = (a + b) / 2;
        gList = [gList, guess];
        if f(guess)>0 
            b = guess;
        else
            a = guess ;
        end
        
        count = count+1;
    end 
    
    fprintf('root: %g\n', gList)
    fprintf('count: %1f\n', count)
end    