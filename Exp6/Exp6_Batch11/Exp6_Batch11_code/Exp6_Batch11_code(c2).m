%%nyquist plot for the transfer function
G=zpk([],[0 -2.5 -10],1000/4);
figure(1)
bode(G);
margin(G);
title(' Bode plot of 10/{s(0.4s+1)(0.1s+1)}');
margin(G);
figure(2);
nyquist(G);
title('nyquist plot of 10/{s(0.4s+1)(0.1s+1)}');
figure(3);
rlocus(G);
title('root locus of 10/{s(0.4s+1)(0.1s+1)}');
