format long e;
f=inline('6*x^7-7*x^5+2*x^4-10*x^2+20*x-6');
d1=nest(7,[ -6, 20, -10, 0, 2, -7, 0, 6],1/2);
d2=f(1/2);
ee=[d2,d1];
results=fopen('results_comp_nest_problem2a.txt','w');
fprintf(results,'%6s %6s\n','As is','Nest');
fprintf(results,'%6.3f %6.3f\n',ee);
fclose(results);
