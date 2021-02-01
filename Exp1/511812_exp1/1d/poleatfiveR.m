k_dc = 1;
w_n = 509.11;
zeta = 0.707;

s = tf('s');
G1 = k_dc*w_n^2/(s^2 + 2*zeta*w_n*s + w_n^2);

pzmap(G1)
figure(2)

step(G1)
figure(3)