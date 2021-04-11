%%nyquist plot for the transfer function
Y=zpk([],[0 -2.5 -10],1000/4);
figure(1)
bode(Y);
margin(Y);
title(' Bode plot of transfer function=10/{s(0.4s+1)(0.1s+1)}');
margin(Y);
figure(2);
nyquist(Y);
title('nyquist plot of transfer function=10/{s(0.4s+1)(0.1s+1)}');
figure(3);
rlocus(Y);
title('root locus of transfer function= 10/{s(0.4s+1)(0.1s+1)}');