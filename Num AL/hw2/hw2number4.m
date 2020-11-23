format long e;
%coefficents in front of each term in geometric series is 1
%therefore ones command make c be 100 1's ot an array with 
%100 elements and each element is equal to 1
c=ones(1,51);
%Partial geometric series
%up to the Nth term
N=50;
r=1.00000000001;
sum=1;
for n=1:N;
   sum=sum+c(n)*r^n;
end;
display(sum)
display((1.00000000001^51  - 1) / (1.00000000001-1))

nest = nest(50, c, 1.00000000001)
display(nest)

fprintf('Using nest method: = %6.12f\n', nest);
fprintf('Using equivalent expression: = %6.12f\n', (1.00000000001^51  - 1) / (1.00000000001-1));
fprintf('Absolute error: = %6.12f\n', (nest - (1.00000000001^51  - 1) / (1.00000000001-1)));