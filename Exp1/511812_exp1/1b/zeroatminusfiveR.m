k_dc = 1;
Tc = 1;
u = 2;

s = tf('s');
G = k_dc*(1+(s/360))/(Tc*s+1)

step(u*G)
figure(2)

