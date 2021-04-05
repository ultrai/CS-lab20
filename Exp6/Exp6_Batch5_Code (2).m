sys1 = tf([10],[0.04 0.5 1]);
figure(1);
bode(sys1);
title("Bode plot for 10/s(1+0.4s)(1+0.1s)")

sys2=tf([36],[1 6 11 6])
figure(2);
bode(sys2);
title("Bode plot for 36/(s^3+6s^2+11s+6)")


