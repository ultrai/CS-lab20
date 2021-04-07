%%nyquist plot for the transfer function
Y=zpk([],[-3 -2 -1],36);
figure(1)
bode(Y);
margin(Y);
title(' Bode plot of transfer function =36/(s^3+6*s^2+11*s+6)');
margin(Y);
figure(2);
nyquist(Y);
title('nyquist plot of transfer function =36/(s^3+6*s^2+11*s+6)');
figure(3);
rlocus(Y);
title('root locus of transfer function =36/(s^3+6*s^2+11*s+6)');
