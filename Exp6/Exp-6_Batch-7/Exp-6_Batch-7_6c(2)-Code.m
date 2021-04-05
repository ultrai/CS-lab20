%% plots of transfer function 10/{s(0.4s+1)(0.1s+1)
%% bode plot of transfer function sys7
sys7 = tf([10],[0.04 0.5 1 0])
figure(1);
bode(sys7);
title('Bode plot for 10/s(1+0.4s)(1+0.1s)')
%% rlocus plot of transfer function sys7
figure(2)
rlocus(sys7)
title('rlocus plot for 10/s(1+0.4s)(1+0.1s)')
%% nyquist plot of transfer function sys7
figure(3)
nyquist(sys7)
title('nyquist plot for 10/s(1+0.4s)(1+0.1s)')
