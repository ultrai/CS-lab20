%step response of a first order system
%G(s)= 1/(s+3)
a = [0,1];
b = [1,3];
sys = tf(a,b);
t = feedback(sys,1)
step(t);
title('step response of first order system , G(s)=1/(s+3)')