%%step response of second order system
w= input('Enter the natural frequency');
e=input('Enter the damping ratio');
p=[0 0 w*w];
q=[1 2*e*w w*w];
sys=tf(p,q);
step(sys);