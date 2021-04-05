sys=tf([36],[1 6 11 6])
figure(1)
nyquist(sys)
grid;
title("nyquist plot for 36/(s^3+6s^2+11s+6)")

sys2=tf([36],[1 6 11 6])
figure(2)
rlocus(sys2)
grid;
title("root locus of 36/(s^3+6s^2+11s+6)")

sys3=tf([36],[1 6 11 6])
figure(3);
bode(sys3);
title("Bode plot for 36/(s^3+6s^2+11s+6)")
