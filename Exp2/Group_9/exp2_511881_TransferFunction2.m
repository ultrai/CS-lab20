%%frequency response of 2nd order system
a=[12];
b=[1 7 12];
g=tf(a,b);
[MR,WR]=getPeakGain(g)
wb=bandwidth(g)
figure(1);
bode(g);
margin(g);