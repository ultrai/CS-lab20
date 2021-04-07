sys=tf([1],[1 3 2])
figure(1)
nyquist(sys)
title("The nyquist plot for the transfer function 1/(s(s+2)(s+1))")