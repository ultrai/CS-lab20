%% nyquist plot of transfer function sys1
sys1=tf([36],[1 6 11 6])
figure(1)
nyquist(sys1)
title('nyquist plot of 36/(s^3+6s^2+11s+6)')
%% bode plot of tf sys1
figure(2)
bode(sys1)
title('bode plot of 36/(s^3+6s^2+11s+6)')
%% root locus of sys1
figure(3)
rlocus(sys1);
title('root locus of 36/(s^3+6*s^2+11*s+6)');
