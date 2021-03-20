%step response of second order system for underdamped , overdamped and
%critically damped undamped conditions
w = input('enter natural frequency');
z = input('enter damping ratio');
a =[0,0,w*w];
b=[1,2*z*w,w*w];
sys=tf(a,b)
step(sys);
title('step response of 2nd order system')