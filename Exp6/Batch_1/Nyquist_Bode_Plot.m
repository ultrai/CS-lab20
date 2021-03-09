%Nyquist plot
sys1=tf([1],[1 3 2 0])
figure(1)
nyquist(sys1)
title('Nyquist plot for 1/(s(s+2)(s+1))')
%Bode plots
sys2 = tf([10],[0.04 0.5 1 0])
figure(2);
bode(sys2);
grid;
title('Bode plot for 10/s(1+0.4s)(1+0.1s)')

sys3 = tf([36],[1 6 11 6]);
figure(3);
bode(sys3);
grid;
title('Bode plot for 36/(s^3+6s^2+11s+6)')