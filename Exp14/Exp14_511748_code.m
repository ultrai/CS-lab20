%%bode plot
num = [36];
den = [1 6 11 6];
sys = tf (num , den) 
figure(1)
margin(sys)
%%rootlocus
p = [ 0 0 0 0 10 ];
q = [ 1 8 36 80 0 ];
sys = tf(p,q) 
zpk(sys) 
figure(2)
rlocus(sys)
%%nyquist
P=[60]
Q=[1 8 17 10]
sys=tf(P,Q)
figure(3)
nyquist(sys)