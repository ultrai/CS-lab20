k = 5;
T = 10;
u = 1;

s = tf('s');
G = k/(T*s+1)

step(u*G)