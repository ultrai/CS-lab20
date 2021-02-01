
% step response of a second order system
wn = 2;
z = 0.25;
num = [wn*wn];
den = [1 2*z*wn wn*wn];
sys = tf (num, den)
step(sys);