w=input('enter natural frequency');
g=input('enter damping ratio');
z=[0 0 w*w];
p=[1 2*g*w w*w];
if g<1
    disp('Under damped system')
    sys=tf(z,p)
    step(sys);
    title('Step Response of Second Order Under damped System');
end

if g>1
        disp('Over damped system')
        sys=tf(z,p)
        step(sys);
        title('Step Response of Second Order Over damped System');
end
    
if g==1
        disp('Critically damped system')
        sys=tf(z,p)
        step(sys);
        title('Step Response of Second Order Critically damped System');
end
if g==0
    
    disp('Undamped system')
    sys=tf(z,p)
    step(sys);
    title('Step Response of Second Order Undamped System');
end
    
    