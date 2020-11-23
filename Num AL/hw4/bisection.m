function [ r ]= bisection( f, a, b, N, eps_step, eps_abs )
    % Check that that neither end-point is a root
    % and if f(a) and f(b) have the same sign, throw an exception.

     p1=[ ]
     n2=[ ]


    if ( f(a) == 0 );
	r = a;
	return;
    elseif ( f(b) == 0 );
	r = b;
	return;
    elseif ( f(a) * f(b) > 0 )
        c=[n2; p1];
        bb=fopen('dataBisection.txt','w');
        fprintf(bb,'%6s %12s\n','n','pn'); 
        fprintf(bb,'%6.2f %12.8f\n',c);
        error( 'f(a) and f(b) do not have opposite signs' );
    end

    % We will iterate N times and if a root was not
    % found after N iterations, an exception will be thrown.

    for k = 1:N
        % Find the mid-point
        c = a + (b-a)/2;
        p1(k)=c
        n2(k)=k
        % Check if we found a root or whether or not
        % we should continue with:
        %          [a, c] if f(a) and f(c) have opposite signs, or
        %          [c, b] if f(c) and f(b) have opposite signs.

        if ( f(c) == 0 )
            r = c;
            return;
        elseif ( f(c)*f(a) < 0 )
            b = c;
        else
            a = c;
        end

        % If |b - a| < eps_step, check whether or not
        %       |f(a)| < |f(b)| and |f(a)| < eps_abs and return 'a', or
        %       |f(b)| < eps_abs and return 'b'.
        cc=min(a,b); 
        %if ( b - a < eps_step )
        if ( abs(b-a)/abs(cc)< eps_step )    
            if ( abs( f(a) ) < abs( f(b) ) && abs( f(a) ) < eps_abs )
                r = a;
                c=[n2; p1];
                bb=fopen('dataBisection.txt','w');
                fprintf(bb,'%6s %12s\n','n','pn'); 
                fprintf(bb,'%6.2f %12.8f\n',c);
                return;
            elseif ( abs( f(b) ) < eps_abs )
                r = b;
                c=[n2; p1];
                bb=fopen('dataBisection.txt','w');
                fprintf(bb,'%6s %12s\n','n','pn'); 
                fprintf(bb,'%6.2f %12.8f\n',c);
                return;
            end
        end
    end
    c=[n2; p1];
    bb=fopen('dataBisection.txt','w');
    fprintf(bb,'%6s %12s\n','n','pn'); 
    fprintf(bb,'%6.2f %12.8f\n',c);
    error( 'the method did not converge' );
end
