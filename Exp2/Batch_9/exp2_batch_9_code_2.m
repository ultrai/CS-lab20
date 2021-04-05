%%frequency response of 2nd order system 
a=[10]
b=[1 10 100];
g=tf(a,b);
[MR,WR]=getPeakGain(g)
wb=bandwidth(g)
figure(1);
bode(g);
margin(g);