%%Step Response of second order system
G=tf([1],[1 2 4]);
figure(1)
step(G)