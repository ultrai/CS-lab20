%%Stability for 2nd order system
num=[0 0 36];
den=[1 6 36];
g=tf(num,den);
figure(1)
bode(g);
title('Bode plot of 36/(s^2 + 6*s + 36)');
margin(g);
figure(2);
nyquist(g);
title('Nyquist plot of 36/(s^2 + 6*s + 36)');
figure(3);
rlocus(g);
title('Root Locus plot of 36/(s^2 + 6*s + 36)');
%% stability for 3rd order system
num1=[0 10 5 10];
den1=[1 6 36 0];
g1=tf(num1,den1);
figure(4)
bode(g1);
margin(g1);
title('Bode plot of (10*s^2 + 5*s + 10)/(s^3 + 6*s^2 + 36*)');
margin(g1);
figure(5);
nyquist(g1);
title('Nyquist plot of (10*s^2 + 5*s + 10)/(s^3 + 6*s^2 + 36*)');
figure(6);
rlocus(g1);
title('Root Locus plot of (10*s^2 + 5*s + 10)/(s^3 + 6*s^2 + 36*)');