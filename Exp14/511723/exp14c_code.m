%%Bode plot of system
num = [36];
den = [1 6 11 6];
sys = tf (num , den)
figure(1);
bode (sys),grid
margin(sys)
%%Nyquist plot of system
figure(2);
nyquist(sys)
%%Root Locus diagram of system
figure(3);
rlocus(sys),grid