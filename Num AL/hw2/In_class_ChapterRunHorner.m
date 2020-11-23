format long e;
f=inline('x^3-3*x^2+3*x-1');
dd=f(1.67);
d=3;
x1=round(2.19^3,d,'significant')-round(3,d,'significant')*round(2.19^2,d,'significant')+round(3,d,'significant')*round(2.19,d,'significant')-round(1,d,'significant');
%x2=(round((2.19-3),d,'significant')*round(2.19,d,'significant')+round(3,d,'significant'))*round(2.19,d,'significant')-round(1,d,'significant');
x1=round(x1,d,'significant');
%x2=round(x2,d,'significant');
%run horner
%nest(3,[ -1, 3, -3, 1],2.19);
nnest=f(2.19);
%format short
dn=nestround(3,[ -1, 3, -3, 1],2.19,3);
display(dn);
display(x1);
nnest=f(2.19);
display(nnest)
error1=abs(nnest-x1)/abs(nnest)
error2=abs(nnest-dn)/abs(nnest)
c=[x1; dn; nnest];
ee=[error1,error2];
results=fopen('results_comp_nest.txt','w');
fprintf(results,'%6s %6s %6s\n','Round','Nest','Actual');
fprintf(results,'%6.3f %6.3f %6.3f\n',c);
fprintf(results,'%6s %6s\n','Error Original','Error Nest');
fprintf(results,'%6.7f %6.7f\n',ee);
fclose(results);