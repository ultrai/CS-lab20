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
