%%effect of open loop poles and zeroes on root locus
%transfer function gh=36/(s^3+6*s^2+11*s+6)
num=[0 0 36];
den=[1 6 11 6];
sys=tf(num,den)
zpk(sys)
figure(1)
rlocus(sys);
grid;
title('root locus plot of tf =36/(s^3+6*s^2+11*s+6)');
%effect of root locus by adding pole at +1
sys1=zpk([],[-1 1 -2 -3],36)
figure(2)
rlocus(sys1);
grid;
title('root locus plot of tf =36/(s+1)(s+2)(s+3)(s-1)');
%effect of root locus by adding pole at -1
sys2=zpk([],[-1 -1 -2 -3],36)
figure(3)
rlocus(sys2);
grid;
title('root locus plot of tf =36/(s+1)^2(s+2)(s+3)');
%effect of root locus by adding zero at +1
sys3=zpk([1],[-1 -2 -3],36)
figure(4)
rlocus(sys3);
grid;
title('root locus plot of tf =36(s-1)/(s+1)(s+2)(s+3)');
%effect of root locus by adding zero at -1
sys4=zpk([-1],[-1 -2 -3],36)
figure(5)
rlocus(sys4);
grid;
title('root locus plot of tf =36(s+1)/(s+1)(s+2)(s+3)');