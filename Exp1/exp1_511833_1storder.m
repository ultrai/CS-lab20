%step response of a first order system
a = [1,-165];
b = [1,-1/33];
sys = tf(a,b);
t = feedback(sys,1)
step(t);
title('step response of first order system , G(s)=(s-165)/(2s-132)')