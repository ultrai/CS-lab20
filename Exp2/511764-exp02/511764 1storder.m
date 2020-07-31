K = 5;
T = 10;
U= 1;

s = tf('s');
G = k/(T*s+1)

step(U*G)
