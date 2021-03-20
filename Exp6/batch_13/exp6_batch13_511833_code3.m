sys=tf([1],[1 3 2])
figure(1)
nyquist(sys)
grid;
title("nyquist plot for 1/(s(s+2)(s+1))")