%%c)Comparative study of Bode,Nyquist and Root locus with respect to stability

%%1.Transfer function G(s)==k/(s^3+6s^2++11s+6)
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

%%2.Transfer function G(s)=10/{s(1+0.4s)(1+0.1s)}
G=zpk([],[0 -2.5 -10],250);
figure(4)
bode(G);
margin(G);
title(' Bode plot of 10/{s(0.4s+1)(0.1s+1)}');
margin(G);
figure(5);
nyquist(G);
title('nyquist plot of 10/{s(0.4s+1)(0.1s+1)}');
figure(6);
rlocus(G);
title('root locus of 10/{s(0.4s+1)(0.1s+1)}');

%%3.Transfer function G(s)=1/{s(s+1)(s+2)}
G=zpk([],[0 -1 -2],1);
figure(7)
bode(G);
margin(G);
title(' Bode plot of 1/{s(s+1)(s+2)}');
margin(G);
figure(8);
nyquist(G);
title('nyquist plot of 1/{s(s+1)(s+2)}');
figure(9);
rlocus(G);
title('root locus of 1/{s(s+1)(s+2)}');