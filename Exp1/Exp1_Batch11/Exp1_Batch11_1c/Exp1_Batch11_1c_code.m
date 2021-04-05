%%Step response of Second order systems
%%Underdamped 
k_dc = 1;
w_n = 10;
zeta = 0.2;
s = tf('s');
G1 = k_dc*w_n^2/(s^2 + 2*zeta*w_n*s + w_n^2);
figure(1)
step(G1)
title('Underdamped')

%%critically damped
zeta = 1;
G3 = k_dc*w_n^2/(s^2 + 2*zeta*w_n*s + w_n^2);
figure(2)
step(G3)
title('Critically damped')

%%Overdamped
zeta = 1.2;
G2 = k_dc*w_n^2/(s^2 + 2*zeta*w_n*s + w_n^2);
figure(3)
step(G2)
title('Overdamped')

%%Undamped
zeta = 0;
G4 = k_dc*w_n^2/(s^2 + 2*zeta*w_n*s + w_n^2);
figure(4)
step(G4)
axis([0 5 -0.5 2.5])
title('Undamped')
