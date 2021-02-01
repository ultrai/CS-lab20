    p = input("Enter number of poles: ");
    z = input("Enter number of zeros: ");
    if (z==0 && p==0) || (z>1 && p>1) 
        fprintf("Doesn't exist\n");
    elseif z==1 || p==1
        k = input("Enter constant value: ");
        if z == 0
            num = [1];
        else
            zero = input("Enter zero value: ");
            if zero == 0
                num = [1 0];
            else
                num = [1 -1*zero];
            end
        end
        if p == 0
            den = [1];
        else
            pol = input("Enter pole value: ");
            if pol == 0
                den = [1 0];
            else
                den = [1 -1*pol];
            end
        end
        if z==0
            DCgain = -k/pol;
        else
            DCgain = k*zero/pol;
        end
        sys = tf(k*num,den);
        if p>=z
            step(sys);
            grid on;
        else
            fprintf("It is improper Transfer Function hence graph is not obtained\n");
        end        
        fprintf("DC gain is: ");
        display(DCgain);
    else
        resp = input(['1. Time response specification\n',...
        '2. Poles and zeros analysis\n',...
        'choose 1 or 2: ']);                 
        if resp == 1 
            wn = input("Enter natural frequency: "); 
            e = input("Enter zeta value: ");    
            den = [1 2*e*wn wn^2];
            num = [wn^2];
            sys = tf(num,den);
            step(sys);
            grid on;
        elseif resp == 2
            a = input("Enter 'a' value in complex conjugate poles (-a+-ia): ");
            den = [1 2*a 2*(a^2)];
            num = [1];
        end
        sys = tf(num,den);
        step(sys);
        grid on;
    end