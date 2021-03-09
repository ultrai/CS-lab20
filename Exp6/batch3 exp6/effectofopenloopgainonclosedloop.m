%%effect of open loop gain on the transient response of closed loop 
%%by using root locus
%transfer function gh=36/(s^3+6*s^2+11*s+6)
num=[0 0 36];
den=[1 6 11 6];
sys=tf(num,den)
zpk(sys)
figure(1)
rlocus(sys);
grid;
title('root locus plot of tf =36/(s^3+6*s^2+11*s+6)');
k=1.5
g1=feedback(sys*k,-1);
figure(2);
zpk(g1)
rlocus(g1);
grid;
title('root locus for k=1.5');
k=2
g2=feedback(sys*k,-1);
figure(3);
zpk(g2)
rlocus(g2);
grid;
title('root locus for k=2');
k=2.5
g3=feedback(sys*k,-1);
figure(4);
zpk(g3)
rlocus(g3);
grid;
title('root locus for k=2.5');