H = tf([37.3 68.65 25],[0.0744 1.69745 11.1938 16.693 1 0]);
figure(1);
bode(H),grid
K = tf([3.85 10],[0.162 1.162 1 0]);
figure(2);
bode(K),grid
L = tf([40 8],[8 48.2 41.2 1 0]);
figure(3);
bode(L),grid
M = tf([10],[1 1 0]);
figure(4);
bode(M),grid
N = tf([8],[1 6 5 0]);
figure(5);
bode(N),grid
P = tf([25],[0.05 0.6 1 0]);
figure(6);
bode(P),grid