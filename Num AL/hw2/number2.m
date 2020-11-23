function y = nest(d, c, x); 
format long e 
y = c(d+1); 
for i = d:-1:1
    y = y.*x + c(i)
end