%%nyquist plot for the transfer function
num=[0 36];
den=[1 6 11 6];
G=tf(num,den);
figure(1)
bode(G);
margin(G);
title(' Bode plot of 36/(s^3+6*s^2+11*s+6)');
margin(G);
figure(2);
nyquist(G);
title('nyquist plot of 36/(s^3+6*s^2+11*s+6)');
figure(3);
rlocus(G);
title('root locus of 36/(s^3+6*s^2+11*s+6)');
