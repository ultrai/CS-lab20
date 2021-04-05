%%nyquist plot for the transfer function
G=zpk([],[0 -1 -2],1);
figure(1)
bode(G);
margin(G);
title(' Bode plot of 1/{s(s+1)(s+2)}');
margin(G);
figure(2);
nyquist(G);
title('nyquist plot of 1/{s(s+1)(s+2)}');
figure(3);
rlocus(G);
title('root locus of 1/{s(s+1)(s+2)}');