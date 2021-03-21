%%First order system
k_dc = 2;
Tc = 1;
u = 2;

s = tf('s');
G = k_dc/(Tc*s+1)

step(G)
figure(2)

impulse(G)
figure(3)

ramp(G)
figure(4)
