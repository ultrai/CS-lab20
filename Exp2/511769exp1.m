%%step response of 1st order unity feedback system
%%G(s) = 1/(s+3)
p=[0 1];
q= [1 3];
sys=tf(p,q)
t=feedback(sys,1)
step(t);
title('Step Response of first order system 1/(s+3)')