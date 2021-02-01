clc;
clear;
r=input("Hi,this is group17,enter your roll number (last two digits like 53) ");
x=input(" 1.1st order system\n 2.1st order system with the given poles\n 3.2nd order system\n 4.2nd order system with the given poles\n  select any one of the above options ");
switch x
    case 1
        G = input('Enter value of Gain ');
        T =input('Enter value of time constant ');
        num=[G];
        den=[T 1] ;
        sys=tf(num,den)
        impulse(sys)
        title('impulse response of first order system')
        pause;
        step(sys)
        title('step response of first order system')
        stepinfo(sys)
    case 2
        poles=[-1/r,-r,-5*r];
        zeroes=[-1/r,-r,-5*r];
        Zeroes=[1/r,-5*r];
        poleploting(poles());
        zeroploting(zeroes(),r);
        zeroploting(Zeroes(),r);
    case 3
        w = input('Enter value of frequncy ');
        e =input('Enter value of eta ');
        num=[w*w];
        den=[1,2*e*w,w*w] ;
        sys=tf(num,den)
        step(sys)
        title('step response of second order system')
    case 4
        x=[-1/r,-r,-5*r]
        for j=1:1:length(x)
            a=x(j);
        	Poles=[-a-i*a,-a+i*a];
            Poleploting(Poles());
        end
end
function poleploting(x)
    for i=1:1:length(x)
        sys=zpk([],[x(i)],1)
        step(sys)
        title('step response of first order system')
        stepinfo(sys)
        pause;
    end
end
function zeroploting(x,r)
    for i=1:1:length(x)
        sys=zpk([x(i)],[-r],1)
        step(sys)
        title('step response of first order system')
        stepinfo(sys)
        pause;
    end
end
function Poleploting(x)
    sys=zpk([],[x],1)
    step(sys)
    title('step response of second order system')
    pause;
end