s=tf('s');
g=12/(s^2+7*s+12);
[Mr,Wr]=getPeakGain(g);
Wb=bandwidth(g);
bode(g);
margin(g);