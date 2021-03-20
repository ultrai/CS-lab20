%comparitive study of bode,nyquist,rootlocus on stability
%transfer function gh=36/(s^3+6*s^2+11*s+6)
num=[0 0 36];
den=[1 6 11 6];
sys=tf(num,den)
zpk(sys)
figure(1)
rlocus(sys);
grid;
title('root locus plot of tf =36/(s^3+6*s^2+11*s+6)');
figure(2)
bode(sys);
margin(sys)
title('bode plot of tf =36/(s^3+6*s^2+11*s+6)');
figure(3)
nyquist(sys);
title('nyquist plot of tf=36/(s^3+6*s^2+11*s+6)');
sys2=zpk([],[0 -1 -2],1)
figure(4)
bode(sys2);
margin(sys2)
title('bode plot of tf =36/s(s+1)(s+2)');
sys3=zpk([],[0 -10/4 -10],1000/4)
figure(5)
nyquist(sys3);
title('nyquist plot of tf=10/((s(1+0.4s)(1+0.1s))');
