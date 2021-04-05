sys = tf([10],[.04 .5 1]);
figure(1);
bode(sys);
grid;
title("Bode plot for 10/s(1+0.4s)(1+0.1s)")


sys = tf([36],[1 6 11 6]);
figure(2);
bode(sys);
grid;title("Bode plot for 36/(s^3+6s^2+11s+6)")