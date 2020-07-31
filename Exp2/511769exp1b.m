%%Impulse response of 1st order unity feedback system
%%G(s) = 1/(s+9)
p=[0 1];
q= [1 9];
sys=tf(p,q)
t=feedback(sys,1)
impulse(t);
title('Impulse Response of first order system 1/(s+9)')
