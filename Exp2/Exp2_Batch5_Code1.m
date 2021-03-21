% frequency response of second order system with tf 100/(s*s + 10s +100)
w = 10;
e = 0.5;

num = w*w;
den = [1 2*w*e w*w];
g = tf(num,den);
[mr1,wr1] = getPeakGain(g);
wb1 = bandwidth(g);

figure(1)
bode(g);
margin(g)

% frequency response of second order system with tf 12/((s+3)(s+4))
w = 3.464;
e = 1.01;

num = w*w;
den = [1 2*w*e w*w];
g = tf(num,den);
[mr,wr] = getPeakGain(g);
wb = bandwidth(g);

figure(1)
bode(g);
margin(g)



 13  Exp2/batch15/Exp_2_batch_15_code_b.m 
Viewed
@@ -0,0 +1,13 @@
% frequency response of second order system
w = 3.464;
e = 1.01;

num = w*w;
den = [1 2*w*e w*w];
g = tf(num,den);
[mr,wr] = getPeakGain(g);
wb = bandwidth(g);

figure(1)
bode(g);
margin(g)