%Transfer fuction : 36 /(s^3+6*s^2+11*s+6)
num = [36];
den = [1 6 11 6];
sys = tf (num , den)
bode (sys)
margin(sys)
%root locus
p = [ 0 0 0 0 10 ];
q = [ 1 8 36 80 0 ];
sys = tf(p,q)
zpk(sys)
rlocus(sys)
%nyquist
P=[60]
Q=[1 8 17 10]
sys=tf(P,Q)
nyquist(sys)