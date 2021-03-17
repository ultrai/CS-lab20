%%step response of second order system
%%G(s)=(w^2)/(s^2 +2*w*s+w^2)
w=input('Enter the naturnal frequency');
e=input('Enter damping ratio');
p=[0 0 w*w];
q=[1 2*e*w w*w];
sys=tf(p,q)
step(sys);