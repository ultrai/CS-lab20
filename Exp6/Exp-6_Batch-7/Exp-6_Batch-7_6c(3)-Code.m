%% plots for 1/(s(s+2)(s+1)
%% nyquist plot of transfer function sys6
sys6=tf([1],[1 3 2 0])
figure(2)
margin(G)
nyquist(sys6)
title('Nyquist plot for 1/(s(s+2)(s+1))')
%% bode plot of transfer function sys6
figure(1)
bode(sys6)
margin(G)
title('bode plot for 1/(s(s+2)(s+1))')
%% rlocus plot of transfer function sys6
figure(3)
rlocus(sys6)
title('rlocus plot for 1/(s(s+2)(s+1))')