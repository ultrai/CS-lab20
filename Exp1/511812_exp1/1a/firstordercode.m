k_dc = 2;
Tc = 1;
u = 2;

s = tf('s');
G = k_dc/(Tc*s+1)

step(u*G)
figure(2)

impulse(u*G)
figure(3)

step(u*G/s)
figure(4)
