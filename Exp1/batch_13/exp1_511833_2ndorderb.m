%variation of zero position to check the impact on response
a = [1,-165];
b = [1,66,2178];
sys = tf(a,b);
t = feedback(sys,1)
step(t);
title('step response of second order system , G(s)=(s-165)/(s^2+67s+2013)')