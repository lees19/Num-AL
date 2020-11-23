function [ r ]= bisection( f, a, b, N, eps_step, eps_abs )
    %r is output or root 
    %and f,a,b,N,eps_step,eps_abs are all inputs into the function
    %Also left in the fprintf statements in so you can look at your
    %approximation for each interation and see if it is converging   
    %how to throw an error message for instance if f(a)f(b) is not less
    %than 0.
    
     p1=[ ]
     n2=[ ]


     
        c=[n2; p1];
        bb=fopen('dataBisection.txt','w');
        fprintf(bb,'%6s %12s\n','n','pn'); 
        fprintf(bb,'%6.2f %12.8f\n',c);
        error( 'f(a) and f(b) do not have opposite signs' );
   

    

                c=[n2; p1];
                bb=fopen('dataBisection.txt','w');
                fprintf(bb,'%6s %12s\n','n','pn'); 
                fprintf(bb,'%6.2f %12.8f\n',c);
                return;
            
                
                
                
                c=[n2; p1];
                bb=fopen('dataBisection.txt','w');
                fprintf(bb,'%6s %12s\n','n','pn'); 
                fprintf(bb,'%6.2f %12.8f\n',c);
        
                
                
                
    c=[n2; p1];
    bb=fopen('dataBisection.txt','w');
    fprintf(bb,'%6s %12s\n','n','pn'); 
    fprintf(bb,'%6.2f %12.8f\n',c);
    error( 'the method did not converge' );
    
    
    
end
